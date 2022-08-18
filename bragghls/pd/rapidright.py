import os
from pathlib import Path
import jpype
import jpype.imports

def get_tile_coords(device, name):
    return device.getTile(name).getTileXCoordinate(), device.getTile(name).getTileYCoordinate()


def start_jvm(jar_path):
    if not jpype.isJVMStarted():
        jpype.startJVM(classpath=jar_path)


# https://github.com/Xilinx/RapidWright/releases/download/v2022.1.2-beta/rapidwright-2022.1.2-standalone-lin64.jar
os.environ["JAVA_HOME"] = "/usr"
api_lib_fp = (
        Path(__file__).parent / "rapidwright-2022.1.2-standalone-lin64.jar"
).resolve()
start_jvm(str(api_lib_fp))

