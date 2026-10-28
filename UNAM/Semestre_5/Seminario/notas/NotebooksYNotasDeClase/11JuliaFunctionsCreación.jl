### A Pluto.jl notebook ###
# v1.0.3

using Markdown
using InteractiveUtils

# ╔═╡ 181780b8-dbcd-47d5-b0fa-2c6b5956ce42
using Colors

# ╔═╡ 26696cb8-4568-11ef-301b-71869c8a275d
include("src/nbutils.jl")

# ╔═╡ 26693484-4568-11ef-238e-4dd56bee1264
md"""
# Creación de *Functions*
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ 827387b4-b477-4fc0-9b72-5d2669709f2a
md"""
## La palabra clave `function`

El formato para crear nuestra propia *function* que no recibe valores, es el siguiente:
```julia
function nombrefunction()
    instrucción 1
    ...
    instrucción N
end
```
"""

# ╔═╡ 266954a2-4568-11ef-103e-d990455cf7b3
foldable(md"💻 Nota técnica", md"""
> `function` es la palabra clave en **Julia** para indicar la construcción de una *function* y `end` es la palabra clave para indicar el final de un *bloque de código*, que en este caso en particular, se llama *cuerpo* de la *function*.
""")

# ╔═╡ 26695522-4568-11ef-3709-4f79817f3c99
md"""
## Uso de una *function*
Para utilizar nuestra *function* así creada, el formato es:

```julia
nombrefunction()
```
"""

# ╔═╡ 2669554a-4568-11ef-2cec-3f6ad0224df2
foldable(md"💻 Nota técnica", md"> Esto es nombrado en programación como *llamada* a la *function*.")

# ╔═╡ 266955ae-4568-11ef-2e70-c1c2f8bcdf73
md"## Ejemplo de creación de *function*"

# ╔═╡ 26695630-4568-11ef-2fe4-535183e42ebc
function printline()
	println("+"*("-"^48)*"+")
end

# ╔═╡ 7ed7937e-b63b-4b50-8d07-703b4cf8990b
md"""
---

Llamada la *function* creada:
"""

# ╔═╡ 26695658-4568-11ef-282e-6f42b57c9f7b
printline()

# ╔═╡ ec22b4d0-c6ce-43f4-a85d-0aa2ed7b154d
printline()

# ╔═╡ 0ca16e68-d397-4031-84ba-83f0b150edbe
md"""
## 💻 Nota técnica
> Como se puede notar, al crear un *function* aparece el enunciado `(generic function with 1 method)`.
>
> Esto es muy importante y tiene que ver con el diseño de **Julia** como lenguaje de programación, pero estudiaremos los detalles técnicos mucho más adelante.
>
> Por el momento lo podemos ignorar 😅. 
"""

# ╔═╡ 2669569c-4568-11ef-2b39-f348413d61e7
md"""
## Llamando *functions* en *functions*
Se pueden llamar *functions* ya creadas dentro de otras *functions*.

---
"""

# ╔═╡ 26695748-4568-11ef-3516-d54b5ce41a51
function print5lines()
	printline()
	printline()
	printline()
	printline()
	printline()
end

# ╔═╡ 26695772-4568-11ef-01f6-315a79e912f4
print5lines()

# ╔═╡ 11576372-b484-43a9-84f6-80fa35542364
md"""
## Un ejemplo con colores

Podemos implementar un *function* para crear un color **HSVA** aleatorio, faltante en el paquete **Colors**.

---
"""

# ╔═╡ 1af9d30b-756b-40f3-b948-3f2d85e77a1a
function randHSVA()
	h = 360rand()
	s = rand()
	v = rand()
	a = rand()
	HSVA(h,s,v,a)
end

# ╔═╡ c1f217ca-6f08-4d2c-9f0c-79b7741e40f0
#randHSVA()

# ╔═╡ 26695a4a-4568-11ef-2270-eb4d59bb727b
md"""
## 💻 Nota técnica

