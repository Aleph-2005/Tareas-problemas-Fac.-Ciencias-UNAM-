### A Pluto.jl notebook ###
# v0.20.28

using Markdown
using InteractiveUtils

# ╔═╡ 818bf780-367b-11ef-2df1-b56b1b7273b2
include("src/nbutils.jl")

# ╔═╡ 818bc238-367b-11ef-3701-c79ba6efa88b
md"""
# Tipos Básicos
### Programación con
![JuliaLogo](https://julialang.org/assets/infra/logo.svg)
"""

# ╔═╡ 818bcdbe-367b-11ef-3753-25bb9aeff6b8
md"""
# Tipos de datos

!!! danger "¡Advertencia!"
	Haremos una revisión del tema (¡💻 muy técnica!) de la representación interna de los tipos de datos en **Julia** (y en general en cómputo).

Sabemos que los "espacios de memoria" en una computadora están formados por *bits* ($0$ ó $1$), que se agrupan en bloques de *bytes* ($8$ bits).

Así, todo tipo de dato debe tener un tamaño específico en bytes.
"""

# ╔═╡ 818bcf12-367b-11ef-25b2-8bf1b84b7a1b
md"""
# Tipos numéricos enteros
- Su nombre contiene `Int` (de *integer*).
- Puede tener `U` si es un tipo entero sin signo (*unsigned*).
- Debe terminar con el tamaño en bits, que puede ser $8$, $16$, $32$, $64$ o $128$ (potencias de $2$).
"""

# ╔═╡ 818bcf80-367b-11ef-3280-c19636c2e4f5
html"""
<table><tr><th style="text-align: left">Type</th><th style="text-align: left">Signed?</th><th style="text-align: left">Number of bits</th><th style="text-align: left">Smallest value</th><th style="text-align: left">Largest value</th></tr><tr><td style="text-align: left"><a href="../../base/numbers/#Core.Int8"><code>Int8</code></a></td><td style="text-align: left">✓</td><td style="text-align: left">8</td><td style="text-align: left">-2^7</td><td style="text-align: left">2^7 - 1</td></tr><tr><td style="text-align: left"><a href="../../base/numbers/#Core.UInt8"><code>UInt8</code></a></td><td style="text-align: left"></td><td style="text-align: left">8</td><td style="text-align: left">0</td><td style="text-align: left">2^8 - 1</td></tr><tr><td style="text-align: left"><a href="../../base/numbers/#Core.Int16"><code>Int16</code></a></td><td style="text-align: left">✓</td><td style="text-align: left">16</td><td style="text-align: left">-2^15</td><td style="text-align: left">2^15 - 1</td></tr><tr><td style="text-align: left"><a href="../../base/numbers/#Core.UInt16"><code>UInt16</code></a></td><td style="text-align: left"></td><td style="text-align: left">16</td><td style="text-align: left">0</td><td style="text-align: left">2^16 - 1</td></tr><tr><td style="text-align: left"><a href="../../base/numbers/#Core.Int32"><code>Int32</code></a></td><td style="text-align: left">✓</td><td style="text-align: left">32</td><td style="text-align: left">-2^31</td><td style="text-align: left">2^31 - 1</td></tr><tr><td style="text-align: left"><a href="../../base/numbers/#Core.UInt32"><code>UInt32</code></a></td><td style="text-align: left"></td><td style="text-align: left">32</td><td style="text-align: left">0</td><td style="text-align: left">2^32 - 1</td></tr><tr><td style="text-align: left"><a href="../../base/numbers/#Core.Int64"><code>Int64</code></a></td><td style="text-align: left">✓</td><td style="text-align: left">64</td><td style="text-align: left">-2^63</td><td style="text-align: left">2^63 - 1</td></tr><tr><td style="text-align: left"><a href="../../base/numbers/#Core.UInt64"><code>UInt64</code></a></td><td style="text-align: left"></td><td style="text-align: left">64</td><td style="text-align: left">0</td><td style="text-align: left">2^64 - 1</td></tr><tr><td style="text-align: left"><a href="../../base/numbers/#Core.Int128"><code>Int128</code></a></td><td style="text-align: left">✓</td><td style="text-align: left">128</td><td style="text-align: left">-2^127</td><td style="text-align: left">2^127 - 1</td></tr><tr><td style="text-align: left"><a href="../../base/numbers/#Core.UInt128"><code>UInt128</code></a></td><td style="text-align: left"></td><td style="text-align: left">128</td><td style="text-align: left">0</td><td style="text-align: left">2^128 - 1</td></tr><tr><td style="text-align: left"><a href="../../base/numbers/#Core.Bool"><code>Bool</code></a></td><td style="text-align: left">N/A</td><td style="text-align: left">8</td><td style="text-align: left"><code>false</code> (0)</td><td style="text-align: left"><code>true</code> (1)</td></tr></table>
"""

