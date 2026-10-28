### A Pluto.jl notebook ###
# v0.20.28

using Markdown
using InteractiveUtils

# ╔═╡ 61be28c2-4924-11ef-26ac-b552cbd7b9bc
using LinearAlgebra

# ╔═╡ 61be2a7a-4924-11ef-3f57-4d831aec889b
include("src/nbutils.jl")

# ╔═╡ 61b9a5ae-4924-11ef-279f-039cf62ea00e
md"""
# Álgebra Lineal
### Paquete **LinearAlgebra**
---
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ 61be24a8-4924-11ef-095f-7db394ed5b56
md"
## Vectores
Vectores $v\in\mathbb{R}^n$ pueden crearse como arreglos de números.

Como ya se vió, los arreglos formado como una sola lista de valores son del tipo `Vector` y si representan vectores.

---

#### Ejemplos"

# ╔═╡ abeec6f0-3090-411e-bc47-7e428c1fee4d
v1 = [0, 0.5, 1]

# ╔═╡ 89d1e9a3-9f3d-4623-b5c4-f3f3526e8b22
v2 = [-0.25, 1, 2]

# ╔═╡ 61be2624-4924-11ef-3d71-3b079b0bd70f
md"
## Operaciones vectoriales
Y al ser vectores, ¡ya se tienen las operaciones de adición y sustracción vectorial, y multiplicación y división escalar!

---

#### Ejemplos"

# ╔═╡ 61be2638-4924-11ef-1068-17f96de30371
v1 + 3v2

# ╔═╡ 61be2656-4924-11ef-2eb7-879473837ced
v1/3 - v2

# ╔═╡ 24e0fd0b-0188-45a1-8693-33450598ca00
md"""
## Suma y resta escalar
Existe una suma y resta "escalar", se aplica elemento a elemento y utiliza los mismos operadores, pero antecedidos por `.` .

---

#### Ejemplos
"""

# ╔═╡ 20efb2b5-f080-4fa9-b6f3-aa197cc92325
v1 .+ 2, v1

# ╔═╡ 115a328f-c461-4f3d-b004-b98805436aab
v2 .- 0.5

# ╔═╡ 63379f58-89c5-41db-969a-61000ed908ae
md"""
## Otras operaciones escalares
Asimismo, con `.` se pueden aplicar los operadores `^`, `÷` y `%` entrada a entrada.

---

#### Ejemplos
"""

# ╔═╡ 06333f5b-033b-4a07-8a12-99ad4c2f0ee4
v1 .^ 3 

# ╔═╡ 721d6ae1-63b1-4af2-bbbd-9d6b78b4df08
v2 .÷ 2 

# ╔═╡ 3c6e2fd1-9904-43bc-abe6-05e99162d6e6
v2 .% 2 

# ╔═╡ 99e0d313-c2e8-42ea-9e15-81dced63c4e3
md"""
## Funciones entrada a entrada

También se pueden aplicar *functions* elemento a elemento de los arreglos, utilizando `.` después del nombre de la *function*.
"""

# ╔═╡ bfc062d4-9c68-491c-b54c-71736b176b40
foldable(md"💻 Nota técnica", md"> Este proceso se llama  *broadcasting* (*transmisión*) de la *function*.
>
> Por supuesto, los operadores con `.` son *broadcasting* del operador.")

# ╔═╡ c9bee192-4272-4c6d-b5e8-4d823d282aa6
md"""
## Ejemplos de *broadcasting* de *functions*
"""

# ╔═╡ 43b5e928-da01-4396-a006-0bf4969be0b6
sqrt.(v1)

# ╔═╡ 73ce0253-4d6c-45a7-b89d-ae2dab6ae82d
sin.(v1)

# ╔═╡ 960b284c-f129-4dac-86b8-90e74d164bec
abs.(v2)

# ╔═╡ 61be266a-4924-11ef-1092-ef21852a0327
md"
## Coordenadas
Ya vimos que una manera de obtener las coordenadas de un vector es mediante su correspondiente índice."

# ╔═╡ 61be267e-4924-11ef-209c-2b257258b759
x1, y1, z1 = v1[1], v1[2], v1[3]

# ╔═╡ 61be2692-4924-11ef-183e-2b48a585872a
md"
---

Pero otra manera más fácil es la siguiente."

# ╔═╡ 61be269c-4924-11ef-3af8-e9004caded80
x2, y2, z2 = v2

# ╔═╡ 61be26b0-4924-11ef-380b-9bc90a7e5ae9
y2

# ╔═╡ 61be26c4-4924-11ef-33c6-f17f73b7247b
md"
# Matrices
Para crear matrices $N$ renglones por $M$ columnas, se utliza un formato especial."

# ╔═╡ 61be2700-4924-11ef-1204-87b43157b030
md"""
La matriz $$A=\begin{pmatrix}
A_{11} & A_{12} & \dots & A_{1M} \\
A_{21} & A_{22} & \dots & A_{2M} \\
\vdots & \vdots &  & \vdots \\
A_{N1} & A_{N2} & \dots & A_{NM} \\
\end{pmatrix}$$

