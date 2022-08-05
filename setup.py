import os
import shutil
import subprocess
import sys
from pathlib import Path
from shutil import copy2

import pybind11
import requests
from setuptools import Extension
from setuptools import find_packages, setup
from setuptools.command.build_ext import build_ext
from setuptools.command.develop import develop

CWD = os.path.dirname(os.path.abspath(__file__))
EXTERNALS = os.path.join(CWD, "externals")
ROOT_BUILD_DIR = os.path.join(CWD, "build")
if not os.path.exists(ROOT_BUILD_DIR):
    os.makedirs(ROOT_BUILD_DIR)

LLVM_BUILD_DIR = os.path.join(ROOT_BUILD_DIR, "llvm")
os.makedirs(LLVM_BUILD_DIR, exist_ok=True)


def use_alternate_linker():
    alt_linker = os.getenv("ALT_LINKER")
    if alt_linker and (
        shutil.which(f"ld.{alt_linker}") or shutil.which(f"{alt_linker}")
    ):
        return [
            # f"-DCMAKE_SHARED_LINKER_FLAGS=-fuse-ld={alt_linker}",
            # f"-DCMAKE_EXE_LINKER_FLAGS=-fuse-ld={alt_linker}",
            f'-DCMAKE_EXE_LINKER_FLAGS_INIT="-fuse-ld={alt_linker}"',
            f'-DCMAKE_MODULE_LINKER_FLAGS_INIT="-fuse-ld={alt_linker}"',
            f'-DCMAKE_SHARED_LINKER_FLAGS_INIT="-fuse-ld={alt_linker}"',
        ]
    return []


def make_base_cmake_args():
    c_compiler = os.getenv("C_COMPILER") or shutil.which("cc")
    cxx_compiler = os.getenv("CXX_COMPILER") or shutil.which("c++")
    assert c_compiler, "no C compiler found"
    assert cxx_compiler, "no C++ compiler found"
    base_cmake_args = [
        f'-DCMAKE_PREFIX_PATH="{LLVM_BUILD_DIR}"',
        f"-DCMAKE_C_COMPILER={c_compiler}",
        f"-DCMAKE_CXX_COMPILER={cxx_compiler}",
        "-DCMAKE_GENERATOR=Ninja",
        "-DCMAKE_BUILD_TYPE=Release",  # not used on MSVC, but no harm
        "-DPython3_FIND_VIRTUALENV=ONLY",
    ]

    base_cmake_args += use_alternate_linker()
    try:
        import ninja  # noqa: F401

        ninja_executable_path = os.path.join(ninja.BIN_DIR, "ninja")
        base_cmake_args += [
            f"-DCMAKE_MAKE_PROGRAM:FILEPATH={ninja_executable_path}",
        ]
    except ImportError:
        raise Exception("can't find ninja")

    return base_cmake_args


def run_cmake(cmake_dir, cmake_args, build_dir, target=None):
    os.makedirs(build_dir, exist_ok=True)
    subprocess.check_call(["cmake", cmake_dir] + cmake_args, cwd=build_dir)
    build_args = ["cmake", "--build", "."]
    if target is not None:
        build_args += ["--target", target]
    subprocess.check_call(
        build_args,
        cwd=build_dir,
    )


def build_llvm(base_cmake_args):
    llvm_dir = os.path.join(EXTERNALS, "llvm-project", "llvm")
    cmake_args = base_cmake_args + [
        "-DLLVM_ENABLE_PROJECTS=mlir",
        "-DLLVM_TARGETS_TO_BUILD=host",
        "-DMLIR_ENABLE_BINDINGS_PYTHON=ON",
    ]
    run_cmake(llvm_dir, cmake_args, LLVM_BUILD_DIR)