# ╔═╡ 818bcfe4-367b-11ef-20f0-930aecac86b1
md"""
## Enteros "por defecto"
Por defecto, los valores enteros son del tipo `Int64`.

---

La instrucción `typeof` regresa el tipo de dato de un valor (o de una variable).
"""

# ╔═╡ 818bd232-367b-11ef-3e7d-dfb883a750bd
typeof(100)

# ╔═╡ 8b3e1017-4d70-4bc1-966a-4f1dcf34fd8a
minus100 = -100

# ╔═╡ e1db8914-3f0f-4c35-845c-d3b243613b38
typeof(minus100)

# ╔═╡ 818bd2b4-367b-11ef-2dd4-7b1a80e473d3
md"""
## Enteros en *bits*
La instrucción `bitstring` regresa la representación en *bits* de un número, es decir, el número en base $2$ completando el tamaño con ceros a la izquierda.

---
"""

# ╔═╡ 818bd2e6-367b-11ef-15e9-8d90ba1f7ef1
bitstring(100)

# ╔═╡ 818bd480-367b-11ef-257d-55967a99cc39
md"""
Claro, pues

$100$

$= 1\times2^6 + 1\times2^5 + 0\times2^4 + 0\times2^3 + 1\times2^2 + 0\times2^1 + 0\times2^0$

$= 64+32+4$

---
"""

# ╔═╡ 818bda5c-367b-11ef-2f8d-ddc405155b13
#bitstring(minus100)

# ╔═╡ 589dc861-e57a-441d-b16b-dafee83d2495
md"""
## Enteros en *bits*
Por supuesto, internamente la computadora realiza la suma (u operación en general) binaria correspondiente.

---

Por ejemplo, $100+(-100)=0$.
"""

# ╔═╡ 73899a10-6c0e-4a8b-b6f2-b0ad7288573b
bitstring(100)

# ╔═╡ 9f0853c7-1051-4da0-8769-55a15e12aaf0
bitstring(minus100)

# ╔═╡ 818bda98-367b-11ef-245b-39a805454a49
bitstring(100 + minus100)

# ╔═╡ 818bdac0-367b-11ef-025c-b17bde558177
md"""
## Enteros de otro tamaño en *bits*
Se pueden especificar otros tipos enteros con signo de diferente tamaño en memoria con las instrucciones `Int`$N$ (claro, con $N=8,16,32,64,128$).
"""

# ╔═╡ 818bdb2e-367b-11ef-2012-0f8277701ee3
i8, i16, i128 = Int8(100), Int16(100), Int128(100)

# ╔═╡ dd071c65-33e2-4916-b311-a1439bd116c0
typeof(i8), typeof(i16), typeof(i128)

# ╔═╡ 9d83737a-9f31-4730-af98-5425e2ee4c98
bitstring(i8)

# ╔═╡ dad75a27-dee8-41ec-ab75-f4e053346587
bitstring(i16)

# ╔═╡ 1efc3967-4066-4d28-bbe7-95423a0d60c8
bitstring(i128)

# ╔═╡ 4f86f32d-356e-4ff7-80b1-e152937c49e0
md"""
## Enteros sin signo
Se pueden especificar otros tipos enteros sin signo de diferente tamaño en memoria con las instrucciones 

`UInt`$N$

(claro, con $N=8,16,32,64,128$).
"""

# ╔═╡ 272aa69e-9793-45af-8441-3c4308a995e8
ui8, ui16, ui128 = UInt8(100), UInt16(100), UInt32(100)

# ╔═╡ c017d203-f502-4926-af44-8c632343ff21
foldable0(md"""
Los enteros sin signo se representan en base $16$, que en **Julia** se escriben `0x`$a_N \dots a_1 a_0=\sum_{i=0}^N a_i 16^i$, donde $N=T/4$ y $T$ es el tamaño en *bits*. Por ejemplo, con $16$ *bits*:

$\mathtt{0x0064}= 0\times 16^3 + 0\times 16^2 + 6\times 16^1 + 4\times 16^0$

$=0+0+96+4=100$
""")

# ╔═╡ 818bdbe4-367b-11ef-21ee-ff297b9efce8
md"""
## Enteros sin signo

En el caso de números enteros sin signo en base $16$, los demás "dígitos" de la base son `a`$=10$, `b`$=11$, `c`$=12$, `d`$=13$, `e`$=14$ y `f`$=15$.

---
"""

# ╔═╡ 818bde80-367b-11ef-3180-8b35d6c2b4d3
0x0a3d

# ╔═╡ a2fd74d0-bf83-4b71-a244-9afc95d03c55
md"""
Así

$\mathtt{0x0a3d}=0\times 16^3 + 10\times 16^2 + 3\times 16^1 + 13\times 16^0$

$=0 + 2560 + 48 + 13 = 2621$
"""

# ╔═╡ 17b93b72-d61c-4dfa-ae6b-cef349b27cc3
10*16^2 + 3*16 + 13

# ╔═╡ 5b1bf1cc-57fc-421d-abc4-27e5a036f623
md"""
## Conversión entre enteros
También se pueden convertir entre enteros con y sin signo de distintos tamaños con las mismas instrucciones para especificar su tipo (si el signo y/o el tamaño en *bits* lo permite).

---
"""

# ╔═╡ 6d569afa-c52e-4bb2-a9ec-bac35cc88bc9
#Int64(0x0a3d)

# ╔═╡ a6fe0669-fc70-4139-8271-93624de12c4f
#UInt16(i8)

# ╔═╡ 2caa58d2-b399-4c05-9f05-bbd9f63f7943
#Int8(i128)

# ╔═╡ 06fa15d8-dfbf-431b-9158-ef6da26a467d
md"""
## Conversión entre enteros
"""

# ╔═╡ 138dcbc5-2988-4b4d-a6a7-b763efd7912c
#UInt128(minus100)

# ╔═╡ 5d72cb3f-a9e4-4f99-9ca2-7759a0cce92e
foldable0(md"""
Explicación: El entero $-100$ de 64 bits tiene signo, por lo que no se puede convertir a uno sin signo, aunque tenga más espacio de memoria (128 en el ejemplo).
""")

# ╔═╡ 323d50b1-9433-451a-af60-b92e99728ea6
md"""
## Conversión entre enteros
"""

# ╔═╡ 91bacdac-143f-4268-bcd1-080377870994
#Int8(0xa0)

# ╔═╡ 51cb6656-718b-486a-9c98-74c2ab09530f
foldable0(md"""
Explicación: El entero sin signo `0xa0`$=10\times 16^1+0\times 10^0=160$ no es representable como entero con signo de 8 bits, pues máximo valor posible es $2^7-1=127$.
""")

# ╔═╡ 818bdec6-367b-11ef-340a-3ff65551dde5
md"""
## Conversión entre enteros
Las expresiones entre valores de diferentes tipo se convierten al que ocupe mayor memoria y con su respectivo signo.
"""

# ╔═╡ 818bdf2a-367b-11ef-2f0c-4fdca9e0bf6f
result1 = i8 + ui16

# ╔═╡ 818bdf5c-367b-11ef-21b0-ab81b546c730
typeof(result1)

# ╔═╡ a2804c68-10b9-4ebe-a2f2-f02b078428c3
result2 = i8 + ui16 + minus100

# ╔═╡ da47bdfd-28b2-4d2c-804c-982dfe316a6b
typeof(result2)

# ╔═╡ 818bdfde-367b-11ef-3bcf-61eb5be3190e
md"
## Tamaños mínimos y máximos
Los mínimos y máximos de cada tipo se pueden obtener con las instrucciones `typemin` y `typemax`.

---
"

# ╔═╡ 818be006-367b-11ef-0bcf-e78367406b49
typemin(i8), typemax(i8)

# ╔═╡ 818be04e-367b-11ef-37a2-992ef43b8305
md"
---

Las funciones `typemin` y `typemax` también pueden usarse indicando el tipo.

---
"

# ╔═╡ 818be074-367b-11ef-180f-418f2eeacfa6
typemin(UInt16), typemax(UInt16)

# ╔═╡ 818be09c-367b-11ef-32a6-1512ecb0f920
md"
## Booleanos
El tipo booleano se llama `Bool` en **Julia**.

---
"

# ╔═╡ 818be0ce-367b-11ef-237b-bba2d6b680f1
ok1, ok2, ok3 = true, Bool(1), Bool(0)

# ╔═╡ 818be132-367b-11ef-3058-97a1f0d931ec
bitstring(ok1), bitstring(false)

# ╔═╡ 818be196-367b-11ef-0c88-ffc5efd134a7
md"""
# Más tipos de números
De los enteros nos vamos a los reales...

¿Y los racionales?
"""

# ╔═╡ afb721d1-6292-4dcc-940d-187511567610
foldable0(md"""
!!! danger "¡Atención"
	Los racionales y complejos (en **Julia**) no son tipos básicos. Son llamados *tipos compuestos*, pues están formados de dos o más tipos básicos (en el caso de racionales y complejos sólo dos).
""")

# ╔═╡ 818be236-367b-11ef-01b1-b5cc75454648
md"
## Más tipos de números

Los racionales se pueden crear con cualquier tipo de entero.

Los complejos con cualquier tipos de entero, racional o real...

---
"

# ╔═╡ 818be27c-367b-11ef-29ac-2b593ecf59eb
Int8(1)//Int8(2), UInt32(1)//UInt16(3)

# ╔═╡ 1c9ca21c-23a9-40ef-a888-0736e5e96169
UInt8(2) + UInt16(3)*im, 1//2 + (1//3)im, 0.3-0.8im 

