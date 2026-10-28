### A Pluto.jl notebook ###
# v1.0.3

#> [frontmatter]
#> title = "Julia: Iteración sobre colecciones"
#> description = "Seminario de Geometría Fractal y Visualización"
#> 
#>     [[frontmatter.author]]
#>     name = "Renato Leriche Vázquez"
#>     url = "https://www.fciencias.unam.mx/directorio/45394"

using Markdown
using InteractiveUtils

# ╔═╡ 2dd677de-8753-4af0-b79c-17bb361a8bae
using Colors

# ╔═╡ f7aae932-4849-11ef-1b73-7934ed426570
include("src/nbutils.jl")

# ╔═╡ f7aae25c-4849-11ef-3ea5-6f30c5440d52
md"""
# Iteración sobre Colecciones
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ f7aae3b8-4849-11ef-30e1-d7b40f62b115
md"
## La palabra clave `for`
Recordemos que las instrucciones de control de iteración permiten repetir bloques de instrucciones."

# ╔═╡ f7aae400-4849-11ef-06d9-49ed2e446a59
md"""
Con la palabra clave `for` se recorre una colección y se ejecuta un bloque de código tantas veces como la longitud de la colección.

La instrucción tiene la siguiente forma:
~~~julia
for e in colección
  instrucción 1
  instrucción 2
  ...
  instrucción n
end
~~~
"""

# ╔═╡ 16511fcb-cf7f-4707-98ea-5683d9c76d1e
md"""
## La palabra clave `for`

Alternativamente al uso de la palabra clave `in` para la instrucción del `for`, se pueden usar `∈` ó `=`, es decir:

~~~julia
for e ∈ colección
	...
~~~

~~~julia
for e = colección
	...
~~~
"""

# ╔═╡ 34918db9-3a56-44ff-83ac-7924104a9e3a
md"""
## Ejemplos
"""

# ╔═╡ f7aae54a-4849-11ef-06fc-994934d4cc20
for i ∈ -2:4 # "Para cada i en el rango -2:4
	print(i^2, " ")
end

# ╔═╡ f7aae4c8-4849-11ef-0a1f-2bc72da37f6f
let
    a = [1.4, π, 0, -8.9]
    for n in a # "Para cada n en el arreglo a"
        println("n = $n")
    end
end

# ╔═╡ 65e73a35-0508-47ec-a301-d4f89172b24c
md"""
---
"""

# ╔═╡ d4e393d4-5546-40be-a008-f9b41de90401
md"""
## 🪢 Ejercicio
Dados $N\in\mathbb{N}$ y $x\in\mathbb{R}$, crear un programa para calcular

$s=\sum_{n=0}^N\frac{1}{x^n}$ 
"""

# ╔═╡ 04752b62-07cb-4220-bd51-f352c71187b9
let
	N = 20
	x = 2
	#s
	#for 
		
	#end
	
end

# ╔═╡ f7aae590-4849-11ef-32e1-ef11eea0785c
md"""
## 🪢 Ejercicio

Dado un $x_0\in \mathbb{R}$ y un número $N\in \mathbb{N}$, crear la lista de las $N$ iteraciones de $x_0$ bajo la función tienda, o sea, parte la *órbita* que es el conjunto $o(x_0,T)=\{x_0, T(x_0), T^2(x_0),\dots\}$.

La función tienda es

$$T(x) = \begin{cases}
2x & \mathrm{si}\, x\leq\frac{1}{2}\\
2-2x & \mathrm{si}\, x>\frac{1}{2}
\end{cases}$$
"""

# ╔═╡ 61e35d55-0087-4030-bb8d-d6e51f080e16
md"""
## 🪢 Ejercicio
"""

# ╔═╡ f7aae5e0-4849-11ef-0fe7-e7717420d797
let
    T(x) = x < 0.5 ? 2x : 2-2x # Función tienda
    
    x0 = 0.3 # Punto inicial
    N = 100 # Número de elementos de la órbita
    
    orbit = [] # Arreglo donde se guardará la órbita
    
    for n ∈ 1:N
    end
    
    # Imprimir la órbita para comprobar el resultado
	orbit
end

# ╔═╡ 2b25a51e-d8bb-4b38-bfcc-43500d7c1bb8
md"""
# `break` y `continue`
Por supuesto, se pueden usar las palabras clave `break` y `continue` dentro del bloque de la instrucción `for`.

---

