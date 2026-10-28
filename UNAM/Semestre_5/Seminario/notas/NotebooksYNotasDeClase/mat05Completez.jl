### A Pluto.jl notebook ###
# v0.20.28

#> [frontmatter]
#> title = "Mini Curso SDD. Pluto"
#> date = "2023-08-01"
#> description = "Introducción a Pluto"

using Markdown
using InteractiveUtils

# ╔═╡ 68f1e0ee-9c89-4dd6-8f30-926abd6e22b6
using PlutoUI

# ╔═╡ 243e1cb8-a01f-40bc-81a7-db96819512c6
include("src/nbutils.jl")

# ╔═╡ 228a12de-2692-11ee-3545-119c7d391320
md"""
# Completez
"""

# ╔═╡ 9f280ecf-68ef-4440-81ae-fbc9bee6d55c
md"""
## Introducción
Una propiedad importante para nuestros espacios métricos es la *completez*: queremos que sean "cerrados" en el sentido de que contengan a todos sus puntos bajo un tipo de "acumulación especial".
"""

# ╔═╡ 6ec11422-7bc8-4056-abd6-4c5e0aa6cf82
foldable0(md"""
La importancia de este concepto será evidente más adelante, por el momento sólo lo definiremos y veremos algunos resultados.
""")

# ╔═╡ de015123-559a-4225-908f-4b8751776330
md"""
# Sucesiones
Este es una construcción fundamental en las matemáticas. En especial, para comprender el concepto de *límite*.

Sea $(X,d)$ un espacio métrico.
!!! note "Definición"
	Una **sucesión** en $X$ es una función $\mathbb{N}\rightarrow X$ con $n\mapsto x_n$.
	
	Usualmente se denota como

	$\{x_n\}_{n\in\mathbb{N}},\,\,\mathrm{ó}\,\,\,\{x_n\}_{n=0}^\infty$
"""

# ╔═╡ 70dc3a67-0536-46d1-b428-a00146a726cc
foldable0(md"""
Aquí denotaremos a las sucesiones simplemente así: $\{x_n\}$. 

Por el orden en $\mathbb{N}$, algunos autores denotan las sucesiones así: $(x_n)$.
""")

# ╔═╡ 3f4d584a-e694-4b54-8318-e56a26d4e6cd
md"""
## Convergencia

Sea $(X,d)$ un espacio métrico.

!!! note "Definición"
	Una sucesión $\{x_n\}$ en $X$ **converge** a $x\in X$ si dado $\varepsilon>0$ existe $N\in\mathbb{N}$ tal que para todo $n>N$ se tiene que

	$d(x,x_n)<\varepsilon.$

	 $\{x_n\}$ converge a $x$ se denota como

	$\lim_{n\rightarrow \infty}x_n = x.$
"""

# ╔═╡ 2060f46e-a3e3-40dd-8702-24f65194c28b
foldable0(md"""
Aquí denotaremos "$\{x_n\}$ converge a $x$ cuando $n\rightarrow\infty$" como $x_n\rightarrow x$ cuando sea conveniente.
""")

# ╔═╡ 4d71ddb1-1647-4a6c-9f20-26b7d53d026c
foldable0(md"""
Nótese que $x_n\rightarrow x$ en $(X,d)$ si y solo si $d(x,x_n)\rightarrow 0$ en $(\mathbb{R},d_E)$.
""")

# ╔═╡ 046b4b01-10e4-467c-b46c-30e9b814d33a
md"""
## Convergencia y Acumulación
Nótese que si una sucesión $\{x_n\}$ converge a un punto $p\in X$, entonces para todo $\varepsilon>0$ la bola $\mathcal{B}(p,\varepsilon)$ contiene una infinidad de puntos de $\{x_n\}.$
"""

# ╔═╡ bfdf2369-087a-476a-b86d-8f2e87f7551a
imagecenter("https://www.jirka.org/ra/html/figures/sequence-convergence-metric-mbx.svg",w=500)

# ╔═╡ a2ca72ea-48dd-4580-b509-88f636dd8e83
foldable0(md"""
Es decir, $p$ es punto de acumulación del conjunto de puntos de $\{x_n\}$, ó  $x_n=p$ para toda $n>N$ para algún $N.$
""")