> Como ya hemos visto, el *flujo de ejecución* en un bloque de código siempre empieza con la instrucción en primera línea del código y continúa consecutivamente con las siguientes líneas de arriba hacia abajo, hasta la instrucción en la última línea.
>
> Sin embargo, el código en el cuerpo de la *function* sólo entra en el flujo de ejecución hasta la llamada de la *function*.
"""

# ╔═╡ 26695ac2-4568-11ef-2b89-e98aaea8c188
md"""
## 💻 Ejemplo para la nota técnica
"""

# ╔═╡ 26695b46-4568-11ef-1db2-4f514372f9a6
begin
    function f2()
        println("f2 llamando a ")
		f1()
    end
    
    function f1()
        println("f1")
    end
    
    f2()
end

# ╔═╡ 26695b8a-4568-11ef-0e4c-11e5a32efdb8
md"""
## 💻 Ejemplo para la nota técnica
"""

# ╔═╡ 26695bc6-4568-11ef-26d2-e78d83c42650
begin
    function f4()
        println("f4 llamando a ")
		f3()
    end
    
    #f4()
    
    function f3()
        println("f3")
    end
end

# ╔═╡ 26695c2a-4568-11ef-1ca6-4d2769ac1579
md"""
# *Functions* con argumentos
El formato para crear nuestra propia *function* que recibe valores (que se les llama *argumentos*), es el siguiente:
```julia
function nombrefunction(arg1, arg2, ..., argM)
    instrucción 1
    ...
    instrucción N
end
```
"""

# ╔═╡ 26695ca2-4568-11ef-0ef8-1b123c952685
foldable(md"💻 Nota técnica",md"> Dentro (en el bloque de código) de la *function*, los valores de los argumentos son asignados a variables locales llamadas *parámetros*.")

# ╔═╡ 592dad56-f75c-44c2-9498-3f161fa34e29
md"""
## Ejemplo de *funtion* con argumentos

Generando colores **RGB** a partir de sus componentes dadas con enteros entre $0$ y $255$.

---
"""

# ╔═╡ d192d703-aedd-4b8c-ad9d-06e357aa9414
function RGBInt(ri,gi,bi)
    r, g, b = ri/255, gi/255, bi/255
    RGB(r,g,b)
end

# ╔═╡ af1c68a5-4432-42bd-a6ff-e3c746721c7f
RGBInt(120,255,60)

# ╔═╡ 26696134-4568-11ef-048d-2b5fca702eb6
md"""
## 💻 Notas técnicas importantes
"""

# ╔═╡ 55482ca8-2200-46d5-bf77-ae9a9ff85a67
md"""
> Los parámetros y otras variables creadas dentro de la *function* son *locales*, es decir, sólo están definidas en ese bloque de código y son desconocidas fuera de él.
"""

# ╔═╡ 266961de-4568-11ef-0b9f-4bf5fe2b165a
foldable0(md"""
> Como ya sabemos, las variables que no están en el bloque de código de la *function*, de hecho, si no están en ningún bloque "algo"($\neq$`begin`) ... `end`, se les llama *globales* y son conocidas "en todos lados".
""")

# ╔═╡ e647921c-f63e-4448-aec1-b6809c776fa5
foldable0(md"""
!!! danger "¡Atención!"
	Pueden existir parámetros y variables locales con el mismo nombre que alguna variable global, pero ¡atención, no son las mismas!""")

# ╔═╡ 6bf77c6b-94eb-4079-ba28-05eb42af743c
md"""
## 💻 Ejemplo para la nota técnica
"""

# ╔═╡ 26696242-4568-11ef-17a1-1b551f741e93
begin
    arg0, var1, var2, var3 = 0, 1, 2, 3 # globales
    
    function testvarlocal(arg0)
        arg0 = var2
        var1 = arg0 + 1000
        println("testvarlocal: $arg0, $var1, $var2, $var3")
    end
end

# ╔═╡ dd34acb1-ea6e-4777-8516-12dbd50520dc
#md"Globales antes: $arg0, $var1, $var2, $var3"

# ╔═╡ 849df4e9-db0a-4c61-b518-070d49dac257
#testvarlocal(1000)

# ╔═╡ b381d6f8-730b-4eaf-a562-72fb42129174
#md"Globales después: $arg0, $var1, $var2, $var3"

# ╔═╡ 26696364-4568-11ef-3426-852b52bb1194
md"""
# Regreso de valores por *functions*
Todas las *functions* en **Julia** regresan un valor, aunque no lo parezca. Por defecto es el valor que corresponde a la evaluación de la última instrucción dentro de la *function*.
```julia
function nombrefunction(arg1, ..., argN)
    instrucción 1
	instrucción 2
    ...
	instrucción N-1
    instrucción N # Se regresa el valor obtenido de evaluar esta instrucción.
end
```
"""

# ╔═╡ 2669649a-4568-11ef-17a0-efbeef2115e3
md"""
## Ejemplo

Dados valores $a,b,t\in\mathbb{R}$, $a\neq b$, se puede obtener el valor interpolado linealmente "entre" $a$ y $b$ con

$$t\mapsto a+(b-a)t$$

de manera que $0 \mapsto a$ y $1 \mapsto b$. Así, el valor interpolado está entre $a$ y $b$ si y sólo si $t\in(0,1)$.

