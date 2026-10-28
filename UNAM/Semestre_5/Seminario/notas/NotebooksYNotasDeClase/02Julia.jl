### A Pluto.jl notebook ###
# v0.20.28

#> [frontmatter]
#> title = "Mini Curso SDD. Pluto"
#> date = "2023-08-01"
#> description = "Introducción a Pluto"

using Markdown
using InteractiveUtils

# ╔═╡ 4ebd45c6-26d5-433d-9bfa-d01196b9549d
include("src/nbutils.jl")

# ╔═╡ 228a12de-2692-11ee-3545-119c7d391320
md"""
# **Julia**
### Lenguaje de programación
---
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ 9f280ecf-68ef-4440-81ae-fbc9bee6d55c
md"""
## ¿Qué es **Julia**?

Es un lenguaje de programación
- libre y de código abierto,


- multiplataforma,


- multipropósito,


- multiparadigma,


- moderno,


- sencillo,


- eficiente, y


- orientado al cómputo científico.

---
Sitio web oficial: [julialang.org](https://julialang.org)
"""

# ╔═╡ 2e2ff1e3-0113-4542-8f04-0caddfc28864
md"""
## **Julia** es libre y de código abierto

- Ser libre indica que es ¡gratis! 😄


- Ser de código abierto significa que el su código interno puede ser obtenido (y modificado) por quien lo desee.

Lo anterior es gracias a que **Julia** tiene licencia de software libre **MIT**.
"""

# ╔═╡ b8b02e22-c784-4f72-b3b8-b9973e904dfc
md"""
## **Julia** es multiplataforma

Funciona en (casi) todos los sistemas operativos:
- **Linux** (en casi todos sus distintos sabores),


- **MacOS** (en versiones relativamente nuevas), y


- **Windows** (en versiones relativamente nuevas).

Véase la página de descargas de **Julia**: [julialang.org/downloads](https://julialang.org/downloads).
"""

# ╔═╡ 8aa9009f-6eac-4ab3-b8d6-974954ca8e96
md"""
## **Julia** es multipropósito

Esto significa que con **Julia** se pueden crear programas para realizar cualquier tarea.

Además, la gran comunidad de **Julia** ya ha desarrollado una extensa variedad de bibliotecas orientadas a diversos de objetivos.
"""

# ╔═╡ 7b8c0f71-a308-4238-870c-6fa8cf3ef213
md"""
## **Julia** es multiparadigma
Esto significa que con **Julia** se pueden utilizar varios tipos/estilos de programación:
"""

# ╔═╡ 9893b3c5-20cd-4ad4-b3a2-57def287d091
foldable0(md"- Programación *estructurada*, como en **C**, **C++**, **C#**, **Fortran77**, **Java**, **Python**, etc,")

# ╔═╡ 795ea569-2cbf-4d96-b1dc-05574fd35ed8
foldable0(md"- Programación *orientada a objetos*, como en **C++**, **C#**, **Fortran90**, **Java**, **Python**, etc,")

# ╔═╡ 21ef9fc0-cde9-4df6-800f-607a78c69db5
foldable0(md"- Programación *genérica* como en **C++**, **C#**, y **Java**, y
")

# ╔═╡ 9763584f-f36b-4f2e-a47b-47a2e9d3995a
foldable0(md"- Programación *funcional*, como en **Lisp**, **Scheme** y **Scala**.
")

# ╔═╡ 491b03b8-4224-41d7-8063-0ea05b560f2c
md"""
## **Julia** es moderno

Es al mismo tiempo (más o menos)
- Un lenguaje interpretado, como **Python**, **R** y **Javascript**.


- Un lenguaje compilado, como **C/C++**, **C#**, **Fortran** y **Java**.

Esto permite sacar ventaja de ambas cualidades, como veremos más adelante.
"""

# ╔═╡ 8ca587af-9d3e-483b-806d-3894ef6ddbc5
foldable0(md"Además, incluye herramientas de lenguajes modernos como la *depuración*, *perfilación*, *paralelización*, *metaprogramación*, etc.")

# ╔═╡ 4e5963f4-6b15-47cd-869a-6be74e3d86a8
md"""
## **Julia** es sencillo

Gracias a su diseño como lenguaje interpretado, resulta ser sencillo de escribir y de leer.

---

Para comparar, primero veamos un ejemplo de un código en **C++**:
"""

# ╔═╡ ddce507a-0f5b-4307-90a5-eea3579b719f
foldable0(
md"""~~~c++
#include <iostream>
#include <vector>
#include <complex.h>
int main () {
  int N = 100;
  std::complex<double> z = std::complex<double>(0,0);
  std::complex<double> c = std::complex<double>(-1.25,0.25);
  std::vector<complex<double> > orbit = {z};
  for(int n=1; n<N; ++n) {
    z = z*z + c;
    orbit.push_back(z);
  }
  std::cout << "Órbita: " << orbit << '\n';
  return 0;
}
~~~"""
)

# ╔═╡ 91f0f2c1-3ace-4750-bc88-d2228a04e0ab
md"""
## **Julia** es sencillo

Ahora, un código que hace lo mismo pero en **Julia**:
"""

# ╔═╡ 36153102-e3fa-47fe-aed4-76dc9c3b2c78
foldable0(md"""
~~~julia
N, z, c = 100, .0+0im, -1.25 + 0.25im
orbit = [z]
for n in 1:N
  z = z*z + c
  push!(orbit, z)
end
println("Órbita: ", orbit)
~~~
""")

# ╔═╡ 6817b648-597b-42af-9eee-471c6c5d1fc6
foldable0(md"""
!!! note "Nota"
	Para quienes conozcan **Python**, podrán notar la gran similitud con este lenguaje de programación que también es sencillo.
""")

# ╔═╡ dfabebef-e7d8-455d-be37-eb6729e29d6e
md"""
## **Julia** es sencillo

Para ejecutar un programa en **C++**, primero hay que compilarlo. En **Linux** sería con una instrucción en terminal como esta

~~~bash
g++ -O3 orbit.cpp -o orbit
~~~

Ahora si, para ejecutarlo sería con esta instrucción en terminal

~~~bash
./orbit
~~~
"""

# ╔═╡ 991666f3-6f17-4d35-9e5e-fd90deb7c522
md"""
## **Julia** es sencillo

Ejecutar un programa en **Julia** sencillo gracias a su diseño como lenguaje interpretado: Simplemente correr en la consola de **Julia** ó, mejor aún, en un ambiente de programación interactivo como **Pluto**.
"""

# ╔═╡ 614fb46e-e569-44a7-a035-b1b62da0a086


# ╔═╡ 4abecbdf-d00c-4f32-bfb8-529e4feded2f
foldable0(md"""
!!! note "Nota"
	También es posible correr un programa en **Julia** en una terminal, ¡pero sin compilar explícitamente!, de esta manera:
	
	`julia programa.jl`
""")

# ╔═╡ 3410062f-c42d-4fbb-bfc9-a0b1b0f55e64
md"""
## **Julia** es eficiente

Por su diseño como lenguaje compilado, es eficiente.
"""

# ╔═╡ 53dbacca-7936-40a2-85fe-eaa7684c1bbb
foldable0(md"""
!!! note "Nota"
	La *compilación* es un proceso que convierte el código (texto escrito en un lenguaje de programación) en instrucciones que serán ejecutadas directamente por el procesador de la computadora (más o menos 😅), por lo que ejecutar un código compilado es "rápido".
""")

# ╔═╡ 7e652750-867d-4cf7-9dca-a72e1d70d6b9
md"""
## **Julia** es eficiente

En realidad, **Julia** utiliza la técnica **JIT** (_**J**ust **I**n **T**ime compilation_):

Cuando se ejecuta un código por primera vez, este se compila automáticamente, y las ejecuciones siguientes ¡utilizan el código compilado y "veloz"!
"""

# ╔═╡ 1a06dbf7-2c73-45e2-880c-6c53bc33015b
md"""
## **Julia** es eficiente

*Benchmarks*: [julialang.org/benchmarks](https://julialang.org/benchmarks), [github.com/JuliaLang/Microbenchmarks](https://github.com/JuliaLang/Microbenchmarks).

![Benchmarks](https://julialang.org/assets/images/benchmarks.svg)
"""

# ╔═╡ a1fbd09d-23db-4c8b-af44-43da4c3d9fa8
md"""
## **Julia** es orientado a cómputo científico

La combinación de todo lo anterior nos da un buen lenguaje para el uso en ciencia:

- La sencillez permite hacer pruebas rápidas por científicos "no expertos" en programación.


- La eficiencia permite correr en menos tiempo programas complejos.


- Existen ya muchas bibliotecas para diversos campos científicos.


- Por diseño, soporta *multiprocesos* y *cómputo distribuido*, herramientas muy utilizadas en cómputo científico (que no usaremos en este curso 😅).
"""

# ╔═╡ 6668713a-aac3-4a6b-8dac-8f46721f4123
md"""
# ¿Por qué **Julia**?

Por todo lo dicho, elegí **Julia** para este curso porque:
- Por su sencillez no será complicado para el alumnado sin experiencia en programación.


- Los programas "complejos" se podrán ejecutar "rápidamente".


- Ya existen bibliotecas que nos ayudarán a generar los diversos dibujos de objetos matemáticos que surgirán durante el curso.


- Los *notebooks* de **Pluto** son fáciles de usar y nos permiten combinar textos matemáticos con código en **Julia** a conveniencia.
"""

# ╔═╡ 5960e461-ddc4-4f5f-9c08-a4804a85bdaf
md"""
# Programación

Para finalizar esta presentación de **Julia**, definamos y revisemos algunos conceptos básicos de programación.
"""

# ╔═╡ 5073c4d6-5ece-4b19-b1d5-d794085e8a80
folddef(md"""
> "Un **algoritmo** es un conjunto finito de instrucciones que se realizan en un orden preciso con el propósito de consumar un objetivo determinado."
""")

# ╔═╡ 04f5b406-b64b-4edd-b884-26022c2de5f1
folddef(md"""
> "Un **programa** es la implementación de un *algoritmo* en algún *lenguaje de programación*".
""")

# ╔═╡ b0fbaa71-e7a4-4490-8bca-c4f14734bda8
md"""
## Lenguajes de programación

!!! note "Definición"
	> "Un **lenguaje de programación** es un conjunto de palabras y símbolos para elaborar *sentencias*, las cuáles son instrucciones que deben ser interpretadas y ejecutadas por computadoras".
"""

# ╔═╡ b51b5f6f-4fa6-4138-a79c-4280043197f8
foldable0(md"""
!!! danger "Aviso"
	Estas definiciones no son las formales de ciencias de la computación... Por eso está entrecomillado el texto.
""")

# ╔═╡ 872634c2-0d61-4c1b-bf7d-672139bbb183
md"""
## Lenguajes de programación
Las instrucciones básicas de lenguajes de programación pueden clasificarse en:
- *Expresiones* con *valores* y *operadores*.


- Creación de *variables* de *tipos* de datos bien definidos.


- Instrucciones de *control condicional*.


- Instrucciones de *control de iteraciones*.


- Agrupaciones de instrucciones (*funciones* o *procedimientos*).


- Creación y manipulación de *estructuras de datos*.

"""

# ╔═╡ 1199957a-4724-493e-b00b-58dad87dcda5
md"""
## Lenguajes de programación

Para la construcción de dichas sentencias-instrucciones, los lenguajes tienen *palabras clave*, que son los elementos fundamentales del lenguaje.

A estas palabras clave también se les llama *reservadas*, pues tienen un significado único, este no puede ser cambiado o reasignado al programar en dicho lenguaje.
"""

# ╔═╡ 8b0b3292-a3df-41ae-bd8e-31d765988b9e
foldable0(md"""
Por ejemplo, algunas de las palabras clave de **Julia** son
~~~julia
using if for function end
~~~
""")

# ╔═╡ 00259f42-2ed5-48db-a071-a91da33ea91b
md"""
# Referencias
- **Julia**, [julialang.org](https://julialang.org), 2012.
- **Julia Documentation**, [docs.julialang.org](https://docs.julialang.org), 2012.
"""

# ╔═╡ 69e4e026-90a7-4e50-a555-69f1213be694
html"""
<table><tr><td>Dev: Jeff Bezanson</td><td>Dev: Stefan Karpinski</td></tr>
<tr>
<td><img src="https://pbs.twimg.com/profile_images/3672084338/1d5efd06e841edc8a1c8432d13d31622_400x400.jpeg" height="200px"/></td>
<td><img src="https://pretalx.com/juliacon2019/speaker/9NNRE7/og-image" height="200px"/></td>
</tr>
<tr><td>Dev: Viral B. Shah</td><td>Dev: Alan Edelman</td></tr>
<tr>
<td><img src="https://upload.wikimedia.org/wikipedia/commons/5/5f/Viral_B_Shah_.jpg" height="200px"/></td>
<td><img src="https://upload.wikimedia.org/wikipedia/commons/e/e4/Alan_Edelman_1999_%28headshot%29.jpg" height="200px"/></td>
</tr>
</table>
"""

# ╔═╡ 9c7f9aec-3564-4ba7-a546-8c80a7bc8787
md"""
## Más referencias

Para aprender a programar en **Julia**, recomiendo

- Ben Lauwens y Allen Downey. *Think Julia: How to Think Like a Computer Scientist*. O’Reilly, 2019.
"""

# ╔═╡ d3750925-92ef-4c14-a67e-d241b8f43994
foldable(md"""Acá versiones en línea del libro (¡gratis! 😄)""",md"""

- En inglés: [benlauwens.github.io/ThinkJulia.jl/latest/book.html](https://benlauwens.github.io/ThinkJulia.jl/latest/book.html)
- En español: [introajulia.org](https://introajulia.org).""")

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
# ╟─228a12de-2692-11ee-3545-119c7d391320
# ╟─9f280ecf-68ef-4440-81ae-fbc9bee6d55c
# ╟─2e2ff1e3-0113-4542-8f04-0caddfc28864
# ╟─b8b02e22-c784-4f72-b3b8-b9973e904dfc
# ╟─8aa9009f-6eac-4ab3-b8d6-974954ca8e96
# ╟─7b8c0f71-a308-4238-870c-6fa8cf3ef213
# ╟─9893b3c5-20cd-4ad4-b3a2-57def287d091
# ╟─795ea569-2cbf-4d96-b1dc-05574fd35ed8
# ╟─21ef9fc0-cde9-4df6-800f-607a78c69db5
# ╟─9763584f-f36b-4f2e-a47b-47a2e9d3995a
# ╟─491b03b8-4224-41d7-8063-0ea05b560f2c
# ╟─8ca587af-9d3e-483b-806d-3894ef6ddbc5
# ╟─4e5963f4-6b15-47cd-869a-6be74e3d86a8
# ╟─ddce507a-0f5b-4307-90a5-eea3579b719f
# ╟─91f0f2c1-3ace-4750-bc88-d2228a04e0ab
# ╟─36153102-e3fa-47fe-aed4-76dc9c3b2c78
# ╟─6817b648-597b-42af-9eee-471c6c5d1fc6
# ╟─dfabebef-e7d8-455d-be37-eb6729e29d6e
# ╟─991666f3-6f17-4d35-9e5e-fd90deb7c522
# ╠═614fb46e-e569-44a7-a035-b1b62da0a086
# ╟─4abecbdf-d00c-4f32-bfb8-529e4feded2f
# ╟─3410062f-c42d-4fbb-bfc9-a0b1b0f55e64
# ╟─53dbacca-7936-40a2-85fe-eaa7684c1bbb
# ╟─7e652750-867d-4cf7-9dca-a72e1d70d6b9
# ╟─1a06dbf7-2c73-45e2-880c-6c53bc33015b
# ╟─a1fbd09d-23db-4c8b-af44-43da4c3d9fa8
# ╟─6668713a-aac3-4a6b-8dac-8f46721f4123
# ╟─5960e461-ddc4-4f5f-9c08-a4804a85bdaf
# ╟─5073c4d6-5ece-4b19-b1d5-d794085e8a80
# ╟─04f5b406-b64b-4edd-b884-26022c2de5f1
# ╟─b0fbaa71-e7a4-4490-8bca-c4f14734bda8
# ╟─b51b5f6f-4fa6-4138-a79c-4280043197f8
# ╟─872634c2-0d61-4c1b-bf7d-672139bbb183
# ╟─1199957a-4724-493e-b00b-58dad87dcda5
# ╟─8b0b3292-a3df-41ae-bd8e-31d765988b9e
# ╟─00259f42-2ed5-48db-a071-a91da33ea91b
# ╟─69e4e026-90a7-4e50-a555-69f1213be694
# ╟─9c7f9aec-3564-4ba7-a546-8c80a7bc8787
# ╟─d3750925-92ef-4c14-a67e-d241b8f43994
# ╟─4ebd45c6-26d5-433d-9bfa-d01196b9549d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