# ╔═╡ 818be2d6-367b-11ef-1933-a76911519660
md"""
# Tipos numéricos de punto flotante

Los número reales se representan con tipos de datos llamados *de punto flotante* (*floating point numbers*), por lo que su nombre incluye `Float`, y su tamaño en *bits* puede ser $16$, $32$ ó $64$.
"""

# ╔═╡ 818be344-367b-11ef-3cb4-b3e25720a4d3
html"""<table><tr><th style="text-align: left">Type</th><th style="text-align: left">Precision</th><th style="text-align: left">Number of bits</th></tr><tr><td style="text-align: left"><a href="../../base/numbers/#Core.Float16"><code>Float16</code></a></td><td style="text-align: left"><a href="https://en.wikipedia.org/wiki/Half-precision_floating-point_format">half</a></td><td style="text-align: left">16</td></tr><tr><td style="text-align: left"><a href="../../base/numbers/#Core.Float32"><code>Float32</code></a></td><td style="text-align: left"><a href="https://en.wikipedia.org/wiki/Single_precision_floating-point_format">single</a></td><td style="text-align: left">32</td></tr><tr><td style="text-align: left"><a href="../../base/numbers/#Core.Float64"><code>Float64</code></a></td><td style="text-align: left"><a href="https://en.wikipedia.org/wiki/Double_precision_floating-point_format">double</a></td><td style="text-align: left">64</td></tr></table>"""

# ╔═╡ ed576e8f-4dfe-4389-8e42-d057310ba68e
md"""
Por comodidad y tradición, a las representaciones computacionales de este tipo de los números reales se les llama *flotantes*. 
"""

# ╔═╡ 8be38416-8a67-4581-bbb7-5949887ad6b5
md"""
## ¿Flotantes? ¿Precisión?
"Punto flotante" viene de que el punto decimal "flota" (léase "se mueve") de posición de acuerdo al número particular... Esto tiene que ver con la representación interna en *bits* del número con punto decimal. Estoy es muy técnico para tratarlo en detalle aquí...

Y claro, entre más tamaño en *bits*, más precisión tendrá la representación del número correspondiente.
"""

# ╔═╡ bffb8191-dc83-4266-a9d7-a29a8b2e6001
md"""
## Flotantes de distinto tamaño
Por defecto los flotantes son de tipo `Float64`.

---
"""

# ╔═╡ 818be36c-367b-11ef-1412-e92b7b10c55c
typeof(1/3), typeof(2.3e-3), typeof(Float16(1/3))

# ╔═╡ 818be48e-367b-11ef-2ba8-29ff2e6404bb
#bitstring(1/3)

# ╔═╡ 3ba1d082-0793-444a-9b69-a8da30709168
#bitstring(Float16(1/3))

# ╔═╡ 27467191-f3fb-45c1-bc9d-06b0dc441de9
md"""
## Tamaños mínimos y máximos

Por supuesto, las instrucciones `typemin` y `typemax` también sirven para conocer los valores numéricos mínimos y máximos de los tipos de flotantes.
"""

# ╔═╡ 818be3d0-367b-11ef-2fff-fbda8ec23618
#typemin(Float16), typemax(Float16), typemin(1.0), typemax(1.0)

# ╔═╡ 818be402-367b-11ef-0d32-2fceb3838699
md"
## ¡Infinitos!
Las constantes `Inf` y `-Inf` son de tipo numérico de punto flotante y cumplen que

$\mathtt{-Inf} \leq \mathtt{x} \leq \mathtt{Inf}$

para toda representación en punto flotante $\mathtt{x}$ de $x\in \mathbb{R}$."

# ╔═╡ 818be448-367b-11ef-39a6-f77021a8a12c
typeof(Inf), typeof(-Inf)

# ╔═╡ b24a7427-ba3a-44f3-99bb-c8e8087065e2
#bitstring(Inf)

# ╔═╡ fcd49fca-3823-4c8f-a5c8-c82866451a7e
#bitstring(-Inf)

# ╔═╡ 818be4d4-367b-11ef-3029-977d8d483607
md"""
## `Inf` e $\infty$
Pueden tomarse `Inf` y `-Inf` se pueden tomar como representaciones en la computadora de $\infty$ y $-\infty$, pues satisfacen la "aritmética del infinito".

---
"""

# ╔═╡ 818be4fc-367b-11ef-1f2d-1f20862c3411
Inf + 1000.0, Inf - 1000.0, -Inf + 1000.0, -Inf - 1000.0

# ╔═╡ 88f019b3-bd2e-4049-8b49-ef6c429d8818
1000.0*Inf, Inf/1000.0, -1000.0*Inf, -Inf/1000.0

# ╔═╡ 374067ba-2396-40ae-8d73-5cb4bc0384ae
Inf + Inf, Inf*Inf, Inf*(-Inf), (-Inf)*Inf

# ╔═╡ 818be52e-367b-11ef-1c70-455fe742d311
1/0, -2/0, 0/Inf, 1/Inf

