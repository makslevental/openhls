import importlib


def extend_idx(pe_idx, extend_len=5):
    idx = pe_idx[:]
    if len(pe_idx) < extend_len:
        idx = extend_len * [0]
        idx[-len(pe_idx) :] = pe_idx
    pe_idx = tuple(idx)
    return pe_idx


def remove_all_leading_whitespace(st):
    return "\n".join([s.strip() for s in st.split("\n")])


def idx_to_str(idx):
    return "_".join(map(str, idx))


def chunks(lst, n):
    for i in range(0, len(lst), n):
        yield lst[i : i + n]


def import_module_from_string(name: str, source: str):
    spec = importlib.util.spec_from_loader(name, loader=None)
    module = importlib.util.module_from_spec(spec)
    exec(source, module.__dict__)
    return module


def import_module_from_fp(name: str, fp: str):
    spec = importlib.util.spec_from_file_location(name, fp)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod
