import os
import configparser

BRAGGHLS_CONFIG_FP = os.environ["BRAGGHLS_CONFIG_FP"]

config = configparser.ConfigParser()
config.read(BRAGGHLS_CONFIG_FP)

# import pprint
# pprint.pprint({section: dict(config.items(section)) for section in config.sections()})

VAL_PREFIX = "%"
DTYPE = "f32"
DEBUG = config["config"].getboolean("Debug")
INCLUDE_AUX_DEPS = True
USING_FLOPOCO = config["ip"].getboolean("UsingFlopoco")
MUL_PIPELINE_DEPTH = config["ip"].getint("MulPipelineDepth")
MUL_LATENCY = MUL_PIPELINE_DEPTH + 1
ADD_PIPELINE_DEPTH = config["ip"].getint("AddPipelineDepth")
ADD_LATENCY = ADD_PIPELINE_DEPTH + 1
WE = config["ip"].getint("WidthExponent")
WF = config["ip"].getint("WidthFraction")