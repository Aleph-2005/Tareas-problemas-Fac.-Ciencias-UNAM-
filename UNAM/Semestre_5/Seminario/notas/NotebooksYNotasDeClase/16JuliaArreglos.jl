### A Pluto.jl notebook ###
# v0.20.28

#> [frontmatter]
#> title = "Julia: Arreglos"
#> description = "Seminario de Geometría Fractal y Visualización"
#> 
#>     [[frontmatter.author]]
#>     name = "Renato Leriche Vázquez"
#>     url = "https://www.fciencias.unam.mx/directorio/45394"

using Markdown
using InteractiveUtils

# ╔═╡ 64cc62d9-b770-418f-9305-3ad7cc391761
using Colors

# ╔═╡ 3475ac31-9050-43f5-b4de-f24afe55b7ac
using PlutoUI

# ╔═╡ e3599ed8-4849-11ef-2b6e-21831292050b
include("src/nbutils.jl")

# ╔═╡ e3551bcc-4849-11ef-2513-8f31558b0acf
md"""
# Arreglos (Tipo de Colección)
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ e35996ea-4849-11ef-246c-1302196e9da5
md"""
## Arreglos

Un *arreglo* (*array*) es una lista ordenada e indexada de valores de un mismo tipo, se construye colocando la lista de valores (o variables) entre corchetes `[ ]`.

---

#### Ejemplo
"""

# ╔═╡ e3599708-4849-11ef-2dd7-ef2011186ddd
begin
    n = 5
    arr = [-3, 0.3, n,  1//2]
end

# ╔═╡ e359971c-4849-11ef-3172-a57eabb02cc8
foldable0(md"Nótese que al construirse el arreglo, los valores se convierten al tipo de mayor jerarquía. En el ejemplo anterior es el tipo `Float64`.")

# ╔═╡ e3599730-4849-11ef-05b3-7d0c629e36d7
md"
## 💻 Nota técnica: Tipo de arreglos
> Veamos el tipo de dato de la variable recién creada `arr`."

# ╔═╡ db415cdd-a82d-4a28-be03-dfec6a6c32c9
typeof(arr)

# ╔═╡ 352a59e9-86fe-4047-b213-b6eb40dc1d54
foldable0(md"
> `Vector{Float64}` significa que es un tipo compuesto llamado `Vector` formado con elementos de `Float64`.
>
> Pero como como se ve, en realidad es un tipo equivalente al tipo `Array{Float64, 1}`: arreglo $1$-dimensional de números `Float64`.")

# ╔═╡ e359974e-4849-11ef-17c6-eb89c55a539b
md"
## Arreglos con tipo de elementos dado
También se pueden crear arreglos de un tipo específico, anteponiendo el nombre del tipo a `[`. Claro, los valores contenidos en el arreglo deben de ser compatibles con el tipo dado.

---

#### Ejemplo"

# ╔═╡ b0ba4cee-8e36-4620-8b43-b3873f44bfa7
[1, 2, -3, 100, -1000]

# ╔═╡ e359976c-4849-11ef-352c-ff355006f89b
arrfloat = Float64[1, 2, -3, 100, -1000]

# ╔═╡ e3599780-4849-11ef-14a6-a7eab311fe40
md"""
## Acceso a elementos del arreglo
Para acceder a los valores en el arreglo, se usa el nombre de la variable del arreglo y entre corchetes el índice del valor requerido.

Por ejemplo

`arr[5]`
"""

# ╔═╡ e3599794-4849-11ef-23de-dba7da9ecb96
foldable0(md"""
!!! danger "¡Importante!"
	!Los índices comienzan en $1$!

---