se representa con

`[` $A_{11}$ ` ` $\dots\, A_{1M}$ `;` $A_{21}$ ` ` $\dots\, A_{2M}$ `;` $\dots$ `;` $A_{N1}$ ` ` $\dots A_{NM}$ `]`
"""

# ╔═╡ 1d2b10a6-72fe-4f29-a1fc-fcffc4fadfca
md"""
## Ejemplo
"""

# ╔═╡ 61be2714-4924-11ef-0baa-3506c6d2807b
mtrx2x2 = [1 2; 3 4]

# ╔═╡ b232342d-8fa4-4a0e-bff9-3609af5005ff
typeof(mtrx2x2)

# ╔═╡ 61be2728-4924-11ef-3683-df0c0b245a93
foldable0(md"""
Nótese que
- `1 2` y `3 4` no llevan coma y son los renglones de la matriz.
- La separacion de renglones es con `;` para definir la matriz.
- El nombre del tipo compuesto de las matrices es `Matrix`, que es en realidad un arreglo $2$-dimensional.
""")

# ╔═╡ 901f092c-0362-484b-b8f9-4ad942dc62d8
md"""
## Tamaño de las matrices
Así como se tiene la *function* `length` para el tamaño de un vector, la *function* `size` nos da el número de renglones y columnas de una matriz, como una pareja de números en el orden mencionado.

---

#### Ejemplo
"""

# ╔═╡ ac1bc8f2-d341-4f9c-9c61-ff5365da84b6
nrens, ncols = size(mtrx2x2)

# ╔═╡ 61be274e-4924-11ef-114a-bd830a395507
md"
## Entradas de las matrices
Para acceder a las entradas de la matriz, se usa el formato $A$`[`$i,j$`]`, donde $i$ y $j$ son los índices de renglón y columna, respectivamente.

---

#### Ejemplo"

# ╔═╡ 61be2764-4924-11ef-123d-45eea3119402
mtrx2x2[1,2] # Renglón 1, Columna 2

# ╔═╡ 61be2778-4924-11ef-2f9b-47b8586a9f6d
mtrx2x2[2,1] # Renglón 2, Columna 1

# ╔═╡ 61be278c-4924-11ef-0cdb-d9276f4c0e96
md"""
## Vectores renglón y columna
Los arreglos de tipo `Vector` son en realidad "vectores columna".

Mientras que las matrices son en realidad arreglos de "vectores renglón". Estos se crean enlistando elementos dentro `[ ]` separados por espacio.

---

#### Ejemplo
"""

# ╔═╡ 61be27aa-4924-11ef-114d-455ab8f8088e
[1 2 3] # Vector renglón

# ╔═╡ 61be27b2-4924-11ef-3213-b3701309e3d2
md"
## Multiplicación de vectores y matrices
Ya se tienen directamente las operaciones de multiplicación con matrices y vectores.

---

#### Ejemplos"

# ╔═╡ 61be27c8-4924-11ef-1f45-d7d4fcf785e6
mtrx2x2 * [0.5, 1.2] # Matriz x "Vector columna"

# ╔═╡ 61be27d2-4924-11ef-1454-d3a34a3ae6b5
[0.5 1.2] * mtrx2x2 # "Vector renglón" x Matriz

# ╔═╡ 77940062-39cd-45bb-9458-17d957c0a40b
md"""
## Multiplicación de matrices
También ya se tiene directamente la multiplicación de matrices de $N\times M$ por  matrices de $M\times L$.

---

