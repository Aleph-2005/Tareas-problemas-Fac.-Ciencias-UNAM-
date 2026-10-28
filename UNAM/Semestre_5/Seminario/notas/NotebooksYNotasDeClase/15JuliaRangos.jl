### A Pluto.jl notebook ###
# v0.20.28

#> [frontmatter]
#> title = "Julia: Rangos"
#> description = "Seminario de Geometría Fractal y Visualización"
#> 
#>     [[frontmatter.author]]
#>     name = "Renato Leriche Vázquez"
#>     url = "https://www.fciencias.unam.mx/directorio/45394"

using Markdown
using InteractiveUtils

# ╔═╡ e3599ed8-4849-11ef-2b6e-21831292050b
include("src/nbutils.jl")

# ╔═╡ e3551bcc-4849-11ef-2513-8f31558b0acf
md"""
# Rangos (Tipo de Colección)
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ e358ec5e-4849-11ef-04f3-cf7ea4b56de4
md"""
## Tipos Colección
Los tipos colección son tipos de datos que permiten crear variables que son agrupaciones de variables de algún otro tipo.

Estas agrupaciones contienen tantos valores como decidamos, y puede ser un número variable o fijo.
"""

# ╔═╡ f34d6114-309f-46e4-95f3-e50d8d5f2013
foldable0(md"""
En esta introducción a la programación sólo revisaremos dos tipos de colección: *rangos* y *arreglos*.
""")

# ╔═╡ e358ec9a-4849-11ef-220e-b72cbb43d5e7
md"""
# Rangos

Un *rango* (*range*) se construye con

~~~julia
a:b
~~~

donde $a$ y $b$ son números reales, racionales o enteros (no complejos).
"""

# ╔═╡ e358ecb8-4849-11ef-32be-1b9162acf7d8
foldable0(md"""
Representa una lista ordenada de números que están entre un número inicial $a$ y otro final $b$ con incrementos en $1$, es decir, representa la lista de números

$$a, a+1, a+2, a+3, \dots, a+n$$

donde $b-1 < a+n\leq b$.

El número $n+1$ es entonces la cantidad de elementos en el rango.
""")

# ╔═╡ 54423886-fbc6-4952-acba-ea33dcde933d
md"""
## Ejemplos
"""

# ╔═╡ e3599492-4849-11ef-20d7-1fab30e1c9fd
r1 = 1:5

# ╔═╡ 03269d99-9d57-409f-8a3f-dea4422b0917
foldable0(md"""
En este caso el rango `r1` está formado por los números $1,2,3,4$ y $5$.

---
""")

# ╔═╡ e35994e2-4849-11ef-077e-cf1982015124
r2 = -5.5:5.25

# ╔═╡ 64d1453f-094a-4e93-b53a-12dab026286d
foldable0(md"""
En este otro caso, el rango `r2` está formado por los números $-5.5$, $-4.5$, $\dots$, $3.5$ y $4.5$, pues $5.25 - 1 = 4.25 < -5.5 + 10 = 4.5 \leq 5.25$.
""")

# ╔═╡ e359953c-4849-11ef-2ced-2bad8bc33f22
md"""
## El operador $\in$

El operador `∈` (`\in`) sirve para determinar si un número está entre los números que representa el rango, regresando verdadero si pertence y falso en caso contrario.

Este operador es equivalente a la palabra clave `in`.

---

#### Ejemplos
"""

# ╔═╡ e359954e-4849-11ef-0f57-d7a70e467e03
3 ∈ r1 # 1:5

# ╔═╡ e359955a-4849-11ef-06ac-474dbdd8c71e
3.25 in r2 # -5.5:5.25

# ╔═╡ e35995d2-4849-11ef-0f67-05947dbbb2e5
md"
## El operador $\notin$
El operador `∉` (`\notin`) es la negación lógica del operador `∈`.

---

#### Ejemplos
"

# ╔═╡ e35995dc-4849-11ef-0377-4b1f1e88d355
-2 ∉ r1 # 1:5

# ╔═╡ 90f41440-ad27-4ab2-b218-a463d6f457eb
3.5 ∉ r2 # -5.5:5.25

# ╔═╡ 6adab353-076a-4fe1-ac22-0672bca708c5
md"""
## Tamaño del rango
Se tiene la *function* `length` para conocer el número de elementos en el rango.

----

#### Ejemplos
"""

# ╔═╡ 88e2ddd9-f641-41b0-8eaf-b0478869bdb3
length(r1)

# ╔═╡ c2d0b830-a097-4c96-bf8d-562beef458a5
length(r2)

# ╔═╡ e35995fa-4849-11ef-3a4c-7b1f673197d7
md"
## Rangos y números pseudo-aleatorios

Una utilidad de estos rangos es usarlos en combinación con las *functions* para generar números pseudo-aleatorios.

---

#### Ejemplos"

# ╔═╡ b9cc300a-c056-41ab-9cec-02e4cd3fe1fd
md"""
Número pseudo-aleatorio en el conjunto $\{-4,-3,-2,-1,0,1,2,3,4\}$. 
"""

# ╔═╡ e359960e-4849-11ef-0bbe-a1bf24bfdc3b
rand(-4:4)

# ╔═╡ 65464e40-b845-4ce2-8dc9-4223fece94e3
md"""
---

