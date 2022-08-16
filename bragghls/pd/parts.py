import pickle
from collections import defaultdict

from bragghls.pd.bresenham import draw_text

# def get_tile_coords(device, name):
#     return device.getTile(name).getTileXCoordinate(), device.getTile(name).getTileYCoordinate()
#
#
# def start_jvm(jar_path):
#     if not jpype.isJVMStarted():
#         jpype.startJVM(classpath=jar_path)
#
#
# # https://github.com/Xilinx/RapidWright/releases/download/v2022.1.2-beta/rapidwright-2022.1.2-standalone-lin64.jar
# os.environ["JAVA_HOME"] = "/usr"
# api_lib_fp = (
#         Path(__file__).parent / "rapidwright-2022.1.2-standalone-lin64.jar"
# ).resolve()
# start_jvm(str(api_lib_fp))
#
# from com.xilinx.rapidwright.device import Device, TileTypeEnum
#
# dsp_row_cols = defaultdict(list)
# coord_tile = {}
#
# dsp_tiles = defaultdict(set)
# d = Device.getDevice("xcu280")
#
# device_dict = defaultdict(dict)
#
# offsets = [(-1, 0), (-1, 1), (1, 0), (1, 1)]
# for tile in d.getAllTiles():
#     tile_name = str(tile.getName())
#     device_dict[tile_name] = {
#         "tile_name": tile_name,
#         "tile_type": str(tile.getTileTypeEnum().name()),
#         "row": int(tile.getRow()),
#         "column": int(tile.getColumn()),
#         "slr": str(tile.getSLR().getName())
#     }
#     # device_dict[tile_name]["tile_neighbors"] = {}
#     # device_dict[tile_name]["tile_xy_neighbors"] = {}
#     # for offset in offsets:
#     #     if tile.getTileNeighbor(*offset):
#     #         device_dict[tile_name]["tile_neighbors"][offset] = str(tile.getTileNeighbor(*offset).getName())
#     #     if tile.getTileXYNeighbor(*offset):
#     #         device_dict[tile_name]["tile_xy_neighbors"][offset] = str(tile.getTileXYNeighbor(*offset).getName())
#     device_dict[tile_name]["tile_sites"] = {}
#     for site in tile.getSites():
#         device_dict[tile_name]["tile_sites"][str(site.getName())] = {
#             "site_type": str(site.getSiteTypeEnum().name()),
#         }
#
#
# pickle.dump(device_dict, open("xcu280.pth", "wb"))
device_dict = pickle.load(open("xcu280.pth", "rb"))
xy_to_tile = {}
for k, v in device_dict.items():
    xy_to_tile[(v["row"], v["column"])] = k

dsp_tiles = {k: v for k, v in device_dict.items() if v["tile_type"] == "DSP"}
slr_dsps = defaultdict(list)
for k, v in dsp_tiles.items():
    slr_dsps[v["slr"]].append(k)

slr_dims = {}
for slr, dsps in slr_dsps.items():
    slr_dims[slr] = {
        "rows": sorted(set(dsp_tiles[k]["row"] for k in dsps)),
        "columns": sorted(set(dsp_tiles[k]["column"] for k in dsps)),
    }

m_x, m_y = draw_text("M", (2, 5), width=32, height=60, thresh=240)
a_x, a_y = draw_text("A", (5, 0), width=32, height=48, thresh=240)
x_x, x_y = draw_text("X", width=32, height=33, thresh=240)

slr0_row, slr0_col = slr_dims["SLR0"]["rows"], slr_dims["SLR0"]["columns"]
slr1_row, slr1_col = slr_dims["SLR1"]["rows"], slr_dims["SLR1"]["columns"]
slr2_row, slr2_col = slr_dims["SLR2"]["rows"], slr_dims["SLR2"]["columns"]

f = open("/home/mlevental/dev_projects/bragghls/bragghls/pd/highlight.tcl", "w")