#### Ejemplo
"""

# ╔═╡ 61be27e6-4924-11ef-1c37-5f80a19196a4
mtrx2x2 * [0.4 0.5 0.6; 0.7 0.8 0.9] # Matriz x Matriz

# ╔═╡ 61be27fa-4924-11ef-2bb5-e93ef9958394
md"
## Operaciones aritméticas con matrices
Y claro, ya están las operaciones de suma y sustracción de matrices, y mutiplicación y división por escalares."

# ╔═╡ 61be280e-4924-11ef-3b8a-4de7d690f593
11*[0.4 0.5; 0.6 0.7] + mtrx2x2/5

# ╔═╡ c64811cb-82e6-46ff-9f9a-bc7c1c18b977
md"""
## *Broadcasting* en matrices
El *broadcasting* también se puede hacer con matrices (ya que son arreglos).

---

#### Ejemplos
"""

# ╔═╡ c2b66696-b5c6-4dc0-973f-484884f72a03
mtrx2x2 .+ 10

# ╔═╡ 191a2a3c-d156-4bad-9840-d2b109ed1c56
log.(mtrx2x2)

# ╔═╡ 61be2818-4924-11ef-32b5-511c18c549b5
md"
## Matrices de números aleatorios
Se pueden crear matrices pseudo-aleatorias con `rand`, dando como argumentos el número de renglones y columnas (es ese orden).

---

#### Ejemplos"

# ╔═╡ 61be282c-4924-11ef-20b7-0743a01cd36e
rand(4,3)

# ╔═╡ 61be2840-4924-11ef-0533-fd7b238171f0
md"
## Otras *functions* de creación de matrices
Otras *functions* útiles para crear matrices son `zeros`, `ones` y `fill`. La primera crea una matriz con puros ceros, la segunda con puros unos, y la tercera con un valor dado.

---

#### Ejemplos
"

# ╔═╡ 61be2868-4924-11ef-306c-57a4fb0c7f23
zeros(2,3)

# ╔═╡ 61be287c-4924-11ef-12c4-5f09b9cf7869
ones(2,2)

# ╔═╡ 61be2890-4924-11ef-32b5-8d9cbd73b217
fill(π,2,4)

# ╔═╡ 881805b9-c803-4f6e-8a43-b76186dc4411
md"""
## Rebanadas de matrices
Como se vió, se pueden hacer *slices* en arreglos accediendo con rangos en los índices.

---

#### Ejemplos
"""

# ╔═╡ 478cfa63-2054-4534-99d5-770ff2e3baa4
mtrx5x5 = rand(5,5)

# ╔═╡ 80e0bba2-8832-480f-9373-673770ca2a84
mtrx5x5[2:3, 3:5]

# ╔═╡ 1f547be1-7f72-4e1a-a525-29782db25662
md"""
## Renglón y columna como rebanadas
Se pueden obtener los renglones y columna como *slices*, indicando adecuadamente un rango completo con solo `:` como índice.

---

#### Ejemplos
"""

# ╔═╡ e2155790-7dca-41c6-91c6-141f48268473
mtrx5x5[3, :] # tercer renglón

# ╔═╡ ed81ebb9-ae5a-4594-a8fe-af38753cd08c
mtrx5x5[:, 4] # cuarta columna

# ╔═╡ 61be289a-4924-11ef-329e-0714e58e635c
md"""
# Paquete de álgebra lineal
Para asuntos más "avanzados" de álgebra lineal, ya existe el paquete `LinearAlgebra`.

¡Ya viene por defecto con la instalación **Julia**! Sólo hay que "cargarlo":
"""

# ╔═╡ 61be28cc-4924-11ef-132b-c385cd6eb78e
md"
## Producto punto
En este paquete se encuentra la *function* para el producto punto de vectores `dot`. También se puede hacer con el operador binario `⋅` (`\cdot`).

---

#### Ejemplos"

# ╔═╡ ad80f2c8-ccb7-4d87-aaf1-8a1a79b786f8
dot(v1, v2)

# ╔═╡ 369466f1-265e-4e8b-9e1a-3c32a6c7b14e
v1 ⋅ v2 # \cdot

# ╔═╡ 61be28fe-4924-11ef-3aff-8999feda4608
md"
## Producto cruz
Para el producto cruz o vectorial está la *function* `cross` y el operador `×` (`\times`). Sólo está definido para vectores en $\mathbb{R}^3$.

---

#### Ejemplo"

# ╔═╡ 5c667a92-168b-4fad-aa40-ecfb4974e491
cross(v1,v2)

# ╔═╡ 61be2908-4924-11ef-0ad7-d1b2abd1ffc3
v1 × v2 # \times

# ╔═╡ d6cb2c67-c2ea-4e75-9e48-aa0bde6e4631
md"""
## Determinante de una matriz
El determinante de una matriz (cuadrada) se obtiene con la *function* `det`.

