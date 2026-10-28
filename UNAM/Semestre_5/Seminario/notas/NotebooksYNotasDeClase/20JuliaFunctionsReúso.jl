### A Pluto.jl notebook ###
# v0.20.28

using Markdown
using InteractiveUtils

# ╔═╡ 8f43d545-6e16-4e6d-be6d-587dba25f85a
include("src/test.jl")

# ╔═╡ 50fd1b90-4aca-11ef-0fd8-1358eeeae1df
include("src/nbutils.jl")

# ╔═╡ 50f869b0-4aca-11ef-01de-4b0161a09698
md"""
# *Functions* como Variables y Reúso 
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ 50fd1866-4aca-11ef-09af-4f4429786b24
md"""
# Variables `Function`

Una característica muy interesante y útil en **Julia** es que las *functions* pueden tratarse como cualquier variable...
"""

# ╔═╡ 99862fa1-b99d-4f4c-a6a7-2a792a408102
foldable0(md"... ¡así que pueden pasarse como argumentos a otras *functions* o pueden regresarse como resultado de otras *functions*!")

# ╔═╡ 50fd187a-4aca-11ef-0f64-97af74038209
md"""
## 💻 Nota técnica

> En programación se dice que las *functions* de **Julia** son *objetos de primera clase* (*first-class objets*), lo que significa que las variables pueden contener valores que son *functions*.
"""

# ╔═╡ 879969c8-3360-41cd-a177-9997b14faa0a
foldable0(md"> Esto es posible porque las todas las *functions* en **Julia** son valores del tipo `Function` (nótese la primera letra en mayúscula).")

# ╔═╡ 50bb2f37-0d2a-40c8-b037-93eea2b04ea5
md"""
## 💻 Nota técnica
"""

# ╔═╡ d0408dd0-df62-4f83-9321-dc47620c540f
f(x) = x^2 - 2

# ╔═╡ c9ba08ff-2b88-4220-bff4-f9d4ddaf3670
#typeof(f)

# ╔═╡ 50fd18a2-4aca-11ef-2c64-7b8e79f2857e
f isa Function

# ╔═╡ 4ec6782a-9e9a-4f0b-8cd3-bd5619079dd4
sin isa Function

# ╔═╡ a85b82b3-cda6-446f-9349-cafe0246bb1c
println isa Function

# ╔═╡ 50fd18de-4aca-11ef-1df0-a7faf45981d2
md"""
## Ejemplo

Pasando una *function* como argumento.

---

La órbita de $x$ bajo $f$ es $o(x,f)=\{x,f(x),f^2(x), \dots, f^n(x), \dots\}$.
"""

# ╔═╡ 50fd18fc-4aca-11ef-2555-c55d10bef2c3
function calcorbit(f, x, N)
    orbit = [x]
    for n in 1:(N-1)
        push!(orbit, f(orbit[n]))
    end
    orbit
end

# ╔═╡ db8b0048-1be9-46b3-8041-753c684cba3a
myorbit = calcorbit(f, 0.15, 10)

# ╔═╡ 50fd19c4-4aca-11ef-0a92-61d01c58961e
md"""
## Ejemplo

Regresando una *function* en una *function*.

---

Un polinomio de grado $n$ puede escribirse como una función

$P(x)=a_0 + a_1 x + \dots + a_{n-1} x^{n-1} + a_n x^n,$

que está determinada por sus coeficientes $\{a_0, \dots, a_n\}$.
"""

# ╔═╡ b9e38704-67c4-48c1-b4df-4e10f3ab5790
foldable0(
md"""
Nótese que

$P(x)=a_0+x(a_1+x(a_2+x(\dots x(a_{n-1} + xa_n)\dots)))$

es una evaluación computacionalmente más eficiente.
"""
)

# ╔═╡ 438843fd-2316-4c23-99f6-9dcf4dbd4f4a
md"""
## Ejemplo

