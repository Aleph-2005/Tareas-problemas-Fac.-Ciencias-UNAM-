import numpy as np
from scipy.stats import beta

rng = np.random.default_rng(123)
theta0, n, R, alpha = 0.35, 20, 1000, 0.10
a0 = b0 = 0.5
level = 1 - alpha

# Datos
muestras = rng.binomial(1, theta0, size=(R, n))
x = muestras.sum(axis=1)
A = x + a0
B = n - x + b0

# Grilla de a (M x 1) y parámetros (1 x R) -> broadcasting
M = 2000
a_grid = np.linspace(0, 1 - level, M)[:, None]      # (M,1)
A_ = A[None, :]                                      # (1,R)
B_ = B[None, :]

# b(a) para cada (a, muestra): qbeta(pbeta(a)+level)
pa = beta.cdf(a_grid, A_, B_)                        # (M,R)
pb = pa + level
b_grid = beta.ppf(pb, A_, B_)                        # (M,R)

# Longitudes y mínimo por columna
L = b_grid - a_grid                                  # (M,R)
idx = np.argmin(L, axis=0)                           # (R,)
a_opt = a_grid[idx, 0]                               # (R,)
b_opt = b_grid[idx, np.arange(R)]                    # (R,)

li, ls = a_opt, b_opt
cubre = (li <= theta0) & (theta0 <= ls)
print("Cobertura:", cubre.mean(), "| Aciertos:", cubre.sum())
print("Longitud media:", (ls - li).mean())