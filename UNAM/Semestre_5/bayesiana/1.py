import os
import numpy as np
import matplotlib.pyplot as plt

# 1. Ajuste de reproducibilidad y simulación de la muestra física real
np.random.seed(42)
theta_real = 2.0
m = 5
# Generación de la muestra de datos observados (Cauchy estándar centrada en 2)
x_sample = np.random.standard_cauchy(m) + theta_real

# Iteraciones de Monte Carlo para la aproximación de la constante C
n_sim = 10000  
pasos = np.arange(1, n_sim + 1)

# 2. Definición del modelo matemático 
def f_normal_std(theta):
    return (1.0 / np.sqrt(2 * np.pi)) * np.exp(-0.5 * theta**2)

def verosimilitud_conjunta(theta, sample):
    if np.isscalar(theta):
        return np.prod(1.0 / (np.pi * (1.0 + (sample - theta)**2)))
    else:
        prod_val = np.ones_like(theta)
        for x in sample:
            prod_val *= (1.0 / (np.pi * (1.0 + (x - theta)**2)))
        return prod_val

# 3. Implementación de la Forma 2 (Cauchy Instrumental en x_1)
x1 = x_sample[0]  # El centro de nuestra Cauchy de simulación es el primer dato observado
thetas_simulados = np.random.standard_cauchy(n_sim) + x1

# Evaluar el producto de verosimilitudes para los m-1 datos restantes de la muestra
prod_restante = np.ones_like(thetas_simulados)
for x in x_sample[1:]:
    prod_restante *= (1.0 / (np.pi * (1.0 + (x - thetas_simulados)**2)))

# Evaluamos la densidad bajo la Normal estándar combinada con los pesos restantes
eval_forma2 = f_normal_std(thetas_simulados) * prod_restante
estimacion_acumulada = np.cumsum(eval_forma2) / pasos

# 4. Cálculo del valor exacto por cuadratura numérica (Referencia)
grid = np.linspace(-15, 20, 200000)
y_conjunta = verosimilitud_conjunta(grid, x_sample) * f_normal_std(grid)
c_exacta = np.trapz(y_conjunta, grid)

# 5. Guardar el registro de convergencia histórica en disco
os.makedirs('generated', exist_ok=True)
ruta_txt = 'generated/simulacion_cauchy_centrada_2.txt'
with open(ruta_txt, 'w', encoding='utf-8') as f:
    f.write("Iteracion(n),Valor Estimado,Valor Real C,Error Absoluto\n")
    for idx in range(0, n_sim, 100):
        f.write(f"{pasos[idx]},{estimacion_acumulada[idx]:.8f},{c_exacta:.8f},{abs(estimacion_acumulada[idx] - c_exacta):.8f}\n")

# 6. Graficación de la trayectoria de la LGN
plt.figure(figsize=(9, 4.5))
plt.plot(pasos, estimacion_acumulada, label=r'Estimador $\hat{C}_2$ (Muestreo Cauchy en $x_1$)', color='#e377c2', lw=1.5)
plt.axhline(y=c_exacta, color='black', linestyle='--', label=r'Valor exacto $C$', lw=1.5)
plt.title(r'Convergencia Monte Carlo para muestra proveniente de Cauchy($\theta=2$)', fontsize=11, pad=10)
plt.xlabel('Iteraciones de la simulación (n)', fontsize=10)
plt.ylabel('Valor de C', fontsize=10)
plt.grid(True, linestyle=':', alpha=0.6)
plt.legend(fontsize=9, loc='upper right')
plt.show()

# Imprimir reporte analítico final
print(f"Muestra física real generada: {np.round(x_sample, 3)}")
print(f"Estimación de Monte Carlo (n={n_sim}): {estimacion_acumulada[-1]:.8f}")
print(f"Valor Real por cuadratura (C):       {c_exacta:.8f}")
print(f"Error Absoluto Final:               {abs(estimacion_acumulada[-1] - c_exacta):.8f}")