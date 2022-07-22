def extend_idx(pe_idx):
    idx = pe_idx[:]
    if len(pe_idx) < 4:
        idx = 4 * [0]
        idx[-len(pe_idx) :] = pe_idx
    pe_idx = tuple(idx)
    return pe_idx


def remove_all_leading_whitespace(st):
    return "\n".join([s.strip() for s in st.split("\n")])
