### A Pluto.jl notebook ###
# v0.20.28

using Markdown
using InteractiveUtils

# ╔═╡ 262a6ec0-4563-11ef-3904-0b691584f216
include("src/nbutils.jl")

# ╔═╡ 262a4ac6-4563-11ef-024b-67d66fdb9063
md"""
# Errores (*Bugs*)
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ 262a58e0-4563-11ef-1fc8-5d68a180cffb
md"""
## Introducción a los errores
Es natural que al escribir código se cometan ciertos errores que provocan el mal funcionamiento del programa.
"""

# ╔═╡ 262a5926-4563-11ef-0852-9b93b4443f67
foldable0(md"""Dichos errores son llamados *bugs* ("insecto, molestia, plaga"), y el proceso de encontrar los errores y eliminarlos es llamado *debugging* (en español es *depuración*, que claro que no es la traducción del inglés).""")

# ╔═╡ 262a59c6-4563-11ef-3771-a7b5f3a6fadc
foldable0(md"La depuración es un proceso esencial en el desarrollo de software, ya sea en el caso de programadores que apenas inician o en expertos.")

# ╔═╡ 262a5a3e-4563-11ef-04a1-2b05ad0231e1
md"""
## Tipos de errores
Existen tres tipos de errores de programación o *bugs*:
- De sintaxis.


- De ejecución.


- De semántica.

Revisaremos en qué consisten cada uno de ellos.
"""

# ╔═╡ 262a5a8e-4563-11ef-0f08-bfc285eda7e8
md"""
# Errores de sintaxis
### *Syntax errors*

---
Son errores causados al no cumplir las reglas de formación de enunciados (*sintaxis*) en un lenguaje de programación.
"""

# ╔═╡ 262a5ac0-4563-11ef-099c-f9466d319ec3
foldable0(md"Afortunadamente en **Julia**, los errores de sintaxis son indicados explícitamente al intentar ejecutar un código.")

# ╔═╡ 262a5b1a-4563-11ef-17b6-db9f09ce18c6
md"""
## Ejemplo
~~~julia
a,b,c = 11, 23 37
(a + b + c/3 = average
md"El promedio de $a, $b y $c es $average
~~~
"""

# ╔═╡ c8d3babf-a707-4999-b6b7-9dd9a027f687
#a,b,c = 11, 23 37

# ╔═╡ a4617100-fad4-4215-a178-e12af60aa53e
#(a + b + c/3 = average

# ╔═╡ 70fd6d4d-0e2d-4410-bfba-ef8b03c26b47
#md"El promedio de $a, $b y $c es $average

# ╔═╡ 262a5fb6-4563-11ef-2f04-c359f832c109
md"""
# Errores de ejecución
### *Runtime errors*

---

Son errores que se presentan hasta el momento que se ejecuta el programa, causados por no cumplir con ciertas reglas internas del funcionamiento de la computadora.
"""

# ╔═╡ 262a6376-4563-11ef-2f7d-032751c72d66
foldable0(md"""Estos errores también son llamados *excepciones*, pues indican que algo excepcional (fuera de lo normal) ha ocurrido.
""")

# ╔═╡ 262a668c-4563-11ef-10c0-1bfc7c9c04a2
foldable0(md"En **Julia** estos errores son indicados con el estilo *Tipo*`Error`.")

# ╔═╡ 262a6808-4563-11ef-2c9f-0f9373a8ad27
md"""
## Ejemplo
~~~julia
m = 500
n = -2
k = UInt8(m*n)
md"$m * $n = $j"
~~~
"""

# ╔═╡ 262a6ab0-4563-11ef-0a0e-11285f2c07c8
let
    m = 500
    n = -2
    #k = UInt8(m*n)
    #md" $m * $n = $j"
end

# ╔═╡ 262a6afe-4563-11ef-2b0c-e70a74a52a3e
md"""
## Manejo de errores (de ejecución)
A veces se sabe que es posible que ocurra algún error de ejecución en alguna parte del código y se puede evitar que el programa termine de manera inmediata y se pueda "hacer algo al respecto".
"""

# ╔═╡ 262a6b30-4563-11ef-0aa8-9d8847388368
foldable0(md"""Esto es lo que se llama *manejo de excepciones* y en **Julia** se utlizan las palabras clave `try`, `catch`, `finally`, `throw` y `error`, pero es un tema "avanzado" de programación que no abordaremos.""")

# ╔═╡ 262a6b82-4563-11ef-1f4f-e16d2e093f42
md"""
# Errores semánticos
### *Semantic errors*

---

Son errores causados cuando el programador escribe de manera sintácticamente correcta el programa pero **significa** algo distinto a lo que se pretendía hacer, y, por lo tanto, el resultado obtenido en la ejecución no es lo esperado.
"""

# ╔═╡ 262a6c38-4563-11ef-093e-35cfa590d173
foldable0(md"Estos errores son indetectables directamente por la computadora, y por lo tanto difíciles de depurar en  general.")

# ╔═╡ 262a6c86-4563-11ef-2015-77662a283d57
foldable0(md"Estos errores se evitan con experiencia y buenas prácticas de programación, pero en realidad es casi imposible que no aparezcan...")

# ╔═╡ 262a6ce0-4563-11ef-365a-55d53ee777da
md"""
## Ejemplo
~~~julia
radius = 1im
area = (π*radius)^2
md"área = area"
~~~
"""

# ╔═╡ 262a6d1c-4563-11ef-1900-b9e61442ab9b
begin
    radius = 1im
    area = (π*radius)^2
    md"área = area"
end

# ╔═╡ 262a6d94-4563-11ef-04dd-c3215849a08c
md"
## Corrección de errores semánticos
Estos errores semánticos podemos resolverlos revisando y corrigiendo con cuidado el código, de acuerdo a los resultados que se esperan obtener."

# ╔═╡ 262a6de4-4563-11ef-1400-1d9d46dbb58d
foldable0(md"Esto es relativamente fácil para códigos pequeños (de menos de $100$ líneas digamos, como todos los que veremos en este curso).")

# ╔═╡ 262a6e0c-4563-11ef-0785-b5c00293d5d6
foldable0(md"""Pero para programas grandes es muy recomendable utilizar herramientas especiales para revisar el código, llamadas *debuggers*.

En el caso de **Julia** existe el paquete **Debugger** para este propósito.

![Debugger](https://julialang.org/assets/infra/Debug.png)

Para este curso "básico" de programación no lo necesitaremos.""")

# ╔═╡ 262a6e8e-4563-11ef-069b-955a0ce8b779
md"""
# Referencia

Ver el libro de Ben Lauwens (y Allen B. Downey), *Think Julia - How to think like a computer scientist* ( O'Reilly, 2019)...

Cada capítulo tiene una sección de *debugging*, pues es un proceso esencial en programación.
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
# ╟─262a4ac6-4563-11ef-024b-67d66fdb9063
# ╟─262a58e0-4563-11ef-1fc8-5d68a180cffb
# ╟─262a5926-4563-11ef-0852-9b93b4443f67
# ╟─262a59c6-4563-11ef-3771-a7b5f3a6fadc
# ╟─262a5a3e-4563-11ef-04a1-2b05ad0231e1
# ╟─262a5a8e-4563-11ef-0f08-bfc285eda7e8
# ╟─262a5ac0-4563-11ef-099c-f9466d319ec3
# ╟─262a5b1a-4563-11ef-17b6-db9f09ce18c6
# ╠═c8d3babf-a707-4999-b6b7-9dd9a027f687
# ╠═a4617100-fad4-4215-a178-e12af60aa53e
# ╠═70fd6d4d-0e2d-4410-bfba-ef8b03c26b47
# ╟─262a5fb6-4563-11ef-2f04-c359f832c109
# ╟─262a6376-4563-11ef-2f7d-032751c72d66
# ╟─262a668c-4563-11ef-10c0-1bfc7c9c04a2
# ╟─262a6808-4563-11ef-2c9f-0f9373a8ad27
# ╠═262a6ab0-4563-11ef-0a0e-11285f2c07c8
# ╟─262a6afe-4563-11ef-2b0c-e70a74a52a3e
# ╟─262a6b30-4563-11ef-0aa8-9d8847388368
# ╟─262a6b82-4563-11ef-1f4f-e16d2e093f42
# ╟─262a6c38-4563-11ef-093e-35cfa590d173
# ╟─262a6c86-4563-11ef-2015-77662a283d57
# ╟─262a6ce0-4563-11ef-365a-55d53ee777da
# ╠═262a6d1c-4563-11ef-1900-b9e61442ab9b
# ╟─262a6d94-4563-11ef-04dd-c3215849a08c
# ╟─262a6de4-4563-11ef-1400-1d9d46dbb58d
# ╟─262a6e0c-4563-11ef-0785-b5c00293d5d6
# ╟─262a6e8e-4563-11ef-069b-955a0ce8b779
# ╟─262a6ec0-4563-11ef-3904-0b691584f216
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
