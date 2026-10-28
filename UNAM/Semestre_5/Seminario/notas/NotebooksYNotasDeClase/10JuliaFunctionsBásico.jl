### A Pluto.jl notebook ###
# v1.0.3

using Markdown
using InteractiveUtils

# ╔═╡ 26695036-4568-11ef-0831-a5892ee4ed72
using Colors

# ╔═╡ 26696cb8-4568-11ef-301b-71869c8a275d
include("src/nbutils.jl")

# ╔═╡ 26693484-4568-11ef-238e-4dd56bee1264
md"""
# Funciones (básico)
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ 26693dd0-4568-11ef-1805-fd1ee0e3bda7
md"
## Introducción a funciones en programación
Una función (*function*) permite agrupar código para ser reutilizado fácilmente."

# ╔═╡ 26693e52-4568-11ef-214f-dd1809f69a99
foldable0(md"""Generalmente recibe uno o varios *parámetros* y *regresa un valor*. Pero también es posible que no reciba parámetros y que "no regrese" ningún valor.""")

# ╔═╡ 26693ed4-4568-11ef-2f2e-a5d6b15a2ed7
foldable0(md"""
!!! danger "¡Atención!"
	Para no confundirnos con las funciones matemáticas $f:X\rightarrow Y$, a partir de aquí a las funciones de programación las llamaré *functions*.
""")

# ╔═╡ 26693f6a-4568-11ef-05cd-4b7d84047124
md"""
## Ejemplos
Ya vimos varias *functions* (que antes llamé "instrucciones") que podemos usar directamente al programar en **Julia**:
```julia
typeof, typemin, typemax, subtypes, supertype, eps, isinf, isnan # etcétera!
```
"""

# ╔═╡ 26693fba-4568-11ef-3e04-d178a5b3517c
foldable0(md"Y también se mostraron algunas *functions* en **Julia** que representan funciones $f:\mathbb{R}\rightarrow\mathbb{R}$, mencionaremos varias y revisaremos algunas.")

# ╔═╡ 26694052-4568-11ef-3de9-717320bf3e5c
md"""
## Funciones en $\mathbb{R}$

Se pueden usar en **Julia** directamente las siguientes *functions*:
"""

# ╔═╡ f05988cc-ef95-44a5-a9c5-5ccaf2f3ab5e
foldable(md"Algebraicas", md"`sqrt` (raiz cuadrada $\sqrt{\,}$), `cbrt` (raiz cúbica $\sqrt[3]{\,}$), `abs` (valor absoluto $|\,|$).")

# ╔═╡ beed97c6-142d-4d60-9a4f-4a941bb3b927
foldable(md"Logarítmicas y exponenciales", md"`log` (logaritmo natural), `exp` (exponenciación base $e$).")

# ╔═╡ af15ead7-b7bb-491b-aa84-b8850bd10b74
foldable(md"Redondeos", md"`floor` ($\lfloor\,\rfloor$), `ceil` ($\lceil\,\rceil$), `round`.")

# ╔═╡ 8d0d58ae-4daa-4af0-bc79-e42b9c8f6e48
md"""
## Funciones en $\mathbb{R}$
"""

# ╔═╡ d864e788-93ae-4d35-ac3a-ddd9bb5f7c40
foldable(md"Mínimo y máximo", md"""
`min`, `max`.
""")

# ╔═╡ 40fb5e94-ae52-4ae2-a2e9-110f356f6f50
foldable(md"Trigonométricas", md"`sin`, `cos`, `tan`, `cot`, `asin`, `acos`, `atan`, `acot`.")

# ╔═╡ 4d1a1977-7922-452c-9207-62fdc127c8c5
foldable(md"Trigonométricas hiperbólicas", md"`sinh`, `cosh`, `tanh`, `coth`, `asinh`, `acosh`, `atanh`, `acoth`.")

# ╔═╡ 266940b2-4568-11ef-36b3-2df3e68607c1
foldable0(md"Y muchas más, véase [https://docs.julialang.org/en/v1/base/math](https://docs.julialang.org/en/v1/base/math/).")

# ╔═╡ 266940f0-4568-11ef-2196-ad644efbdbe8
md"""
## $\sqrt{\,}$
Una curiosidad.

