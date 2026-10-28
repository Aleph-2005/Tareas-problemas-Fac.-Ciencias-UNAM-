### A Pluto.jl notebook ###
# v1.0.3

#> [frontmatter]
#> title = "julia: Iteración Condicional"
#> description = "Seminario de Geometría Fractal y Visualización "
#> 
#>     [[frontmatter.author]]
#>     name = "Renato Leriche Vázquez"
#>     url = "https://www.fciencias.unam.mx/directorio/45394"

using Markdown
using InteractiveUtils

# ╔═╡ 8bc7b3cc-46f9-11ef-08a2-13abafe3e370
include("src/nbutils.jl")

# ╔═╡ 8bc7aab2-46f9-11ef-1fe8-39b876026c01
md"""
# Iteración condicional
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ 8bc7ac2e-46f9-11ef-0632-f532b914ebc0
md"""
## La palabra clave `while`
La instrucción de control de iteración condicional `while` (*mientras*) nos permite repetir (iterar) un bloque de instrucciones mientras cierta condición es verdadera.

Tiene la siguiente forma:

```julia
while condición
    instrucción 1
    ...
    instrucción N
end
```
"""

# ╔═╡ 43b75eed-60dd-480e-8882-691f1a11d326
foldable0(md"Es usual decir que las instrucciones que se repiten están en un *ciclo*.")

# ╔═╡ 8bc7aca6-46f9-11ef-1b94-3d48f277c2a7
md"
## Finalizar cuando la condición es falsa
Es común que la condición dependa de una o más variables y que dentro del bloque del `while` se actualice el valor de las variables de modo que la condición será falsa en algún momento y se detendrá la iteración."

# ╔═╡ d68f9495-ab7b-4b11-bf78-95c4ec865785
foldable0(md"""
Por ejemplo, iniciando con una variable `n=0` y teniendo la condición `n<10`, si dentro del bloque ponemos la actualización `n = n + 1`, el ciclo se detendrá en $10$ iteraciones.
""")

# ╔═╡ fa7be88b-401d-4e2f-b02c-ba0110afdd22
foldable0(md"""
!!! danger "¡Importante!"
	Siempre se debe garantizar que la condición en el `while` llegue ser falsa, en caso contrario, el ¡ciclo se ejecutará "eternamente"! (En realidad, hasta que se acaben los recursos de la computadora o se interrumpa el programa...)
""")

# ╔═╡ 8bc7acf6-46f9-11ef-32fa-ed09b150f32b
md"""
## Atajos para actualización de variables
Existen notaciones compactas para ciertos tipos de actualización de variables, que combinan una operación con asignación. Por ejemplo
```julia
x = x + Δ
i = i - 1
n = n^(1/2)
```
son equivalentes, respectivamente, a
```julia
x += Δ
i -= 1
n ^= 1/2
```
"""

# ╔═╡ 8bc7ad30-46f9-11ef-0ff9-9f8d19351e22
md"## Ejemplo: Conteo"

# ╔═╡ 8bc7ae0e-46f9-11ef-1d71-9d2b22c99222
function countdown(n)
    while n > 0
        print(n, " ")
        n -= 1
    end
end

# ╔═╡ 8bc7ae40-46f9-11ef-133b-533fffa28c1c
#countdown(20)

# ╔═╡ 8bc7ae7c-46f9-11ef-215f-9fead6c2b7ff
md"""
## Ejemplo: Conjetura de Collatz

Sea $C:\mathbb{N}\rightarrow \mathbb{N}$ dada por

$$C(n)=\begin{cases}
\frac{n}{2} && \mathrm{si}\, n\, \mathrm{es\, par} \\
3n+1 && \mathrm{si}\, n\, \mathrm{es\, impar}
\end{cases}$$
"""

# ╔═╡ 4e90d7b6-eb0c-4a7b-8ec5-d117016ee5bb
foldable(md"Conjetura", md"""
Para todo $n\in\mathbb{N}-\{0\}$ existe un $N\in\mathbb{N}$ tal que $C^N(n)=1$.

($C^N$ es $C$ compuesta consigo misma $N$ veces.)
""")

# ╔═╡ 5ee9f823-94cf-483f-8b48-1ccbb6edf7b6
md"""
## Ejemplo: Conjetura de Collatz
"""

# ╔═╡ 8bc7aed6-46f9-11ef-264a-79915801714c
let
    n = 1
    while n != 1
        print(n, " ")
        if n % 2 == 0 # si n es par
            n ÷= 2
        else          # si n es impar
            n = 3n + 1
        end
    end
    print(n)
end

# ╔═╡ 8bc7afa8-46f9-11ef-09c3-97edf7d74f1b
md"""
# Palabra clave `break`
En ocasiones es necesario detener el ciclo cuando una condición adicional se cumple. Para esto existe la palabra clave `break` (romper).
```julia
while condición
    instrucción 1
    ...
    if condición adicional
        instrucción 1'
        ...
        break
    end
    ... # Si la condición adicional es verdadera, a partir de aquí
        # las instrucciones no se ejecutan y el ciclo concluye
    instrucción N
end
```
"""

# ╔═╡ 8bc7afe4-46f9-11ef-1a9d-0b2dbc1bb5bb
md"""
## Ejemplo: Método de Newton-Raphson
Dada $f:\mathbb{R}\rightarrow\mathbb{R}$ diferenciable, el método de Newton-Raphson consiste en un algoritmo iterativo para encontrar raices de $f$ a partir de un $x_0\in\mathbb{R}$ inicial.

La regla de recurrencia del algoritmo numérico es

