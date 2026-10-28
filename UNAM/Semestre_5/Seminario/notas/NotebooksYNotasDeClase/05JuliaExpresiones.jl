### A Pluto.jl notebook ###
# v0.20.28

using Markdown
using InteractiveUtils

# ╔═╡ d8153846-3678-11ef-3f1d-fde853b97238
include("src/nbutils.jl")

# ╔═╡ d810b1d4-3678-11ef-37b6-cdab5b3b93f5
md"""
# Operadores y Expresiones
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ d8148aca-3678-11ef-1813-df9be79de5dc
md"""
# Sentencias

Como ya se ha mencionado, un programa se compone de *sentencias* (enunciados formados en el lenguaje de programación, que a final de cuentas son instrucciones para la computadora).

Por el momento hemos visto los siguientes tipos de sentencia:
```julia
my_var = 2.0 # Creación de variable y asignación
const my_const = 1.57 # Creación de constante y asignación
my_var = 3.0 # Reasignación de nuevo valor a variable
10, 20, 30 # Creación de lista fija
x1, x2, x3 = 1,2,3 # Creación de múltiples variables
```
"""

# ╔═╡ bb769191-1d34-4283-993d-a0d5ac3af6b6
foldable0(md"""y
```julia
2.0^2 + (3*0.5 - 6//7)/(1+2im) # Expresiones aritméticas
```
que revisaremos en detalle a continuación.
""")

# ╔═╡ d81533bc-3678-11ef-2d21-bf0f38a9fbb4
md"""
# Expresiones

Una *expresión* es una sentencia (o parte de una sentencia) construida como combinación de valores y/o variables y/o constantes (y/o funciones) y operadores.

Es especial revisaremos las *expresiones aritméticas*, que por supuesto son aquellas que involucran números y operadores aritméticos.

---
"""

# ╔═╡ d815342a-3678-11ef-3ebb-2fe4e9f8502c
2.0^2 + 3*0.5 - 6//7 + 2im

# ╔═╡ d8153448-3678-11ef-304e-2b1d34fd27f4
md"""
---

Se pueden agrupar expresiones dentro de expresiones con `( )`.

---
"""

# ╔═╡ d815345c-3678-11ef-07c9-458e5197d828
2.0^2 + (3*0.5 - 6//7)/(1+2im - 4*0.23)

# ╔═╡ d8153484-3678-11ef-38f1-850f870ea065
md"""
## 💻 Notas técnicas

> Al "ejecutarse" una celda (`shift+enter`) con una expresión, ocurre lo siguiente:
> - Se verifica que esté construida correctamente (*verificación sintáctica*).
> - Se se obtiene el resultado de acuerdo a los valores y operaciones involucradas (*evaluación*).
> - Se ejecuta la sentencia con el valor obtenido, si es el caso (*ejecución*). Por ejemplo, una asignación.
"""

# ╔═╡ d8153498-3678-11ef-3c71-979881e15a52
abcd = 1+2+3+5

# ╔═╡ d81534ac-3678-11ef-16e8-ef2627681e87
md"""
# Operadores aritméticos

### `+`, `-`, `*`, `/` y `^`

---

| Nombre        | Símbolo | Tipo |
|:--------------|:-------:|:----:|
|Adición        | `+` | Binario conmutativo |
|Sustracción    | `-` | Binario no conmutativo, o unario |
|Multiplicación | `*` | Binario conmutativo |
|Potencia       | `^` | Binario no conmutativo |
|División       | `/` | Binario no conmutativo |

Ya sabemos como funcionan estos operadores, solo haremos algunas observaciones.
"""

# ╔═╡ d81534de-3678-11ef-2123-9bd8d24f6b8a
md"""
## Observación
!!! danger "¡Atención!"
	La división (`/`) entre enteros de computadora produce un número real de computadora (¡aunque el resultado sea entero matemático!).
"""

# ╔═╡ d81534e8-3678-11ef-2029-91746bc4d285
3/4, -1/3, 8/2, 4/4

# ╔═╡ 301b49b1-e55e-41b9-8f23-a7c25de7fbec
md"""
## Observación
!!! note "Nota"
	Por supuesto, con las operaciones `+`, `-` y `*` entre valores del mismo tipo numérico se preserva el tipo numérico.
"""

# ╔═╡ 8075ba46-61e9-415c-87c3-9fb8987568b2
2+3, 2.2+3.3, 2//5+3//7

# ╔═╡ d8153506-3678-11ef-1d6e-0d26df0838a7
md"""
## Observación
!!! danger "¡Atención!"
	El valor resultado de operaciones entre
	- Enteros y racionales es racional.
	- Enteros o racionales y reales es real.
	- Enteros o racionales o reales y complejos es complejo.