$P(x)=a_0+x(a_1+x(a_2+x(\dots x(a_{n-1} + xa_n)\dots)))$
"""

# ╔═╡ 50fd19ee-4aca-11ef-2743-1bfa4ca1a90c
function createpolynomial(coeffs) # coeffs debe ser una arreglo de coeficientes
    function polynomial(x)
        finalval = coeffs[end] # Coeficiente a_{n-1}, índice n=end
        for k in (length(coeffs)-1):-1:1 # Coefs a_{n-1} (índ. n) a a_0 (índ. 1)
            finalval = coeffs[k] + x*finalval
        end
        finalval
    end
	# La última instrucción de "createpolynomial" es
	# todo un bloque "function ... end"
end

# ╔═╡ 9659be82-c047-4491-9988-ed13018cc4d6
md"""
## Ejemplo

$P(x)=3-2x+x^2+0.5x^4$
"""

# ╔═╡ 9d50116d-bf84-46ce-b1cc-954252e73747
mycoeffs = [3,-2,1,0,0.5]

# ╔═╡ 2216afe0-8bb2-4498-968d-5a27465c23c7
mypolynomial = createpolynomial(mycoeffs)

# ╔═╡ eb9bd7a0-a099-4e45-a746-b20df665327b
md"""
---
"""

# ╔═╡ 50fd1a20-4aca-11ef-3a1a-a33690fcc970
mypolynomial(-3.5)

# ╔═╡ a31224d7-6a50-45c6-a86e-a280ef3b8ac7
x0 = 0.75

# ╔═╡ 760d1474-a211-4853-b28b-57a93dfc307e
mypolynomial(x0) == 3 - 2x0 + x0^2 + 0.5x0^4

# ╔═╡ 50fd1a4e-4aca-11ef-1504-33296c216bf1
md"""
## Ejemplo

Pasando una *function* como argumento y regresando una *function*.

---

Para una función diferenciable $f:\mathbb{R}\rightarrow\mathbb{R}$

$$f'(x)=\lim_{\varepsilon\rightarrow 0}\frac{f(x+\varepsilon)-f(x-\varepsilon)}{2\varepsilon}$$
"""

# ╔═╡ 50fd1a64-4aca-11ef-0693-1736478c430b
foldable0(md"""
Entonces para $\varepsilon>0$ pequeño tenemos que 

$$f'(x)\approx\frac{f(x+\varepsilon)-f(x-\varepsilon)}{2\varepsilon}$$
""")

# ╔═╡ 9ad3620f-dda2-47dd-9e9b-46cefd60ba1a
md"""
## Ejemplo

$$f'(x)\approx\frac{f(x+\varepsilon)-f(x-\varepsilon)}{2\varepsilon}$$

"""

# ╔═╡ 50fd1a80-4aca-11ef-26e0-076f3ebad468
function createnumderivative(f, ε)
    function numder(x)
        (f(x+ε)-f(x-ε))/(2ε)
    end
end

# ╔═╡ 99a91906-9473-4b44-b858-2bb4dda6a033
md"""
## Ejemplo
"""

# ╔═╡ cdfb91f6-3139-4f3f-822d-0380a5348221
g(x) = -1.5x + 0.5x^3

# ╔═╡ fcc41d76-4784-4b8e-938d-082914348205
g´ = createnumderivative(g, 0.01)

# ╔═╡ 50fd1ab4-4aca-11ef-320f-e554c438a9a2
g´(0)

# ╔═╡ 79812245-54eb-42e7-9710-4ca9815b0857
md"""
---
"""

# ╔═╡ 50fd1abe-4aca-11ef-2684-33d76950bcd6
g´_better = createnumderivative(g, 0.00000001)

# ╔═╡ 50fd1ad2-4aca-11ef-19c1-dd0a8889551c
g´_better(0)

# ╔═╡ b708a679-77c3-4880-9963-0219e40c191f
md"""
# *Functions* anónimas

