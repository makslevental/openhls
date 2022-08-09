import argparse
import json
import logging
import os
import os.path
import sys
from pathlib import Path

import numpy as np

from bragghls.testbench.cocotb_runner import get_runner

logger = logging.getLogger(__file__)


def testbench_runner(
    proj_path,
    module_fp,
    sv_file_name,
    top_level,
    max_fsm_stage,
    output_map,
    width_exponent,
    width_fraction,
    ip_cores_path=(Path(__file__) / "../../../ip_cores").resolve(),
    n_test_vectors=10,
    threshold=None,
):
    proj_path = Path(proj_path).resolve()
    ip_cores_path = Path(ip_cores_path).resolve()
    verilog_sources = [
        proj_path / sv_file_name,
        ip_cores_path / f"flopoco_fmul_{width_exponent}_{width_fraction}.sv",
        ip_cores_path / f"flopoco_fadd_{width_exponent}_{width_fraction}.sv",
        ip_cores_path / f"flopoco_fdiv_{width_exponent}_{width_fraction}.sv",
        ip_cores_path / "flopoco_relu.sv",
        ip_cores_path / "flopoco_neg.sv",
    ]
    runner = get_runner("icarus")()
    runner.build(
        verilog_sources=verilog_sources,
        toplevel=top_level,
        build_dir=proj_path,
        # extra_args=[
        #     "-Wno-WIDTH",
        #     "-Wno-TIMESCALEMOD",
        #     "-Wno-COMBDLY",
        #     "-Wno-STMTDLY",
        #     "--trace",
        # ],
    )
    runner.test(
        toplevel=top_level,
        python_search=[Path(__file__).parent.resolve()],
        py_module="tb",
        extra_env={
            "VIRTUAL_ENV": (Path(sys.executable) / "../..").resolve(),
            "WIDTH_EXPONENT": str(width_exponent),
            "WIDTH_FRACTION": str(width_fraction),
            "MAX_FSM_STAGE": str(max_fsm_stage),
            "N_TEST_VECTORS": str(n_test_vectors),
            "MODULE_FP": module_fp,
            "THRESHOLD": str(threshold if threshold is not None else 0),
            "TB_RANDOM": os.getenv("TB_RANDOM", f"{np.random.randint(1, 100)}"),
            "OUTPUT_MAP": json.dumps({str(k): v for k, v in output_map.items()}),
        },
        build_dir=proj_path,
        sim_dir=proj_path,
        waves=True,
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("proj_path")
    parser.add_argument("sv_file_name")
    parser.add_argument("max_fsm_stage", type=int)
    parser.add_argument(
        "--ip_cores_path",
        type=Path,
        default=(Path(__file__) / "../../ip_cores").resolve(),
    )
    parser.add_argument("--top_level")
    parser.add_argument("--py_module")
    parser.add_argument(
        "--python_search",
        type=Path,
        default=(Path(__file__) / "../../examples").resolve(),
    )
    parser.add_argument("--width_exponent", default="4")
    parser.add_argument("--width_fraction", default="4")
    args = parser.parse_args()
    if args.top_level is None:
        args.top_level = os.path.splitext(args.sv_file_name)[0]
    if args.py_module is None:
        args.py_module = f"{os.path.splitext(args.sv_file_name)[0]}_tb"
    args.ip_cores_path = args.ip_cores_path.resolve()
    args.python_search = args.python_search.resolve()
    testbench_runner(
        args.proj_path,
        args.sv_file_name,
        args.top_level,
        args.py_module,
        args.max_fsm_stage,
        args.ip_cores_path,
        args.python_search,
        args.width_exponent,
        args.width_fraction,
    )