# ╔═╡ 818be600-367b-11ef-0377-09d55f0d0333
md"
## $\infty$
El símbolo $\infty$ (`\infty`) no es `Inf`."

# ╔═╡ 818be628-367b-11ef-0392-1356fccedc6e
#∞

# ╔═╡ 818be664-367b-11ef-07a6-91ba9124da3d
md"Sin embargo uno mismo lo puede asignar..."

# ╔═╡ 818be68c-367b-11ef-38eb-c7056d119858
#∞ = Inf

# ╔═╡ 818be556-367b-11ef-2087-231d3113c587
md"
## Instrucción `isinf`
La instrucción `isinf` nos permite saber si el resultado de alguna operación o el contenido en una variable es `Inf`.

---
"

# ╔═╡ 12171080-9fb8-4b80-ae02-6da5dd332848
#isinf( (2+2*5)/(4-6*7)+32 )

# ╔═╡ 818be5ce-367b-11ef-27f1-d342dae188a6
#isinf( -(4*2 - 5/6)/((3^2 + 1)/2 - 5) )

# ╔═╡ 818be6d2-367b-11ef-332d-c1aed6357633
md"""
# El "no número"
Para operaciones numéricas cuyo resultado no está definido, existe la constante de tipo numérico de punto flotante `NaN` (_**N**ot **a** **N**umber_).

---
"""

# ╔═╡ 818be6fa-367b-11ef-117b-07ed3de1ed42
typeof(NaN)

# ╔═╡ 80ab687b-d919-4969-933c-7ff82c3b0e7c
bitstring(NaN)

# ╔═╡ 818be772-367b-11ef-3272-bf21201d8dfb
md"## Operaciones no definidas"

# ╔═╡ 818be7a4-367b-11ef-01b0-ff5acaa3985e
0/0, Inf/Inf, 0*Inf

# ╔═╡ 5e7fbb6a-4a26-4827-9153-50eca98d692a
Inf - Inf, -Inf + Inf

# ╔═╡ c8f382b4-f6d9-43d4-9a10-22e02f86efb5
md"""
---

Por supuesto, las operaciones con `NaN` dan como resultado un `NaN`.

---
"""

# ╔═╡ 818be7fe-367b-11ef-2171-ed07c5f04472
NaN + 1

# ╔═╡ 2b48a398-a23d-41d4-b119-10ba93014ff5
2*NaN

# ╔═╡ 818be830-367b-11ef-15ba-abb55e770f18
md"
## Instrucción `isnan`
También tenemos la instrucción `isnan` para saber si un número es `NaN`.

---

"

# ╔═╡ 818be84e-367b-11ef-0ff6-6b36949ee853
#isnan( (2^3-8)*((3^2 -2)/(5^2+3-4*7)) )

# ╔═╡ 818be89e-367b-11ef-265b-99d7a6799b1b
md"""
# El épsilon
Dado que solo hay un número finito de representaciones de números de punto flotante, la "recta real" de la computadora está llena de huecos.

Se puede calcular el tamaño de los huecos, o lo que es lo mismo, la distancia entre dos representaciones consecutivas.

Este número es llamado el (o más bien los) *épsilon de la máquina*.
"""

# ╔═╡ 818bea38-367b-11ef-2327-c363ed91158e
md"""
## Instrucción `eps`
Para obtener la distancia entre $1.0$ y la siguiente representación más cercana se utiliza la instrucción `eps`.

Por defecto se calcula con tipos `Float64`, pero pueden indicarse los otros tipos de punto flotante.

---
"""

# ╔═╡ 818bea74-367b-11ef-28b4-6dff95be52e4
eps(), eps(Float32), eps(Float16)

# ╔═╡ 81a4b979-936e-483d-bc37-3e26e8ddef70
foldable0(md"""
Para los números en notación científica de tipo `Float32` se utiliza `f` en lugar de `e`.
""")

# ╔═╡ 818beaa6-367b-11ef-3418-2b5ceed7d433
md"""
## Observación
!!! danger "¡Atención!"
	Por todo lo discutido anteriormente ¡en la computadora
	
	$\frac{2+\varepsilon}{2} > 1$

	es `falso` si $\varepsilon=$ `eps()`, aun cuando `eps()` $>0$!
"""

# ╔═╡ 818beb2a-367b-11ef-3f10-57aa5e38b2ef
#(2.0 + eps())/2.0

# ╔═╡ 818beb6e-367b-11ef-1519-1f958385b35d
md"""
## Más épsilons
También se puede obtener el *epsilon* para cualquier número.

Es decir si `y=eps(x)` entonces `y` contiene el valor de la distancia al siguiente número que se puede representar en la computadora después de `x`.

---
"""

# ╔═╡ 818bebaa-367b-11ef-00d8-bd75bc0ce653
eps(1.0), eps(3.1415926), eps(100.0), eps(Float32(100.0))