# ╔═╡ 5c749616-736e-4ea4-9054-36f23bd89cbc
md"""
## Convergencia y Cerrados
Directamente de la observación anterior y la definición de cerrado, se tiene el siguiente resultado.

Sea $(X,d)$ un espacio métrico.
!!! thrm "Proposición"
	Sea $A\subset X$ cerrado y $\{x_n\}$ una sucesión en $A$ convergente a $x\in X$. 

	Entonces $x\in A$.
"""

# ╔═╡ 828d257e-aa7b-477e-b88d-02c30e34aac8
foldable0(md"""
De este resultado se entiende mejor la definición de cerrado como el conjunto que contiene todos sus puntos límite (también llamados de acumulación).
""")

# ╔═╡ 16d350d8-2bff-4999-a377-3a36feebdb6d
md"""
## Convergencia y Continuidad
Un resultado conocido y útil es el siguiente.

Sen $(X,d_X)$ y $(Y,d_Y)$ espacios métricos.

!!! thrm "Teorema"
	 $f:X\rightarrow Y$ es continua si y solo si para toda sucesión $\{x_n\}$ en $X$ tal que $x_n\rightarrow x$ se tiene que $f(x_n)\rightarrow f(x)$.
"""

# ╔═╡ d40e8ffa-fa62-42bc-a137-9fe7ff506d70
md"""
## Convergencia y Continuidad
!!! tip "Ejemplo"
	Sean $X=(0,1]$ y $d_X(x,y)=\Big|\frac{1}{x}-\frac{1}{y}\Big|$.

	Afirmación: La función $Id_X:(X,d_E)\rightarrow(X,d_X)$ es continua.
 """

# ╔═╡ 7b54e40e-0384-450b-9091-4ba9479c7bec
foldable0(md"""
!!! tip ""
	Sea $\{x_n\}$ en $(X,d_E)$ tal que $x_n\rightarrow x\in X$, y entonces $|x-x_n|\rightarrow 0$.

	Directamente tenemos que

	$d_X(x,x_n)=\Big|\frac{1}{x}-\frac{1}{x_n}\Big|=\frac{|x-x_n|}{x x_n}\rightarrow \frac{0}{x^2}=0,$

	y por lo tanto $Id_X(x_n)=x_n\rightarrow x$ en $(X,d_X)$.
""")

# ╔═╡ 3ed455b5-bb09-4958-8577-0ba96f5e5b74
md"""
## Convergencia a...
Nótese que la definición de convergencia depende del punto a la que la sucesión converge.
"""

# ╔═╡ f5ea5c53-53b9-4bc3-bbf1-1a78b52eeed3
foldable0(md"""
Pero nos gustaría una propiedad para sucesiones que "parezcan converger" que no dependan de un punto ajeno a la sucesión...  
""")

# ╔═╡ 8378aff3-7b65-4e45-9ca1-2ce13f6d208c
md"""
## Sucesiones de Cauchy
Sea $(X,d)$ un espacio métrico.

!!! note "Definición"
	Una sucesión $\{x_n\}$ en $X$ es **de Cauchy** si dado $\varepsilon>0$ existe $N\in\mathbb{N}$ tal que para $n,m>N$ se tiene que

	$d(x_n,x_m)<\varepsilon.$
"""

# ╔═╡ acf6d658-fa77-4018-a421-fc7c8936c94d
foldable0(md"""
Es decir, si $\{x_n\}$ es de Cauchy, existe una infinidad de "puntos finales" que son arbitrariamente cercanos.

Claro, esto no significa que una sucesión de Cauchy sea convergente.
""")

# ╔═╡ 28a41db0-d6af-4297-9a45-dfba720468ca
md"""
## Sucesiones de Cauchy no Convergentes
!!! tip "Ejemplo"
	Sea $X=(0,1)\subset\mathbb{R}$ con la métrica $d_E$. Sea $\{x_n\}=\{1/n\}_{n\in\mathbb{N}}$, que está en $X$.

"""

# ╔═╡ b4193ea7-d5b3-418e-a067-abe5a134fbe1
foldable(md""" $\{x_n\}$ es de Cauchy.""", md"""
!!! tip ""
	Sea $\varepsilon>0$. Sea $N\in\mathbb{N}$ tal que $2/N<\varepsilon$. Entonces para todos $n,m>N$
	
	$d_E(x_n,x_m)=\Big|\frac{1}{n}-\frac{1}{m}\Big|<\frac{1}{n}+\frac{1}{m}<\frac{1}{N}+\frac{1}{N}<\varepsilon.$
""")

