from math import log2, log
from scipy.optimize import minimize, rosen, rosen_der
import matplotlib.pyplot as plt
import numpy as np

from openhls.rtl.convert_flopoco import convert_float_to_flopoco_binary_str


L = 2 ** 4
B = 2 ** 3 - 1

trues = []
approx = []
xs = []

eps = 1e-3


def safe_log(x):
    if x > eps:
        return log2(x)
    logeps = log2(eps)
    a = 1 / (3 * eps * (3 * logeps * eps) ** 2)
    b = eps * (1 - 3 * logeps)
    return a * (x - b) ** 3


xs = np.linspace(2, 10, 100)


def diff(x):
    true = lambda y: int(convert_float_to_flopoco_binary_str(y)[3:], 2)
    approx = lambda y: L * safe_log(y) + L * (B - x)
    d = lambda y: abs(true(y) - approx(y))
    return np.array(list(map(d, xs))).sum()


res = minimize(
    diff, [0.1], method="BFGS", bounds=[(0, 0.2)], options={"gtol": 1e-6, "disp": True}
)

print("sigma", res.x)
sigma = res.x

for x in xs:
    s = convert_float_to_flopoco_binary_str(x)
    j = int(s[3:], 2)
    trues.append(j)
    appro = L * log2(x) + L * (B - sigma)
    approx.append(appro)

plt.plot(xs, trues, label="$int(x)$")
plt.plot(xs, approx, label="$L\, \log_2(x) + L(B-\sigma)$")
plt.xlabel("float(x)")
plt.legend()
plt.show()
