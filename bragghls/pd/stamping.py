from bragghls.pd import rapidright
from pprint import pprint
rapidright

from com.xilinx.rapidwright.device import Device, TileTypeEnum
from com.xilinx.rapidwright.device.helper import TileColumnPattern

device = Device.getDevice("xcvu3p-ffvc1517-2-i")
colMap = TileColumnPattern.genColumnPatternMap(device)

filtered = list(filter(lambda e: TileTypeEnum.BRAM in e.getKey() and e.getKey().size() == 1, colMap.entrySet()))
print(filtered)
# print(colMap)

filtered = list(filter(lambda e: TileTypeEnum.BRAM in e.getKey() and not TileTypeEnum.DSP in e.getKey() and e.getKey().size() == 5, colMap.entrySet()))
filtered.sort(key=lambda x: x.getValue().size(), reverse=True)
pprint(list(map(str, filtered)))