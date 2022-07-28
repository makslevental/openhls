import re
import sys

arg_pat = r"%([a-zA-Z0-9]*)"
const_pat = r"%c(\d+)"
patt1 = rf"scf\.for {arg_pat} = {const_pat} to {const_pat} step {const_pat}"
patt2 = rf"scf\.parallel \({arg_pat}, {arg_pat}, {arg_pat}, {arg_pat}\) = \({const_pat}, {const_pat}, {const_pat}, {const_pat}\) to \({const_pat}, {const_pat}, {const_pat}, {const_pat}\) step \({const_pat}, {const_pat}, {const_pat}, {const_pat}\)"

cst_map = {}
old_lines = open(sys.argv[1]).readlines()
new_lines = []

for i, line in enumerate(old_lines):
    if "arith.constant" in line and "index" in line:
        matches = re.findall(r"%c([\d|_]+) = arith.constant (\d+) : index", line)[0]
        assert len(matches) == 2
        cst_map[f"%c{matches[0]}"] = matches[1]
    if "scf.for" in line or "scf.parallel" in line:
        for cst_ident, cst in cst_map.items():
            line = line.replace(cst_ident, cst)
        line = line.replace("scf", "affine")
    if "scf.yield" not in line:
        print(line)
