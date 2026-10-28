### A Pluto.jl notebook ###
# v1.0.3

using Markdown
using InteractiveUtils

# ╔═╡ 2d69e802-4638-11ef-218f-019a56a39917
using Colors

# ╔═╡ 17d8893d-c3be-4c7f-bb6d-85193ca51b07
include("src/nbutils.jl")

# ╔═╡ 2d64e684-4638-11ef-2f9f-6b33565802b4
md"""
# Instrucciones de control condicional
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ 2d6915c6-4638-11ef-39eb-0566569b855f
md"""
## Expresiones booleanas

Una *condición* es una expresión que al evaluarse da un valor de verdad (`true` o `false`).

#### Ejemplo
Las expresiones de comparaciones entre valores numéricos son expresiones booleanas.
"""

# ╔═╡ 2d69df2e-4638-11ef-2d32-47d560a1dc47
1 < 2

# ╔═╡ d2b31707-ebec-4a46-8159-3533dcb49de9
1 > 2

# ╔═╡ 2d69dfce-4638-11ef-3196-e77450695212
md"""
## Operadores de comparación

| Operador | Matemáticas |
|:--------:|:-----------:|
| `<` | $<$ |
| `>` | $>$ |
| `<=` | $\leq$ |
| `>=` | $\geq$ |
| `==` | $=$ (Igualdad) |
| `!=` | $\neq$ |
"""

# ╔═╡ 2d69e032-4638-11ef-27df-0f89c82206a8
md"""
## Operadores de comparación
Los operadores `<=`, `>=` y `!=` también pueden escribirse con su caracter unicode `\le`, `\ge` y `\ne`, respectivamente.

| Operador | Matemáticas |
|:--------:|:-----------:|
| `≤` | $\leq$ |
| `≥` | $\geq$ |
| `≠` | $\neq$ |

---
"""

# ╔═╡ 2d69e052-4638-11ef-06e9-c1df0bc711b2
1 ≠ 2

# ╔═╡ 2d69e078-4638-11ef-1a7f-9d54cc2370f5
md"""
## Operadores lógicos

| Operador | Matemáticas |
|:--------:|:-----------:|
| `\|\|` | $\vee$ (O lógico) |
| `&&` | $\wedge$ (Y lógico) |
| `!` | $\neg$ (Negación) |

Los operadores de comparación tienen mayor jerarquía de precedencia en la evaluación de expresiones. La evaluación se prioriza a la izquierda e `&&` tiene mayor precedencia que `||`.

#### Ejemplo
"""

# ╔═╡ 2d69e744-4638-11ef-149c-79afa0f82200
#0 > 1 || false && true || !(0 > 1) 

# ╔═╡ 2d69e776-4638-11ef-3eb7-735bf83a64b7
md"""
# La palabre clave `if`
La instrucción de control condicional con `if` permite ejecutar un bloque de código sólo cuando cierta *condición* (expresión booleana) es verdadera. Tiene la siguiente forma:

~~~julia
if condición
  instrucción 1
  instrucción 2
  ...
  instrucción N
end
~~~
"""

# ╔═╡ 2d69e79e-4638-11ef-2c42-d5e2284cd631
md"## Ejemplo"

# ╔═╡ 2d69e7c6-4638-11ef-3299-ad662de74087
let
    x = rand()
    if x < 0.5 # Si x es menor que 0.5
        md"x = $x es menor que 0.5"
    end
end

# ╔═╡ 2d69e7da-4638-11ef-0bca-fd7f859f942e
md"## Ejemplo"

# ╔═╡ 2d69e820-4638-11ef-3ab0-ab8d56f468a0
let
	g = 0.2
    n = rand(Int64)
    if n % 2 == 1 # Esto es equivalente a "Si n es impar"
        g = 0.8
    end
	Gray(g)
end

# ╔═╡ 2d69e848-4638-11ef-2a46-595dfc068d26
md"""
## Condiciones especiales
Consideremos que queremos realizar ciertas acciones sólo cuando un número $x\in\mathbb{R}$ cumple que $x\in[0,10)$. Una manera de resolverlo es
```julia
if 0 <= x
    if x < 10
        instrucción 1
        ...
        instrucción N
    end
end
```
"""

# ╔═╡ 2d69e866-4638-11ef-1c52-353455fce941
md"""
Otra manera más compacta es
```julia
if 0 <= x && x < 10
    instrucción 1
    ...
    instrucción N
end
```
"""

# ╔═╡ 2d69e87a-4638-11ef-10c5-1b0ebf0d3359
md"""
## Condiciones especiales en **Julia**