La *function* `sqrt` se puede usar como operador unario $\sqrt{\,}$, que se escribe con `\sqrt+tab`.
"""

# ╔═╡ 2669429e-4568-11ef-39e5-3708c77b39f6
√5, sqrt(5)

# ╔═╡ 266942e4-4568-11ef-2f2a-1f279c54d63b
√(9 + 16)

# ╔═╡ a5480504-e2ce-4a97-bce3-2677063f6fab
foldable0(
md"""
La *function* `cbrt` también se puede usar como el operador $\sqrt[3]{}$, mediante `\cbrt`.
"""
)

# ╔═╡ 1410120a-41c7-48c0-b8cd-a3bd8df679d3
∛8

# ╔═╡ 26694382-4568-11ef-0045-e569f2632d80
md"""
## Funciones en $\mathbb{C}$

Todas las anteriores (excepto `floor`, `ceil`, `min` y `max`) se pueden usar con números complejos.
"""

# ╔═╡ 266943d4-4568-11ef-3911-3d6e1fb6a1d8
sin(1+im), exp(4-0.5im), √(2-2im), log(im)

# ╔═╡ bf8b2aaa-3fe2-4039-bed3-6ac45a0e8c5c
md"
---
En el caso del `round`, se redondean las partes real e imaginaria del complejo."

# ╔═╡ dcd87e9c-1570-4a5a-9039-6313822f892c
round(3.2-4.9im)

# ╔═╡ 2669441a-4568-11ef-066d-318aad47e2fa
md"""
## Funciones en $\mathbb{C}$

Para los números complejos $z=x+yi\in\mathbb{C}$ se definen:

- Las partes *real* e *imaginaria* de $z$, $Re(z)=x$ e $Im(z)=y$, respectivamente.


- El *módulo* de $z$

$$|z|=\sqrt{x^2+y^2}$$


- El argumento de $z$, $\arg(z)=\angle (1,z)$, ángulo entre el eje real y $z$.


- El *conjugado* de $z$
$$\overline{z}=x-yi$$
"""

# ╔═╡ 2669446a-4568-11ef-2f2d-8115d4772eb8
md"""
## Funciones en $\mathbb{C}$

En **Julia** ya se tienen de la siguiente manera:
- `real` (parte real), `imag` (parte imaginaria).
- `abs` (es el módulo $|z|$), `abs2` (es el módulo al cuadrado $|z|^2$).
- `angle` (el argumento $\arg(z)$, regresa un número en el intervalo $(-\pi,\pi]$).
- `conj` (el conjugado $\overline{z}$ ).

---
"""

# ╔═╡ 26694500-4568-11ef-04f9-5756563fd48f
real(2.5-0.5im), imag(2im), abs(2+2im), abs2(2+2im), angle(2-2im), conj(2-2im)

# ╔═╡ 9d36c208-2583-43f2-90ba-c7ef06b2023f
md"""
## Creación de elementos de $\mathbb{C}$

Para crear números complejos, se recomienda en general utilizar la *function* `complex` en lugar de el estilo "matemático" $x$`+`$y$`im`, pues la *function* es más eficiente al no incluir operaciones.

---
"""

# ╔═╡ a6b16bd3-fcee-4fe5-b62e-263de4a362f6
complex(0.25, -0.75)

# ╔═╡ 2669456e-4568-11ef-11cf-4f5388c7f42d
md"""
# Números pseudo-aleatorios

**Julia** tiene varias *functions* útiles para generar números pseudo-aleatorios.
"""

# ╔═╡ 266945ee-4568-11ef-1367-575dc37e56ac
foldable(md"
#### 💻 Nota técnica",
md"""
> Son números *pseudo-aleatorios* ("falsos aletorios"), pues una computadora, al ser un sistema determinista, es imposible que genere verdaderos números aleatorios...
""")

# ╔═╡ 2669464a-4568-11ef-344d-6f870cabf4bc
md"""
## Generación de números pseudo-aleatorios
Las *functions* para generar números pseudo-aleatorios inician con `rand` (de *random*, que significa "aleatorio").

- `rand`, genera un número pseudo-aleatorio de tipo de punto flotante entre $0.0$ y $1.0$.


- `rand(`*Tipo*`)`, genera un número pseudo-aleatorio de tipo *Tipo* entre `typemin(`*Tipo*`)` y `typemax(`*Tipo*`)`.


- `randn`, genera un número pseudo-aleatorio con la distribución normal con media $0$ y desviación estándar $1$.

---
"""

# ╔═╡ 3f77d360-303a-45c7-b654-d7e9c27f62a0
rand()

# ╔═╡ 266946ae-4568-11ef-2618-7953afbc91c1
md"""
## Más sobre números pseudo-aleatorios
Con estas *functions*, podemos generar números en el rango y tipo que necesitemos.