#### 💻 Nota técnica
> Lo común en la mayoría de los lenguajes de programación es que los índices comiencen en $0$.
""")

# ╔═╡ 67ea2a6e-dc33-4075-9c15-5c61fb1a97d2
md"""
## Ejemplos
"""

# ╔═╡ e35997a8-4849-11ef-05ac-2dbbc61d45d7
arr[3] # [-3, 0.25, 5, 1//2]

# ╔═╡ e35997ba-4849-11ef-2a00-2186fcab0290
md"
## Modificación de valores en arreglos
También se pueden modificar los valores del arreglo con asignación.

---

#### Ejemplo"

# ╔═╡ 52938757-6472-468d-b406-28fe88eba3c9
#arr[4] = 0.123

# ╔═╡ e35997d0-4849-11ef-0f95-eb207179f991
arr

# ╔═╡ e35997e4-4849-11ef-2dd6-973c1d625e20
md"
# Los arreglos son colecciones
De manera análoga  a los rangos, se puede preguntar si un valor está o no en un arreglo usando $\in$, `in`, ó $\notin$, según sea el caso.

---

#### Ejemplo
"

# ╔═╡ e35997ec-4849-11ef-055a-d3e5afd35fa5
0.123 in arr

# ╔═╡ 63628c2a-8fe9-4ffa-b5be-0ad1e0f67f53
0.6 ∉ arr

# ╔═╡ e3599802-4849-11ef-2b65-1f85b6324f99
md"
## Tamaño del arreglo
Se puede saber el tamaño de un arreglo con la *function* `length`.

---

#### Ejemplos
"

# ╔═╡ e3599816-4849-11ef-0b68-b39c37c4c2ac
length(arr)

# ╔═╡ 4406a9ae-24a0-42b6-b234-1f2bac4b6a56
length(arrfloat)

# ╔═╡ e359981e-4849-11ef-0b2d-2bb81cae05c0
md"
# El último elemento

Por supuesto, para acceder el último elemento de un arreglo se puede escribir
~~~julia
arr[length(arr)]
~~~
"

# ╔═╡ 01af682f-e367-4c8d-b2c3-f875f22fc146
foldable0(md"Pero se puede hacer más fácil sin usar `length` utlizando `end` como índice:
~~~julia
arr[end]
~~~")

# ╔═╡ cf537950-aac8-4f95-b56d-a4700d108f89
md"""
## Ejemplos
"""

# ╔═╡ 330be61a-6b37-4476-aae1-5297be614c67
arr[length(arr)] 

# ╔═╡ e3599834-4849-11ef-2be5-8d757cdcc042
arr[end]

# ╔═╡ 83dc5331-6547-41e8-8874-ac4d308aab27
foldable0(md"""
---

Incluso, se puede utilizar la "aritmética" de índices `end-`$n$ para acceder a elementos anteriores al último.

---
""")

# ╔═╡ e359983e-4849-11ef-35fa-fbd5c2c1423c
arr[end-1] # penúltimo

# ╔═╡ e359985c-4849-11ef-2da3-35007a1d416e
md"
# Rangos y arreglos
Un arreglo se puede crear a partir de un rango usando la *function* `collect`.

---

#### Ejemplo
"

# ╔═╡ e3599866-4849-11ef-32f6-556e08679eb7
arr2 = collect(1:2:20)

# ╔═╡ e359987a-4849-11ef-098f-638dbc8e11b2
md"""
## Sub-arreglos
Se pueden crear sub-arreglos usando rangos de índices entre `[ ]`.

Estos sub-arreglos son llamados *array slices* ("rebanadas de arreglos").

---

#### Ejemplos
"""

# ╔═╡ fce7bcb2-91c2-442b-b4ff-a2a6eb30afa3
arr2

# ╔═╡ e3599884-4849-11ef-0d59-f7030841c82d
arr2[3:7] # Sub-arreglo de arr2 sólo de los índices 3 a 7

# ╔═╡ 6ac0c742-0fb4-4570-b6f3-5bfb8e44c632
arr2[2:2:9] # Sub-arreglo de arr2 sólo de los índices 2,4,6,8

# ╔═╡ e35998a2-4849-11ef-1aad-01cd38baf309
md"""
# Modificando arreglos
Hay muchas *functions* para modificar arreglos, como:
- `append!` para añadir un arreglo a otro arreglo.
- `push!` para añadir un valor al final del arreglo.
- `pop!` para quitar el último valor del arreglo.
- `pushfirst!` para añadir un valor al inicio del arreglo.
- `popfirst!` para quitar un valor al inicio del arreglo.
- `insert!`para insertar un valor en cierto índice del arreglo.
- `splice!` para quitar un valor de cierto índice del arreglo.
- `empty!` para vaciar un arreglo.
"""

# ╔═╡ e35998b6-4849-11ef-2d7f-4d112c993d57
md"""
## 💻 Nota técnica

> Es una convención en **Julia** que los nombres de *functions* que terminan con `!` tienen la propiedad de **modificar** las variables que les son pasadas como argumentos.
>
> Si se crea una *function* con esta propiedad, no es es obligatorio colocar `!` al final de su nombre, pero es áltamente recomendable.
"""

# ╔═╡ bb92fa28-4145-46b4-8eee-01e191089e64
md"""
## Ejemplos
"""

# ╔═╡ 40c3f473-e476-482b-873e-27dcb2ddd08b
arr3 = [1,2,3,4,5,6]

# ╔═╡ e35998ca-4849-11ef-2e98-add2be2c0a01
append!(arr3, [-7,-8,-9,-10])

# ╔═╡ 5b27c356-024b-41f2-861a-710ab4991409
pop!(arr3)

# ╔═╡ d912050c-56c6-4567-9bb0-1d2464099575
arr3

# ╔═╡ 727735ee-426d-481c-a6d0-e51c2b4d1ae2
push!(arr3, 1000)

# ╔═╡ 4b2fb87f-38e7-4583-b814-6a5f5d533506
md"""
## Ejemplos
"""

# ╔═╡ ff396753-242a-48ad-9bdf-f11778f287f2
popfirst!(arr3)

# ╔═╡ bf3ca580-36e6-429a-9cdf-027b6d626ab8
arr3

# ╔═╡ a7b50034-7d9b-4e89-afd7-e9120389080d
pushfirst!(arr3, -1000)

# ╔═╡ 541abcfc-c0c6-4a34-a3c9-711b42bd74e4
insert!(arr3,4,4000)

# ╔═╡ 113aa047-2a32-4617-84a5-deb7d46785ea
splice!(arr3, 8)

# ╔═╡ f8bc0155-0573-4961-bf5a-837a861e1a8d
arr3

# ╔═╡ e3599906-4849-11ef-0e3f-cbaa6327063e
md"""
## 🪢 Ejercicio

