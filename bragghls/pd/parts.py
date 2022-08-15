import os
from collections import defaultdict
from pathlib import Path

import jpype
import jpype.imports
import matplotlib.pyplot as plt
from cycler import cycler
from matplotlib.pyplot import figure

from bragghls.pd.bresenham import bresenham


def start_jvm(jar_path):
    if not jpype.isJVMStarted():
        jpype.startJVM(classpath=jar_path)


# https://repo1.maven.org/maven2/com/xilinx/rapidwright/rapidwright-api-lib/2022.1.2/rapidwright-api-lib-2022.1.2.jar
# https://repo1.maven.org/maven2/com/xilinx/rapidwright/rapidwright/2022.1.2/rapidwright-2022.1.2.jar
os.environ[
    "JAVA_HOME"
] = "/Users/mlevental/Library/Java/JavaVirtualMachines/corretto-17.0.3/Contents/Home/"
api_lib_fp = (
    Path(__file__).parent / "rapidwright-2022.1.2-standalone-lin64.jar"
).resolve()
start_jvm(str(api_lib_fp))

from com.xilinx.rapidwright.device import Device, TileTypeEnum

dsp_row_cols = defaultdict(list)
dsp_row_cols = defaultdict(list)
coord_tile = {}

dsp_tiles = defaultdict(set)
d = Device.getDevice("xcu280")
for tile in d.getAllTiles():
    if tile.getTileTypeEnum() == TileTypeEnum.DSP:
        dsp_row_cols[tile.getSLR().getName()].append(
            (tile.getTileXCoordinate(), tile.getTileYCoordinate())
        )
        coord_tile[tile.getTileXCoordinate(), tile.getTileYCoordinate()] = tile
        for site in tile.getSites():
            dsp_tiles[tile.getTileTypeEnum().name()].add(site.getSiteTypeEnum().name())

idx_to_slrxy_map = {}
for slr in ["SLR0", "SLR1", "SLR2"]:
    idx_to_slrxy_map[slr] = {
        "xs": sorted(set([x for x, y in dsp_row_cols[slr]])),
        "ys": sorted(set([y for x, y in dsp_row_cols[slr]])),
    }

# print(bresenham(
#     [4, 2],
#     [4, 57])
# )
m_left_leg = [[4, i] for i in range(20, 57 + 1)]
m_left_slope = list(bresenham([15, 20], [4, 57]))
m_right_slope = list(
    bresenham(
        [15, 20],
        [28, 57],
    )
)
m_right_leg = [[28, i] for i in range(57, 19, -1)]

a_left_slope = list(bresenham([4, 15], [15, 45]))
a_cross = [[i, 22] for i in range(10, 21)]
a_right_slope = list(
    bresenham(
        [28, 15],
        [15, 45],
    )
)

x_left_slope = list(bresenham([4, 2], [28, 31]))
x_right_slope = list(
    bresenham(
        [28, 2],
        [4, 31],
    )
)

default_cycler = cycler(color=["r", "g", "b", "y"])
plt.rc("axes", prop_cycle=default_cycler)
figure(figsize=(10, 20), dpi=300)
for slr, coords in dsp_row_cols.items():
    plt.scatter([x for x, y in coords], [y for x, y in coords], label=slr)

m_xs = [
    idx_to_slrxy_map["SLR2"]["xs"][x]
    for x, _y in m_left_leg + m_left_slope + m_right_slope + m_right_leg
]
m_ys = [
    idx_to_slrxy_map["SLR2"]["ys"][y]
    for _x, y in m_left_leg + m_left_slope + m_right_slope + m_right_leg
]
plt.scatter(m_xs, m_ys, label="M")
m_tiles = [coord_tile[x, y] for x, y in zip(m_xs, m_ys)]

a_xs = [
    idx_to_slrxy_map["SLR1"]["xs"][x]
    for x, _y in a_left_slope + a_cross + a_right_slope
]
a_ys = [
    idx_to_slrxy_map["SLR1"]["ys"][y]
    for _x, y in a_left_slope + a_cross + a_right_slope
]
plt.scatter(a_xs, a_ys, label="A", color="y")
a_tiles = [coord_tile[x, y] for x, y in zip(a_xs, a_ys)]

x_xs = [idx_to_slrxy_map["SLR0"]["xs"][x] for x, _y in x_left_slope + x_right_slope]
x_ys = [idx_to_slrxy_map["SLR0"]["ys"][y] for _x, y in x_left_slope + x_right_slope]
plt.scatter(x_xs, x_ys, label="X", color="y")
x_tiles = [coord_tile[x, y] for x, y in zip(x_xs, x_ys)]

plt.legend()
plt.show()

tile_clem_neighbor = {}
for tile in m_tiles + a_tiles + x_tiles:
    clem_neighors = [
        tile.getTileNeighbor(*offset)
        for offset in [(-1, 0), (0, -1), (-1, -1), (1, 1)]
        if "CLEM" in tile.getTileNeighbor(*offset).getName()
    ]
    assert len(clem_neighors)
    tile_clem_neighbor[tile] = clem_neighors

print(len(tile_clem_neighbor))

_tmp = list(tile_clem_neighbor.items())
for i in range(50):
    print(f"create_pblock pblock_fmul_{i}")
    j = 6 * i
    for k in range(j, j + 5):
        tile, neigh = _tmp[k]
        for site in tile.getSites():
            print(
                f"resize_pblock [get_pblocks pblock_fmul_{i}] -add {{{site.getName()}}}"
            )
        for neig in neigh:
            for site in neig.getSites():
                print(
                    f"resize_pblock [get_pblocks pblock_fmul_{i}] -add {{{site.getName()}}}"
                )
    print(
        f"add_cells_to_pblock pblock_fmul_{i} [get_cells [list fmul_{i}]] -clear_locs"
    )
    print()
    # print(f"create_pblock pblock_fadd_{i}")
    # for k in range(j + 2, j + 6):
    #     tile, neigh = _tmp[k]
    #     for site in tile.getSites():
    #         print(f"resize_pblock [get_pblocks pblock_fadd_{i}] -add {{{site.getName()}}}")
    #     for neig in neigh:
    #         for site in neig.getSites():
    #             print(f"resize_pblock [get_pblocks pblock_fadd_{i}] -add {{{site.getName()}}}")
    # print(f"add_cells_to_pblock pblock_fadd_{i} [get_cells [list fadd_{i}]] -clear_locs")
    # print()