# ╔═╡ cdff14a6-5b57-4949-bbb5-e6ddea069458
foldable(md""" $\{x_n\}$ no converge en $X$.""", md"""
!!! tip ""
	Sabemos que $\frac{1}{n}\rightarrow 0$ y que $0\notin X=(0,1)$.
""")

# ╔═╡ 5e59b154-cc8f-49cf-a41a-dbb67db2ed7d
md"""
## Sucesiones de Cauchy no Convergentes
!!! tip "Ejemplo"
	Sea $X=\mathbb{Q}$ con la métrica $d_E$. Sea $\{x_n\}$ definida por $x_0=3$,  $x_1=3.1$, $x_2=3.14,$ $x_3=3.141$, $x_4=3.1415$, etc., que claramente está en $\mathbb{Q}$.
"""

# ╔═╡ 1ae61f99-48be-454d-811c-8f42f6334a87
foldable(md""" $\{x_n\}$ es de Cauchy.""", md"""
!!! tip ""
	Para $\varepsilon>0$ tomamos $N\in\mathbb{N}$ tal que $1/10^N<\varepsilon$.

	Entonces para $m>n>N$ tenemos que

	$|x_m-x_n|=0.\overbrace{0\dots 0}^n\dots<\frac{1}{10^N}<\varepsilon.$
""")

# ╔═╡ 3aa8b8a8-3ae2-4f12-9222-bc978495ea2e
foldable(md""" $\{x_n\}$ no converge en $X$.""", md"""
!!! tip ""
	Sabemos que $\pi\notin X=\mathbb{Q}$.
""")

# ╔═╡ a09bc991-6616-4086-b315-d6795842c786
md"""
## Convergencia y Sucesiones de Cauchy
Sea $(X,d)$ un espacio métrico y $\{x_n\}$ en $X$.
!!! thrm "Proposición"
	Si $\{x_n\}$ converge, entonces es de Cauchy.
"""

# ╔═╡ a854ef87-cb0c-425d-9b9c-a4006547ad09
foldproof(md"""
Sea $\varepsilon > 0$. Como $x_n\rightarrow x\in X$, existe $N\in\mathbb{N}$ tal que para todo $n>N$ $d(x,x_n)<\varepsilon/2$.
""")

# ╔═╡ 8589f7c2-8c89-43d7-a4e5-0ebbb13e5832
foldable0(md"""
!!! warning ""
	Así, tenemos que para $n,m>N$

	$d(x_n,x_m)\leq d(x_n,x)+d(x,x_m)<\frac{\varepsilon}{2}+\frac{\varepsilon}{2}=\varepsilon.\,\, \square$
""")

# ╔═╡ dcccd08d-88fa-43df-b86c-3e9fa1533ead
md"""
# Espacios Completos
!!! note "Definición"
	Un espacio métrico $(X,d)$ es **completo** si toda sucesión en $X$ de Cauchy converge a un punto en $X$.
"""

# ╔═╡ cd8f9d42-c7d8-45cf-9528-7500751a2eec
foldable0(md"""
Es decir, en un espacio métrico completo las sucesiones que parecen converger si convergen realmente en ese espacio.

Por esto podemos decir que a estos espacios "no les faltan puntos" ("están completos"), son "cerrados" en el sentido de contener a todos sus "puntos que deben ser límite".
""")

# ╔═╡ e130f418-d321-4b64-9ad9-a69ca990852a
md"""
## $\mathbb{R}$

!!! thrm "Teorema"
	 $(\mathbb{R},d_E)$ es un espacio métrico completo.
"""

# ╔═╡ dd72fc90-df79-4f26-9170-60569c786e3d
foldproofi(md"""
Sea $\{x_n\}$ de Cauchy en $\mathbb{R}$. Tomando $\varepsilon_N=1/N$ con $N\in\mathbb{N}-\{0\}$, construimos

$a_N=\min_{|x_n-x_m|<\varepsilon_N}\{x_n,x_m\},\,\,\mathrm{y}\,\,b_N=\max_{|x_n-x_m|<\varepsilon_N}\{x_n,x_m\}.$

Es claro que $|a_N-b_N|<\varepsilon_N$ $\forall\,N\in\mathbb{N}$, entonces $|a_N-b_N|\rightarrow 0$.
""")