Implementar una *function* para añadir un valor "a la mitad" de un arreglo dado.
"""

# ╔═╡ 7d716469-d1a0-45f2-bae3-d12c0e4b5d70
function insertmed!(a,x)
	#insert!()
end

# ╔═╡ e359991a-4849-11ef-190f-f158b003a8e6
#=function insertmed!(a,x)
	n = length(a)÷2 + 1
	insert!(a,n,x)
end=#

# ╔═╡ 493f6c1a-0892-4a35-b2ee-a2ae48f3b421
md"""
## 🪢 Ejercicio (prueba)
"""

# ╔═╡ ddd33b5b-7401-4542-a24f-b2d839b07156
arrtest = [1,2,3,4]

# ╔═╡ 9bb4c21f-dddc-4631-924e-ed77d51a8eb6
insertmed!(arrtest,1000)

# ╔═╡ 62bc348c-a6e3-41a2-8e62-86c0ce4954bf
insertmed!(arrtest,5000)

# ╔═╡ ad8e3c48-890c-48c2-882f-ef0200c35808
md"""
# Arreglos vacíos
"""

# ╔═╡ e3599a3c-4849-11ef-0cd9-f5e4668488d0
md"Es posible crear arreglos vacíos, después se pueden añadir y quitar los valores necesarios. Es recomendable indicar el tipo de dato que contendrá el arreglo.

---

#### Ejemplo"

# ╔═╡ e3599a50-4849-11ef-0e4d-57e2e60ee078
arrx = Int64[]

# ╔═╡ e3599a64-4849-11ef-19a6-bb54328e6c21
push!(arrx, 3)

# ╔═╡ 15e962c7-d231-47c1-840e-9ec14d96ec8b
append!(arrx, [2,1,0])

# ╔═╡ e20c287a-65c6-446c-89bb-f843e298663c
pop!(arrx)

# ╔═╡ e3599a78-4849-11ef-106e-43fde5ae979f
md"""
# Ordenando arreglos
Se pueden ordenar los arreglos con las *functions*:
- `sort` crea un nuevo arreglo ordenado a partir de uno dado.
- `sort!` ordena el arreglo dado.
#### Ejemplos
"""

# ╔═╡ e3599a8a-4849-11ef-1bc4-0717c7970335
arr4 = [100,-1,101,50,-100,2,4,20,50,-50]

# ╔═╡ 58c60061-b118-425a-a49f-52a178dc425f
sort([100,-1,101,50,-100,2,4,20,50,-50])

# ╔═╡ 13d68a09-5682-4d33-abd4-350b7bfd8fd6
arr4

# ╔═╡ b93f51e6-2d4b-44ea-b24f-a33c33f176fd
md"""
---
"""

# ╔═╡ e3599aa0-4849-11ef-1d52-e54b76eac9c8
arr5 = [100, -10, 20, 5, -30, 50, 20, -100]

# ╔═╡ 3014eed3-ba85-47b9-bca8-f07f6e0aa4bb
sort!(arr5)

# ╔═╡ fdfcec17-e192-4b77-b78f-617c9f33c245
arr5

# ╔═╡ e3599ab4-4849-11ef-2267-7d9a6dc5750b
md"
# Arreglos de números aleatorios
Se puede utilizar la *function* `rand`, para generar arreglos de números pseudo-aleatorios entre $0$ y $1$, basta con  indicar el tamaño del arreglo como argumento.

---

#### Ejemplo"

# ╔═╡ e3599abc-4849-11ef-1b72-4176c7484f10
rand(4)

# ╔═╡ e3599adc-4849-11ef-0fdf-29ccff64fc9e
md"
## Arreglos de números aleatorios
También se puede indicar el tipo numérico y después el tamaño del arreglo como argumentos en `rand` para generar arreglos de número aleatorios del tipo indicado. 

Los número generados están en el rango de valores mínimo y máximo del tipo.

---

#### Ejemplos"

# ╔═╡ e3599ae6-4849-11ef-35ba-f92f7b90d0de
rand(Int8, 10)

# ╔═╡ e3599be0-4849-11ef-3ba8-e54de40cdd97
md"
# Arreglos de los que sea
Los valores que contienen los arreglos no tienen que ser necesariamente numéricos. 

Por ejemplo, también se pueden hacer arreglos de cadenas, de rangos, de arreglos, de arreglos de arreglos, o ¡de cualquier combinación de tipos!

---

#### Ejemplos"

# ╔═╡ e3599bfe-4849-11ef-3c4d-6d2c1d8609f8
begin
    arrstr = ["Hello", "Goodbye"]
    arrrng = [1:10, -1:6, 4:14]
    arrarr = [[1,2], [1,2,3], [2,4,6,8], [-1,0]]
    arrcrazy = [1, "Crazy", 0.4-0.6im, 2:16, [1,2,3]]
end

# ╔═╡ 6a2d6345-4e6b-4bf2-bf41-21abe6fe5850
md"""
## Arreglos de colores
"""

# ╔═╡ e3599c1c-4849-11ef-076c-0dba0c38f157
arrcolors = [RGB(0.9,0.8,0.9), RGB(0.8,0.7,0.7), RGB(0.7,0.6,0.5), RGB(0.6,0.5,0.3), RGB(0.5,0.4,0.1)]

# ╔═╡ 4869d4b1-1648-4eb6-b663-363fc613e106
arrcolors[4]

# ╔═╡ e3599ca8-4849-11ef-0150-d19f54adbe46
md"""
# 💻 Notas técnicas
> Los arreglos (y rangos) que creamos son estructuras concretas de datos, técnicamente llamadas *objetos*, de modo que las variables que las contienen hacen referencia a dicha estructura concreta y no a los valores contenidos.
"""

# ╔═╡ f0df90ef-8451-4fd4-b9bf-35a117c4a95b
md"""
## 🪢 Problema

