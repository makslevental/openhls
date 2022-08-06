import configparser
import logging
import os

BRAGGHLS_CONFIG_FP = os.environ["BRAGGHLS_CONFIG_FP"]

config = configparser.ConfigParser()
config.read(BRAGGHLS_CONFIG_FP)

VAL_PREFIX = "%"
DTYPE = "f32"
DEBUG = config["config"].getboolean("Debug")
INCLUDE_AUX_DEPS = True
USING_FLOPOCO = config["ip"].getboolean("UsingFlopoco")
MUL_PIPELINE_DEPTH = int(
    os.getenv("MUL_PIPELINE_DEPTH") or config["ip"].get("MulPipelineDepth")
)
MUL_LATENCY = MUL_PIPELINE_DEPTH + 1
ADD_PIPELINE_DEPTH = int(
    os.getenv("ADD_PIPELINE_DEPTH") or config["ip"].get("AddPipelineDepth")
)
ADD_LATENCY = ADD_PIPELINE_DEPTH + 1
WIDTH_EXPONENT = int(os.getenv("WIDTH_EXPONENT") or config["ip"].get("WidthExponent"))
WIDTH_FRACTION = int(os.getenv("WIDTH_FRACTION") or config["ip"].get("WidthFraction"))

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
ch.setLevel(config["config"]["logging_level"].upper())
ch.setFormatter(CustomFormatter())

logging.basicConfig(level=config["config"]["logging_level"].upper(), handlers=[ch])