---
"""

# ╔═╡ 266964e0-4568-11ef-2504-a3a1b3e81bab
function linterp(a,b,t) # Linear INTERPolation
    a + (b - a)*t
end

# ╔═╡ 26696508-4568-11ef-28e0-1568f644ffb7
linterp(-4,8,0.05)

# ╔═╡ 2669657e-4568-11ef-3e5f-6b06a0c43295
md"""
## Ejemplo

Colores **RGB** interpolados.

---
"""

# ╔═╡ 266966f2-4568-11ef-3a04-a3f24e41e8cd
function linterpRGB(rgb1, rgb2, t)
    r = linterp(red(rgb1),   red(rgb2),   t)
    g = linterp(green(rgb1), green(rgb2), t)
    b = linterp(blue(rgb1),  blue(rgb2),  t)
    RGB(r,g,b) 
end

# ╔═╡ 3f88b218-ed76-4fb4-b822-e95309001412
color1, color2 = RGB(0.9,0.3,0.1), RGB(0.2,0.6,0.8)

# ╔═╡ 2669672e-4568-11ef-3b41-f325245270f5
#linterpRGB(color1, color2, 0.5)

# ╔═╡ 266967a6-4568-11ef-2fac-b3ac88c020d7
md"""
## 💻 Nota técnica (curiosidad)

> Existen *functions* que aparentemente "no regresan nada" (como `print` o nuestra `printline`). Pero en realidad si regresan un valor, que es la constante `nothing` de tipo `Nothing`.
"""

# ╔═╡ 266967ce-4568-11ef-323d-45281b048335
not = printline()

# ╔═╡ 2669680a-4568-11ef-0554-032d8184f429
typeof(not), not

# ╔═╡ 26696828-4568-11ef-3e4c-632b2dbf566a
typeof(println("Aquí en Julia la nada es algo..."))

# ╔═╡ 266968e6-4568-11ef-29f2-47fefec7f7aa
md"""
# *Functions* estilo matemáticas
En **Julia** se permite definir *functions* con una sintaxis compacta usando el siguiente formato:

```julia
nombrefunction(arg1, arg2, ..., argN) = expresión
```

Nótese que esto es exactamente lo que usamos en la notación matemática usual.
"""

# ╔═╡ 2669690e-4568-11ef-35ed-ddb3069b00e4
md"""
## Ejemplo
$$f(x) = x^2 - 3x + 1$$

---
"""

# ╔═╡ 26696972-4568-11ef-0491-8fd31b7ac7ef
f(x) = x^2 - 3x + 1

# ╔═╡ 266969b6-4568-11ef-39ef-8f08fdb003ca
f(-2.5)

# ╔═╡ 266969e8-4568-11ef-2bea-e3d218456574
md"""
## Ejemplo
Una función $H:\mathbb{R}^2\rightarrow\mathbb{R}^2$

$$H(x,y) = (1 - 1.4x^2 + y, 0.3x)$$

---
"""

# ╔═╡ 26696a26-4568-11ef-3c1e-29f0d6225ca4
H(x,y) = (1-1.4x^2+y, 0.3x)

# ╔═╡ 26696a4e-4568-11ef-3434-c5e95185a2be
H(3,1.5)

# ╔═╡ 26696ac6-4568-11ef-314c-5f38420f2238
md"""
## Ejemplo
Una parametrización del círculo unitario:

$$c(t)=(\cos(t),\sin(t))$$

---
"""

# ╔═╡ 26696b02-4568-11ef-0e22-813db28b1e48
cu(t) = (cos(t), sin(t))

# ╔═╡ 26696b34-4568-11ef-018b-2ddd609afb06
cu(π/6)

# ╔═╡ 26696b84-4568-11ef-334b-8bab2442ea1c
md"""
## Ejemplo

Definición de un número complejo a través de su argumento y módulo

$$z=re^{\theta i}=r(\cos(\theta)+i \sin(\theta))$$

donde $r=|z|$ y $\theta=arg(z)$.

---
"""

# ╔═╡ 26696ba2-4568-11ef-3203-0b89ff5c70f1
complexrθ(r,θ) = r*exp(θ*im)

# ╔═╡ 26696bd4-4568-11ef-1b84-07b5eb7785cd
#complexrθ(4,π/2)

# ╔═╡ 26696c86-4568-11ef-1789-cb5030ca994f
md"""
# Importancia de las *functions*
Las *functions* son de gran utilidad en programación:

- Eliminan las repeticiones de código, y así modificaciones o correciones se hacen en un sólo lugar.


- La agrupación de instrucciones con un nombre facilita la lectura, escritura y depuración del código.


- Es posible la reutilización de una *function* en muchos programas distintos.