Para generar número pseudoaleatorio en el intervalo $[a,b]\subset\mathbb{R}$, la fórmula es
```julia
a + (b-a)*rand()
```
pues `rand()` genera número pseudoaleatorios en $[0,1]$.
"""

# ╔═╡ 26694712-4568-11ef-3b01-071b24ea74e9
a, b = -3, 4.5

# ╔═╡ 26694d0c-4568-11ef-29a9-15f1cf35a75a
a + (b-a)*rand()

# ╔═╡ 26694d48-4568-11ef-1d1a-27588a820630
md"
## Más sobre números pseudo-aleatorios

Para generar número pseudo-aleatorios enteros en cierto rango, la fórmula es un poco más complicada.
~~~julia
abs(rand(Int64) % (n - m + 1)) + m
~~~"

# ╔═╡ 546b79ab-de3d-422a-97f6-7c1d5c9bd2c3
m, n = 10, 20

# ╔═╡ 26694d9a-4568-11ef-2a47-b729810d2ac2
abs(rand(Int64) % (n - m + 1)) + m

# ╔═╡ 26694dcc-4568-11ef-1eeb-f518aca631c0
foldable0(md"(Una mejor y más fácil manera de hacer esto lo veremos otro día.)")

# ╔═╡ 26694e38-4568-11ef-2bfb-2798b01d3caf
md"""
# Conversión entre tipos

Los nombres de los tipos en **Julia** también se pueden usar como *functions* para conversión entre ellos.
"""

# ╔═╡ 26694e74-4568-11ef-03f6-c5553882cdbb
foldable0(md"Los tipos deben ser compatibles de acuerdo a la jerarquía, tamaño en bits y propiedades conocidas de los números, por ejemplo, un complejo no se puede convertir en entero, pero un entero a complejo si.")

# ╔═╡ 192b5f00-49bb-4531-8527-a064795ef21c
md"""
## Ejemplos de conversión de tipos
"""

# ╔═╡ 107ec839-ce11-4f26-ad38-32a7f2d62ac6
N = rand(UInt16)

# ╔═╡ 69c4d021-7c04-4383-9119-49fe29ea970a
Int64(N)

# ╔═╡ 26694f46-4568-11ef-2e11-4f89e073bf25
#Int8(N)

# ╔═╡ 39b9ff93-98bf-4ded-8586-f2616d85bda7
md"""
## Ejemplos de conversión de tipos
"""

# ╔═╡ 26694f6e-4568-11ef-351a-55cba3f8933f
Complex(-3.5)

# ╔═╡ 26694faa-4568-11ef-01dc-2d743acfce69
#Float64(1+im)

# ╔═╡ d018185b-1587-4e3a-bd4f-bde40945fb9c
md"""
# *Functions* de impresión
En **Julia** tenemos las *functions* `print` para "imprimir" y `println` para "imprimir" con salto de línea.

Dado que estamos trabajando en el ambiente de programación interactivo **Pluto**, estas *functions* no nos serán muy útiles.

Pero en otros contextos, como cuando se trabaja en una terminal, son indispensables. 
"""

# ╔═╡ 3b1e485f-32a3-4072-b672-bbc7d7952139
md"""
## `print` y `println`
Estas *functions* pueden recibir valores o variables de cualquier tipo, separados por `,` si es necesario. 

---
"""

# ╔═╡ fd6f25c0-ff40-4713-a803-a3bc75dc6e3c
let
	println("√2 = ", sqrt(2))
	print("√(2i) = ", sqrt(2im))
end

# ╔═╡ 26695018-4568-11ef-2b36-af494c69573f
md"""
# *Functions* en **Colors**

En el paquete **Colors** existen *functions* para obtener los componentes del color:


- `red`, `green` y `blue` para los colores **RGB**.


- `hue`, `comp2` (es la saturación) y `comp3` (es el brillo) para los colores **HSV**.


- `alpha`, la opacidad para todo tipo de color.

---

