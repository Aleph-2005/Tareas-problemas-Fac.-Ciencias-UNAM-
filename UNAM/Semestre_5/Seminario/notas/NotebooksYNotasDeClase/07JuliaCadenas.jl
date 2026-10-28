### A Pluto.jl notebook ###
# v0.20.28

using Markdown
using InteractiveUtils

# ╔═╡ 818bf780-367b-11ef-2df1-b56b1b7273b2
include("src/nbutils.jl")

# ╔═╡ 818bc238-367b-11ef-3701-c79ba6efa88b
md"""
# Cadenas
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ 0ed3c8cd-d1ad-4dfa-8c77-5cf1ebcfb627
md"""
# Cadenas
Una cadena es una agrupación ordenada de caracteres (para formar una palabra, un texto, etc). El nombre del tipo en **Julia** de las cadenas es `String` y no es un tipo básico.

Para crear cadenas, simplemente se escriben los caracteres entre comillas dobles (`"`) o triples comillas dobles (`\"\"\"`).

---
"""

# ╔═╡ 818bf0be-367b-11ef-0a37-ad8217fda71d
s1, s2 = "A B C D e f g h", """A "1" B "2" """

# ╔═╡ 818bf0e6-367b-11ef-047a-f1bbc9c4bc09
typeof(s1), typeof(s2)

# ╔═╡ 818bf154-367b-11ef-113c-43bd24b13219
md"
---

Por supuesto, se pueden usar cualesquiera caracteres **UNICODE**."

# ╔═╡ 818bf19a-367b-11ef-217b-7187d7949059
s3 = "\u2200 x \u2203 y tal que x+y=🐱."

# ╔═╡ 818bf1d6-367b-11ef-1cff-77b0a3af1c86
md"""
## Triples comillas dobles
Las triples comillas sirven para usar fácilmente caracteres especiales como `"` y `\n` (salto de línea) como parte de las cadenas."""

# ╔═╡ 818bf29e-367b-11ef-26a9-a3244b2359d8
s4 = """Answer: "Yes"
'No'"""

# ╔═╡ 818bf30c-367b-11ef-3cc6-713ae9012f2f
md"
# Concatenación
Una operación común entre cadenas es la *concatenación*, que puede hacerse con la instrucción `string`.

---
"

# ╔═╡ 818bf33e-367b-11ef-0978-bdfc755f7c81
begin
    greet, whom = "Hello", "world"
    
    string(greet, ", ", whom, "!!!")
end

# ╔═╡ 818bf38e-367b-11ef-3d42-bd0df93633b9
md"
## Concatenación con * y ^
La concatenación también se puede hacer con `*`.

---
"

# ╔═╡ 818bf3c8-367b-11ef-1536-4dcb13bfe114
#greet * ", " * whom * "!!!"

# ╔═╡ 818bf3f2-367b-11ef-2125-0102eed215c0
md"
---

Se puede operar una cadena con `^` y un número natural $N$, significa concatenar la misma cadena $N$ veces.

---"

# ╔═╡ 818bf442-367b-11ef-19f9-29f0fba65bff
#greet^8

# ╔═╡ 818bf6fc-367b-11ef-0740-43e4050b509c
md"""
# Interpolación en cadenas
En **Julia** se puede hacer *interpolación de valores en cadenas*, es decir, se pueden incluir dentro de una cadena la representación del valor contenido en una variable o resultado de una expresión.

Para esto se usa el símbolo `$` antes del nombre de una variable dentro de una cadena.

---
"""

# ╔═╡ 818bf73a-367b-11ef-0479-792e9aaeb60f
let
    a, b, c = 1, -11.5, 9//7
	d = a + b + c
    cuenta = "Una cuenta: $a + $b + $c = $d"
    cuenta
end

# ╔═╡ 04741935-d34f-47bc-9b21-67cf5babb972
md"""
## Interpolación en cadenas
Para la interpolación en cadena de expresiones, se usa el formarto
~~~julia
$(expresión)
~~~