# ╔═╡ 7d1d61ef-3ca7-4401-8251-6b8bcb6ded9b
foldable0(md"""
!!! warning ""
	Además $[a_{N+1},b_{N+1}]\subset[a_N,b_N]$ $\forall\,N\in\mathbb{N}$, entonces $a_N\rightarrow x$ y $b_N\rightarrow x$ con $x\in \cup_{N=1}^\infty[a_N,b_N].$

	Por lo tanto, $x_n\rightarrow x$. $\square$
""")

# ╔═╡ aeb5828f-cb11-4f4c-87e8-60e711764f9a
md"""
## $\mathbb{R}$

 $(\mathbb{R},d_E)$ es un espacio métrico completo.
"""

# ╔═╡ 70157026-ef79-4891-b9ad-be8e4ebd5f3d
LocalResource("pics/mat05Compl_R.png")

# ╔═╡ 8d6b18d5-6d39-4972-b3b8-1442ac290ace
md"""
 $\color{red} x_n$ $\rightarrow$ $\color{royalblue}x$ $\in\mathbb{R}$.
"""

# ╔═╡ 41212d6b-f01b-428b-a4eb-89eaa226fe25
md"""
## $\mathbb{R}^n$

!!! thrm "Teorema"
	Sea $n>1$. $(\mathbb{R}^n,d_E)$ es un espacio métrico completo.
"""

# ╔═╡ 62021397-ad82-44d0-9d39-267f9f99abf4
foldproof(md"""
Sea $\{x_k=(x_{1,k},\dots,x_{n,k})\}$ de Cauchy en $\mathbb{R}^n$. Nótese que para toda $i$ $|x_{i,k}-x_{i,m}|\leq d_E(x_k,x_m)$, por lo que cada sucesión $\{x_{i,k}\}$ es de Cauchy en $\mathbb{R}$.

Como $(\mathbb{R},d_E)$ es métrico completo, para toda $i$ existe $y_i\in\mathbb{R}$ tal que $x_{i,k}\rightarrow y_i$. Por lo tanto

$x_k=(x_{1,k},\dots,x_{n,k})\rightarrow y=(y_1,\dots,y_n).\, \square$
""")

# ╔═╡ a8356cab-f290-41b2-a337-1faddf312a6b
md"""
## Subespacios Completos

Un resultado fácil de demostrar es el siguiente.

Sea $(X,d)$ un espacio métrico completo y $S\subset X$.

!!! thrm "Teorema"
	 $(S,d)$ es un espacio métrico completo si y solo si $S$ es cerrado.
"""

# ╔═╡ b5af233f-87f1-4522-b941-78efbd733ef2
foldexample(md"""
Los siguiente espacios métricos son completos:
-  $([a,b], d_E)$.


-  $(⬛,d_E)$. 


-  $(⚫, d_E)$.
""")

# ╔═╡ 4187c59e-142b-43eb-a5b6-361dc646c6e6
md"""
## Equivalencia
Sean $(X,d_X)$ y $(Y,d_Y)$ espacios métricos.

!!! thrm "Teorema"
	Si $(X,d_X)$ y $(Y,d_Y)$ son métricamente equivalentes y $(X,d_X)$ es completo, entonces $(Y,d_Y)$ es completo.
"""

# ╔═╡ 550a4fdb-1e86-4688-8da2-1c4a6e87a056
foldproof(md"""
Sea $\{y_n\}$ de Cauchy en $Y$.

Sea $f:X\rightarrow Y$ la función que establece la equivalencia métrica (que también es homeomorfismo) y $c_1<c_2$ las constantes positivas para la equivalencia.

Entonces para cualesquiera $y,y'\in Y$

$\frac{1}{c_2}d_Y(y,y')\leq d_X(f^{-1}(y),f^{-1}(y'))\leq \frac{1}{c_1}d_Y(y,y').$
""")

# ╔═╡ ac23d072-3189-43dd-a46c-60c900c311db
md"""
## Equivalencia
!!! warning "Demostración (continuación)"
	Sea $\varepsilon_X>0$. Con $\varepsilon_Y=c_1\varepsilon_X$, al ser $\{y_n\}$ de Cauchy, tenemos que existe $N\in\mathbb{N}$ tal que para $n,m>N$

	$d_X(f^{-1}(y_n),f^{-1}(y_m))\leq \frac{1}{c_1}d_Y(y_n,y_m)<\frac{1}{c_1}\varepsilon_Y=\frac{c_1}{c_1}\varepsilon_X=\varepsilon_X.$
"""

