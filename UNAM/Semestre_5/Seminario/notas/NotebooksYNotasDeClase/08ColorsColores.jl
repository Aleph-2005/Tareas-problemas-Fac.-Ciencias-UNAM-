### A Pluto.jl notebook ###
# v0.20.28

using Markdown
using InteractiveUtils

# ╔═╡ 47de562e-4538-11ef-0f89-39894a57aadf
using Colors

# ╔═╡ 47de596c-4538-11ef-075c-bd5fa9601b22
include("src/nbutils.jl")

# ╔═╡ 47d9d7b6-4538-11ef-0ffd-738fd41f43da
md"""
# Colores
### Paquete **Colors** (programación con **Julia**)
"""

# ╔═╡ f742619b-337e-424d-be9a-cd3f368a7d57
imagecenter("https://juliagraphics.github.io/Colors.jl/stable/assets/logo.png", w=400, h=400)

# ╔═╡ 9a23a770-d4e3-47ca-84b2-080e8b730e07
md"""
# Paquetes de **Julia**
Un *paquete* (*package*) de **Julia** es lo que comunmente se llama en programación *biblioteca*: Un conjunto de instrucciones especiales agrupadas para su uso en varios programas.
"""

# ╔═╡ 47de53c2-4538-11ef-0aff-092ab4ca0cbe
foldable0(md"""Para poder "usar" un paquete en **Julia** se utiliza la instrucción `using` con siguiente formato:
~~~julia
using NombrePaquete
~~~
""")

# ╔═╡ 5a041097-9806-49ac-b1dc-14a6286397d1
md"""
# Usando el paquete **Colors**
"""

# ╔═╡ 47de5656-4538-11ef-2072-292bfaca84b4
md"""Con lo anterior, ya podemos usar las instrucciones para crear y manejar colores.

Por el momento sólo veremos instrucciones para crear colores.
"""

# ╔═╡ 47de56b0-4538-11ef-2c58-fd670eb4e3d5
md"""
# Grises

Se pueden crear grises con la instrucción `Gray` que recibe un número entre $0$ y $1$. El $0$ es negro y el $1$ blanco.
"""

# ╔═╡ 47de56c4-4538-11ef-0355-ab36cfde98ce
Gray(0.8)

# ╔═╡ 47de576c-4538-11ef-1479-378eb8021f8a
Gray(0), Gray(0.2), Gray(0.4), Gray(0.6), Gray(0.8), Gray(0.95)

# ╔═╡ 47de579e-4538-11ef-2a7a-53a6b0e1f534
md"""
# Colores **RGB**

**RGB** significa _**R**ed **G**reen **B**lue_ ("Rojo Verde Azul").

En la "teoría aditiva del color" se establece que el rojo, verde y azul son los colores primarios y todos los demás se generan "sumando" estos 3 con distintas proporciones.
"""

# ╔═╡ 8b28ee9a-446e-403c-af9c-2238cd23008a
imagecenter("https://www.ledsupply.com/blog/wp-content/uploads/2021/03/Color-Mixing-Subtractive-Additive.png", w=720)

# ╔═╡ 47de57d0-4538-11ef-334e-3b77d149cd86
md"""
## La instrucción `RGB`
Colores **RGB** se crean con la instrucción `RGB`, esta recibe 3 números entre $0$ y $1$ que indican la proporción del color primario correspondiente.
"""

# ╔═╡ 47de57dc-4538-11ef-17e4-53109517a712
RGB(0.5,0.25,0.7)

# ╔═╡ 47de5804-4538-11ef-1281-43d527f1bb91
#RGB(1,0,0), RGB(1,1,0), RGB(0,1,0), RGB(0,1,1), RGB(0,0,1), RGB(1,0,1), RGB(1,1,1), RGB(0.5,0.5,0.5), RGB(0,0,0)

# ╔═╡ 47de580e-4538-11ef-2b02-fdd8c11539f2
md"""
## El tipo de dato de **RGB**
Los colores tienen un tipo de dato raro...
"""

# ╔═╡ 47de5822-4538-11ef-2796-5721ad87ae3a
typeof(RGB(1,0,0))