"""

# ╔═╡ c1c41cc2-a24c-453d-b4b2-e48d66bd3042
a = [1,2,3]

# ╔═╡ 216f86ed-4dc5-4ee0-9f13-ae49c6a2735e
b = [1,2,3]

# ╔═╡ 7e98ae69-8e95-44e2-b67d-980147479aac
md"""
¿El arreglo `a` es el arreglo `b`?
"""

# ╔═╡ f740eb24-f34d-4cb2-9b7d-9a14db9a2ae3
#a == b

# ╔═╡ e3599cd0-4849-11ef-24f1-0d78ae270079
foldable0(md"Como se esperaba, verdadero, pues los valores que contienen los arreglos `a` y `b` son exactamente los mismos y en el mismo orden.")

# ╔═╡ e3599ce4-4849-11ef-3a36-31515ca844c9
md"
## 🪢 Problema

¿El arreglo `a` es el arreglo `b`?

Para verificar que dos variables contienen objetos son exactamente el mismo (y no sólo sus valores), se usa el operador equivalencia `===` (o `≡` dado por `\equiv`)."

# ╔═╡ e3599cfa-4849-11ef-3ce6-e5da93734fc9
#a === b # \equiv ≡

# ╔═╡ e3599d0c-4849-11ef-31ad-cb9c2187c97d
foldable0(md"
#### Respuesta al problema:
¡`a` y `b` contienen los mismos valores, pero no son los mismos objetos!")

# ╔═╡ cf92da37-6b2a-4079-b4d9-cea4476fa57d
md"""
## 🪢 Problema
"""

# ╔═╡ e3599d16-4849-11ef-0435-276b2335da44
c = b

# ╔═╡ d500ab57-719b-4a60-a42b-ee3368ea8daf
md"""
¿El arreglo `b` es el arreglo `c`?
"""

# ╔═╡ e3599d28-4849-11ef-0700-d3f830d72351
#b === c

# ╔═╡ e3599d3e-4849-11ef-213b-a9f383c2579e
foldable0(md"#### Respuesta al problema
¡Si! La asignación (`=`) copia la referencia al objeto, no los valores contenidos, por lo tanto `b === c` es verdadero.")

# ╔═╡ e3599d48-4849-11ef-07e1-89b8f969735f
md"
## 💻 Nota técnica
> Técnicamente, en realidad ambas variables `b` y `c` hacen referencia a la misma localidad de memoria que contiene el objeto."

# ╔═╡ e3599d5a-4849-11ef-30f3-4510fd10b17d
foldable0(md"> Usando la analogía de las variables con una caja etiquetada, en este caso tenemos ¡una sóla caja con dos etiquetas!")

# ╔═╡ e3599d70-4849-11ef-1935-e5594cdc03d1
foldable0(md"> Es por esto que esta asignación se llama *crear alias* (*aliasing*).")

# ╔═╡ e5ec08d3-d089-4601-a6b9-5f04226d4795
md"""
## Ejemplo
"""

# ╔═╡ 3402d1d3-b077-4a12-9060-8aaeb48f1038
b[2] = 100

# ╔═╡ e3599d84-4849-11ef-0176-739a6c8127e6
#b

# ╔═╡ e3599d98-4849-11ef-2fbc-ff0315433d9e
#c

# ╔═╡ e3599da2-4849-11ef-279b-25e04fbb320c
foldable0(md"Como `b` y `c` son el mismo objeto, modificar `b` es modificar `c` (y viceversa).")

# ╔═╡ e3599db6-4849-11ef-06e8-331ba0129de9
md"
## 💻 Más notas técnicas
> Nótese que por esta característica de *aliasing* de los arreglos, cuando pasan como argumentos en *functions* siempre es posible modificarlos.

---

#### Ejemplo
"

# ╔═╡ e3599dca-4849-11ef-2f19-4d5e83bf2c78
function requeue!(arr)
    e = popfirst!(arr) # Saco el primer elemento...
    push!(arr, e)      # y lo vuelvo a añadir al final
    arr
end

# ╔═╡ 8548f476-6c5e-4a84-9506-c4e5957bad2f
nums = collect(1:10)

# ╔═╡ 3c6b0b1c-939e-4905-9e30-33accf563f28
#requeue!(nums)

# ╔═╡ e3599e10-4849-11ef-25b6-bd904f0725f4
#nums

# ╔═╡ e3599e4c-4849-11ef-01f5-09a65b41a16c
md"""
## 💻 Nota técnica
> Este comportamiento no ocurre con objetos (variables) de los otros tipos de datos vistos hasta ahora (tipos numéricos básicos, y los compuestos como racionales, complejos, cadenas y colores).
"""

# ╔═╡ e3599e62-4849-11ef-118c-639b55d10f8a
foldable0(md"> Técnicamente, las variables de tipos básicos se pasan como copias del mismo valor. Es decir, en la *function* se crea una nueva variable, el parámetro, que tiene el mismo valor.")

# ╔═╡ d91048ba-3564-4793-b2d2-f0d197c3f298
md"""
## Ejemplo para la nota técnica
"""

# ╔═╡ e3599e74-4849-11ef-0195-61a1559bca1d
incr(x, Δ) = x += Δ

# ╔═╡ 5d211c90-2aad-4141-bbd7-1ac9833d357d
numberx = 100.0

# ╔═╡ 21ffbd04-8488-4147-890a-9e97eb987404
#incr(numberx, 2.5)

# ╔═╡ e3599e9c-4849-11ef-09b4-47bd9047a11a
#numberx

# ╔═╡ e3599ea6-4849-11ef-0b3f-9b55d3b83493
md"
## 💻 Nota técnica
> Y los objetos de tipos compuestos como los racionales, complejos y cadenas, son *inmutables*, es decir, no se pueden modificar los valores que contienen. Por esto, se pasan como copia de valor y no se hacen *alias*.

---

#### Ejemplo"

# ╔═╡ 2a2943e1-2f16-4249-bd57-9682ee15b5cd
numberz = 10.0 + 10.0im

# ╔═╡ edf4aa23-2f5e-4434-bad6-f0e10992862f
incr(numberz, 2.5-2.5im)

# ╔═╡ e3599ece-4849-11ef-37ab-a9cecd644902
numberz

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
Colors = "5ae59095-9a9b-59fe-a467-6f913c188581"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
Colors = "~0.12.11"
PlutoUI = "~0.7.78"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.6"
manifest_format = "2.0"
project_hash = "22351bd1ce553f2acf22cb012f7e8dde7e532315"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "6e1d2a35f2f90a4bc7c2ed98079b2ba09c35b83a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.3.2"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.2"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"
version = "1.11.0"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"
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

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"
version = "1.11.0"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.7.0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"
version = "1.11.0"

[[deps.FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "05882d6995ae5c12bb5f36dd2ed3f61c98cbb172"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.5"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "179267cfa5e712760cd43dcae385d7ea90cc25a4"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.5"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "0ee181ec08df7d7c911901ea38baf16f755114dc"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "1.0.0"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"
version = "1.11.0"

[[deps.JuliaSyntaxHighlighting]]
deps = ["StyledStrings"]
uuid = "ac6e5ff7-fb65-4e79-a425-ec3bc9c03011"
version = "1.12.0"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "OpenSSL_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.15.0+0"

[[deps.LibGit2]]
deps = ["LibGit2_jll", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"
version = "1.11.0"

[[deps.LibGit2_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "OpenSSL_jll"]
uuid = "e37daf67-58a4-590a-8e99-b0245dd2ffc5"
version = "1.9.0+0"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "OpenSSL_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.3+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"
version = "1.11.0"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
version = "1.12.0"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"
version = "1.11.0"

[[deps.MIMEs]]
git-tree-sha1 = "c64d943587f7187e751162b3b84445bbbd79f691"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "1.1.0"

[[deps.Markdown]]
deps = ["Base64", "JuliaSyntaxHighlighting", "StyledStrings"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"
version = "1.11.0"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2025.11.4"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.3.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.29+0"

[[deps.OpenSSL_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "3.5.4+0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "Random", "SHA", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.12.1"

    [deps.Pkg.extensions]
    REPLExt = "REPL"

    [deps.Pkg.weakdeps]
    REPL = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Downloads", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "6122f9423393a2294e26a4efdf44960c5f8acb70"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.78"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"
version = "1.11.0"

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

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"
version = "1.11.0"

[[deps.Statistics]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "ae3bb1eb3bba077cd276bc5cfc337cc65c3075c0"
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.11.1"

    [deps.Statistics.extensions]
    SparseArraysExt = ["SparseArrays"]

    [deps.Statistics.weakdeps]
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.StyledStrings]]
uuid = "f489334b-da3d-4c2e-b8f0-e476e12c162b"
version = "1.11.0"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
version = "1.11.0"

[[deps.Tricks]]
git-tree-sha1 = "311349fd1c93a31f783f977a71e8b062a57d4101"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.13"

[[deps.URIs]]
git-tree-sha1 = "bef26fb046d031353ef97a82e3fdb6afe7f21b1a"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.6.1"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"
version = "1.11.0"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"
version = "1.11.0"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.3.1+2"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.15.0+0"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.64.0+1"

[[deps.p7zip_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.7.0+0"
"""