Veamos algunos ejemplos, pero para ello por supuesto necesitamos "cargar" el paquete **Colors**:
"""

# ╔═╡ f0498c61-a866-40a6-b448-0a1f214ca6b5
md"""
## Ejemplos de *functions* en **Colors**
"""

# ╔═╡ 266950a4-4568-11ef-20a3-077ac1caec0d
mycolor1 = RGB(0.4,0.6,0.8)

# ╔═╡ 26695112-4568-11ef-1e2d-d1d6ebf1d01b
red(mycolor1), green(mycolor1), blue(mycolor1), alpha(mycolor1)

# ╔═╡ ba7812e6-b7fa-42d8-925d-26adc41b4900
mycolor2 = HSVA(145,0.6,0.8,0.4)

# ╔═╡ b603c2fd-e33e-4f4c-9b29-f72e4e369f11
hue(mycolor2), comp2(mycolor2), comp3(mycolor2), alpha(mycolor2)

# ╔═╡ 2669514e-4568-11ef-1bb9-838981256016
md"## Conversión de colores
La conversión entre tipos de colores no es directa, pero se puede usar la *function* `convert` con el siguiente formato:
~~~julia
convert(TipoColor, VariableColor)
~~~
---
"

# ╔═╡ 26695176-4568-11ef-043b-f17ff4585f6f
mycolor1hsv = convert(HSV, mycolor1)

# ╔═╡ 266951c6-4568-11ef-24bb-c54a84079c1d
hue(mycolor1hsv), comp2(mycolor1hsv), comp3(mycolor1hsv)

# ╔═╡ 266951e4-4568-11ef-1c42-a5be38f1a07c
convert(RGBA, mycolor2)

# ╔═╡ 2669523e-4568-11ef-052d-034c773f0b44
md"## Conversión a grises
También se pueden convertir colores **RGB** ó **HSV** a grises.

---
"

# ╔═╡ af5bb7fa-a059-4747-833a-eeb886b00a01
RGB(1,0,0), RGB(0,1,0), RGB(0,0,1), RGB(1,1,0), RGB(0,1,1), RGB(1,0,1)

# ╔═╡ 26695264-4568-11ef-0e8c-2d5c46df178a
convert(Gray, RGB(1,0,0)), convert(Gray, RGB(0,1,0)), convert(Gray, RGB(0,0,1)), convert(Gray, RGB(1,1,0)), convert(Gray, RGB(0,1,1)), convert(Gray, RGB(1,0,1))

# ╔═╡ 266952e8-4568-11ef-23ff-5b5c7ffe467f
md"""
## 💻 Nota técnica
> La fórmula interna para convertir **RGB** a gris se llama "de luminosidad" y es
>
> $$gray = 0.3R + 0.59G + 0.11B$$
>
> (que tiene que ver como percibimos los humanos los colores y su "intensidad").
"""

# ╔═╡ 2669532e-4568-11ef-3769-3d775278c523
let
    myrgb = RGB(0.14, 0.25, 0.86)
    myrgb, convert(Gray, myrgb), Gray(0.3*red(myrgb) + 0.59*green(myrgb) + 0.11*blue(myrgb))
end

# ╔═╡ 3fea3558-b15c-479f-9b2f-1b82d002ad0c
md"""
## Colores pseudo-aleatorios

Combiando la *function* `rand` y los tipos de colores `Gray`, `GrayA`, `RGB`, `RGBA` y `HSV`, se pueden crear colores pseudo-aleatorios.