# ╔═╡ 47de5836-4538-11ef-2f43-8dacaa830df0
foldable0(md"""No explicaré el significado de todo eso, lo que es importante por el momento es recalcar que hay un $8$, eso significa que cada color primario usa un byte (8 bits) de memoria, por lo que se pueden crear $(2^8)^3=16,777,216$ colores distintos con la instrucción `RGB`.

Por ello, en otros lenguajes, bibliotecas y tipos de datos se utilizan números naturales entre $0$ y $255=2^8-1$ para los colores primarios.""")

# ╔═╡ 47de584a-4538-11ef-2916-b505c156f881
md"""
## El espacio de colores **RGB**.
Podemos pensar el espacio de colores **RGB** como el cubo $[0,1]^3$.
"""

# ╔═╡ f495e4ac-8060-4e0a-b512-91b0ae3de67a
imagecenter("https://upload.wikimedia.org/wikipedia/commons/d/d6/RGB_color_cube.svg", w=1200)

# ╔═╡ 47de5854-4538-11ef-082b-437d09c1f3d2
RGB(83/255, 150/255, 60/255)

# ╔═╡ 47de5874-4538-11ef-376e-5ddb1c254a2a
md"""
## Colores con  transparencia
También existe la instrucción `RGBA` para crear colores con *alfa* (de ahí la *A* al final del nombre d ela instrucción), que determina la "opacidad":
-  $0$ es sin opacidad (totalmente transparente), y
-  $1$ es totalmente opaco."""

# ╔═╡ 47de587c-4538-11ef-2127-333c08da06f2
RGBA(1,0,0,0), RGBA(1,0,0,0.25), RGBA(1,0,0,0.5), RGBA(1,0,0,0.75), RGBA(1,0,0,1)

# ╔═╡ 47de5890-4538-11ef-2727-97374c9833b7
md"
## Grises con transparencia
También se pueden hacer grises con alfa con la instrucción `GrayA`."

# ╔═╡ 47de589a-4538-11ef-16db-9f964b8d7509
GrayA(0.25,0.5)

# ╔═╡ 47de58ae-4538-11ef-18fe-134225d132ab
md"""
# Colores *HSV*

**HSV** significa _**H**ue **S**aturation **V**alue_ ("Matiz Saturación Valor").
- **H**, el matiz, indica los matices "puros" en un ciclo Rojo-Amarillo-Verde-Cian-Azul-Magenta-Rojo.
- **S**, la saturación, indica "que tanto" matiz se usa, donde $0$ es gris (sin matiz) y $1$ es saturación completa ("matiz puro").
- **V**, el valor, indica que "tan brillante" es el color, donde $0$ es negro (sin brillo) y $1$ es el brillo completo.
"""

# ╔═╡ 47de58e0-4538-11ef-2119-4b6177bd9f9d
md"""
## Espacio de color **HSV**
"""

# ╔═╡ f112b31f-eda9-45ec-881a-6ad8f389768a
imagecenter("https://upload.wikimedia.org/wikipedia/commons/f/f2/HSV_color_solid_cone.png", w=800)

# ╔═╡ 47de58f4-4538-11ef-2374-a15491fedb60
md"""
## La instrucción `HSV`
Colores **HSV** se crean con la instrucción `HSV`, que recibe 3 números, el primero es el ángulo del matiz entre $0°$ y $360°$ (aunque puede ser cualquier número "real"), y los otros dos deben ser de punto flotante entre $0$ y $1$.
"""

# ╔═╡ 47de58fe-4538-11ef-2f05-eb97719f8d0a
HSV(180,0.5,0.75)

# ╔═╡ 47de5912-4538-11ef-3c3d-5f5723550d88
foldable0(md"Por definición del espacio de color **HSV**, `HSV(`$H$,$S$,`0)` siempre es negro para cualquier elección de  números $H$ y $S$.")

# ╔═╡ 0eef4d6c-37da-43b6-a699-6c4043aed8ba
md"""
## Algunos colores **HSV** en matiz puro
"""

# ╔═╡ 47de5926-4538-11ef-3689-9d874e0a847d
HSV(0,1,1), HSV(30,1,1), HSV(60,1,1), HSV(90,1,1)

# ╔═╡ 47de5944-4538-11ef-01b3-9103868eaed3
HSV(120,1,1), HSV(150,1,1), HSV(180,1,1), HSV(210,1,1)