- En **Julia**, incrementan el desempeño computacional del programa.
"""

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
# ╟─827387b4-b477-4fc0-9b72-5d2669709f2a
# ╟─266954a2-4568-11ef-103e-d990455cf7b3
# ╟─26695522-4568-11ef-3709-4f79817f3c99
# ╟─2669554a-4568-11ef-2cec-3f6ad0224df2
# ╟─266955ae-4568-11ef-2e70-c1c2f8bcdf73
# ╠═26695630-4568-11ef-2fe4-535183e42ebc
# ╟─7ed7937e-b63b-4b50-8d07-703b4cf8990b
# ╠═26695658-4568-11ef-282e-6f42b57c9f7b
# ╠═ec22b4d0-c6ce-43f4-a85d-0aa2ed7b154d
# ╟─0ca16e68-d397-4031-84ba-83f0b150edbe
# ╟─2669569c-4568-11ef-2b39-f348413d61e7
# ╠═26695748-4568-11ef-3516-d54b5ce41a51
# ╠═26695772-4568-11ef-01f6-315a79e912f4
# ╟─11576372-b484-43a9-84f6-80fa35542364
# ╠═181780b8-dbcd-47d5-b0fa-2c6b5956ce42
# ╠═1af9d30b-756b-40f3-b948-3f2d85e77a1a
# ╠═c1f217ca-6f08-4d2c-9f0c-79b7741e40f0
# ╟─26695a4a-4568-11ef-2270-eb4d59bb727b
# ╟─26695ac2-4568-11ef-2b89-e98aaea8c188
# ╠═26695b46-4568-11ef-1db2-4f514372f9a6
# ╟─26695b8a-4568-11ef-0e4c-11e5a32efdb8
# ╠═26695bc6-4568-11ef-26d2-e78d83c42650
# ╟─26695c2a-4568-11ef-1ca6-4d2769ac1579
# ╟─26695ca2-4568-11ef-0ef8-1b123c952685
# ╟─592dad56-f75c-44c2-9498-3f161fa34e29
# ╠═d192d703-aedd-4b8c-ad9d-06e357aa9414
# ╠═af1c68a5-4432-42bd-a6ff-e3c746721c7f
# ╟─26696134-4568-11ef-048d-2b5fca702eb6
# ╟─55482ca8-2200-46d5-bf77-ae9a9ff85a67
# ╟─266961de-4568-11ef-0b9f-4bf5fe2b165a
# ╟─e647921c-f63e-4448-aec1-b6809c776fa5
# ╟─6bf77c6b-94eb-4079-ba28-05eb42af743c
# ╠═26696242-4568-11ef-17a1-1b551f741e93
# ╠═dd34acb1-ea6e-4777-8516-12dbd50520dc
# ╠═849df4e9-db0a-4c61-b518-070d49dac257
# ╠═b381d6f8-730b-4eaf-a562-72fb42129174
# ╟─26696364-4568-11ef-3426-852b52bb1194
# ╟─2669649a-4568-11ef-17a0-efbeef2115e3
# ╠═266964e0-4568-11ef-2504-a3a1b3e81bab
# ╠═26696508-4568-11ef-28e0-1568f644ffb7
# ╟─2669657e-4568-11ef-3e5f-6b06a0c43295
# ╠═266966f2-4568-11ef-3a04-a3f24e41e8cd
# ╠═3f88b218-ed76-4fb4-b822-e95309001412
# ╠═2669672e-4568-11ef-3b41-f325245270f5
# ╟─266967a6-4568-11ef-2fac-b3ac88c020d7
# ╠═266967ce-4568-11ef-323d-45281b048335
# ╠═2669680a-4568-11ef-0554-032d8184f429
# ╠═26696828-4568-11ef-3e4c-632b2dbf566a
# ╟─266968e6-4568-11ef-29f2-47fefec7f7aa
# ╟─2669690e-4568-11ef-35ed-ddb3069b00e4
# ╠═26696972-4568-11ef-0491-8fd31b7ac7ef
# ╠═266969b6-4568-11ef-39ef-8f08fdb003ca
# ╟─266969e8-4568-11ef-2bea-e3d218456574
# ╠═26696a26-4568-11ef-3c1e-29f0d6225ca4
# ╠═26696a4e-4568-11ef-3434-c5e95185a2be
# ╟─26696ac6-4568-11ef-314c-5f38420f2238
# ╠═26696b02-4568-11ef-0e22-813db28b1e48
# ╠═26696b34-4568-11ef-018b-2ddd609afb06
# ╟─26696b84-4568-11ef-334b-8bab2442ea1c
# ╠═26696ba2-4568-11ef-3203-0b89ff5c70f1
# ╠═26696bd4-4568-11ef-1b84-07b5eb7785cd
# ╟─26696c86-4568-11ef-1789-cb5030ca994f
# ╟─26696cb8-4568-11ef-301b-71869c8a275d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