Pero en **Julia** se permite una manera aun más compacta:
```julia
if 0 <= x < 10
    instrucción 1
    ...
    instrucción N
end
```
---

#### Ejemplo
"""

# ╔═╡ 2d69e898-4638-11ef-18cc-9bb6c882ca62
let
    x = 20*rand()-4 # Nímero aleatorio entre -4 y 16
    if 0 <= x < 10
        md"x = $x está en el intervalo [0,10)."
    end
end

# ╔═╡ 2d69e8b6-4638-11ef-2fd0-55a77d11dfcb
md"""
# Instrucción `if else`

La instrucción de control `if else` ejecuta un bloque de código si una condición es verdadera y otro bloque si la condición es falsa. Tiene la siguiente forma:

~~~julia
if condición
  instrucción 1
  ...
  instrucción N
else
  instrucción 1'
  ...
  instrucción M'
end
~~~
"""

# ╔═╡ 2d69e8d4-4638-11ef-20d8-f1d24203c233
md"""
## Ejemplo
La función tienda

$T(x)=\begin{cases}
2x && \mathrm{si} \, x\leq\frac{1}{2} \\
2-2x && \mathrm{si} \, x > \frac{1}{2}
\end{cases}$
"""

# ╔═╡ 2d69e8f0-4638-11ef-2477-2b90d56280bb
function T(x)
    y=0
    if x <= 0.5 # Si la condición x <= 0.5 es verdadera
        y = 2x
    else # Si la condición x <= 0.5 NO es verdadera, es decir, si x > 0.5
        y = 2 - 2x
    end
    y
end

# ╔═╡ 2d69e906-4638-11ef-1ec1-a14aa4c5e0ae
let
    x = 0.75; x, T(x)
end

# ╔═╡ 2d69e956-4638-11ef-201a-9beb8d417b8f
md"""
## Instrucción `if elseif ... elseif else`

La instrucción de control `if elseif else` ejecuta distintos bloques de código de acuerdo a la veracidad de distintas condiciones. Tiene la siguiente forma:

~~~julia
if condición 1
  instrucción 1
  ...
  instrucción N
elseif condición 2
  instrucción 1'
  ...
  instrucción M'
  ...
elseif condición J
  ...
else # Opcional
  ...
end
~~~
"""

# ╔═╡ 2d69e974-4638-11ef-3c36-ddfeaa4bcac7
md"## Ejemplo"

# ╔═╡ 2d69e994-4638-11ef-2249-abd6431bdff8
let
    x = 20*rand()-10 # Genera números pseudo-aleatorios entre -10 y 10
	light = RGB(1,1,1)
    if x < 0 # x negativo
        light = RGB(0,0.8,0)
    elseif 1 <= x < 3 # Si x está en el intervalo [1,2)
        light = RGB(1,1,0)
    elseif 4 <= x < 9 # Si x está en el intervalo [3,9)
        light = RGB(1,0,0)
    else # Otro caso...
        light = RGB(0,0,0)
    end
	md"El semáforo dice: $light"
end

# ╔═╡ 2d69e9a6-4638-11ef-29c3-ab33d9021826
md"""
# El operador condicional ternario 

Este código

~~~julia
y = 0
if x < 0.5
    y = 2x
else
    y = 2 - 2x
end
~~~

es equivalente a
~~~julia
y = x < 0.5 ? 2x : 2 - 2x
~~~
"""

# ╔═╡ 86737b7f-98c6-4f21-893c-88612b555897
md"""
## Ejemplo
La función tienda

$T(x)=\begin{cases}
2x && \mathrm{si} \, x\leq\frac{1}{2} \\
2-2x && \mathrm{si} \, x > \frac{1}{2}
\end{cases}$

