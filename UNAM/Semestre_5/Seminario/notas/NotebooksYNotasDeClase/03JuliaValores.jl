### A Pluto.jl notebook ###
# v0.20.28

using Markdown
using InteractiveUtils

# ╔═╡ 08578ff3-5a06-4d44-8ba2-55c75f210a2e
include("src/nbutils.jl")

# ╔═╡ 85af9c1c-341f-11ef-003e-cf1ec0bd7e31
md"""
# Valores
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ 85afa680-341f-11ef-20bb-973ce7fa766b
md"""
# Valores numéricos y operaciones aritméticas

Los *valores* numéricos se representan con números (¡obvio!) y algunos símbolos.

Ejemplos:

```julia
1, -2, 3.14
```
"""

# ╔═╡ 85afa75c-341f-11ef-33dc-09a16ce07452
md"""
## Operadores aritméticos
Los *operadores* aritméticos en **Julia** son:

| Nombre           | Símbolo |
|:-----------------|:-------:|
|Adición           | **`+`** |
|Sustracción       | **`-`** |
|Multiplicación    | **`*`** |
|Potencia          | **`^`** |
|División          | **`/`** |
|División entera   | **$\div$** |
|Módulo o residuo  | **`%`** |

"""

# ╔═╡ 85afa9c8-341f-11ef-2183-6b589e8feb8e
md"""
## Expresiones aritméticas
Combinando valores y operadores adecuadamente podemos formar *expresiones* aritméticas.

---
"""

# ╔═╡ 85afac66-341f-11ef-1034-4b6f3c5f1772
1 + 2.5*3^2 - 7/4 % 7.5

# ╔═╡ 85afadb0-341f-11ef-155e-fd039bf9a892
foldable0(md"""
Pero este tema lo veremos con detalle más adelante, por el momento analicemos los diversos *tipos* de valores numéricos.
""")

# ╔═╡ 85afae14-341f-11ef-3917-bde9c5f07f16
md"""
# Enteros ($\mathbb{Z}$)

Son números de 1 o varios dígitos (0-9), tal vez con signo (`-`), sin punto decimal ni otros símbolos.

---
"""

# ╔═╡ 85afae64-341f-11ef-309f-6956b0a41fb6
2, 1001, -23, 0008

# ╔═╡ 85afaee6-341f-11ef-3749-13050565f7ed
md"""
## 💻 Notas técnicas
> 1. Los números enteros en las computadoras se almacenan dentro de bloques de tamaño finito de memoria (en *bits*, es decir, $0$s y $1$s), por lo que sólo se pueden usar enteros dentro de ciertos rangos, lo veremos más adelante.
"""

# ╔═╡ 85afaf74-341f-11ef-3886-51335c3bf7d3
foldable0(md"""
> 2. Nótese que usar `,` (coma) nos permite en **Julia** crear una "lista fija" de valores, que técnicamente se llama *tupla*. Mismo ejemplo:
> ```julia
> 2, 1001, -23, 08
> ```
""")

# ╔═╡ 85afb140-341f-11ef-0238-55de5d587ec5
md"""
# Reales ($\mathbb{R}$)

Los número reales se escriben también con dígitos y obligatoriamente llevan un `.` (punto).

---
"""

# ╔═╡ 85afb850-341f-11ef-100c-818fdab181a0
2., .01, 23.45

# ╔═╡ 85afb8e6-341f-11ef-17b9-8de312233ff3
md"""
## 💻 Notas técnicas
> Análogamente a los enteros, no se puede representar cualquier número real en las computadoras, sólo ciertos subconjuntos de los números racionales.
>
> Por la finitud del espacio de memoria en la computadora, es imposible representar números reales con un número infinito de decimales.
>
> Aunque, por supuesto, si se pueden representar perfectamente, al menos de una manera, ciertos números racionales como $\frac{1}{2}=0.5$ ó $\frac{1}{3}=0.333\dots$.
"""

# ╔═╡ 85afba3a-341f-11ef-082d-0f48412c83ef
md"""
## Irracionales especiales
Ya existen representaciones de los números $\pi$ y $e$.