# ╔═╡ d213d551-6919-4236-bdf4-e6b925c78222
foldable0(md"""
!!! warning ""
	Por lo tanto $\{f^{-1}(y_n)\}$ es de Cauchy en $X$.

	Como $X$ es completo, se tiene que $f^{-1}(y_n)\rightarrow x\in X$.

	Finalmente, por continuidad de $f$ tenemos que

	$f(f^{-1}(y_n))=y_n\rightarrow f(x)\in Y.\,\, \square$
""")

# ╔═╡ 74edcc44-1503-4331-8c0d-7c3daf1703b0
md"""
## Equivalencia
!!! tip "Ejemplo"
	Por el teorema anterior, los espacios métricos $(\mathbb{R}^n,d_M)$ y  $(\mathbb{R}^n,d_\max)$ son completos para toda $n>0$, al ser equivalentes métricamente a $(\mathbb{R}^n,d_E)$.
"""

# ╔═╡ a5ab3377-5ca9-4aed-a6b1-76387936aff1
foldable0(md"""
!!! thrm "Corolario"
	 $(\mathbb{C},d_E)$ es un espacio métrico completo.

!!! warning "Ideas principales de la demostración"
	La función $f:\mathbb{R}^2\rightarrow \mathbb{C}$ dada por $f((x,y))=x+yi$ es una equivalencia métrica entre $(\mathbb{R}^2,d_E)$ y $(\mathbb{C},d_E)$. $\square$
""")

# ╔═╡ c29b9273-409b-47ba-b566-dc1e861bfc32
md"""
## No Equivalencia Topológica
La completez no es una propiedad topológica, esto es, no se preserva en general bajo homeomorfismos.
"""

# ╔═╡ 4cc8a4bc-cafe-4865-bf69-beaa27c9f044
foldable0(md"""
!!! tip "Ejemplo"
	Sea $X=(-1,1)\subset\mathbb{R}$.

	Es relativamente fácil demostrar que $f:X\rightarrow\mathbb{R}$ dada por $f(x)=\frac{x}{1-x^2}$ es un homeomorfismo entre $(X,d_E)$ y $(\mathbb{R},d_E)$.

	Por otro lado, $(X,d_E)$ no es un espacio métrico completo.
""")

# ╔═╡ 9f3db69f-abc9-493f-b26e-4c6fc8fdba6d
md"""
# Observaciones
Como mencionamos antes, queremos que nuestros *fractales* preserven sus propiedades bajo equivalencia métrica.

Así, los espacios métricos completos son buenos candidatos para que los contengan.
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.83"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.6"
manifest_format = "2.0"
project_hash = "40c9f1cac973d64f8ca3ef3a09f769ff947e80f3"

[[deps.AbstractPlutoDingetjes]]
git-tree-sha1 = "6c3913f4e9bdf6ba3c08041a446fb1332716cbc2"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.4.0"

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
git-tree-sha1 = "67e11ee83a43eb71ddc950302c53bf33f0690dfe"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.12.1"
weakdeps = ["StyledStrings"]

    [deps.ColorTypes.extensions]
    StyledStringsExt = "StyledStrings"

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
deps = ["Random", "Statistics"]
git-tree-sha1 = "59af96b98217c6ef4ae0dfe065ac7c20831d1a84"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.6"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "179267cfa5e712760cd43dcae385d7ea90cc25a4"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.5"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "d1a86724f81bcd184a38fd284ce183ec067d71a0"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "1.0.0"

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

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "Downloads", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "e189d0623e7ce9c37389bac17e80aac3b0302e75"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.83"

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
git-tree-sha1 = "389592b8592e5fb48f498ff60dc6acb4a0e62953"
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.11.4"

    [deps.Statistics.extensions]
    SparseArraysExt = ["SparseArrays"]

    [deps.Statistics.weakdeps]
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.StyledStrings]]
uuid = "f489334b-da3d-4c2e-b8f0-e476e12c162b"
version = "1.11.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
version = "1.11.0"

[[deps.Tricks]]
git-tree-sha1 = "311349fd1c93a31f783f977a71e8b062a57d4101"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.13"

[[deps.URIs]]
git-tree-sha1 = "908fec9df6c5de98548ead82a468c95ccf6cd263"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.7.0"

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
"""