"""

# ╔═╡ d8153510-3678-11ef-0ba5-25c571229afe
2//3 + 1, 4 + 10//7 - 3.0, 2 + 1//3 - 3.14 + (1+2im)

# ╔═╡ 68cdb1ca-4f5f-4fd5-81c1-1794b8952007
foldable0(md"""
!!! note "Nota"
	Los resultados de operaciones entre valores numéricos está dominada por su "jerarquía matemática":
	$\mathbb{Z}\subset\mathbb{Q}\subset\mathbb{R}\subset\mathbb{C}$.
""")

# ╔═╡ d815352e-3678-11ef-3cc8-fb9447e29330
md"""
## Operadores aritméticos $\div$ y `%`

| Nombre           | Símbolo | Tipo |
|:-----------------|:-------:|:----:|
|División entera   | $\div$  | Binario no conmutativo, sólo números enteros, racionales y reales |
|Módulo o residuo  | `%`     | Binario no conmutativo, sólo números enteros, racionales y reales |
"""

# ╔═╡ 9cb30f0e-9383-4072-a2d3-cfec00231e58
md"""
## $\div$
El operador $\div$ representa la *división entera*, es decir, $a \div b$ es la parte entera de $a/b$.

Para escribirlo teclear
~~~julia
\div+tab
~~~
"""

# ╔═╡ d8153556-3678-11ef-08ba-d7dd270caa57
#÷

# ╔═╡ d8153560-3678-11ef-2999-636a23178187
5 ÷ 2, 5/2

# ╔═╡ d8153576-3678-11ef-276b-adec02fbf2c5
md"""
## Observación
!!! danger "¡Atención!"
	En las divisiones enteras también se aplica la "jerarquía de tipos numéricos", pero tomando en cuenta que se debe obtener un elemento de $\mathbb{Z}$.
"""

# ╔═╡ 11e30f1e-0a05-4687-bd7e-b27df01bb34c
7 ÷ 5//2, 7/2.5

# ╔═╡ 98f9d270-1d1b-4e42-9a45-978dcc803dda
-11//2 ÷ 2, -5.5/2

# ╔═╡ ff8ff1ad-2334-461e-809d-6b1f090fd68c
-5 ÷ 2.2, -5/2.2

# ╔═╡ d8153588-3678-11ef-3c92-473452465eb1
5.9999 ÷ 2, 5.9999/2

# ╔═╡ d815359c-3678-11ef-3eb1-f11c2c477694
md"""
## %
El operador `%` representa el *módulo* o *residuo*, es decir,

$a \mathtt{\%} b = a - b(a\div b)$
"""

# ╔═╡ d81535a4-3678-11ef-111c-834cd2cac858
15 % 4

# ╔═╡ d81535ba-3678-11ef-3b7a-2b2aa2f496f2
15 - 4*(15 ÷ 4)

# ╔═╡ d81535c4-3678-11ef-0b37-a5420198d441
md"""
## Observación
!!! danger "¡Atención!"
	En el módulo también se aplica la "jerarquía de tipos numéricos".
"""

# ╔═╡ d81535d6-3678-11ef-3d7e-2b8fdd3a54ea
15 % 9//2, 31//2 % 4

# ╔═╡ ed929ad4-3389-4427-a98f-aa5da72677fe
15 % 4.5, 15.5 % 4

# ╔═╡ d81535ec-3678-11ef-0739-dd43ea033a73
md"""
## Observación
Por la definición de división entera y módulo, tenemos lo siguiente: Sean $n,m\in \mathbb{R}$, si $k = n \div m$ y $r = n \mathtt{\%} m$, entonces

$n = mk + r$
"""

# ╔═╡ d815366e-3678-11ef-32f4-eb950f7ec221
let
    n, m = 31, 8
    
    k = n ÷ m
    r = n % m
    
    m*k + r, k, r
end

# ╔═╡ d8153682-3678-11ef-18ba-db0b17305fa7
md"""
# Precedencia de operadores

### 🪢 Problema
¿Cuál es resultado de la siguiente expresión?
"""

# ╔═╡ d8153696-3678-11ef-2fe1-77de96439eea
# -10 + 9 ÷ 2 ^ 3 * 4 - 4 % 3 + 7

# ╔═╡ d81536ac-3678-11ef-0db0-a7f024ce6552
foldable0(md"""
Hay reglas para evaluación de expresiones, es decir, para el orden de la aplicación de los operadores involucrados.

Estas reglas son lo que se llama *precedencia de operadores*.
""")

# ╔═╡ d81536be-3678-11ef-012c-1746aa55cd19
md"""
## Precedencia de operadores
Primero se evalúan los valores contiguos a operadores de mayor jerarquía, de acuerdo a los rangos:

1. `( )` **p**aréntesis.
1. `^` **e**xponenciación.
1. `-` menos **u**nario.
1. `*`, `/`, `÷`, `%` **m**ultipliciones y **d**ivisiones.
1. `+`, `-` **a**diciones y **s**ustracciones binarias.
"""

# ╔═╡ 7c251f77-3101-4c53-8055-8c1358011aa8
md"""
## Precedencia de operadores
"""

# ╔═╡ d81536e6-3678-11ef-2d94-f325cd65b40a
-2^2 # Primero ^, da 4, y luego - da -4

# ╔═╡ d81536fa-3678-11ef-0f0f-8f40bc55e2ca
2*2^3 # Primero ^, da 8, y luego *, da 16

# ╔═╡ d815370c-3678-11ef-2610-29f5503035f2
2^3/4 # Primero ^, da 8, y luego /, da 2.0

# ╔═╡ d8153718-3678-11ef-3327-e908002b035d
-8*-8 # Esto es correcto, primero - y luego *, da 64

# ╔═╡ d815372c-3678-11ef-2520-330c7c6faee3
2*2-3/2 # Primero * y /, luego -

# ╔═╡ d815373e-3678-11ef-0ce9-5760f12c200c
md"""
## Precedencia de operadores
Además, para operadores de la misma jerarquía la evaluación se realiza de izquierda a derecha: Se les dá mayor prioridad a los operadores que están más a la izquierda en la expresión.
"""

# ╔═╡ d815374a-3678-11ef-3351-5be08c662716
5-3+1 # Primero -, da 2, luego +, da 3

# ╔═╡ d815375e-3678-11ef-2cbc-1312a1c86d28
8/4*2 # Primero /, da 2.0, luego *, da 4.0

# ╔═╡ d8153770-3678-11ef-3156-1da5d29f6fe0
8*4/2 # Primero *, da 32, luego /, da 16.0

# ╔═╡ d815377c-3678-11ef-1f92-0dc97a1d1903
md"""
## Precedencia de operadores
En cualquier forma, se recomienda usar siempre paréntesis donde haya duda para tener seguridad de la evaluación.
"""

# ╔═╡ d8153790-3678-11ef-0d74-e55df7b7ad95
-10 + 9 ÷ 2 ^ 3 * 4 - 4 % 3 + 7

# ╔═╡ d815379a-3678-11ef-1b9b-5bc04db26e4c
(-10) + ((9 ÷ (2 ^ 3)) * 4) - (4 % 3) + 7

# ╔═╡ d81537ae-3678-11ef-0ff4-1d3d65f55343
md"""
## Observación

Hablando de operadores y paréntesis:

!!! note "Nota"
	La raiz $n$-ésima real positiva de $x\in\mathbb{R}^+$

	$\sqrt[n]{x}=x^{\frac{1}{n}}\in\mathbb{R}^+$

	puede escribirse como `x^(1/n)`.
"""

# ╔═╡ d81537c2-3678-11ef-3e67-efdf2d43518d
2^(1/2)

# ╔═╡ d81537d6-3678-11ef-0b10-f9d690d1b928
md"""
# Multiplicación
Un detalle muy bueno de **Julia** es que en la operación multiplicativa que implican un número y luego una variable (o constante), nos podemos olvidar de escribir el operador `*`, ¡cómo en notación matemática!
"""

# ╔═╡ d81537f4-3678-11ef-3110-a524c919594a
let
    x = 3
    
    5x, 3.14x, (3//8)x, (1-im)x
end

# ╔═╡ d8153808-3678-11ef-18e3-1f90cb55e609
2π, 0.5π

# ╔═╡ d815381c-3678-11ef-0e9f-bba4dcf14e6d
md"""
# Ejemplo de programa

Con creación de variables, asignaciones de valores y expresiones, ya podemos escribir programas sencillos que realizan cálculo directos.

---

Dado un radio, calcular el diámetro, perímetro y área del círculo y el volumen de la esfera correspondientes.
"""

# ╔═╡ d815383a-3678-11ef-124f-036321b12a3c
let
    radius = 0.868467
    diameter = 2radius
    perimeter = π*diameter
    area = π*radius^2
	volume = (4/3)area*radius # = (4/3)π*radius^3
    
    radius, diameter, perimeter, area, volume
end

# ╔═╡ f70c851e-177e-44ba-abe5-63c0807b1162
md"""
## Instrucciones concatenadas
Existe un operador de concatenación de sentencias de programación: el punto y coma`;`.

---

Por ejemplo, el código
~~~julia
    radius = 2.5
    diameter = 2radius
    perimeter = π*diameter
    area = π*radius^2
	volume = (4/3)area*radius
    radius, diameter, perimeter, area, volume
~~~
es equivalente a
"""

# ╔═╡ b15eaf5a-c67b-4802-b9d5-c32e29cdcb8a
radius = 2.5; diameter = 2radius; perimeter = π*diameter; area = π*radius^2; volume = (4/3)area*radius; radius, diameter, perimeter, area, volume

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
# ╟─d810b1d4-3678-11ef-37b6-cdab5b3b93f5
# ╟─d8148aca-3678-11ef-1813-df9be79de5dc
# ╟─bb769191-1d34-4283-993d-a0d5ac3af6b6
# ╟─d81533bc-3678-11ef-2d21-bf0f38a9fbb4
# ╠═d815342a-3678-11ef-3ebb-2fe4e9f8502c
# ╟─d8153448-3678-11ef-304e-2b1d34fd27f4
# ╠═d815345c-3678-11ef-07c9-458e5197d828
# ╟─d8153484-3678-11ef-38f1-850f870ea065
# ╠═d8153498-3678-11ef-3c71-979881e15a52
# ╟─d81534ac-3678-11ef-16e8-ef2627681e87
# ╟─d81534de-3678-11ef-2123-9bd8d24f6b8a
# ╠═d81534e8-3678-11ef-2029-91746bc4d285
# ╟─301b49b1-e55e-41b9-8f23-a7c25de7fbec
# ╠═8075ba46-61e9-415c-87c3-9fb8987568b2
# ╟─d8153506-3678-11ef-1d6e-0d26df0838a7
# ╠═d8153510-3678-11ef-0ba5-25c571229afe
# ╟─68cdb1ca-4f5f-4fd5-81c1-1794b8952007
# ╟─d815352e-3678-11ef-3cc8-fb9447e29330
# ╟─9cb30f0e-9383-4072-a2d3-cfec00231e58
# ╠═d8153556-3678-11ef-08ba-d7dd270caa57
# ╠═d8153560-3678-11ef-2999-636a23178187
# ╟─d8153576-3678-11ef-276b-adec02fbf2c5
# ╠═11e30f1e-0a05-4687-bd7e-b27df01bb34c
# ╠═98f9d270-1d1b-4e42-9a45-978dcc803dda
# ╠═ff8ff1ad-2334-461e-809d-6b1f090fd68c
# ╠═d8153588-3678-11ef-3c92-473452465eb1
# ╟─d815359c-3678-11ef-3eb1-f11c2c477694
# ╠═d81535a4-3678-11ef-111c-834cd2cac858
# ╠═d81535ba-3678-11ef-3b7a-2b2aa2f496f2
# ╟─d81535c4-3678-11ef-0b37-a5420198d441
# ╠═d81535d6-3678-11ef-3d7e-2b8fdd3a54ea
# ╠═ed929ad4-3389-4427-a98f-aa5da72677fe
# ╟─d81535ec-3678-11ef-0739-dd43ea033a73
# ╠═d815366e-3678-11ef-32f4-eb950f7ec221
# ╟─d8153682-3678-11ef-18ba-db0b17305fa7
# ╠═d8153696-3678-11ef-2fe1-77de96439eea
# ╟─d81536ac-3678-11ef-0db0-a7f024ce6552
# ╟─d81536be-3678-11ef-012c-1746aa55cd19
# ╟─7c251f77-3101-4c53-8055-8c1358011aa8
# ╠═d81536e6-3678-11ef-2d94-f325cd65b40a
# ╠═d81536fa-3678-11ef-0f0f-8f40bc55e2ca
# ╠═d815370c-3678-11ef-2610-29f5503035f2
# ╠═d8153718-3678-11ef-3327-e908002b035d
# ╠═d815372c-3678-11ef-2520-330c7c6faee3
# ╟─d815373e-3678-11ef-0ce9-5760f12c200c
# ╠═d815374a-3678-11ef-3351-5be08c662716
# ╠═d815375e-3678-11ef-2cbc-1312a1c86d28
# ╠═d8153770-3678-11ef-3156-1da5d29f6fe0
# ╟─d815377c-3678-11ef-1f92-0dc97a1d1903
# ╠═d8153790-3678-11ef-0d74-e55df7b7ad95
# ╠═d815379a-3678-11ef-1b9b-5bc04db26e4c
# ╟─d81537ae-3678-11ef-0ff4-1d3d65f55343
# ╠═d81537c2-3678-11ef-3e67-efdf2d43518d
# ╟─d81537d6-3678-11ef-0b10-f9d690d1b928
# ╠═d81537f4-3678-11ef-3110-a524c919594a
# ╠═d8153808-3678-11ef-18e3-1f90cb55e609
# ╟─d815381c-3678-11ef-0e9f-bba4dcf14e6d
# ╠═d815383a-3678-11ef-124f-036321b12a3c
# ╟─f70c851e-177e-44ba-abe5-63c0807b1162
# ╠═b15eaf5a-c67b-4802-b9d5-c32e29cdcb8a
# ╟─d8153846-3678-11ef-3f1d-fde853b97238
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