---

#### Ejemplo
"""

# ╔═╡ b5d58672-9e8c-48e8-9870-f3e6e683cd9f
det(mtrx2x2)

# ╔═╡ 61be291a-4924-11ef-250e-474a6b3d0838
md"
## Transpuesta de una matriz
La transpuesta de una matriz se obtiene con la *function* `transpose`.

---

#### Ejemplo"

# ╔═╡ 61be2930-4924-11ef-2abf-d5927db9bde6
transpose(mtrx2x2)

# ╔═╡ 61be2944-4924-11ef-3982-23ee00c3c9e2
md"
## Inversa de una matriz

La inversa de una matriz (invertible) se obtiene con la *function* `inv`.

---

#### Ejemplo"

# ╔═╡ 61be294e-4924-11ef-234c-23ee3cdc5b56
inv(mtrx2x2)

# ╔═╡ 61be2962-4924-11ef-319c-dfd277a1d322
md"""
## Solución de sistemas de ecuaciones lineales
Así, ya podemos resolver fácilmente sistemas de ecuaciones lineales.

---

#### Ejemplo

$$\begin{matrix}
x+2y & = & 10 \\
3x+4y & = &-5
\end{matrix}$$
"""

# ╔═╡ 61be2980-4924-11ef-2996-27ab11c5e5da
foldable(md"Solución:",md"""
$$\begin{pmatrix} x \\ y \end{pmatrix}=
\begin{pmatrix}
1 & 2 \\
3 & 4
\end{pmatrix}^{-1}
\cdot\begin{pmatrix} 10 \\ -5 \end{pmatrix}$$
""")

# ╔═╡ e7f2a6d3-278b-4e75-b5cf-cdb18d4d8b15
md"""
## Ejemplo: Solución del sistema anterior
"""

# ╔═╡ 61be298c-4924-11ef-1801-dd7fccfb623f
mtrx2x2

# ╔═╡ 61be299e-4924-11ef-380b-0331b9da5b9a
inv(mtrx2x2)*[10,-5]

# ╔═╡ 61be29b2-4924-11ef-2c11-cb3c2ab77ed8
md"""
## Solución más fácil
Una manera más fácil de hacer lo anterior es utilizar el operador `\`, que está definido así:

$$A \backslash \begin{pmatrix} a \\ b \end{pmatrix} = A^{-1} \cdot \begin{pmatrix} a \\ b \end{pmatrix}$$

---

#### Ejemplo
"""

# ╔═╡ 61be29be-4924-11ef-18e0-316471670505
mtrx2x2 \ [10, -5]

# ╔═╡ 61be29d0-4924-11ef-1c16-496b4fac661b
md"
## Eigenvalores y eigenvectores
También hay una *function* para encontrar los eigenvalores y eigenvectores (o valores y vectores propios): `eigen`.

---

#### Ejemplo"

# ╔═╡ 61be29e4-4924-11ef-3485-abdf9dd2932a
#eigenvvs = eigen(mtrx2x2)

# ╔═╡ 61be29f8-4924-11ef-0a0b-03bc0568f48f
md"## Eigenvalores
El $n$-ésimo eigenvalor se obtiene con `.values[`$n$`]`.

---

#### Ejemplo
"

# ╔═╡ b1bdd5ef-3066-43a7-a25c-37da3db70818
#λ1 = eigenvvs.values[1] # Primer eigenvalor

# ╔═╡ cb0067ad-e753-4fbf-ac3f-5fe046b78df8
#λ2 = eigenvvs.values[2] # Segundo eigenvalor

# ╔═╡ 61be2a1e-4924-11ef-2260-3b16364522d3
md"## Eigenvectores
El $n$-ésimo eigenvector se obtiene con `.vectors[:,`$n$`]`.
"

# ╔═╡ 2da4246f-5045-440f-9204-b1023a2b84bb
#ev1 = eigenvvs.vectors[:,1] # Primer eigenvector

# ╔═╡ 29101e52-4634-403f-9a72-966bf6ba3b0b
#ev2 = eigenvvs.vectors[:,2] # Segundo eigenvector

# ╔═╡ 61be2a48-4924-11ef-3f2b-3df737078af8
md"
## Eigenvalores y eigenvectores
Sabemos que por definición $M \cdot v_k = \lambda_k v_k$.

---

#### Ejemplo: Comprobación"

# ╔═╡ 61be2a5c-4924-11ef-012b-1fdacf6e01df
#mtrx2x2*ev1, λ1*ev1

# ╔═╡ 61be2a66-4924-11ef-28d3-998bd13ee175
#mtrx2x2*ev2, λ2*ev2

# ╔═╡ 726ca3fa-8caf-48e1-b829-dfbcd4a9a887
md"""
## Eigenvalores complejos
#### Ejemplo
$\begin{pmatrix} 0 & -1 \\ 1 & 0 \end{pmatrix}$
"""

# ╔═╡ 019fddb0-69b8-4259-935a-b49e6539801a
eigen([0 -1; 1 0])

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.6"
manifest_format = "2.0"
project_hash = "f352ceee806168c8ae38887a01d7bae6ca62470b"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"
version = "1.11.0"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.3.0+1"

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

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.15.0+0"
"""

# ╔═╡ Cell order:
# ╟─61b9a5ae-4924-11ef-279f-039cf62ea00e
# ╟─61be24a8-4924-11ef-095f-7db394ed5b56
# ╠═abeec6f0-3090-411e-bc47-7e428c1fee4d
# ╠═89d1e9a3-9f3d-4623-b5c4-f3f3526e8b22
# ╟─61be2624-4924-11ef-3d71-3b079b0bd70f
# ╠═61be2638-4924-11ef-1068-17f96de30371
# ╠═61be2656-4924-11ef-2eb7-879473837ced
# ╟─24e0fd0b-0188-45a1-8693-33450598ca00
# ╠═20efb2b5-f080-4fa9-b6f3-aa197cc92325
# ╠═115a328f-c461-4f3d-b004-b98805436aab
# ╟─63379f58-89c5-41db-969a-61000ed908ae
# ╠═06333f5b-033b-4a07-8a12-99ad4c2f0ee4
# ╠═721d6ae1-63b1-4af2-bbbd-9d6b78b4df08
# ╠═3c6e2fd1-9904-43bc-abe6-05e99162d6e6
# ╟─99e0d313-c2e8-42ea-9e15-81dced63c4e3
# ╟─bfc062d4-9c68-491c-b54c-71736b176b40
# ╟─c9bee192-4272-4c6d-b5e8-4d823d282aa6
# ╠═43b5e928-da01-4396-a006-0bf4969be0b6
# ╠═73ce0253-4d6c-45a7-b89d-ae2dab6ae82d
# ╠═960b284c-f129-4dac-86b8-90e74d164bec
# ╟─61be266a-4924-11ef-1092-ef21852a0327
# ╠═61be267e-4924-11ef-209c-2b257258b759
# ╟─61be2692-4924-11ef-183e-2b48a585872a
# ╟─61be269c-4924-11ef-3af8-e9004caded80
# ╟─61be26b0-4924-11ef-380b-9bc90a7e5ae9
# ╟─61be26c4-4924-11ef-33c6-f17f73b7247b
# ╟─61be2700-4924-11ef-1204-87b43157b030
# ╟─1d2b10a6-72fe-4f29-a1fc-fcffc4fadfca
# ╠═61be2714-4924-11ef-0baa-3506c6d2807b
# ╠═b232342d-8fa4-4a0e-bff9-3609af5005ff
# ╟─61be2728-4924-11ef-3683-df0c0b245a93
# ╟─901f092c-0362-484b-b8f9-4ad942dc62d8
# ╠═ac1bc8f2-d341-4f9c-9c61-ff5365da84b6
# ╟─61be274e-4924-11ef-114a-bd830a395507
# ╠═61be2764-4924-11ef-123d-45eea3119402
# ╠═61be2778-4924-11ef-2f9b-47b8586a9f6d
# ╟─61be278c-4924-11ef-0cdb-d9276f4c0e96
# ╠═61be27aa-4924-11ef-114d-455ab8f8088e
# ╟─61be27b2-4924-11ef-3213-b3701309e3d2
# ╠═61be27c8-4924-11ef-1f45-d7d4fcf785e6
# ╠═61be27d2-4924-11ef-1454-d3a34a3ae6b5
# ╟─77940062-39cd-45bb-9458-17d957c0a40b
# ╠═61be27e6-4924-11ef-1c37-5f80a19196a4
# ╟─61be27fa-4924-11ef-2bb5-e93ef9958394
# ╠═61be280e-4924-11ef-3b8a-4de7d690f593
# ╟─c64811cb-82e6-46ff-9f9a-bc7c1c18b977
# ╠═c2b66696-b5c6-4dc0-973f-484884f72a03
# ╠═191a2a3c-d156-4bad-9840-d2b109ed1c56
# ╟─61be2818-4924-11ef-32b5-511c18c549b5
# ╠═61be282c-4924-11ef-20b7-0743a01cd36e
# ╟─61be2840-4924-11ef-0533-fd7b238171f0
# ╠═61be2868-4924-11ef-306c-57a4fb0c7f23
# ╠═61be287c-4924-11ef-12c4-5f09b9cf7869
# ╠═61be2890-4924-11ef-32b5-8d9cbd73b217
# ╟─881805b9-c803-4f6e-8a43-b76186dc4411
# ╠═478cfa63-2054-4534-99d5-770ff2e3baa4
# ╠═80e0bba2-8832-480f-9373-673770ca2a84
# ╟─1f547be1-7f72-4e1a-a525-29782db25662
# ╠═e2155790-7dca-41c6-91c6-141f48268473
# ╠═ed81ebb9-ae5a-4594-a8fe-af38753cd08c
# ╟─61be289a-4924-11ef-329e-0714e58e635c
# ╠═61be28c2-4924-11ef-26ac-b552cbd7b9bc
# ╟─61be28cc-4924-11ef-132b-c385cd6eb78e
# ╠═ad80f2c8-ccb7-4d87-aaf1-8a1a79b786f8
# ╠═369466f1-265e-4e8b-9e1a-3c32a6c7b14e
# ╟─61be28fe-4924-11ef-3aff-8999feda4608
# ╠═5c667a92-168b-4fad-aa40-ecfb4974e491
# ╠═61be2908-4924-11ef-0ad7-d1b2abd1ffc3
# ╟─d6cb2c67-c2ea-4e75-9e48-aa0bde6e4631
# ╠═b5d58672-9e8c-48e8-9870-f3e6e683cd9f
# ╟─61be291a-4924-11ef-250e-474a6b3d0838
# ╠═61be2930-4924-11ef-2abf-d5927db9bde6
# ╟─61be2944-4924-11ef-3982-23ee00c3c9e2
# ╠═61be294e-4924-11ef-234c-23ee3cdc5b56
# ╟─61be2962-4924-11ef-319c-dfd277a1d322
# ╟─61be2980-4924-11ef-2996-27ab11c5e5da
# ╟─e7f2a6d3-278b-4e75-b5cf-cdb18d4d8b15
# ╠═61be298c-4924-11ef-1801-dd7fccfb623f
# ╠═61be299e-4924-11ef-380b-0331b9da5b9a
# ╟─61be29b2-4924-11ef-2c11-cb3c2ab77ed8
# ╠═61be29be-4924-11ef-18e0-316471670505
# ╟─61be29d0-4924-11ef-1c16-496b4fac661b
# ╠═61be29e4-4924-11ef-3485-abdf9dd2932a
# ╟─61be29f8-4924-11ef-0a0b-03bc0568f48f
# ╠═b1bdd5ef-3066-43a7-a25c-37da3db70818
# ╠═cb0067ad-e753-4fbf-ac3f-5fe046b78df8
# ╟─61be2a1e-4924-11ef-2260-3b16364522d3
# ╠═2da4246f-5045-440f-9204-b1023a2b84bb
# ╠═29101e52-4634-403f-9a72-966bf6ba3b0b
# ╟─61be2a48-4924-11ef-3f2b-3df737078af8
# ╠═61be2a5c-4924-11ef-012b-1fdacf6e01df
# ╠═61be2a66-4924-11ef-28d3-998bd13ee175
# ╟─726ca3fa-8caf-48e1-b829-dfbcd4a9a887
# ╠═019fddb0-69b8-4259-935a-b49e6539801a
# ╟─61be2a7a-4924-11ef-3f57-4d831aec889b
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
