import configparser
import logging
import os
import re
from pathlib import Path

from bragghls import ip_cores

root_config_path = Path(__file__).parent.parent.resolve() / "bragghls_config.ini"
if os.path.exists(root_config_path):
    BRAGGHLS_CONFIG_FP = root_config_path
else:
    BRAGGHLS_CONFIG_FP = os.environ["BRAGGHLS_CONFIG_FP"]

config = configparser.ConfigParser()
config.read(BRAGGHLS_CONFIG_FP)

VAL_PREFIX = "%"
DTYPE = "f32"
DEBUG = config["config"].getboolean("Debug")
INCLUDE_AUX_DEPS = config["config"].getboolean("IncludeAuxDeps")
REGISTER_TILES_TWICE = config["config"].getboolean("RegisterTilesTwice")
KEEP_IPS = config["config"].getboolean("KeepIPs")
USE_UNIQUE_IP_PARAM = config["config"].getboolean("UseUniqueIpParam")
LOOP_TILING_FACTOR = config["config"].getint("LoopTilingFactor")

WIDTH_EXPONENT = int(os.getenv("WIDTH_EXPONENT") or config["ip"].get("WidthExponent"))
WIDTH_FRACTION = int(os.getenv("WIDTH_FRACTION") or config["ip"].get("WidthFraction"))

USING_FLOPOCO = config["ip"].getboolean("UsingFlopoco")

if USING_FLOPOCO:
    pipeline_depth_re = re.compile(r"Pipeline depth: (\d+) cycles")
    with open(
        Path(ip_cores.__file__).parent
        / f"flopoco_fmul_{WIDTH_EXPONENT}_{WIDTH_FRACTION}.vhdl"
    ) as f:
        depths = pipeline_depth_re.findall(f.read())
        MUL_PIPELINE_DEPTH = int(depths[-1])
    with open(
        Path(ip_cores.__file__).parent
        / f"flopoco_fadd_{WIDTH_EXPONENT}_{WIDTH_FRACTION}.vhdl"
    ) as f:
        depths = pipeline_depth_re.findall(f.read())
        ADD_PIPELINE_DEPTH = int(depths[-1])
    with open(
        Path(ip_cores.__file__).parent
        / f"flopoco_fdiv_{WIDTH_EXPONENT}_{WIDTH_FRACTION}.vhdl"
    ) as f:
        depths = pipeline_depth_re.findall(f.read())
        DIV_PIPELINE_DEPTH = int(depths[-1])
else:
    MUL_PIPELINE_DEPTH = int(
        os.getenv("MUL_PIPELINE_DEPTH") or config["ip"].get("MulPipelineDepth")
    )
    DIV_PIPELINE_DEPTH = int(
        os.getenv("DIV_PIPELINE_DEPTH") or config["ip"].get("DivPipelineDepth")
    )
    # DIV_RADIX = int(os.getenv("DIV_RADIX") or config["ip"].get("DivRadix"))
    ADD_PIPELINE_DEPTH = int(
        os.getenv("ADD_PIPELINE_DEPTH") or config["ip"].get("AddPipelineDepth")
    )

MUL_LATENCY = MUL_PIPELINE_DEPTH + 1
DIV_LATENCY = DIV_PIPELINE_DEPTH + 1
ADD_LATENCY = ADD_PIPELINE_DEPTH + 1


_nameToLevel = {
    "CRITICAL": logging.CRITICAL,
    "FATAL": logging.FATAL,
    "ERROR": logging.ERROR,
    "WARN": logging.WARNING,
    "WARNING": logging.WARNING,
    "INFO": logging.INFO,
    "DEBUG": DEBUG,
    "NOTSET": logging.NOTSET,
}


class CustomFormatter(logging.Formatter):
    # grey = "\x1b[38;20m"
    # yellow = "\x1b[33;20m"
    # red = "\x1b[31;20m"
    # green = "\x1b[32;20m"
    # bold_red = "\x1b[31;1m"
    # reset = "\x1b[0m"
    grey = "\x1b[38;21m"
    green = "\x1b[1;32m"
    yellow = "\x1b[33;21m"
    red = "\x1b[31;21m"
    bold_red = "\x1b[31;1m"
    blue = "\x1b[1;34m"
    light_blue = "\x1b[1;36m"
    purple = "\x1b[1;35m"
    reset = "\x1b[0m"

    format = (
        # "%(asctime)s - %(name)s - %(levelname)s - %(message)s (%(filename)s:%(lineno)d)"
        "%(asctime)s - %(levelname)s - BraggHLS - %(module)s - %(message)s"
    )

    FORMATS = {
        logging.DEBUG: grey + format + reset,
        logging.INFO: blue + format + reset,
        logging.WARNING: yellow + format + reset,
        logging.ERROR: red + format + reset,
        logging.CRITICAL: bold_red + format + reset,
    }

    def format(self, record):
        log_fmt = self.FORMATS.get(record.levelno)
        formatter = logging.Formatter(log_fmt)
        return formatter.format(record)


ch = logging.StreamHandler()
ch.setLevel(config["config"]["LoggingLevel"].upper())
ch.setFormatter(CustomFormatter())

logging.basicConfig(level=config["config"]["LoggingLevel"].upper(), handlers=[ch])
