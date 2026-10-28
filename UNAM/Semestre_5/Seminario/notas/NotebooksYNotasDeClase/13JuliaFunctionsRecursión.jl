### A Pluto.jl notebook ###
# v1.0.3

using Markdown
using InteractiveUtils

# ╔═╡ 156e8527-153b-4818-8216-ed2952cc31a1
include("src/nbutils.jl")

# ╔═╡ 698c1564-46f9-11ef-2b5f-e13d149df5f3
md"""
# *Functions* Recursivas
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ 6990ffa0-46f9-11ef-155a-ef6c59a1e8d1
md"""
## *Functions* recursivas y recursión
Una *function* que se llama a si misma le llama *recursiva* y al proceso de ejecutar dicha *function* se le llama *recursión*.

Este es un proceso muy útil para ejecutar las "mismas" instrucciones de manera repetida."""

# ╔═╡ 69910056-46f9-11ef-2f4b-f9d8d6662da9
md"""
## Ejemplo: Conteo descendente
Queremos imprimir el conteo descendente de $n$ a $1$.

Este es el algoritmo:
Dado $n$
- Imprimir $n$.
- Imprimir $n-1$.
-  $\dots$
- Imprimir $1$.
"""

# ╔═╡ 8e43d6f1-a84d-44dc-a1e7-4a5c06f569b5
foldable0(md"""De modo que la instrucción que se repite es "imprimir $n$ y disminuir $n$ en uno". Claro, hay que detenerse si después de disminuir $n$ nos queda $0$.""")

# ╔═╡ 1a8fa8f6-c319-4185-8450-553c0846e263
md"""
## Ejemplo: Conteo descendente en recursión
"""

# ╔═╡ 6991020c-46f9-11ef-0bfc-1dad8e70b593
function countdown(n)
    if n < 1
        return
    end
    print(n, " ")
    countdown(n-1) # llamándose a si misma
end

# ╔═╡ 6991025e-46f9-11ef-1101-717ccc5409b9
foldable(md"La palabra clave `return`", md"""
La palabra clave `return` sólo se puede usar dentro de *functions* y significa que la *function* debe "regresar" (quizá con un valor) a donde fue llamada, y por lo tanto se detiene su ejecución.""")

# ╔═╡ 20de8db6-6e1e-4f2b-a1b0-b0fc46cc6754
md"""
## Ejemplo: Recursión
"""

# ╔═╡ 69910286-46f9-11ef-1d89-d1fe33a7f5fc
#countdown(10)

# ╔═╡ 699102a4-46f9-11ef-0221-d5a690729d17
md"""
## Ejemplo: Conteo descendente con detalle
Conteo descendente de $n$ a $1$, con detalle de las llamadas de la *function* en la recursión
"""

# ╔═╡ 699102d6-46f9-11ef-08ff-5d5216874352
function countdowncalls(n)
    println(">"^n, " Entra countdowncalls($n) ")
    if n < 1
        println(" Sale countdowncalls($n), return para detener la recursión")
        return
    end
    println(n)
    countdowncalls(n-1) # llamándose a si misma
    println("<"^n, " Sale countdowncalls($n)")
end

# ╔═╡ c215a6b0-b0fe-4bc5-8c36-139fb9a983e6
md"""
## Ejemplo: Conteo descendente con detalle
"""

# ╔═╡ 699102e2-46f9-11ef-2c18-bb761960eb47
#countdowncalls(0)

# ╔═╡ 699102fe-46f9-11ef-1bba-03fd2034bfc1
md"""
## Ejemplo: Factorial
$$n!=\begin{cases}
1       & \mathrm{si} \ \ n=0 \\
n(n-1)! & \mathrm{si} \ \ n>0
\end{cases}$$
"""

# ╔═╡ 69910314-46f9-11ef-017f-372195dcd6f9
function fact(n)
    if n == 0
        return 1
    end
    n*fact(n-1)
end

# ╔═╡ 69910326-46f9-11ef-260c-f98c0c942c76
#fact(5)

# ╔═╡ 699103b2-46f9-11ef-36bf-7128b152f39a
md"""
## Ejemplo: Secuencia de Fibonacci
$$F_n=\begin{cases}
1               & si \ \ n=1,2 \\
F_{n-2}+F_{n-1} & si \ \ n>2
\end{cases}$$
"""

# ╔═╡ 699103bc-46f9-11ef-3cf9-fb77a7540317
fib(n) = n <= 2 ? 1 : fib(n-2) + fib(n-1)

# ╔═╡ 699103da-46f9-11ef-1490-b508105b0bdc
#fib(12)

# ╔═╡ be450a1a-af6b-47a1-9436-3caf4d2d54bb
md"""
## Ejemplo: Secuencia de Fibonacci
Nótese que las recursión de `fib` se puede representar en un árbol (digráfica) con las bifurcaciones determinadas por `fib(n-1)` y `fib(n-2)`.

![FibTree](https://willrosenbaum.com/assets/img/recursive-fibonacci/tree.png)
"""

# ╔═╡ a7a6332f-3b6f-4622-a401-fa3fb3e17835
md"""
# Observaciones

En general, no se recomienda utilizar recursión pues cuando se utiliza una gran cantidad de repeticiones se corre el riesgo de utilizar mucha memoria por la gran cantidad de *functions* anidadas y variables internas a cada *function*...
"""

# ╔═╡ 5d75990b-c330-43ec-b3e5-1a2a4174d4f3
foldable0(md"""
Sin embargo, en muchas ocasiones el uso de recursión es natural y fácil de implementar (como en los casos del factorial y números de Fibonacci), por lo que no debe evitarse si es lo más conveniente.
""")

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.7"
manifest_format = "2.0"
project_hash = "71853c6197a6a7f222db0f1978c7cb232b87c5ee"

[deps]
"""

# ╔═╡ Cell order:
# ╟─698c1564-46f9-11ef-2b5f-e13d149df5f3
# ╟─6990ffa0-46f9-11ef-155a-ef6c59a1e8d1
# ╟─69910056-46f9-11ef-2f4b-f9d8d6662da9
# ╟─8e43d6f1-a84d-44dc-a1e7-4a5c06f569b5
# ╟─1a8fa8f6-c319-4185-8450-553c0846e263
# ╠═6991020c-46f9-11ef-0bfc-1dad8e70b593
# ╟─6991025e-46f9-11ef-1101-717ccc5409b9
# ╟─20de8db6-6e1e-4f2b-a1b0-b0fc46cc6754
# ╠═69910286-46f9-11ef-1d89-d1fe33a7f5fc
# ╟─699102a4-46f9-11ef-0221-d5a690729d17
# ╠═699102d6-46f9-11ef-08ff-5d5216874352
# ╟─c215a6b0-b0fe-4bc5-8c36-139fb9a983e6
# ╠═699102e2-46f9-11ef-2c18-bb761960eb47
# ╟─699102fe-46f9-11ef-1bba-03fd2034bfc1
# ╠═69910314-46f9-11ef-017f-372195dcd6f9
# ╠═69910326-46f9-11ef-260c-f98c0c942c76
# ╟─699103b2-46f9-11ef-36bf-7128b152f39a
# ╠═699103bc-46f9-11ef-3cf9-fb77a7540317
# ╠═699103da-46f9-11ef-1490-b508105b0bdc
# ╟─be450a1a-af6b-47a1-9436-3caf4d2d54bb
# ╟─a7a6332f-3b6f-4622-a401-fa3fb3e17835
# ╟─5d75990b-c330-43ec-b3e5-1a2a4174d4f3
# ╠═156e8527-153b-4818-8216-ed2952cc31a1
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