def build_torch_mlir(base_cmake_args):
    torch_mlir_dir = os.path.join(EXTERNALS, "torch-mlir")
    torch_mlir_build_dir = os.path.join(ROOT_BUILD_DIR, "torch_mlir")
    python_bindings_dir = os.path.join(
        torch_mlir_build_dir, "tools", "torch-mlir", "python_packages", "torch_mlir"
    )
    if not os.path.exists(python_bindings_dir):
        os.makedirs(python_bindings_dir)

    cmake_args = base_cmake_args + [
        f'-DMLIR_DIR={os.path.join(LLVM_BUILD_DIR, "lib", "cmake", "mlir")}',
        f'-DLLVM_DIR={os.path.join(LLVM_BUILD_DIR, "lib", "cmake", "llvm")}',
        "-DMLIR_ENABLE_BINDINGS_PYTHON=ON",
        f"-DTORCH_MLIR_PYTHON_PACKAGES_DIR={python_bindings_dir}",
    ]
    subprocess.check_call(
        ["git", "submodule", "update", "--init", "--depth", "1", "externals/mlir-hlo"],
        cwd=torch_mlir_dir,
    )
    run_cmake(
        torch_mlir_dir,
        cmake_args,
        torch_mlir_build_dir,
    )
    subprocess.check_call(
        [sys.executable, "setup.py", "install"],
        cwd=torch_mlir_dir,
        env=dict(
            TORCH_MLIR_CMAKE_BUILD_DIR=torch_mlir_build_dir,
            TORCH_MLIR_CMAKE_BUILD_DIR_ALREADY_BUILT="1",
            # no clue why but this is unset otherwise in _osx_support.py
            PATH=os.environ["PATH"],
        ),
    )


def install_torch_mlir_from_wheel():
    torch_mlir_wheel = get_latest_torch_mlir()
    subprocess.check_call(
        [sys.executable, "-m", "pip", "install", torch_mlir_wheel],
        cwd=CWD,
    )


def build_circt(base_cmake_args):
    circt_dir = os.path.join(EXTERNALS, "circt")
    circt_build_dir = os.path.join(ROOT_BUILD_DIR, "circt")

    if not os.path.exists(os.path.join(EXTERNALS, "circt", "ext")):
        print("downloading or-tools")
        subprocess.check_call(
            ["bash", "get-or-tools.sh"],
            cwd=os.path.join(EXTERNALS, "circt", "utils"),
            shell=True,
        )

    cmake_args = base_cmake_args + [
        f'-DCMAKE_PREFIX_PATH="{LLVM_BUILD_DIR}"',
        f'-DMLIR_DIR={os.path.join(LLVM_BUILD_DIR, "lib", "cmake", "mlir")}',
        f'-DLLVM_DIR={os.path.join(LLVM_BUILD_DIR, "lib", "cmake", "llvm")}',
        "-DMLIR_ENABLE_BINDINGS_PYTHON=ON",
        "-DSCHEDULING_OR_TOOLS=ON",
    ]
    run_cmake(circt_dir, cmake_args, circt_build_dir)


def build_bragghls(base_cmake_args):
    bragghls_dir = CWD
    bragghls_build_dir = os.path.join(ROOT_BUILD_DIR, "bragghls")

    cmake_args = base_cmake_args + [
        f'-DCMAKE_PREFIX_PATH="{LLVM_BUILD_DIR}"',
        f'-DMLIR_DIR={os.path.join(LLVM_BUILD_DIR, "lib", "cmake", "mlir")}',
        f'-DLLVM_DIR={os.path.join(LLVM_BUILD_DIR, "lib", "cmake", "llvm")}',
        "-DMLIR_ENABLE_BINDINGS_PYTHON=ON",
        f"-Dpybind11_DIR={pybind11.get_cmake_dir()}",
    ]
    run_cmake(bragghls_dir, cmake_args, bragghls_build_dir, target="bragghls_translate")
    return bragghls_build_dir


def build_flopoco_converter(base_cmake_args):
    flopoco_converter_dir = os.path.join(CWD, "flopoco_convert_ext")
    build_dir = os.path.join(ROOT_BUILD_DIR, "flopoco_convert_ext")

    cmake_args = base_cmake_args + [
        f"-Dpybind11_DIR={pybind11.get_cmake_dir()}",
    ]
    run_cmake(flopoco_converter_dir, cmake_args, build_dir)
    return build_dir