---
"""

# ╔═╡ bfa7851a-e052-4b3b-9d2d-405e071fa095
rand(RGBA)

# ╔═╡ 0c15df4b-e86d-4c55-a7bc-0743e3f88c2b
rand(HSV)

# ╔═╡ 63240f79-424f-40e3-8739-a74bbf70ea2a
foldable0(md"Extrañamente no existe `HSVA`.")

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

julia_version = "1.12.7"
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
version = "1.3.1+2"

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
# ╟─26693484-4568-11ef-238e-4dd56bee1264
# ╟─26693dd0-4568-11ef-1805-fd1ee0e3bda7
# ╟─26693e52-4568-11ef-214f-dd1809f69a99
# ╟─26693ed4-4568-11ef-2f2e-a5d6b15a2ed7
# ╟─26693f6a-4568-11ef-05cd-4b7d84047124
# ╟─26693fba-4568-11ef-3e04-d178a5b3517c
# ╟─26694052-4568-11ef-3de9-717320bf3e5c
# ╟─f05988cc-ef95-44a5-a9c5-5ccaf2f3ab5e
# ╟─beed97c6-142d-4d60-9a4f-4a941bb3b927
# ╟─af15ead7-b7bb-491b-aa84-b8850bd10b74
# ╟─8d0d58ae-4daa-4af0-bc79-e42b9c8f6e48
# ╟─d864e788-93ae-4d35-ac3a-ddd9bb5f7c40
# ╟─40fb5e94-ae52-4ae2-a2e9-110f356f6f50
# ╟─4d1a1977-7922-452c-9207-62fdc127c8c5
# ╟─266940b2-4568-11ef-36b3-2df3e68607c1
# ╟─266940f0-4568-11ef-2196-ad644efbdbe8
# ╠═2669429e-4568-11ef-39e5-3708c77b39f6
# ╠═266942e4-4568-11ef-2f2a-1f279c54d63b
# ╟─a5480504-e2ce-4a97-bce3-2677063f6fab
# ╠═1410120a-41c7-48c0-b8cd-a3bd8df679d3
# ╟─26694382-4568-11ef-0045-e569f2632d80
# ╠═266943d4-4568-11ef-3911-3d6e1fb6a1d8
# ╟─bf8b2aaa-3fe2-4039-bed3-6ac45a0e8c5c
# ╠═dcd87e9c-1570-4a5a-9039-6313822f892c
# ╟─2669441a-4568-11ef-066d-318aad47e2fa
# ╟─2669446a-4568-11ef-2f2d-8115d4772eb8
# ╠═26694500-4568-11ef-04f9-5756563fd48f
# ╟─9d36c208-2583-43f2-90ba-c7ef06b2023f
# ╠═a6b16bd3-fcee-4fe5-b62e-263de4a362f6
# ╟─2669456e-4568-11ef-11cf-4f5388c7f42d
# ╟─266945ee-4568-11ef-1367-575dc37e56ac
# ╟─2669464a-4568-11ef-344d-6f870cabf4bc
# ╠═3f77d360-303a-45c7-b654-d7e9c27f62a0
# ╟─266946ae-4568-11ef-2618-7953afbc91c1
# ╠═26694712-4568-11ef-3b01-071b24ea74e9
# ╠═26694d0c-4568-11ef-29a9-15f1cf35a75a
# ╟─26694d48-4568-11ef-1d1a-27588a820630
# ╠═546b79ab-de3d-422a-97f6-7c1d5c9bd2c3
# ╠═26694d9a-4568-11ef-2a47-b729810d2ac2
# ╟─26694dcc-4568-11ef-1eeb-f518aca631c0
# ╟─26694e38-4568-11ef-2bfb-2798b01d3caf
# ╟─26694e74-4568-11ef-03f6-c5553882cdbb
# ╟─192b5f00-49bb-4531-8527-a064795ef21c
# ╠═107ec839-ce11-4f26-ad38-32a7f2d62ac6
# ╠═69c4d021-7c04-4383-9119-49fe29ea970a
# ╠═26694f46-4568-11ef-2e11-4f89e073bf25
# ╟─39b9ff93-98bf-4ded-8586-f2616d85bda7
# ╠═26694f6e-4568-11ef-351a-55cba3f8933f
# ╠═26694faa-4568-11ef-01dc-2d743acfce69
# ╟─d018185b-1587-4e3a-bd4f-bde40945fb9c
# ╟─3b1e485f-32a3-4072-b672-bbc7d7952139
# ╠═fd6f25c0-ff40-4713-a803-a3bc75dc6e3c
# ╟─26695018-4568-11ef-2b36-af494c69573f
# ╠═26695036-4568-11ef-0831-a5892ee4ed72
# ╟─f0498c61-a866-40a6-b448-0a1f214ca6b5
# ╠═266950a4-4568-11ef-20a3-077ac1caec0d
# ╠═26695112-4568-11ef-1e2d-d1d6ebf1d01b
# ╠═ba7812e6-b7fa-42d8-925d-26adc41b4900
# ╠═b603c2fd-e33e-4f4c-9b29-f72e4e369f11
# ╟─2669514e-4568-11ef-1bb9-838981256016
# ╠═26695176-4568-11ef-043b-f17ff4585f6f
# ╠═266951c6-4568-11ef-24bb-c54a84079c1d
# ╠═266951e4-4568-11ef-1c42-a5be38f1a07c
# ╟─2669523e-4568-11ef-052d-034c773f0b44
# ╠═af5bb7fa-a059-4747-833a-eeb886b00a01
# ╠═26695264-4568-11ef-0e8c-2d5c46df178a
# ╟─266952e8-4568-11ef-23ff-5b5c7ffe467f
# ╠═2669532e-4568-11ef-3769-3d775278c523
# ╟─3fea3558-b15c-479f-9b2f-1b82d002ad0c
# ╠═bfa7851a-e052-4b3b-9d2d-405e071fa095
# ╠═0c15df4b-e86d-4c55-a7bc-0743e3f88c2b
# ╟─63240f79-424f-40e3-8739-a74bbf70ea2a
# ╟─26696cb8-4568-11ef-301b-71869c8a275d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