$x_{n+1}=x_n - \frac{f(x_n)}{f'(x_n)}$
"""

# ╔═╡ 8bc7b052-46f9-11ef-165c-7fc27961e915
md"
## Teorema del método de Newton-Raphson
Se puede demostrar que si la sucesión $x_n$ converge a algún $r\in\mathbb{R}$, entonces $r$ es raiz de $f$, es decir, $f(r)=0$."

# ╔═╡ 8bc7b08e-46f9-11ef-0323-4f61140dd8fc
foldable0(md"""
Para la convergencia de $\{x_n\}$ a una raiz $r$, basta verificar cuando $f(x_n)\in(-\delta,\delta)$ con $\delta>0$ muy pequeño.

O quivalentemente, cuando $|f(x_n)|<\delta$.
""")

# ╔═╡ 6f303bd5-bdf5-45a7-b333-665050170274
md"""
## Implementación del método de Newton-Raphson
"""

# ╔═╡ 8bc7b0d6-46f9-11ef-204f-6500b49e58e6
let
    f(x) = x^2 - 4
    fder(x) = 2x
    
    xn = 100 # valor inicial x0, pensando n=0
    δ = 1e-10 
    
    while abs(f(xn)) > δ # Mientras f(xn) no esté cercano a 0
        xn = xn - f(xn)/fder(xn)
    end
    
    md"Una raíz aproximada de f: x = $xn"
end

# ╔═╡ 8bc7b110-46f9-11ef-0134-53b04f75f474
md"""
## Problemas en el método de Newton-Raphson
En este método hay dos problemas:

1. Que la sucesión $x_n$ no converja dada la condición inicial $x_0$.


2. Que $f'(x_n)=0$ para algún $n$.
"""

# ╔═╡ 8bc7b136-46f9-11ef-1bba-dd938a96b48f
foldable(md"Soluciones a los problemas", md"""
Así, se requieren condiciones adicionales para terminar el ciclo:

1. Cuando el número de iteraciones alcanza un número máximo de iteraciones dado.


2. Cuando $|f'(x_n)|<\delta$.""")

# ╔═╡ 33a0baad-4ccd-439b-af69-bae467629830
md"""
## Método de Newton-Raphson con implementación mejorada
"""

# ╔═╡ 8bc7b19c-46f9-11ef-112a-134bc4ca02cf
let
    f(x) = x^2 - 4
    fder(x) = 2x

    n, maxiterations = 10, 100 # índice de iteración y máximo de iteraciones
    xn, δ = 10, 1e-10 # valor inicial y delta
    
    while abs(f(xn)) > δ # Mientras f(xn) no esté cercano a 0
        if n >= maxiterations || # Si se alcanzó el máximo de iteraciones, ó
			abs(fder(xn)) < δ # Si f'(x) es cercano a 0
            println("No se se pudo aproximar a una raiz.")
            break
        end
        xn = xn - f(xn)/fder(xn)
        n += 1
    end
    
    md"Una raiz aproximada de f: x = $xn."
end

# ╔═╡ 8bc7b1c4-46f9-11ef-3444-7171ad97a914
md"## Ejemplo: Determinar si un número entero (no muy grande) es primo"

# ╔═╡ 8bc7b21e-46f9-11ef-1104-21bcc399a4a4
let
    N = 103232430071 # ¿103,232,430,071 es primo?
    divider = 2 # Presunto divisor... Iniciamos con el 2
    is_prime = true # Supongamos que es primo
    
    while divider^2 <= N # Mientras el divisor al cuadrado no sea N o mayor
        if N % divider == 0 # Si el presunto divisor divide a N,
            is_prime = false # Entonces no es primo
            break
        end
        divider += 1 # Pasemos al siguiente candidato a divisor...
    end
    
    #=if is_prime
        md"El número **$N** es primo"
    else
        md"El número **$N** no es primo, lo divide $divider"
    end=#
end

# ╔═╡ 7b4b4080-d838-4f89-9ede-2f2a3d592b8f
md"""
# Palabra clave `continue`
"""

# ╔═╡ 8bc7b2d0-46f9-11ef-2fcd-5f9c0e32f6f7
md"""
Otra instrucción útil es `continue` (*continuar*), que nos permite "saltar" instrucciones dentro de un ciclo cuando se cumple cierta condición adicional, pero el ciclo puede continuar.
```julia
while condición
    instrucción 1
    ...
    if condición adicional
        instrucción 1'
        ...
        continue
    end
    ... # Si la condición adicional es verdadera
    # Las instrucciones a partir de aquí se saltan y continua desde arriba
    instrucción N
end
```
"""

# ╔═╡ 8bc7b2fa-46f9-11ef-132a-8f8ee94bb87b
md"## Ejemplo: Conteo de eventos aleatorios"

# ╔═╡ 8bc7b35e-46f9-11ef-0d3c-3dab39df78bb
let
    a,b,c = 0,0,0
    
    while a+b+c < 100
        x = rand()
        
        if x < 0.5
            a += 1
            continue
        end
        
        if x < 0.8
            b += 1
            continue
        end
    
        c += 1
    end
    
    "a = $a, b = $b, c = $c, a+b+c = $(a+b+c)"
end

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
# ╟─8bc7aab2-46f9-11ef-1fe8-39b876026c01
# ╟─8bc7ac2e-46f9-11ef-0632-f532b914ebc0
# ╟─43b75eed-60dd-480e-8882-691f1a11d326
# ╟─8bc7aca6-46f9-11ef-1b94-3d48f277c2a7
# ╟─d68f9495-ab7b-4b11-bf78-95c4ec865785
# ╟─fa7be88b-401d-4e2f-b02c-ba0110afdd22
# ╟─8bc7acf6-46f9-11ef-32fa-ed09b150f32b
# ╟─8bc7ad30-46f9-11ef-0ff9-9f8d19351e22
# ╠═8bc7ae0e-46f9-11ef-1d71-9d2b22c99222
# ╠═8bc7ae40-46f9-11ef-133b-533fffa28c1c
# ╟─8bc7ae7c-46f9-11ef-215f-9fead6c2b7ff
# ╟─4e90d7b6-eb0c-4a7b-8ec5-d117016ee5bb
# ╟─5ee9f823-94cf-483f-8b48-1ccbb6edf7b6
# ╠═8bc7aed6-46f9-11ef-264a-79915801714c
# ╟─8bc7afa8-46f9-11ef-09c3-97edf7d74f1b
# ╟─8bc7afe4-46f9-11ef-1a9d-0b2dbc1bb5bb
# ╟─8bc7b052-46f9-11ef-165c-7fc27961e915
# ╟─8bc7b08e-46f9-11ef-0323-4f61140dd8fc
# ╟─6f303bd5-bdf5-45a7-b333-665050170274
# ╠═8bc7b0d6-46f9-11ef-204f-6500b49e58e6
# ╟─8bc7b110-46f9-11ef-0134-53b04f75f474
# ╟─8bc7b136-46f9-11ef-1bba-dd938a96b48f
# ╟─33a0baad-4ccd-439b-af69-bae467629830
# ╠═8bc7b19c-46f9-11ef-112a-134bc4ca02cf
# ╟─8bc7b1c4-46f9-11ef-3444-7171ad97a914
# ╠═8bc7b21e-46f9-11ef-1104-21bcc399a4a4
# ╟─7b4b4080-d838-4f89-9ede-2f2a3d592b8f
# ╟─8bc7b2d0-46f9-11ef-2fcd-5f9c0e32f6f7
# ╟─8bc7b2fa-46f9-11ef-132a-8f8ee94bb87b
# ╠═8bc7b35e-46f9-11ef-0d3c-3dab39df78bb
# ╟─8bc7b3cc-46f9-11ef-08a2-13abafe3e370
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
