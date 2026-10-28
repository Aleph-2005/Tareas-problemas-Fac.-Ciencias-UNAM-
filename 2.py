import numpy as np
import matplotlib.pyplot as plt
np.random.seed(42)
m=1000
N=5
centro=2
thetas = np.random.normal(loc=0.0, scale=1.0,size=m)
X_datos =centro+np.random.standard_cauchy(N)
n=len(X_datos)
print(f"-----Simulación multivariada (m={m} tamaño de muestra, n={N} tamaño de muestra inicial)---")
thetas_col=thetas[:,np.newaxis]
X_fila=X_datos[np.newaxis,:]
Mat_den =1 / (1 + (X_fila - thetas_col)**2)
ver_conj=np.prod(Mat_den,axis=1)
aprox_int=(np.sqrt(2*np.pi)*np.mean(ver_conj))
print(f"Valor aproximado de la integral: {aprox_int:.12}")