# ╔═╡ 818bebd2-367b-11ef-1a20-ef5b926d4593
md"""
# Jerarquía de tipos numéricos
![h](https://upload.wikimedia.org/wikipedia/commons/d/d9/Julia-number-type-hierarchy.svg)
[Link a la imagen...](https://upload.wikimedia.org/wikipedia/commons/d/d9/Julia-number-type-hierarchy.svg)
"""

# ╔═╡ 818bec18-367b-11ef-3104-a71ec12c5ec0
md"""
## Jerarquía "computacional"
Esta jerarquía "computacional" tiene mucha utilidad en programación (lo veremos mucho más adelante), además de otorgar cierta claridad conceptual de relaciones "es un" entre números.

Se pueden conocer los subtipos y supertipos (de acuerdo con la jerarquía) de todo tipo con las instrucciones `subtypes` y `supertype`
"""

# ╔═╡ 818becae-367b-11ef-22c3-d72d6bcfe356
supertype(Real)

# ╔═╡ 818bec92-367b-11ef-1d2a-1df3a0d42c83
subtypes(Real)

# ╔═╡ e68eea28-2d2d-48cc-9365-467e8c301c2d
md"""
## El operador "es un"
También es posible conocer si un valor o variable es de un tipo dado con el operador `isa` ("es un"), cuyo formato es:
```julia
valor isa Tipo
```
---
"""

# ╔═╡ fc0ef4e1-3c95-47cd-80f1-89a36e6ae30f
0.4 isa Float64

# ╔═╡ d5a62a3a-b4cd-4a8f-8905-e66c9bca5402
1 isa Float64

# ╔═╡ 248068f5-0df7-4e75-9860-0b8b06a0b233
1 isa Real

# ╔═╡ c980187c-1b0e-4769-9990-321866bcb018
c = 3+4im

# ╔═╡ 539fc2f2-5cab-499c-a4dc-32209f1ba4f6
c isa Number

# ╔═╡ 818becd6-367b-11ef-2409-433c1dfcb010
md"
## Los irracionales
Los número π y ℯ son de tipo `Irrational`, que es un subtipo del supertipo `Real`. El tipo `Irracional` no es básico.

---
"

# ╔═╡ 818bed3a-367b-11ef-29c7-cde98e2a1e10
typeof(pi), typeof(ℯ)

# ╔═╡ 17f13411-b556-4a1a-bb8e-0fd25a88ef5e
pi

# ╔═╡ 818bed62-367b-11ef-2686-2bbb46507419
md"""
---
Los irracionales (tipo `Irrational`) representan valores "exactos" de números irracionales, que se convierten a un tipo numérico de punto flotante de acuerdo con el contexto.
"""

# ╔═╡ 818bed9e-367b-11ef-1101-a110253f4a94
typeof(2π), typeof(π/Float16(2)), Float32(π), π

# ╔═╡ 4bdf9d10-8642-421e-9e5b-3ef6a897506e
md"""
# Tipo símbolo
Los *símbolos* son del tipo `Symbol` y pueden interpretarse como "etiquetas". Sus valores siempre empiezan con `:`. No es un tipo básico, pero lo menciono pues aparecen como parte de `Irrational`.

---
"""

# ╔═╡ 8227a8e4-5a0b-4655-becd-004c35719d1c
sym_A = :A

# ╔═╡ da185466-9a03-41f7-a4aa-dede0ddd8095
sym_c = :continuous

# ╔═╡ 1a1a93fb-f61d-4f4e-92eb-227ed3305c48
sym_alpha = :α

# ╔═╡ c0f98728-af5d-4b3f-bbfb-d56f448f3d33
typeof(sym_c)

# ╔═╡ 818bef24-367b-11ef-1099-331d9440d4e4
md"""
# Tipo caracter

Un caracter es el elemento básico para construir textos. El nombre del tipo es `Char` y es básico. Los valores de tipo caracter se indican con comillas simples `' '`.

---
"""

# ╔═╡ 818bef4c-367b-11ef-261e-c3fbbf3192cc
x = 'x'

# ╔═╡ 818bef7e-367b-11ef-1af1-efedfde80475
typeof(x)

# ╔═╡ 29599b02-55fb-47ad-8234-6a07cc8e5532
bitstring(x)

# ╔═╡ 818befa6-367b-11ef-1dbf-97e3965d7b01
md"
## Caracteres
Análogamente como los tipos vistos anteriormente, se pueden crear valores del tipo caracter usando el nombre del tipo (`Char`)."