En muchas ocasiones puede ser útil crear *functions* sin nombre, es decir, sin construirlas con el bloque `function ... end` o con el estilo `f(x) = ...`. Por ejemplo, para usarlas directamente como argumentos de *functions*.
"""

# ╔═╡ e05172be-9fc1-4e86-90f4-69e3412b55c9
foldable0(md"""
Estas *functions* anónimas se crean con el siguiente formato:
~~~julia
arg -> expresión con arg 
~~~
ó con varios argumentos:
~~~julia
(arg1, ..., argN)  -> expresión con arg1, ..., argN 
~~~

Nótese el parecido con la notación matemática $(x,y)\mapsto f(x,y)$.
""")

# ╔═╡ 17f5449b-b3e0-4ebc-97a6-c54b2a746e18


# ╔═╡ cf5f471c-5544-4d36-bbaf-46d8218701f8
md"""
## Ejemplos
"""

# ╔═╡ 6934a010-10fa-4531-b8db-27f6e2fd683b
calcorbit(x -> x <= 0.5 ? 2x : 2-2x, 1//14, 10)

# ╔═╡ 1a38ae8d-e3b7-43ad-aad5-07fb04da4851
md"""
---
"""

# ╔═╡ 694561bc-939c-492b-b865-7418b62a6b44
h´ = createnumderivative(x -> 2sin(3x)-3cos(2x), 0.0001)

# ╔═╡ eb1bc0d0-105c-46fa-b659-bc3e92d6bf59
h´(4)

# ╔═╡ 50fd1af0-4aca-11ef-3690-4dbead02723a
md"""
# Reúso de *functions*

Como se ha mencionado, una de las características más importantes de las *functions* es el reuso de los algoritmos implementados en ellas en múltiples programas.
"""

# ╔═╡ 50fd1b24-4aca-11ef-28b7-efbcd273fd84
foldable0(md"
Para esto, podemos escribir el código de las *functions* en un archivo de texto y luego *incluirlo* en los programas que sean requeridos.

Convencionalmente, los archivos de texto que contienen código de **Julia** tienen extensión `.jl`.")

# ╔═╡ 50fd1b36-4aca-11ef-303e-2da68727d2a4
foldable0(md"""
Para utilizar las *functions* (y de hecho todo el código, como variables y constantes) que estén en un archivo, se utiliza la palabra clave `include` de la siguiente forma:

~~~julia
include("ruta/nombrearchivo.jl")
~~~
""")

# ╔═╡ 49aa393f-8dc1-459b-9779-0bea00db6733
md"""
## Ejemplo

El archivo `src/test.jl` contiene el siguiente código
~~~julia
function_test(x) = 10x - floor(10x)
var_test = 1/pi 
const_test = 0.1010010001000010000010000001
~~~
"""

# ╔═╡ 203e45c5-afa5-4332-8846-b295262d71ef
function_test(0.567462587)

# ╔═╡ f7d4cae4-5e50-4b7c-9c5c-3510c00e2ebb
var_test

# ╔═╡ 5115320c-ab31-40f4-be2f-7f1f6bc7a99e
const_test

# ╔═╡ 50fd1b4a-4aca-11ef-116e-334f327ba11f
md"""
## Ejemplo