# ╔═╡ Cell order:
# ╟─e3551bcc-4849-11ef-2513-8f31558b0acf
# ╟─e35996ea-4849-11ef-246c-1302196e9da5
# ╠═e3599708-4849-11ef-2dd7-ef2011186ddd
# ╟─e359971c-4849-11ef-3172-a57eabb02cc8
# ╟─e3599730-4849-11ef-05b3-7d0c629e36d7
# ╠═db415cdd-a82d-4a28-be03-dfec6a6c32c9
# ╟─352a59e9-86fe-4047-b213-b6eb40dc1d54
# ╟─e359974e-4849-11ef-17c6-eb89c55a539b
# ╠═b0ba4cee-8e36-4620-8b43-b3873f44bfa7
# ╠═e359976c-4849-11ef-352c-ff355006f89b
# ╟─e3599780-4849-11ef-14a6-a7eab311fe40
# ╟─e3599794-4849-11ef-23de-dba7da9ecb96
# ╟─67ea2a6e-dc33-4075-9c15-5c61fb1a97d2
# ╠═e35997a8-4849-11ef-05ac-2dbbc61d45d7
# ╟─e35997ba-4849-11ef-2a00-2186fcab0290
# ╠═52938757-6472-468d-b406-28fe88eba3c9
# ╠═e35997d0-4849-11ef-0f95-eb207179f991
# ╟─e35997e4-4849-11ef-2dd6-973c1d625e20
# ╠═e35997ec-4849-11ef-055a-d3e5afd35fa5
# ╠═63628c2a-8fe9-4ffa-b5be-0ad1e0f67f53
# ╟─e3599802-4849-11ef-2b65-1f85b6324f99
# ╠═e3599816-4849-11ef-0b68-b39c37c4c2ac
# ╠═4406a9ae-24a0-42b6-b234-1f2bac4b6a56
# ╟─e359981e-4849-11ef-0b2d-2bb81cae05c0
# ╟─01af682f-e367-4c8d-b2c3-f875f22fc146
# ╟─cf537950-aac8-4f95-b56d-a4700d108f89
# ╠═330be61a-6b37-4476-aae1-5297be614c67
# ╠═e3599834-4849-11ef-2be5-8d757cdcc042
# ╟─83dc5331-6547-41e8-8874-ac4d308aab27
# ╟─e359983e-4849-11ef-35fa-fbd5c2c1423c
# ╟─e359985c-4849-11ef-2da3-35007a1d416e
# ╠═e3599866-4849-11ef-32f6-556e08679eb7
# ╟─e359987a-4849-11ef-098f-638dbc8e11b2
# ╠═fce7bcb2-91c2-442b-b4ff-a2a6eb30afa3
# ╠═e3599884-4849-11ef-0d59-f7030841c82d
# ╠═6ac0c742-0fb4-4570-b6f3-5bfb8e44c632
# ╟─e35998a2-4849-11ef-1aad-01cd38baf309
# ╟─e35998b6-4849-11ef-2d7f-4d112c993d57
# ╟─bb92fa28-4145-46b4-8eee-01e191089e64
# ╠═40c3f473-e476-482b-873e-27dcb2ddd08b
# ╠═e35998ca-4849-11ef-2e98-add2be2c0a01
# ╠═5b27c356-024b-41f2-861a-710ab4991409
# ╠═d912050c-56c6-4567-9bb0-1d2464099575
# ╠═727735ee-426d-481c-a6d0-e51c2b4d1ae2
# ╟─4b2fb87f-38e7-4583-b814-6a5f5d533506
# ╠═ff396753-242a-48ad-9bdf-f11778f287f2
# ╠═bf3ca580-36e6-429a-9cdf-027b6d626ab8
# ╠═a7b50034-7d9b-4e89-afd7-e9120389080d
# ╠═541abcfc-c0c6-4a34-a3c9-711b42bd74e4
# ╠═113aa047-2a32-4617-84a5-deb7d46785ea
# ╠═f8bc0155-0573-4961-bf5a-837a861e1a8d
# ╟─e3599906-4849-11ef-0e3f-cbaa6327063e
# ╠═7d716469-d1a0-45f2-bae3-d12c0e4b5d70
# ╟─e359991a-4849-11ef-190f-f158b003a8e6
# ╟─493f6c1a-0892-4a35-b2ee-a2ae48f3b421
# ╠═ddd33b5b-7401-4542-a24f-b2d839b07156
# ╠═9bb4c21f-dddc-4631-924e-ed77d51a8eb6
# ╠═62bc348c-a6e3-41a2-8e62-86c0ce4954bf
# ╟─ad8e3c48-890c-48c2-882f-ef0200c35808
# ╟─e3599a3c-4849-11ef-0cd9-f5e4668488d0
# ╠═e3599a50-4849-11ef-0e4d-57e2e60ee078
# ╠═e3599a64-4849-11ef-19a6-bb54328e6c21
# ╠═15e962c7-d231-47c1-840e-9ec14d96ec8b
# ╠═e20c287a-65c6-446c-89bb-f843e298663c
# ╟─e3599a78-4849-11ef-106e-43fde5ae979f
# ╠═e3599a8a-4849-11ef-1bc4-0717c7970335
# ╠═58c60061-b118-425a-a49f-52a178dc425f
# ╠═13d68a09-5682-4d33-abd4-350b7bfd8fd6
# ╟─b93f51e6-2d4b-44ea-b24f-a33c33f176fd
# ╠═e3599aa0-4849-11ef-1d52-e54b76eac9c8
# ╠═3014eed3-ba85-47b9-bca8-f07f6e0aa4bb
# ╠═fdfcec17-e192-4b77-b78f-617c9f33c245
# ╟─e3599ab4-4849-11ef-2267-7d9a6dc5750b
# ╠═e3599abc-4849-11ef-1b72-4176c7484f10
# ╟─e3599adc-4849-11ef-0fdf-29ccff64fc9e
# ╠═e3599ae6-4849-11ef-35ba-f92f7b90d0de
# ╟─e3599be0-4849-11ef-3ba8-e54de40cdd97
# ╠═e3599bfe-4849-11ef-3c4d-6d2c1d8609f8
# ╟─6a2d6345-4e6b-4bf2-bf41-21abe6fe5850
# ╠═64cc62d9-b770-418f-9305-3ad7cc391761
# ╠═e3599c1c-4849-11ef-076c-0dba0c38f157
# ╠═4869d4b1-1648-4eb6-b663-363fc613e106
# ╟─e3599ca8-4849-11ef-0150-d19f54adbe46
# ╟─f0df90ef-8451-4fd4-b9bf-35a117c4a95b
# ╠═c1c41cc2-a24c-453d-b4b2-e48d66bd3042
# ╠═216f86ed-4dc5-4ee0-9f13-ae49c6a2735e
# ╟─7e98ae69-8e95-44e2-b67d-980147479aac
# ╠═f740eb24-f34d-4cb2-9b7d-9a14db9a2ae3
# ╟─e3599cd0-4849-11ef-24f1-0d78ae270079
# ╟─e3599ce4-4849-11ef-3a36-31515ca844c9
# ╠═e3599cfa-4849-11ef-3ce6-e5da93734fc9
# ╟─e3599d0c-4849-11ef-31ad-cb9c2187c97d
# ╟─cf92da37-6b2a-4079-b4d9-cea4476fa57d
# ╠═e3599d16-4849-11ef-0435-276b2335da44
# ╟─d500ab57-719b-4a60-a42b-ee3368ea8daf
# ╠═e3599d28-4849-11ef-0700-d3f830d72351
# ╟─e3599d3e-4849-11ef-213b-a9f383c2579e
# ╟─e3599d48-4849-11ef-07e1-89b8f969735f
# ╟─e3599d5a-4849-11ef-30f3-4510fd10b17d
# ╟─e3599d70-4849-11ef-1935-e5594cdc03d1
# ╟─e5ec08d3-d089-4601-a6b9-5f04226d4795
# ╠═3402d1d3-b077-4a12-9060-8aaeb48f1038
# ╠═e3599d84-4849-11ef-0176-739a6c8127e6
# ╠═e3599d98-4849-11ef-2fbc-ff0315433d9e
# ╟─e3599da2-4849-11ef-279b-25e04fbb320c
# ╟─e3599db6-4849-11ef-06e8-331ba0129de9
# ╠═e3599dca-4849-11ef-2f19-4d5e83bf2c78
# ╠═8548f476-6c5e-4a84-9506-c4e5957bad2f
# ╠═3c6b0b1c-939e-4905-9e30-33accf563f28
# ╠═e3599e10-4849-11ef-25b6-bd904f0725f4
# ╟─e3599e4c-4849-11ef-01f5-09a65b41a16c
# ╟─e3599e62-4849-11ef-118c-639b55d10f8a
# ╟─d91048ba-3564-4793-b2d2-f0d197c3f298
# ╠═e3599e74-4849-11ef-0195-61a1559bca1d
# ╠═5d211c90-2aad-4141-bbd7-1ac9833d357d
# ╠═21ffbd04-8488-4147-890a-9e97eb987404
# ╠═e3599e9c-4849-11ef-09b4-47bd9047a11a
# ╟─e3599ea6-4849-11ef-0b3f-9b55d3b83493
# ╠═2a2943e1-2f16-4249-bd57-9682ee15b5cd
# ╠═edf4aa23-2f5e-4434-bad6-f0e10992862f
# ╠═e3599ece-4849-11ef-37ab-a9cecd644902
# ╟─e3599ed8-4849-11ef-2b6e-21831292050b
# ╠═3475ac31-9050-43f5-b4de-f24afe55b7ac
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
