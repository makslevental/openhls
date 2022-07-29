import argparse
import re


def scf_to_affine(fp):
    cst_map = {}
    old_lines = open(fp).readlines()
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
            new_lines.append(line)

    return "\n".join(new_lines)


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("fp")
    args = parser.parse_args()
    print(scf_to_affine(args.fp))