# ╔═╡ a1fe6934-04cd-487d-82a5-78805db2c9cc
HSV(240,1,1), HSV(270,1,1), HSV(300,1,1), HSV(330,1,1), HSV(360,1,1)

# ╔═╡ 47de594e-4538-11ef-12bd-e3e6a057e5aa
md"""
## **HSV** con transparencia.
Claro, también se pueden crear colores **HSV** con alfa, usando la instrucción `HSVA`."""

# ╔═╡ 47de5962-4538-11ef-1961-f514b2b56cb8
HSVA(220,0.8,0.6,0.04)

# ╔═╡ 36337d5d-5889-4ebf-84bd-7d35a864f290
md"""
# Colores y **Pluto**
Ya notamos que los colores se representan directamente como cuadrados coloreados en la zona de salida de la celdas.
"""

# ╔═╡ 8abdf92c-f056-40c3-9e12-29d8edcce296
foldable0(md"""
Pero también se pueden insertar en bloques `md"..."`.
""")

# ╔═╡ 0f64c9a2-cbca-4c6b-9814-a1c8bf55913c
#md"El color cian es $(RGB(0,1,1)). En **HSV** corresponde a 180°: $(HSV(180,1,1))."

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
# ╟─47d9d7b6-4538-11ef-0ffd-738fd41f43da
# ╟─f742619b-337e-424d-be9a-cd3f368a7d57
# ╟─9a23a770-d4e3-47ca-84b2-080e8b730e07
# ╟─47de53c2-4538-11ef-0aff-092ab4ca0cbe
# ╟─5a041097-9806-49ac-b1dc-14a6286397d1
# ╠═47de562e-4538-11ef-0f89-39894a57aadf
# ╟─47de5656-4538-11ef-2072-292bfaca84b4
# ╟─47de56b0-4538-11ef-2c58-fd670eb4e3d5
# ╠═47de56c4-4538-11ef-0355-ab36cfde98ce
# ╠═47de576c-4538-11ef-1479-378eb8021f8a
# ╟─47de579e-4538-11ef-2a7a-53a6b0e1f534
# ╟─8b28ee9a-446e-403c-af9c-2238cd23008a
# ╟─47de57d0-4538-11ef-334e-3b77d149cd86
# ╠═47de57dc-4538-11ef-17e4-53109517a712
# ╠═47de5804-4538-11ef-1281-43d527f1bb91
# ╟─47de580e-4538-11ef-2b02-fdd8c11539f2
# ╠═47de5822-4538-11ef-2796-5721ad87ae3a
# ╟─47de5836-4538-11ef-2f43-8dacaa830df0
# ╟─47de584a-4538-11ef-2916-b505c156f881
# ╟─f495e4ac-8060-4e0a-b512-91b0ae3de67a
# ╠═47de5854-4538-11ef-082b-437d09c1f3d2
# ╟─47de5874-4538-11ef-376e-5ddb1c254a2a
# ╠═47de587c-4538-11ef-2127-333c08da06f2
# ╟─47de5890-4538-11ef-2727-97374c9833b7
# ╠═47de589a-4538-11ef-16db-9f964b8d7509
# ╟─47de58ae-4538-11ef-18fe-134225d132ab
# ╟─47de58e0-4538-11ef-2119-4b6177bd9f9d
# ╟─f112b31f-eda9-45ec-881a-6ad8f389768a
# ╟─47de58f4-4538-11ef-2374-a15491fedb60
# ╠═47de58fe-4538-11ef-2f05-eb97719f8d0a
# ╟─47de5912-4538-11ef-3c3d-5f5723550d88
# ╟─0eef4d6c-37da-43b6-a699-6c4043aed8ba
# ╠═47de5926-4538-11ef-3689-9d874e0a847d
# ╠═47de5944-4538-11ef-01b3-9103868eaed3
# ╠═a1fe6934-04cd-487d-82a5-78805db2c9cc
# ╟─47de594e-4538-11ef-12bd-e3e6a057e5aa
# ╠═47de5962-4538-11ef-1961-f514b2b56cb8
# ╟─36337d5d-5889-4ebf-84bd-7d35a864f290
# ╟─8abdf92c-f056-40c3-9e12-29d8edcce296
# ╠═0f64c9a2-cbca-4c6b-9814-a1c8bf55913c
# ╟─47de596c-4538-11ef-075c-bd5fa9601b22
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