---
"""

# ╔═╡ b10aa924-59c5-4eff-a8b3-3323b9d03258
"2π es aproximadamente $(2π)." 

# ╔═╡ 45bad878-efdc-4c89-a188-8d2a02b180cc
radius = 20

# ╔═╡ a3dfc088-0487-4ffd-8b6a-382314b8e67d
"πr² = $(π*radius^2)." 

# ╔═╡ 985e1fa6-65a1-4759-bb88-dca4f0e524b2
md"""
# Cadenas y **Pluto**
Como ya vimos, se pueden crear las cadenas iniciando con `md` o `html` antes de `"`, que en **Pluto** se formatean con **Markdown** y **HTML** respectivamente.

---
"""

# ╔═╡ 43c2314b-5e31-4fff-b767-aec0461b29ad
md"""
### ¡**Pluto** es lo mejor!
*Factorial* de $n\in\mathbb{N}$:

$n! = 1\cdot 2 \cdot \dots \cdot n$
"""

# ╔═╡ 096c782f-a5c5-42dd-950a-0bcf9419581b
md"""
## Interpolación en cadenas y **Pluto**
Combinando la interpolación en cadenas de **Julia** y el formateo de cadenas de **Pluto** se pueden mostrar resultados de programas de muy buena manera... ¡Y con reactividad!

---
"""

# ╔═╡ 39eddfc1-a9cb-461f-8c91-4904a010d8b2
r = 2.5

# ╔═╡ 8d619c77-07fa-4ac2-8ee9-fe158268caa1
md"""
Cálculos dado el radio $r=$ $r.

| Diámetro | Perímetro | Área | Volumen|
|:---:|:---:|:---:|:---:|
| $2r$ | $2\pi r$ | $\pi r^2$ | $\frac{4}{3}\pi r^3$ |
| $(2r) | $(2pi*r) | $(pi*r^2) | $((4/3)pi*r^3) |
"""

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
# ╟─818bc238-367b-11ef-3701-c79ba6efa88b
# ╟─0ed3c8cd-d1ad-4dfa-8c77-5cf1ebcfb627
# ╠═818bf0be-367b-11ef-0a37-ad8217fda71d
# ╠═818bf0e6-367b-11ef-047a-f1bbc9c4bc09
# ╟─818bf154-367b-11ef-113c-43bd24b13219
# ╠═818bf19a-367b-11ef-217b-7187d7949059
# ╟─818bf1d6-367b-11ef-1cff-77b0a3af1c86
# ╠═818bf29e-367b-11ef-26a9-a3244b2359d8
# ╟─818bf30c-367b-11ef-3cc6-713ae9012f2f
# ╠═818bf33e-367b-11ef-0978-bdfc755f7c81
# ╟─818bf38e-367b-11ef-3d42-bd0df93633b9
# ╠═818bf3c8-367b-11ef-1536-4dcb13bfe114
# ╟─818bf3f2-367b-11ef-2125-0102eed215c0
# ╠═818bf442-367b-11ef-19f9-29f0fba65bff
# ╟─818bf6fc-367b-11ef-0740-43e4050b509c
# ╠═818bf73a-367b-11ef-0479-792e9aaeb60f
# ╟─04741935-d34f-47bc-9b21-67cf5babb972
# ╠═b10aa924-59c5-4eff-a8b3-3323b9d03258
# ╠═45bad878-efdc-4c89-a188-8d2a02b180cc
# ╠═a3dfc088-0487-4ffd-8b6a-382314b8e67d
# ╟─985e1fa6-65a1-4759-bb88-dca4f0e524b2
# ╠═43c2314b-5e31-4fff-b767-aec0461b29ad
# ╟─096c782f-a5c5-42dd-950a-0bcf9419581b
# ╠═39eddfc1-a9cb-461f-8c91-4904a010d8b2
# ╠═8d619c77-07fa-4ac2-8ee9-fe158268caa1
# ╟─818bf780-367b-11ef-2df1-b56b1b7273b2
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
