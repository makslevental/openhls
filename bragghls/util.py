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