(Casi) Todas las *functions* creadas en este *notebook* y algo más están en el archivo `MathUtils_v1.jl` (y otros) en la carpeta `src`.
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
# ╟─50f869b0-4aca-11ef-01de-4b0161a09698
# ╟─50fd1866-4aca-11ef-09af-4f4429786b24
# ╟─99862fa1-b99d-4f4c-a6a7-2a792a408102
# ╟─50fd187a-4aca-11ef-0f64-97af74038209
# ╟─879969c8-3360-41cd-a177-9997b14faa0a
# ╟─50bb2f37-0d2a-40c8-b037-93eea2b04ea5
# ╠═d0408dd0-df62-4f83-9321-dc47620c540f
# ╠═c9ba08ff-2b88-4220-bff4-f9d4ddaf3670
# ╟─50fd18a2-4aca-11ef-2c64-7b8e79f2857e
# ╟─4ec6782a-9e9a-4f0b-8cd3-bd5619079dd4
# ╟─a85b82b3-cda6-446f-9349-cafe0246bb1c
# ╟─50fd18de-4aca-11ef-1df0-a7faf45981d2
# ╠═50fd18fc-4aca-11ef-2555-c55d10bef2c3
# ╠═db8b0048-1be9-46b3-8041-753c684cba3a
# ╟─50fd19c4-4aca-11ef-0a92-61d01c58961e
# ╟─b9e38704-67c4-48c1-b4df-4e10f3ab5790
# ╟─438843fd-2316-4c23-99f6-9dcf4dbd4f4a
# ╠═50fd19ee-4aca-11ef-2743-1bfa4ca1a90c
# ╟─9659be82-c047-4491-9988-ed13018cc4d6
# ╠═9d50116d-bf84-46ce-b1cc-954252e73747
# ╠═2216afe0-8bb2-4498-968d-5a27465c23c7
# ╟─eb9bd7a0-a099-4e45-a746-b20df665327b
# ╠═50fd1a20-4aca-11ef-3a1a-a33690fcc970
# ╠═a31224d7-6a50-45c6-a86e-a280ef3b8ac7
# ╠═760d1474-a211-4853-b28b-57a93dfc307e
# ╟─50fd1a4e-4aca-11ef-1504-33296c216bf1
# ╟─50fd1a64-4aca-11ef-0693-1736478c430b
# ╟─9ad3620f-dda2-47dd-9e9b-46cefd60ba1a
# ╠═50fd1a80-4aca-11ef-26e0-076f3ebad468
# ╟─99a91906-9473-4b44-b858-2bb4dda6a033
# ╠═cdfb91f6-3139-4f3f-822d-0380a5348221
# ╠═fcc41d76-4784-4b8e-938d-082914348205
# ╠═50fd1ab4-4aca-11ef-320f-e554c438a9a2
# ╟─79812245-54eb-42e7-9710-4ca9815b0857
# ╠═50fd1abe-4aca-11ef-2684-33d76950bcd6
# ╠═50fd1ad2-4aca-11ef-19c1-dd0a8889551c
# ╟─b708a679-77c3-4880-9963-0219e40c191f
# ╟─e05172be-9fc1-4e86-90f4-69e3412b55c9
# ╠═17f5449b-b3e0-4ebc-97a6-c54b2a746e18
# ╟─cf5f471c-5544-4d36-bbaf-46d8218701f8
# ╠═6934a010-10fa-4531-b8db-27f6e2fd683b
# ╟─1a38ae8d-e3b7-43ad-aad5-07fb04da4851
# ╠═694561bc-939c-492b-b865-7418b62a6b44
# ╠═eb1bc0d0-105c-46fa-b659-bc3e92d6bf59
# ╟─50fd1af0-4aca-11ef-3690-4dbead02723a
# ╟─50fd1b24-4aca-11ef-28b7-efbcd273fd84
# ╟─50fd1b36-4aca-11ef-303e-2da68727d2a4
# ╟─49aa393f-8dc1-459b-9779-0bea00db6733
# ╠═8f43d545-6e16-4e6d-be6d-587dba25f85a
# ╠═203e45c5-afa5-4332-8846-b295262d71ef
# ╠═f7d4cae4-5e50-4b7c-9c5c-3510c00e2ebb
# ╠═5115320c-ab31-40f4-be2f-7f1f6bc7a99e
# ╟─50fd1b4a-4aca-11ef-116e-334f327ba11f
# ╟─50fd1b90-4aca-11ef-0fd8-1358eeeae1df
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