# ╔═╡ Cell order:
# ╟─228a12de-2692-11ee-3545-119c7d391320
# ╟─9f280ecf-68ef-4440-81ae-fbc9bee6d55c
# ╟─6ec11422-7bc8-4056-abd6-4c5e0aa6cf82
# ╟─de015123-559a-4225-908f-4b8751776330
# ╟─70dc3a67-0536-46d1-b428-a00146a726cc
# ╟─3f4d584a-e694-4b54-8318-e56a26d4e6cd
# ╟─2060f46e-a3e3-40dd-8702-24f65194c28b
# ╟─4d71ddb1-1647-4a6c-9f20-26b7d53d026c
# ╟─046b4b01-10e4-467c-b46c-30e9b814d33a
# ╟─bfdf2369-087a-476a-b86d-8f2e87f7551a
# ╟─a2ca72ea-48dd-4580-b509-88f636dd8e83
# ╟─5c749616-736e-4ea4-9054-36f23bd89cbc
# ╟─828d257e-aa7b-477e-b88d-02c30e34aac8
# ╟─16d350d8-2bff-4999-a377-3a36feebdb6d
# ╟─d40e8ffa-fa62-42bc-a137-9fe7ff506d70
# ╟─7b54e40e-0384-450b-9091-4ba9479c7bec
# ╟─3ed455b5-bb09-4958-8577-0ba96f5e5b74
# ╟─f5ea5c53-53b9-4bc3-bbf1-1a78b52eeed3
# ╟─8378aff3-7b65-4e45-9ca1-2ce13f6d208c
# ╟─acf6d658-fa77-4018-a421-fc7c8936c94d
# ╟─28a41db0-d6af-4297-9a45-dfba720468ca
# ╟─b4193ea7-d5b3-418e-a067-abe5a134fbe1
# ╟─cdff14a6-5b57-4949-bbb5-e6ddea069458
# ╟─5e59b154-cc8f-49cf-a41a-dbb67db2ed7d
# ╟─1ae61f99-48be-454d-811c-8f42f6334a87
# ╟─3aa8b8a8-3ae2-4f12-9222-bc978495ea2e
# ╟─a09bc991-6616-4086-b315-d6795842c786
# ╟─a854ef87-cb0c-425d-9b9c-a4006547ad09
# ╟─8589f7c2-8c89-43d7-a4e5-0ebbb13e5832
# ╟─dcccd08d-88fa-43df-b86c-3e9fa1533ead
# ╟─cd8f9d42-c7d8-45cf-9528-7500751a2eec
# ╟─e130f418-d321-4b64-9ad9-a69ca990852a
# ╟─dd72fc90-df79-4f26-9170-60569c786e3d
# ╟─7d1d61ef-3ca7-4401-8251-6b8bcb6ded9b
# ╟─aeb5828f-cb11-4f4c-87e8-60e711764f9a
# ╟─70157026-ef79-4891-b9ad-be8e4ebd5f3d
# ╟─8d6b18d5-6d39-4972-b3b8-1442ac290ace
# ╟─41212d6b-f01b-428b-a4eb-89eaa226fe25
# ╟─62021397-ad82-44d0-9d39-267f9f99abf4
# ╟─a8356cab-f290-41b2-a337-1faddf312a6b
# ╟─b5af233f-87f1-4522-b941-78efbd733ef2
# ╟─4187c59e-142b-43eb-a5b6-361dc646c6e6
# ╟─550a4fdb-1e86-4688-8da2-1c4a6e87a056
# ╟─ac23d072-3189-43dd-a46c-60c900c311db
# ╟─d213d551-6919-4236-bdf4-e6b925c78222
# ╟─74edcc44-1503-4331-8c0d-7c3daf1703b0
# ╟─a5ab3377-5ca9-4aed-a6b1-76387936aff1
# ╟─c29b9273-409b-47ba-b566-dc1e861bfc32
# ╟─4cc8a4bc-cafe-4865-bf69-beaa27c9f044
# ╟─9f3db69f-abc9-493f-b26e-4c6fc8fdba6d
# ╟─243e1cb8-a01f-40bc-81a7-db96819512c6
# ╠═68f1e0ee-9c89-4dd6-8f30-926abd6e22b6
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