#### Ejemplo
Buscando un número en un arreglo que caiga en un intervalo.
"""

# ╔═╡ cc623a92-4387-4f9a-9548-b7b33e37ad98
numbers = rand(1)

# ╔═╡ 89bdbb92-fae9-4f4b-b779-1d4ce2f8d0bd
for n in 1:length(numbers)
	if 0.49 < numbers[n] < 0.51
		print("Encontrado!: ", numbers[n], ", ", n)
		break
	end
end

# ╔═╡ f7aae7c2-4849-11ef-2ebd-5fa0124994a3
md"
# Comprehensiones
Otro uso de la palabra clave `for` es crear *comprehensiones*, las cuales instrucciones compactas para crear arreglos de forma fácil."

# ╔═╡ f7aae7f0-4849-11ef-21ce-5107431e155a
foldable0(md"""
El formato para las comprehensiones es
```julia
[ instrucción for n in colección ]
```
""")

# ╔═╡ 0d5f754b-03c3-44a4-99b7-cacca8ac57a8
foldable0(md"""
Por supuesto, la `instrucción` dentro de la comprehensión debe generar valores que se irán añadiendo al arreglo generado.
""")

# ╔═╡ f7aae838-4849-11ef-3b5c-233463c0c524
md"""
## Comprehensiones
Veamos la diferencia entre usar una comprehensión y un bloque con `for`:

```julia
[ instrucción for n in colección ]
```

es equivalente a

```julia
arr = []
for n in colección
    push!(arr, instrucción)
end
```
"""

# ╔═╡ f7aae874-4849-11ef-2ed6-5f6a5701b73a
md"""
## Ejemplo

```julia
arr = []
for x in -2:0.5:2
    push!(arr, x^2 - 2)
end
```
es equivalente a la comprehensión
"""

# ╔═╡ f7aae8a6-4849-11ef-0be0-07ef9468a8d6
#arr = [ x^2 - 2 for x in -2:0.5:2 ]

# ╔═╡ f7aae8ce-4849-11ef-2514-670386d5218c
md"## Ejemplo
Creando un arreglo de colores aleatorios."

# ╔═╡ f7aae90a-4849-11ef-3247-7f840fe329bd
arrcolors = [ rand(RGB) for n in 1:2 ]

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Colors = "5ae59095-9a9b-59fe-a467-6f913c188581"

[compat]
Colors = "~0.12.11"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.6"
manifest_format = "2.0"
project_hash = "65350ca71af0fde917b3a48940ec271989137294"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"
version = "1.11.0"

[[deps.ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "b10d0b65641d57b8b4d5e234446582de5047050d"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.5"

[[deps.Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "362a287c3aa50601b0bc359053d5c2468f0e7ce0"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.11"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.3.0+1"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "05882d6995ae5c12bb5f36dd2ed3f61c98cbb172"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.5"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"
version = "1.11.0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
version = "1.12.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.29+0"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"
version = "1.11.0"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Statistics]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "ae3bb1eb3bba077cd276bc5cfc337cc65c3075c0"
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.11.1"

    [deps.Statistics.extensions]
    SparseArraysExt = ["SparseArrays"]

    [deps.Statistics.weakdeps]
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.15.0+0"
"""

# ╔═╡ Cell order:
# ╟─f7aae25c-4849-11ef-3ea5-6f30c5440d52
# ╟─f7aae3b8-4849-11ef-30e1-d7b40f62b115
# ╟─f7aae400-4849-11ef-06d9-49ed2e446a59
# ╟─16511fcb-cf7f-4707-98ea-5683d9c76d1e
# ╟─34918db9-3a56-44ff-83ac-7924104a9e3a
# ╠═f7aae54a-4849-11ef-06fc-994934d4cc20
# ╠═f7aae4c8-4849-11ef-0a1f-2bc72da37f6f
# ╟─65e73a35-0508-47ec-a301-d4f89172b24c
# ╟─d4e393d4-5546-40be-a008-f9b41de90401
# ╠═04752b62-07cb-4220-bd51-f352c71187b9
# ╟─f7aae590-4849-11ef-32e1-ef11eea0785c
# ╟─61e35d55-0087-4030-bb8d-d6e51f080e16
# ╠═f7aae5e0-4849-11ef-0fe7-e7717420d797
# ╟─2b25a51e-d8bb-4b38-bfcc-43500d7c1bb8
# ╠═cc623a92-4387-4f9a-9548-b7b33e37ad98
# ╠═89bdbb92-fae9-4f4b-b779-1d4ce2f8d0bd
# ╟─f7aae7c2-4849-11ef-2ebd-5fa0124994a3
# ╟─f7aae7f0-4849-11ef-21ce-5107431e155a
# ╟─0d5f754b-03c3-44a4-99b7-cacca8ac57a8
# ╟─f7aae838-4849-11ef-3b5c-233463c0c524
# ╟─f7aae874-4849-11ef-2ed6-5f6a5701b73a
# ╠═f7aae8a6-4849-11ef-0be0-07ef9468a8d6
# ╟─f7aae8ce-4849-11ef-2514-670386d5218c
# ╠═2dd677de-8753-4af0-b79c-17bb361a8bae
# ╠═f7aae90a-4849-11ef-3247-7f840fe329bd
# ╟─f7aae932-4849-11ef-1b73-7934ed426570
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