class CMakeExtension(Extension):
    def __init__(self, name, sourcedir=""):
        Extension.__init__(self, name, sources=[])
        self.sourcedir = os.path.abspath(sourcedir)


def externals_file_changed():
    most_recent = 0
    for dir, subdir, files in os.walk(EXTERNALS):
        for name in files:
            most_recent = max(most_recent, os.stat(os.path.join(dir, name)).st_mtime)

    timestamp_f = os.path.join(CWD, ".externals_st_mtime")
    if not os.path.exists(timestamp_f):
        return True, most_recent
    else:
        last_externals_st_mtime = float(open(timestamp_f, "r").read())
        if most_recent > last_externals_st_mtime:
            return True, most_recent
        else:
            return False, last_externals_st_mtime


def get_latest_torch_mlir():
    python_version = sys.version_info
    python_version = f"cp{python_version.major}{python_version.minor}"
    platform = {"linux": "linux", "linux2": "linux", "darwin": "macosx"}[sys.platform]
    latest_release = requests.get(
        "https://api.github.com/repos/llvm/torch-mlir/releases/latest"
    ).json()
    torch_wheel = next(
        asset["browser_download_url"]
        for asset in latest_release["assets"]
        if "torch-" in asset["name"]
        and python_version in asset["name"]
        and platform in asset["name"]
    )
    torch_mlir_wheel = next(
        asset["browser_download_url"]
        for asset in latest_release["assets"]
        if "torch_mlir" in asset["name"]
        and python_version in asset["name"]
        and platform in asset["name"]
    )

    return torch_mlir_wheel


class CMakeBuild(build_ext):
    def build_extension(self, ext):
        # changed, _ = externals_file_changed()
        base_cmake_args = make_base_cmake_args()

        build_llvm(base_cmake_args)
        build_circt(base_cmake_args)
        build_bragghls(base_cmake_args)

        extdir = os.path.abspath(os.path.dirname(self.get_ext_fullpath(ext.name)))
        cmake_args = base_cmake_args + [
            f"-DCMAKE_LIBRARY_OUTPUT_DIRECTORY={extdir}",
        ]
        build_flopoco_converter(cmake_args)

        # _, most_recent = externals_file_changed()
        # open(os.path.join(CWD, ".externals_st_mtime"), "w").write(str(most_recent))


data_files = [
    (
        "bin/bragghls",
        [
            "build/bragghls/bin/bragghls_translate",
        ],
    ),
    (
        "bin",
        [
            "build/circt/bin/circt-opt",
        ],
    ),
]


def build_package_data():
    """implement the necessary function for develop"""
    prefix = Path(sys.executable).parent.parent.resolve()
    for dest_dir, filenames in data_files:
        os.makedirs(prefix / dest_dir, exist_ok=True)
        for filename in filenames:
            print(
                "CUSTOM SETUP.PY (build_package_data): copy %s to %s"
                % (filename, prefix / dest_dir)
            )
            copy2(filename, prefix / dest_dir)


class CustomDevelopCommand(develop):
    """Customized setuptools install command"""

    def run(self):
        develop.run(self)
        build_package_data()


setup(
    name="bragghls",
    version="0.1.0",
    author="Maksim Levental",
    author_email="maksim.levental@gmail.com",
    description="PyTorch model to RTL flow for low latency inference",
    long_description="",
    python_requires=">=3.10",
    packages=find_packages(where=str(Path(__file__).parent.resolve())),
    cmdclass={"build_ext": CMakeBuild, "develop": CustomDevelopCommand},
    ext_modules=[
        CMakeExtension(
            "bragghls.flopoco.flopoco_converter",
            sourcedir=os.path.join(CWD, "flopoco_convert_ext"),
        ),
    ],
    package_data={"bragghls": ["ip_cores/*.sv", "ip_cores/*.xdc"]},
    data_files=data_files,
    zip_safe=False,
    entry_points={
        "console_scripts": [
            "bragghls_compiler = bragghls.compiler.compile:main",
        ],
    },
)