# ╔═╡ 818bf026-367b-11ef-1d5f-8b1fdcd735d0
y, z, p, cat = Char('y'), Char(122), 'π', '🐱'

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
# ╟─818bc238-367b-11ef-3701-c79ba6efa88b
# ╟─818bcdbe-367b-11ef-3753-25bb9aeff6b8
# ╟─818bcf12-367b-11ef-25b2-8bf1b84b7a1b
# ╟─818bcf80-367b-11ef-3280-c19636c2e4f5
# ╟─818bcfe4-367b-11ef-20f0-930aecac86b1
# ╠═818bd232-367b-11ef-3e7d-dfb883a750bd
# ╠═8b3e1017-4d70-4bc1-966a-4f1dcf34fd8a
# ╠═e1db8914-3f0f-4c35-845c-d3b243613b38
# ╟─818bd2b4-367b-11ef-2dd4-7b1a80e473d3
# ╠═818bd2e6-367b-11ef-15e9-8d90ba1f7ef1
# ╟─818bd480-367b-11ef-257d-55967a99cc39
# ╠═818bda5c-367b-11ef-2f8d-ddc405155b13
# ╟─589dc861-e57a-441d-b16b-dafee83d2495
# ╠═73899a10-6c0e-4a8b-b6f2-b0ad7288573b
# ╠═9f0853c7-1051-4da0-8769-55a15e12aaf0
# ╠═818bda98-367b-11ef-245b-39a805454a49
# ╟─818bdac0-367b-11ef-025c-b17bde558177
# ╠═818bdb2e-367b-11ef-2012-0f8277701ee3
# ╠═dd071c65-33e2-4916-b311-a1439bd116c0
# ╠═9d83737a-9f31-4730-af98-5425e2ee4c98
# ╠═dad75a27-dee8-41ec-ab75-f4e053346587
# ╠═1efc3967-4066-4d28-bbe7-95423a0d60c8
# ╟─4f86f32d-356e-4ff7-80b1-e152937c49e0
# ╠═272aa69e-9793-45af-8441-3c4308a995e8
# ╟─c017d203-f502-4926-af44-8c632343ff21
# ╟─818bdbe4-367b-11ef-21ee-ff297b9efce8
# ╠═818bde80-367b-11ef-3180-8b35d6c2b4d3
# ╟─a2fd74d0-bf83-4b71-a244-9afc95d03c55
# ╠═17b93b72-d61c-4dfa-ae6b-cef349b27cc3
# ╟─5b1bf1cc-57fc-421d-abc4-27e5a036f623
# ╠═6d569afa-c52e-4bb2-a9ec-bac35cc88bc9
# ╠═a6fe0669-fc70-4139-8271-93624de12c4f
# ╠═2caa58d2-b399-4c05-9f05-bbd9f63f7943
# ╟─06fa15d8-dfbf-431b-9158-ef6da26a467d
# ╠═138dcbc5-2988-4b4d-a6a7-b763efd7912c
# ╟─5d72cb3f-a9e4-4f99-9ca2-7759a0cce92e
# ╟─323d50b1-9433-451a-af60-b92e99728ea6
# ╠═91bacdac-143f-4268-bcd1-080377870994
# ╟─51cb6656-718b-486a-9c98-74c2ab09530f
# ╟─818bdec6-367b-11ef-340a-3ff65551dde5
# ╠═818bdf2a-367b-11ef-2f0c-4fdca9e0bf6f
# ╠═818bdf5c-367b-11ef-21b0-ab81b546c730
# ╠═a2804c68-10b9-4ebe-a2f2-f02b078428c3
# ╠═da47bdfd-28b2-4d2c-804c-982dfe316a6b
# ╟─818bdfde-367b-11ef-3bcf-61eb5be3190e
# ╠═818be006-367b-11ef-0bcf-e78367406b49
# ╟─818be04e-367b-11ef-37a2-992ef43b8305
# ╠═818be074-367b-11ef-180f-418f2eeacfa6
# ╟─818be09c-367b-11ef-32a6-1512ecb0f920
# ╠═818be0ce-367b-11ef-237b-bba2d6b680f1
# ╠═818be132-367b-11ef-3058-97a1f0d931ec
# ╟─818be196-367b-11ef-0c88-ffc5efd134a7
# ╟─afb721d1-6292-4dcc-940d-187511567610
# ╟─818be236-367b-11ef-01b1-b5cc75454648
# ╠═818be27c-367b-11ef-29ac-2b593ecf59eb
# ╠═1c9ca21c-23a9-40ef-a888-0736e5e96169
# ╟─818be2d6-367b-11ef-1933-a76911519660
# ╟─818be344-367b-11ef-3cb4-b3e25720a4d3
# ╟─ed576e8f-4dfe-4389-8e42-d057310ba68e
# ╟─8be38416-8a67-4581-bbb7-5949887ad6b5
# ╟─bffb8191-dc83-4266-a9d7-a29a8b2e6001
# ╠═818be36c-367b-11ef-1412-e92b7b10c55c
# ╠═818be48e-367b-11ef-2ba8-29ff2e6404bb
# ╠═3ba1d082-0793-444a-9b69-a8da30709168
# ╟─27467191-f3fb-45c1-bc9d-06b0dc441de9
# ╠═818be3d0-367b-11ef-2fff-fbda8ec23618
# ╟─818be402-367b-11ef-0d32-2fceb3838699
# ╠═818be448-367b-11ef-39a6-f77021a8a12c
# ╠═b24a7427-ba3a-44f3-99bb-c8e8087065e2
# ╠═fcd49fca-3823-4c8f-a5c8-c82866451a7e
# ╟─818be4d4-367b-11ef-3029-977d8d483607
# ╠═818be4fc-367b-11ef-1f2d-1f20862c3411
# ╠═88f019b3-bd2e-4049-8b49-ef6c429d8818
# ╠═374067ba-2396-40ae-8d73-5cb4bc0384ae
# ╠═818be52e-367b-11ef-1c70-455fe742d311
# ╟─818be600-367b-11ef-0377-09d55f0d0333
# ╠═818be628-367b-11ef-0392-1356fccedc6e
# ╟─818be664-367b-11ef-07a6-91ba9124da3d
# ╠═818be68c-367b-11ef-38eb-c7056d119858
# ╟─818be556-367b-11ef-2087-231d3113c587
# ╠═12171080-9fb8-4b80-ae02-6da5dd332848
# ╠═818be5ce-367b-11ef-27f1-d342dae188a6
# ╟─818be6d2-367b-11ef-332d-c1aed6357633
# ╠═818be6fa-367b-11ef-117b-07ed3de1ed42
# ╠═80ab687b-d919-4969-933c-7ff82c3b0e7c
# ╟─818be772-367b-11ef-3272-bf21201d8dfb
# ╠═818be7a4-367b-11ef-01b0-ff5acaa3985e
# ╠═5e7fbb6a-4a26-4827-9153-50eca98d692a
# ╟─c8f382b4-f6d9-43d4-9a10-22e02f86efb5
# ╠═818be7fe-367b-11ef-2171-ed07c5f04472
# ╠═2b48a398-a23d-41d4-b119-10ba93014ff5
# ╟─818be830-367b-11ef-15ba-abb55e770f18
# ╠═818be84e-367b-11ef-0ff6-6b36949ee853
# ╟─818be89e-367b-11ef-265b-99d7a6799b1b
# ╟─818bea38-367b-11ef-2327-c363ed91158e
# ╠═818bea74-367b-11ef-28b4-6dff95be52e4
# ╟─81a4b979-936e-483d-bc37-3e26e8ddef70
# ╟─818beaa6-367b-11ef-3418-2b5ceed7d433
# ╠═818beb2a-367b-11ef-3f10-57aa5e38b2ef
# ╟─818beb6e-367b-11ef-1519-1f958385b35d
# ╠═818bebaa-367b-11ef-00d8-bd75bc0ce653
# ╟─818bebd2-367b-11ef-1a20-ef5b926d4593
# ╟─818bec18-367b-11ef-3104-a71ec12c5ec0
# ╠═818becae-367b-11ef-22c3-d72d6bcfe356
# ╠═818bec92-367b-11ef-1d2a-1df3a0d42c83
# ╟─e68eea28-2d2d-48cc-9365-467e8c301c2d
# ╠═fc0ef4e1-3c95-47cd-80f1-89a36e6ae30f
# ╠═d5a62a3a-b4cd-4a8f-8905-e66c9bca5402
# ╠═248068f5-0df7-4e75-9860-0b8b06a0b233
# ╠═c980187c-1b0e-4769-9990-321866bcb018
# ╠═539fc2f2-5cab-499c-a4dc-32209f1ba4f6
# ╟─818becd6-367b-11ef-2409-433c1dfcb010
# ╠═818bed3a-367b-11ef-29c7-cde98e2a1e10
# ╠═17f13411-b556-4a1a-bb8e-0fd25a88ef5e
# ╟─818bed62-367b-11ef-2686-2bbb46507419
# ╠═818bed9e-367b-11ef-1101-a110253f4a94
# ╟─4bdf9d10-8642-421e-9e5b-3ef6a897506e
# ╠═8227a8e4-5a0b-4655-becd-004c35719d1c
# ╠═da185466-9a03-41f7-a4aa-dede0ddd8095
# ╠═1a1a93fb-f61d-4f4e-92eb-227ed3305c48
# ╠═c0f98728-af5d-4b3f-bbfb-d56f448f3d33
# ╟─818bef24-367b-11ef-1099-331d9440d4e4
# ╠═818bef4c-367b-11ef-261e-c3fbbf3192cc
# ╠═818bef7e-367b-11ef-1af1-efedfde80475
# ╠═29599b02-55fb-47ad-8234-6a07cc8e5532
# ╟─818befa6-367b-11ef-1dbf-97e3965d7b01
# ╠═818bf026-367b-11ef-1d5f-8b1fdcd735d0
# ╟─818bf780-367b-11ef-2df1-b56b1b7273b2
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
