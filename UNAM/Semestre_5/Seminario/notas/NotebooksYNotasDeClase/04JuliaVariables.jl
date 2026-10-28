### A Pluto.jl notebook ###
# v0.20.28

using Markdown
using InteractiveUtils

# ╔═╡ 85afd6e6-341f-11ef-2408-2754f7fcedc8
include("src/nbutils.jl")

# ╔═╡ 85af9c1c-341f-11ef-003e-cf1ec0bd7e31
md"""
# Variables
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ 85afc4ba-341f-11ef-0895-47025573d6a2
md"""
# Variables

Las *variables* son "espacios de memoria" que contienen un valor (o un "objeto") y tienen un nombre.
"""

# ╔═╡ 48f3a899-182e-43aa-a1d7-1510b86c5e45
foldable0(twocolumn(md"""
Explicado con una analogía, las variables

> "Son como una caja donde se guarda algo y tiene una etiqueta para identificarla."
""",
md"""
![varbox](https://miro.medium.com/v2/0*tSh1ltSkxQKAKTFr.jpg)
"""))

# ╔═╡ 85afc5a2-341f-11ef-2959-ffbd744f9168
md"""
## Creación de variables 
Para crearlas en **Julia**, basta poner un nombre y asignar un valor de la siguiente forma:
~~~julia
nombre_variable = valor
~~~
"""

# ╔═╡ aec56327-8579-4393-bf69-d841ad060e0c
eggs = 15

# ╔═╡ 7dc49c28-7897-4381-b091-8073a8747db7
bacon = 10

# ╔═╡ 85afc5d4-341f-11ef-2327-c780e9105be6
md"""
## 💻 Notas técnicas

> El símbolo `=` significa asignación de un valor, no igualdad matemática.

Así,
~~~julia
x = 1.25
~~~
significa que se creó la variable con el nombre `x` conteniendo el valor `1.25` por asignación. 
"""

# ╔═╡ 85afc6d8-341f-11ef-12fd-47e87c2d51b2
md"""
## 💻 Notas técnicas
> La asignación es de derecha a izquierda, a la izquierda del `=` siempre debe haber una variable y a la derecha un valor.
"""

# ╔═╡ 85afc714-341f-11ef-06c1-8b0a6fb5ce65
#2 = y

# ╔═╡ 9d22aed2-43b8-4b09-91c4-d3337ccc42ad
md"""
## Reasignación de variables
Por supuesto, una vez creadas las variables pueden ser "reasignadas" con un valor diferente (¡incluso de otro tipo de valor!).
"""

# ╔═╡ 88b10a5c-c39e-4e85-afb2-3f0fa6fcbb4e
y = 1

# ╔═╡ b5cad002-0a02-42bf-888f-c3f512104630
md"""
## 💻 Notas técnicas
> La reasignación de variables con valores de tipos distintos es la cualidad de un lenguaje de programación llamada *tipado dinámico* (*dynamically typed*).
>
> Como veremos en la práctica, esto es de gran utilidad cuando escribimos programas... Pero hay que tener cuidado con estas reasignaciones (que veremos con cuidado mucho más adelante).
"""

# ╔═╡ 77c07500-8402-405c-a784-9ab0e6141227
md"""
## Reasignación de variables
"""

# ╔═╡ 8338f9df-7aae-4ed3-9a55-5728f24e3630
x

# ╔═╡ 7a92fd1b-b994-495e-8e35-80a039e8cd4a
md"""
# Variables y **Pluto**

Una de las características de **Pluto** que se mencionó y no se explicó es que "no hay un estado oculto". Esto significa que todas la variables creadas son visibles y con un valor bien definido.

En combinación con el hecho de que cada celda sólo puede contener una expresión, resulta que las variables sólo pueden ser creadas (asignadas/reasignadas) en una única celda.
"""

# ╔═╡ db2cd90c-19a5-4c1c-99db-cbb946768636
md"""
## Variables globales

Así las variables creadas en una celda son accesibles para todas la demás celdas en el *notebook*. A estas variables se les llama *globales*.

---

Variables globales:
"""

# ╔═╡ 6a530b8b-8abb-4faf-bc81-5a258406cd72
x + y

# ╔═╡ 015326f2-abe6-41f5-8f91-c373ca3a9e8e
foldable0(md"""
!!! note "Nota"
	La existencia de las variables globales es lo que permite la reactividad de **Pluto**.
""")

# ╔═╡ 1aec017a-20e4-4f1e-a4d9-e03733422ec3
md"""
## Expresiones bloque global
La restricción de una sóla expresión por celda puede parecer "asfixiante".

Afortunadamente, existen las *expresiones bloque* que pueden tener muchas líneas de código.
"""

# ╔═╡ cb5ff10e-ac43-4298-9481-9c2085db8528
foldable0(md"""
Las *expresiones bloque global* tienen el siguiente formato:
~~~julia
begin
    línea de código 1
    línea de código 2
    ...
    línea de código n
end
~~~
""")

# ╔═╡ bd850587-02d2-4df8-b2bc-a3e8dfcbac41
md"""
## Expresiones bloque global

Por supuesto, todas las variables creadas en un bloque global son globales.

---
"""

# ╔═╡ 1208b3b8-8f82-4703-b7d4-b312ffdd71b9
begin
	var1 = -1
	var2 = 2.0
	var3 = 0 + 3im
end

# ╔═╡ 3fef3bcb-e15b-47be-bfd6-5f21bd9d3278
var1

# ╔═╡ 66078d75-e652-452c-89fe-52148a61fa6d
md"""
## Variables en bloque global
Las variables creadas en un bloque global pueden reasignarse sin problemas pues esa operación está en una única celda.

---

Aquí se crea la variable `N` y se actualiza su valor varias veces...
"""

# ╔═╡ aeea01ed-c1b8-43c6-a2ee-5c8ec474ef4a
begin
	N = 1
	N = 10
	N = 100
	N = 1000
end

# ╔═╡ c78f2922-1005-49f3-a846-e8a6de74ed04
N

# ╔═╡ 1407a722-0dca-455a-8fd8-8e2512a6782a
md"""
## Expresión bloque local

Las *expresiones bloque local* tienen el siguiente formato:
~~~julia
let
    línea de código 1
    línea de código 2
    ...
    línea de código n
end
~~~

Por supuesto, la variables creadas dentro de este bloque son locales.
"""

# ╔═╡ fb6e7db4-011c-4579-9ab0-439662ae8621
md"""
## Expresión bloque local

¿Qué significa que son locales? Pues que no serán accesibles por ningún código fuera del bloque, es decir, por ninguna otra celda.

---
"""

# ╔═╡ 2e0cefc8-68d0-4d65-b02e-d77bf5ded2b3
let
	myvarloc = 0.01
end

# ╔═╡ 6864c5f2-380d-43d6-ba23-123d61a216a5
#myvarloc

# ╔═╡ 6598aa33-0f3a-4732-a94e-331d0784985c
md"""
# Detalles de las variables

### 🪢 Problemas

¿Qué está ocurriendo en el siguiente código?
"""

# ╔═╡ 6f2bbcaa-3a6c-4419-b04c-a1df075c9676
let
	#x0 = x
end

# ╔═╡ 42e9264d-c2ee-42ea-b12b-233cc952a1cc
let
	#x = 7
end

# ╔═╡ d4106581-fe55-4c63-a972-0cf1a1033c01
md"""
¿Cuánto vale `x` en la siguiente celda?
"""

# ╔═╡ 6662f723-6b2a-40fe-b703-592940ff6653
#x

# ╔═╡ c1ecb859-83e3-4df9-9c25-ae45df0b505d
md"""
## 🪢 Problemas

¿Qué ocurre en el siguiente código?
"""

# ╔═╡ 69695c3a-fa95-4541-a1ca-7da0116eb7c4
begin
	M = 1
	#M = M + 1
end

# ╔═╡ 1de064f6-27e4-4b41-be7b-30253b52751a
foldable(md"💻 Notas técnicas", md"""
> Reitero, el símbolo `=` significa asignación un valor, no igualdad matemática.
> 
> La última asignación del código anterior se interpreta como *a la variable con nombre `M` asignar el valor que es el resultado de evaluar la expresión que consiste en la adición del valor que contiene la variable con nombre `M` y $1$*.
""")

# ╔═╡ 0f7b7bca-5d39-44c6-9a19-55129c774958
md"""
## 🪢 Problemas

¿Qué ocurre en el siguiente código?
"""

# ╔═╡ fbdc303f-2c35-4c6e-9345-fe4227c56ea5
let
	#P = P + 1
	#P = 1
end

# ╔═╡ 3294aa87-b7a5-4abd-9a69-296726fcc0da
foldable(md"💻 Notas técnicas", md"""
> Esto es lo usual en los programas, el orden de ejecución (*flujo de ejecución*) de las instrucciones dentro de los bloques es de arriba hacia abajo.
>
> Pero recuerden que en el *notebook* el orden de las celdas no importa...
""")

# ╔═╡ 85afcade-341f-11ef-17f2-93fc98b54fd7
md"""
# Nombres de variables
Hay ciertas reglas para dar nombre a las variables:
- Los nombres de las variables deben comenzar con una letra (A-Z, a-z) o con otros caracteres **UNICODE** válidos (como `_`, letras griegas, con acentos, emoticons, etc).
- Los nombres después del primer caracter pueden contener caracteres de dígitos númericos (0-9) y los antes mencionados.
- Los nombres no pueden ser palabras clave (como `im`, `true`, `begin`, etc) ni contener símbolos de operadores (`+`, `-`, `*`, etc) ni de puntuación (`.`, `,`, `{`, etc).
"""

# ╔═╡ 80675b49-40db-48ea-a0bb-443780c93dd8
md"""
## Nombre de variables

Ejemplos.
"""

# ╔═╡ 85afcb6a-341f-11ef-0b69-6757832a57c6
let
    my_fraction = 2//3	
    ɛ = 0.01 # Letra griega, en LaTeX \varepsilon
    ∂z₀ = 1. + .1im # En LaTeX! \partial z\_0
    L0KúΣ = 1/8 # Con mayúsculas, un caracter acentuado y más...
    🐱lives = 9 # Caracter UNICODE \:cat:
    iam😃 = true # Caracter UNICODE \:smiley:
    
    my_fraction, ɛ, ∂z₀, L0KúΣ, 🐱lives, iam😃
end

# ╔═╡ 450a78b7-e727-47d3-9c80-7faebf7211b3
α👍 = 0.03489759283759

# ╔═╡ 8fc9bf59-dd9c-45b6-aa28-237ebf5e29f8
md"""
## Caracteres **UNICODE**
"""

# ╔═╡ 85afcb90-341f-11ef-3b7e-8f615c99343e
html"""<embed src="https://docs.julialang.org/en/v1/manual/unicode-input" width=1000 height=400>"""

# ╔═╡ 410086bd-1520-4eae-af69-65a751db4be2
md"""
## 💻 Notas técnicas
> Las palabras `im`, `pi`, $\pi$ y $e$ no son reservadas en **Julia**.
"""

# ╔═╡ e5644a2e-ae44-4d70-83fc-af7f2729ca86
foldable0(md"""
!!! danger "¡Peligro!"
	Por lo anterior, se pueden crear variables con los nombres anteriores, pero es muy probable que cause problemas... ¡No lo hagan!
""")

# ╔═╡ 793ec029-4b0a-41a0-a293-cbec16b63baa
π

# ╔═╡ 04eabf13-aca8-4515-ad34-1e42139a1e24
#π = 3.15

# ╔═╡ fa078571-fe3a-412d-8b05-0469f6b007f5
#pi

# ╔═╡ 85afd3f8-341f-11ef-02c6-7d9586288bd2
md"""
# Constantes

Podemos crear nuestras propias "variables constantes" usando la palabra clave `const`. Este es el formato:
```julia
const nombre_constante = valor
```
"""

# ╔═╡ 85afd452-341f-11ef-1ddf-efb58e9ea8aa
begin
    const my_const = 0.10101
    #my_const = 0.01010
end

# ╔═╡ 6d663a9e-d5ba-41ec-88d8-40f7f53b85fb
my_const

# ╔═╡ 13f57325-6294-4b69-88cf-b049deea9f79
md"""
## 💻 Notas técnicas
> ¿Por qué los creadores de **Julia** no hicieron constantes a $\pi$ (`pi` ó `\pi`), $e$ (`\euler`) e $i$ (`im`) para evitar el problema de la reasignación?
"""

# ╔═╡ 55723b07-f6a5-4c8b-9254-079e69243287
foldable0(md"""
> La respuesta es que estos números no son representados como "variables numéricas usuales" dentro de **Julia**, por lo que no pueden ser constantes...
""")

# ╔═╡ 85afcbd8-341f-11ef-1d09-2bcc5891880e
md"""
# Creación de múltiples variables

Se pueden crear muchas variables a la vez en un solo renglón.

---
"""

# ╔═╡ 85afcc0a-341f-11ef-0a75-2190809b6aa1
x1, x2, x3, y1 = 2, 3, 5, 0.5

# ╔═╡ 85afcf20-341f-11ef-14ad-031445066a96
(x1 + x2 + x3) / y1

# ╔═╡ 85afd51a-341f-11ef-3449-0b8a030cd4c9
md"""
## 🪢 Problemas
¿Es correcto el siguiente código?

¿Cuánto valen `a` y `b` al final?
"""

# ╔═╡ 85afd59c-341f-11ef-132f-e9de0d07e486
let
    a, b = 1, 2
    
    c = a
    a = b
    b = c
    
    a, b

	pi
end

# ╔═╡ 85afd5ec-341f-11ef-39c4-fd6ff5c950c1
md"""
## 🪢 Problemas
En **Julia**,  código anterior se puede reducir al siguiente.
"""

# ╔═╡ 85afd68c-341f-11ef-1252-2525267f6497
let
	a, b = 1, 2
	#a, b = b, a # "Swap"
end

# ╔═╡ 49dcf72e-7429-48e8-a8e7-ce6f248ffc1f
x = 1.25

# ╔═╡ f7f0c2ba-2bb1-4e70-8be8-6ee0f145abf3
# ╠═╡ disabled = true
#=╠═╡
x = 2.5
  ╠═╡ =#

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
# ╟─85afc4ba-341f-11ef-0895-47025573d6a2
# ╟─48f3a899-182e-43aa-a1d7-1510b86c5e45
# ╟─85afc5a2-341f-11ef-2959-ffbd744f9168
# ╠═aec56327-8579-4393-bf69-d841ad060e0c
# ╠═7dc49c28-7897-4381-b091-8073a8747db7
# ╠═49dcf72e-7429-48e8-a8e7-ce6f248ffc1f
# ╟─85afc5d4-341f-11ef-2327-c780e9105be6
# ╟─85afc6d8-341f-11ef-12fd-47e87c2d51b2
# ╠═85afc714-341f-11ef-06c1-8b0a6fb5ce65
# ╟─9d22aed2-43b8-4b09-91c4-d3337ccc42ad
# ╠═88b10a5c-c39e-4e85-afb2-3f0fa6fcbb4e
# ╟─b5cad002-0a02-42bf-888f-c3f512104630
# ╟─77c07500-8402-405c-a784-9ab0e6141227
# ╠═8338f9df-7aae-4ed3-9a55-5728f24e3630
# ╠═f7f0c2ba-2bb1-4e70-8be8-6ee0f145abf3
# ╟─7a92fd1b-b994-495e-8e35-80a039e8cd4a
# ╟─db2cd90c-19a5-4c1c-99db-cbb946768636
# ╠═6a530b8b-8abb-4faf-bc81-5a258406cd72
# ╟─015326f2-abe6-41f5-8f91-c373ca3a9e8e
# ╟─1aec017a-20e4-4f1e-a4d9-e03733422ec3
# ╟─cb5ff10e-ac43-4298-9481-9c2085db8528
# ╟─bd850587-02d2-4df8-b2bc-a3e8dfcbac41
# ╠═1208b3b8-8f82-4703-b7d4-b312ffdd71b9
# ╠═3fef3bcb-e15b-47be-bfd6-5f21bd9d3278
# ╟─66078d75-e652-452c-89fe-52148a61fa6d
# ╠═aeea01ed-c1b8-43c6-a2ee-5c8ec474ef4a
# ╠═c78f2922-1005-49f3-a846-e8a6de74ed04
# ╟─1407a722-0dca-455a-8fd8-8e2512a6782a
# ╟─fb6e7db4-011c-4579-9ab0-439662ae8621
# ╠═2e0cefc8-68d0-4d65-b02e-d77bf5ded2b3
# ╠═6864c5f2-380d-43d6-ba23-123d61a216a5
# ╟─6598aa33-0f3a-4732-a94e-331d0784985c
# ╠═6f2bbcaa-3a6c-4419-b04c-a1df075c9676
# ╠═42e9264d-c2ee-42ea-b12b-233cc952a1cc
# ╟─d4106581-fe55-4c63-a972-0cf1a1033c01
# ╠═6662f723-6b2a-40fe-b703-592940ff6653
# ╟─c1ecb859-83e3-4df9-9c25-ae45df0b505d
# ╠═69695c3a-fa95-4541-a1ca-7da0116eb7c4
# ╟─1de064f6-27e4-4b41-be7b-30253b52751a
# ╟─0f7b7bca-5d39-44c6-9a19-55129c774958
# ╠═fbdc303f-2c35-4c6e-9345-fe4227c56ea5
# ╟─3294aa87-b7a5-4abd-9a69-296726fcc0da
# ╟─85afcade-341f-11ef-17f2-93fc98b54fd7
# ╟─80675b49-40db-48ea-a0bb-443780c93dd8
# ╠═85afcb6a-341f-11ef-0b69-6757832a57c6
# ╠═450a78b7-e727-47d3-9c80-7faebf7211b3
# ╟─8fc9bf59-dd9c-45b6-aa28-237ebf5e29f8
# ╟─85afcb90-341f-11ef-3b7e-8f615c99343e
# ╟─410086bd-1520-4eae-af69-65a751db4be2
# ╟─e5644a2e-ae44-4d70-83fc-af7f2729ca86
# ╠═793ec029-4b0a-41a0-a293-cbec16b63baa
# ╠═04eabf13-aca8-4515-ad34-1e42139a1e24
# ╠═fa078571-fe3a-412d-8b05-0469f6b007f5
# ╟─85afd3f8-341f-11ef-02c6-7d9586288bd2
# ╠═85afd452-341f-11ef-1ddf-efb58e9ea8aa
# ╠═6d663a9e-d5ba-41ec-88d8-40f7f53b85fb
# ╟─13f57325-6294-4b69-88cf-b049deea9f79
# ╟─55723b07-f6a5-4c8b-9254-079e69243287
# ╟─85afcbd8-341f-11ef-1d09-2bcc5891880e
# ╠═85afcc0a-341f-11ef-0a75-2190809b6aa1
# ╠═85afcf20-341f-11ef-14ad-031445066a96
# ╟─85afd51a-341f-11ef-3449-0b8a030cd4c9
# ╠═85afd59c-341f-11ef-132f-e9de0d07e486
# ╟─85afd5ec-341f-11ef-39c4-fd6ff5c950c1
# ╠═85afd68c-341f-11ef-1252-2525267f6497
# ╟─85afd6e6-341f-11ef-2408-2754f7fcedc8
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