left_offsets = [(-i, -3) for i in range(5)]
right_offsets = [(-i, 1) for i in range(5)]
all_pblocks = []
for x, y in zip(m_x, m_y):
    this_pblock = []
    pblock = xy_to_tile[slr2_row[x], slr2_col[y]]
    this_pblock.append(pblock)
    print(f"highlight_objects [get_tiles {pblock}] -color red", file=f)
    for off_x, off_y in left_offsets:
        pblock = xy_to_tile[slr2_row[x] + off_x, slr2_col[y] + off_y]
        print(f"highlight_objects [get_tiles {pblock}] -color red", file=f)
        this_pblock.append(pblock)
    for off_x, off_y in right_offsets:
        pblock = xy_to_tile[slr2_row[x] + off_x, slr2_col[y] + off_y]
        print(f"highlight_objects [get_tiles {pblock}] -color red", file=f)
        this_pblock.append(pblock)
    all_pblocks.append(this_pblock)

for x, y in zip(a_x, a_y):
    this_pblock = []
    pblock = xy_to_tile[slr1_row[x - 10], slr1_col[y]]
    print(f"highlight_objects [get_tiles {pblock}] -color blue", file=f)
    this_pblock.append(pblock)
    for off_x, off_y in left_offsets:
        pblock = xy_to_tile[slr1_row[x - 10] + off_x, slr1_col[y] + off_y]
        print(f"highlight_objects [get_tiles {pblock}] -color blue", file=f)
        this_pblock.append(pblock)
    for off_x, off_y in right_offsets:
        pblock = xy_to_tile[slr1_row[x - 10] + off_x, slr1_col[y] + off_y]
        print(f"highlight_objects [get_tiles {pblock}] -color blue", file=f)
        this_pblock.append(pblock)
    all_pblocks.append(this_pblock)

for x, y in zip(x_x, x_y):
    this_pblock = []
    pblock = xy_to_tile[slr0_row[x], slr0_col[y]]
    print(f"highlight_objects [get_tiles {pblock}] -color green", file=f)
    this_pblock.append(pblock)
    for off_x, off_y in left_offsets:
        pblock = xy_to_tile[slr0_row[x] + off_x, slr0_col[y] + off_y]
        print(f"highlight_objects [get_tiles {pblock}] -color green", file=f)
        this_pblock.append(pblock)
    for off_x, off_y in right_offsets:
        pblock = xy_to_tile[slr0_row[x] + off_x, slr0_col[y] + off_y]
        print(
            f"highlight_objects [get_tiles {xy_to_tile[slr0_row[x] + off_x, slr0_col[y] + off_y]}] -color green",
            file=f,
        )
        this_pblock.append(pblock)
    all_pblocks.append(this_pblock)


f = open("/home/mlevental/dev_projects/bragghls/bragghls/pd/pblock.tcl", "w")
for i in range(len(all_pblocks) // 3):
    print(f"create_pblock pblock_fmul_{i}", file=f)
    j = 3 * i
    mul_pbock = all_pblocks[j]
    for tile in mul_pbock:
        for site in device_dict[tile]["tile_sites"]:
            print(f"resize_pblock [get_pblocks pblock_fmul_{i}] -add {{{site}}}", file=f)
    print(
        f"add_cells_to_pblock pblock_fmul_{i} [get_cells [list fmul_{i}]] -clear_locs", file=f
    )
    print(file=f)

    print(f"create_pblock pblock_fadd_{i}", file=f)
    add_pbock = all_pblocks[j + 1] + all_pblocks[j + 2]
    for tile in add_pbock:
        for site in device_dict[tile]["tile_sites"]:
            print(f"resize_pblock [get_pblocks pblock_fadd_{i}] -add {{{site}}}", file=f)
    print(
        f"add_cells_to_pblock pblock_fadd_{i} [get_cells [list fadd_{i}]] -clear_locs", file=f
    )
    print(file=f)