Número pseudo-aleatorio en el conjunto $\{-5.5,-4.5,\dots,3.5,4.5\}$
"""

# ╔═╡ e3599618-4849-11ef-3250-c7ff1781e931
rand(r2) # Se definió antes r2 = -5.5:5.25

# ╔═╡ e3599636-4849-11ef-11e1-410d87063b97
md"""
# Rangos con otros incrementos
Otro tipo de rango se puede construir como

~~~julia
a:c:b
~~~
"""

# ╔═╡ b7681205-148d-4046-b782-f30d096a3600
foldable0(md"""
En este caso se representa una lista con incrementos en $c$, es decir,
representa la lista de números $a, a+c, a+2c, a+3c, \dots, a+nc$, donde $n$ es tal que $b-nc<a+nc\leq b$.
""")

# ╔═╡ 18a7711c-f64c-4706-bfd1-88e1f05372a7
md"""
## Ejemplo
"""

# ╔═╡ e35996d6-4849-11ef-38ac-0d35d791887f
let
    r3 = 0:0.5:10
    n = rand(-4:0.25:4)
    
    if n ∈ r3
        md" $n ∈ r3"
    else
        md" $n ∉ r3"
    end
end

# ╔═╡ 8f237fca-5b59-41cc-8ac8-fb2301592dbf
md"""
## Tamaño del rango
Por supuesto, también se puede conocer el número de elementos con otros incrementos.

---

#### Ejemplo
"""

# ╔═╡ b6cc0846-c9b8-4a24-87ea-cefb1f88b166
length(-1:0.033:1)

# ╔═╡ ed4f3d50-156a-4ea4-992d-d55f51dcf15b


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.6"
manifest_format = "2.0"
project_hash = "71853c6197a6a7f222db0f1978c7cb232b87c5ee"

[deps]
"""

# ╔═╡ Cell order:
# ╟─e3551bcc-4849-11ef-2513-8f31558b0acf
# ╟─e358ec5e-4849-11ef-04f3-cf7ea4b56de4
# ╟─f34d6114-309f-46e4-95f3-e50d8d5f2013
# ╟─e358ec9a-4849-11ef-220e-b72cbb43d5e7
# ╟─e358ecb8-4849-11ef-32be-1b9162acf7d8
# ╟─54423886-fbc6-4952-acba-ea33dcde933d
# ╠═e3599492-4849-11ef-20d7-1fab30e1c9fd
# ╟─03269d99-9d57-409f-8a3f-dea4422b0917
# ╠═e35994e2-4849-11ef-077e-cf1982015124
# ╟─64d1453f-094a-4e93-b53a-12dab026286d
# ╟─e359953c-4849-11ef-2ced-2bad8bc33f22
# ╠═e359954e-4849-11ef-0f57-d7a70e467e03
# ╠═e359955a-4849-11ef-06ac-474dbdd8c71e
# ╟─e35995d2-4849-11ef-0f67-05947dbbb2e5
# ╠═e35995dc-4849-11ef-0377-4b1f1e88d355
# ╠═90f41440-ad27-4ab2-b218-a463d6f457eb
# ╟─6adab353-076a-4fe1-ac22-0672bca708c5
# ╠═88e2ddd9-f641-41b0-8eaf-b0478869bdb3
# ╠═c2d0b830-a097-4c96-bf8d-562beef458a5
# ╟─e35995fa-4849-11ef-3a4c-7b1f673197d7
# ╟─b9cc300a-c056-41ab-9cec-02e4cd3fe1fd
# ╠═e359960e-4849-11ef-0bbe-a1bf24bfdc3b
# ╟─65464e40-b845-4ce2-8dc9-4223fece94e3
# ╠═e3599618-4849-11ef-3250-c7ff1781e931
# ╟─e3599636-4849-11ef-11e1-410d87063b97
# ╟─b7681205-148d-4046-b782-f30d096a3600
# ╟─18a7711c-f64c-4706-bfd1-88e1f05372a7
# ╠═e35996d6-4849-11ef-38ac-0d35d791887f
# ╟─8f237fca-5b59-41cc-8ac8-fb2301592dbf
# ╠═b6cc0846-c9b8-4a24-87ea-cefb1f88b166
# ╠═ed4f3d50-156a-4ea4-992d-d55f51dcf15b
# ╟─e3599ed8-4849-11ef-2b6e-21831292050b
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