puede implementarse en una versión más corta: 
"""

# ╔═╡ a2fda624-8eff-4804-88ba-5e034ad673a9
T_v2(x) = x <= 0.5 ? 2x : 2 - 2x

# ╔═╡ e587a064-c005-4429-9a1e-47aeb815f085
T_v2(0.45)

# ╔═╡ 2d69e9ce-4638-11ef-3399-cb6e6599afe5
md"""
## El operador condicional ternario `? :`
El operador ternario simpre debe estar formado con `?` y `:`.

Se usa para asignar una valor entre dos opciones, de acuerdo a una condición. 

Forma del operador ternario:
```julia
variable = condición ? valor_si_condición_verdadera : valor_si_condición_falsa
```
"""

# ╔═╡ 2d69e9ec-4638-11ef-3a49-1d11f354e0be
md"
## Operador condicional ternario anidado
Los enunciados del operador ternario también se pueden anidar.

---

#### Ejemplo

$y=\begin{cases}
3x && \mathrm{si} \, x<\frac{1}{3} \\
1 && \mathrm{si} \, x\in[\frac{1}{3},\frac{2}{3}] \\
3-3x && \mathrm{si} \, x > \frac{2}{3}
\end{cases}$
"

# ╔═╡ 2d69e9f8-4638-11ef-1406-1beb3fed8462
let
	x = rand()
	y = x <= 0.6666 ? ( x < 0.3333 ? 3x : 1 ) : 3 - 3x
end

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
# ╟─2d64e684-4638-11ef-2f9f-6b33565802b4
# ╟─2d6915c6-4638-11ef-39eb-0566569b855f
# ╠═2d69df2e-4638-11ef-2d32-47d560a1dc47
# ╠═d2b31707-ebec-4a46-8159-3533dcb49de9
# ╟─2d69dfce-4638-11ef-3196-e77450695212
# ╟─2d69e032-4638-11ef-27df-0f89c82206a8
# ╠═2d69e052-4638-11ef-06e9-c1df0bc711b2
# ╟─2d69e078-4638-11ef-1a7f-9d54cc2370f5
# ╠═2d69e744-4638-11ef-149c-79afa0f82200
# ╟─2d69e776-4638-11ef-3eb7-735bf83a64b7
# ╟─2d69e79e-4638-11ef-2c42-d5e2284cd631
# ╠═2d69e7c6-4638-11ef-3299-ad662de74087
# ╟─2d69e7da-4638-11ef-0bca-fd7f859f942e
# ╠═2d69e802-4638-11ef-218f-019a56a39917
# ╠═2d69e820-4638-11ef-3ab0-ab8d56f468a0
# ╟─2d69e848-4638-11ef-2a46-595dfc068d26
# ╟─2d69e866-4638-11ef-1c52-353455fce941
# ╟─2d69e87a-4638-11ef-10c5-1b0ebf0d3359
# ╠═2d69e898-4638-11ef-18cc-9bb6c882ca62
# ╟─2d69e8b6-4638-11ef-2fd0-55a77d11dfcb
# ╟─2d69e8d4-4638-11ef-20d8-f1d24203c233
# ╠═2d69e8f0-4638-11ef-2477-2b90d56280bb
# ╠═2d69e906-4638-11ef-1ec1-a14aa4c5e0ae
# ╟─2d69e956-4638-11ef-201a-9beb8d417b8f
# ╟─2d69e974-4638-11ef-3c36-ddfeaa4bcac7
# ╠═2d69e994-4638-11ef-2249-abd6431bdff8
# ╟─2d69e9a6-4638-11ef-29c3-ab33d9021826
# ╟─86737b7f-98c6-4f21-893c-88612b555897
# ╠═a2fda624-8eff-4804-88ba-5e034ad673a9
# ╠═e587a064-c005-4429-9a1e-47aeb815f085
# ╟─2d69e9ce-4638-11ef-3399-cb6e6599afe5
# ╟─2d69e9ec-4638-11ef-3a49-1d11f354e0be
# ╠═2d69e9f8-4638-11ef-1406-1beb3fed8462
# ╟─17d8893d-c3be-4c7f-bb6d-85193ca51b07
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