---
"""

# ╔═╡ 85afbae2-341f-11ef-0085-330bf1bf2deb
pi

# ╔═╡ 85afbb2a-341f-11ef-023e-b32be42dc53e
foldable0(md"""
¡$\pi$ se puede escribir con su letra griega en la celda de código! Teclear
~~~julia
\pi+tab
~~~
(Aquí `tab` es la tecla "tabulador".)
""")

# ╔═╡ 85afbb8e-341f-11ef-1306-5fafec43ed77


# ╔═╡ 85afbbca-341f-11ef-203f-0f9a3445ecfd
md"""
## Irracionales especiales
Para la base del logaritmo natural, teclear
~~~julia
\euler+tab
~~~
"""

# ╔═╡ 85afbc2e-341f-11ef-31a6-1539bdb6cd94


# ╔═╡ c19fce15-f0ec-483f-8878-23301d3e6f1c
md"""
## Notación científica

Es posible escribir números reales en *notación* científica usando el caracter `e`.

---
"""

# ╔═╡ 85afbce2-341f-11ef-3326-ff4effa414a6
2.3e3, 21e4, 4.2e-2, 35e-6

# ╔═╡ 85afbd20-341f-11ef-1c4f-339c0fbb31d8
foldable0(md"""
Los números anteriores son
- `2.3e3` $= 2.3\times10^3 = 2300$
- `21e4` $= 21\times10^4 = 210000$
- `4.2e-2` $= 4.2\times10^{-2} = 0.042$
- `35e-6` $= 35\times10^{-6} = 3.5\times10^{-5} = 0.000035$
""")

# ╔═╡ 85afbd5a-341f-11ef-0093-ef38f47437dc
md"""
# Racionales ($\mathbb{Q}$)

$\mathbb{Q}=\{\frac{p}{q}|\, p,q\in\mathbb{Z},\,q\neq 0\}$

Los número racionales en **Julia** se escriben usando `//` (doble diagonal), con el siguiente formato
~~~julia
	numerador//denominador
~~~
---
"""

# ╔═╡ 85afbe88-341f-11ef-33a6-f1b4abcf8461
1//3, -3//4, 2//-4, 5//5, 6//2

# ╔═╡ 85afbee0-341f-11ef-1524-ab694e58212d
md"""
## Números racionales ($\mathbb{Q}$)

Esta representación de los números racionales evita problemas con aproximaciones o redondeos de las representaciones de los números reales.

---
"""

# ╔═╡ 85afbf08-341f-11ef-0188-df583ba3c6aa
1//2 - 0.5, 1/3, 1//3 - 0.333333

# ╔═╡ 85afbf58-341f-11ef-3971-d7f385a51eee
md"""
# Complejos ($\mathbb{C}$)

El conjunto de los *números complejos* es

$\mathbb{C}=\{x+yi\,|\, x,y\in\mathbb{R}\}$

donde $i$ es llamada la *unidad imaginaria* y es el número tal que $i^2=-1$.
"""

# ╔═╡ 85afbfd0-341f-11ef-2b3b-cd7d5205533a
foldable0(md"La unidad imaginaria $i$ es denotada en **Julia** con `im`.")

# ╔═╡ 85afc054-341f-11ef-26f6-f50a33d03498


# ╔═╡ 85afc082-341f-11ef-0b01-bffb74f9e7ab
md"""
## Complejos ($\mathbb{C}$)
Dado un número complejo $x+yi$, a $x$ se le llama *parte real* y a $y$ *parte imaginaria*.

Los número complejos se pueden escribir en **Julia** como

> parte real $\pm$ parte imaginaria `im`.
"""

# ╔═╡ 85afc0f2-341f-11ef-1133-ff5bbddd887c
-1.4 + 2.8im

# ╔═╡ 85afc16a-341f-11ef-0c82-f118ceeb6dc1
md"""
## Complejos ($\mathbb{C}$)
Las operaciones aditivas y multiplicativas están bien definidas en los números complejos y existen sus respectivos neutros: $\mathbb{C}$ es un campo algebráico.

$$(x_1+y_1i)\pm(x_2+y_2i)=(x_1+x_2)\pm(y_1+y_2)i$$

$$(x_1+y_1i)(x_2+y_2i)=(x_1 x_2-y_1 y_2)+(x_1 y_2 + x_2 y_1)i$$

$$\frac{x_1+y_1i}{x_2+y_2i}=\frac{(x_1 x_2+y_1 y_2)+(x_2 y_1 - x_1 y_2)i}{x_2^2+y_2^2}$$

Todas las operaciones con números complejos ya están en **Julia**.
"""

# ╔═╡ 85afc228-341f-11ef-12c2-9daef4bc984b
(-0.2+4im) + (0.4-3.25im)

# ╔═╡ 85afc250-341f-11ef-2875-0f39db1c5683
(1-im)*(-2+3im)

# ╔═╡ 85afc2c8-341f-11ef-0c44-1b47f7d0ef34
(1+im)/(-2+3im)

# ╔═╡ 85afc320-341f-11ef-0063-65f2a7cca0f1
md"""
# Booleanos

Son los valores de verdad en lógica (y álgebra booleana), y sólo hay dos opciones:
- Verdadero, denotado como `true`.
- Falso, denotado como `false`.

---
"""

# ╔═╡ 85afc372-341f-11ef-16aa-0ba7a72c4127
true, false

# ╔═╡ 85afc3b8-341f-11ef-0d70-19fd6325b23e
md"""
## 💻 Notas técnicas
> Los valores booleanos son numéricos (`false`$=0$ y `true`$=1$), aunque claro que su utilidad es para determinar si algo es verdadero  o falso...

Por ejemplo, se pueden hacer operaciones aritméticas con booleanos.
"""

# ╔═╡ 85afc45a-341f-11ef-3e3d-e3826ea1671b
true + false - true

# ╔═╡ 96d33e1b-584f-455d-8642-ddee9b90a007
1 + true

# ╔═╡ 07a00d52-1530-4b67-84ad-02e308087002
true/2.0

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
# ╟─85af9c1c-341f-11ef-003e-cf1ec0bd7e31
# ╟─85afa680-341f-11ef-20bb-973ce7fa766b
# ╟─85afa75c-341f-11ef-33dc-09a16ce07452
# ╟─85afa9c8-341f-11ef-2183-6b589e8feb8e
# ╠═85afac66-341f-11ef-1034-4b6f3c5f1772
# ╟─85afadb0-341f-11ef-155e-fd039bf9a892
# ╟─85afae14-341f-11ef-3917-bde9c5f07f16
# ╠═85afae64-341f-11ef-309f-6956b0a41fb6
# ╟─85afaee6-341f-11ef-3749-13050565f7ed
# ╟─85afaf74-341f-11ef-3886-51335c3bf7d3
# ╟─85afb140-341f-11ef-0238-55de5d587ec5
# ╠═85afb850-341f-11ef-100c-818fdab181a0
# ╟─85afb8e6-341f-11ef-17b9-8de312233ff3
# ╟─85afba3a-341f-11ef-082d-0f48412c83ef
# ╠═85afbae2-341f-11ef-0085-330bf1bf2deb
# ╟─85afbb2a-341f-11ef-023e-b32be42dc53e
# ╠═85afbb8e-341f-11ef-1306-5fafec43ed77
# ╟─85afbbca-341f-11ef-203f-0f9a3445ecfd
# ╠═85afbc2e-341f-11ef-31a6-1539bdb6cd94
# ╟─c19fce15-f0ec-483f-8878-23301d3e6f1c
# ╠═85afbce2-341f-11ef-3326-ff4effa414a6
# ╟─85afbd20-341f-11ef-1c4f-339c0fbb31d8
# ╟─85afbd5a-341f-11ef-0093-ef38f47437dc
# ╠═85afbe88-341f-11ef-33a6-f1b4abcf8461
# ╟─85afbee0-341f-11ef-1524-ab694e58212d
# ╠═85afbf08-341f-11ef-0188-df583ba3c6aa
# ╟─85afbf58-341f-11ef-3971-d7f385a51eee
# ╟─85afbfd0-341f-11ef-2b3b-cd7d5205533a
# ╠═85afc054-341f-11ef-26f6-f50a33d03498
# ╟─85afc082-341f-11ef-0b01-bffb74f9e7ab
# ╠═85afc0f2-341f-11ef-1133-ff5bbddd887c
# ╟─85afc16a-341f-11ef-0c82-f118ceeb6dc1
# ╠═85afc228-341f-11ef-12c2-9daef4bc984b
# ╠═85afc250-341f-11ef-2875-0f39db1c5683
# ╠═85afc2c8-341f-11ef-0c44-1b47f7d0ef34
# ╟─85afc320-341f-11ef-0063-65f2a7cca0f1
# ╠═85afc372-341f-11ef-16aa-0ba7a72c4127
# ╟─85afc3b8-341f-11ef-0d70-19fd6325b23e
# ╠═85afc45a-341f-11ef-3e3d-e3826ea1671b
# ╠═96d33e1b-584f-455d-8642-ddee9b90a007
# ╠═07a00d52-1530-4b67-84ad-02e308087002
# ╟─08578ff3-5a06-4d44-8ba2-55c75f210a2e
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
