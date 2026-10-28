### A Pluto.jl notebook ###
# v0.20.28

#> [frontmatter]
#> title = "Mini Curso SDD. Pluto"
#> date = "2023-08-01"
#> description = "Introducción a Pluto"

using Markdown
using InteractiveUtils

# ╔═╡ 390a0bde-676f-486e-a859-5e7a720ce27e
using PlutoUI

# ╔═╡ 243e1cb8-a01f-40bc-81a7-db96819512c6
include("src/nbutils.jl")

# ╔═╡ 228a12de-2692-11ee-3545-119c7d391320
md"""
# Topología (de Conjuntos)
"""

# ╔═╡ 9f280ecf-68ef-4440-81ae-fbc9bee6d55c
md"""
## Introducción
Como ya vimos, espacios métricamente equivalentes son topológicamente equivalentes, entonces toda propiedad invariante bajo homeomorfismos es una propiedad invariante bajo equivalencia métrica.
"""

# ╔═╡ 93862c73-c8a8-4765-805d-9d06a11943d6
foldable0(md"""
Entonces es pertinente recordar algunas de esas propiedades topológicas, y para empezar, qué es una *topología*.

En particular, veremos propiedades topológicas en espacios métricos, por ello a la teoría en la que se estudian se le llama *topología métrica*.
""")

# ╔═╡ de015123-559a-4225-908f-4b8751776330
md"""
# Abiertos
Sea $(X,d)$ un espacio métrico.
!!! note "Definición"
	Un conjunto $U\subset X$ es **abierto** si para todo $x\in U$ existe un $\varepsilon>0$ tal que $\mathcal{B}(x,\varepsilon)\subset U$. 
"""

# ╔═╡ 1b61dfee-8a7a-42d2-9f6c-e6478d763e99
imagecenter("https://ds055uzetaobb.cloudfront.net/brioche/uploads/yE4nedzIk9-openset.png", w=400)

# ╔═╡ eeb04034-09b1-41f9-be7f-a9538ffa90ef
md"""
## Bola Abierta
Sea $(X,d)$ un espacio métrico.
!!! thrm "Proposición"
	Para cualesquiera $x\in X$ y $r>0$, $\mathcal{B}(x,r)$ es abierto.
"""

# ╔═╡ de4847c3-51eb-491e-96e1-d22653498b09
foldproof(md"""
Sea $y\in\mathcal{B}(x,r)$, entonces $d(x,y)<r$. Definimos $\varepsilon=r-d(x,y)>0$.

Así, para todo $z\in\mathcal{B}(y,\varepsilon)$ tenemos que

$d(z,x)\leq d(z,y)+d(y,x)<\varepsilon + d(y,x)=r,$

y entonces $\mathcal{B}(y,\varepsilon)\subset\mathcal{B}(x,r)$. $\square$
""")

# ╔═╡ ba4af3bf-6803-4023-bab3-fc011e34b7cf
md"""
## Bola Abierta
"""

# ╔═╡ 97e9916c-4062-4d21-8223-0ca21be5f236
LocalResource("pics/mat04Topo_OpenBallOpen.png", :width=>600)

# ╔═╡ 09b94b3a-d059-427f-8baf-82a19e3653e8
md"""
## Topología de Abiertos
Sea $(X,d)$ un espacio métrico.
!!! thrm "Teorema"
	1.  $\emptyset$ y $X$ son abiertos.
	2. Si $U,V\subset X$ son abiertos, entonces $U\cap V$ es abierto.
	3. Si $\mathfrak{U}$ es una familia de abiertos, entonces $\bigcup_{U\in\mathfrak{U}}U$ es abierto.
"""

# ╔═╡ 205069a0-202f-4e7e-975d-388559f5f7f8
foldable0(md"""
Las propiedades 1., 2. y 3. son las que definen una **topología** para un espacio $X$.

Con este teorema tenemos que los abiertos de $(X,d)$ forman una topología, por lo que a ésta se le llama **topología inducida por la métrica**.
""")

# ╔═╡ cc6d35d9-549f-4934-b286-de5603c317b7
md"""
# Continuidad y Abiertos
Son bien conocidos los siguiente resultados, y su demostración es fácil.

Sean $(X,d_X)$ y $(Y,d_Y)$ espacios métricos.

!!! thrm "Teorema"
	 $f:X\rightarrow Y$ es continua si y solo si para todo $U\subset Y$ abierto $f^{-1}(U)$ es abierto.
"""

# ╔═╡ 751d88fc-f72a-472f-81ad-ac7b39afc62f
foldable0(md"""
!!! thrm "Corolario"
	Si $f:X\rightarrow Y$ es un homeomorfismo y $U\subset X$ es abierto, entonces $f(U)$ es abierto.
""")

# ╔═╡ 4e4105aa-fc2d-4ff0-8900-2151fed3268e
md"""
# Abiertos y Cerrados

### Abiertos e interior

Algunos conceptos más que vale la pena recordar.

Sean $(X,d)$ espacio métrico y $A\subset X$.
"""

# ╔═╡ 32fcfbc5-9965-4bd1-8b49-bdb866fb35ad
twocolumn(md"""!!! note "Definición"
	Un punto $x\in A$ es **interior** de $A$ si existe $\varepsilon>0$ tal que $\mathcal{B}(x,\varepsilon)\subset A$.

	El conjunto de los puntos interiores de $A$ se le llama **interior** de $A$ y se denota 
		  
	$\overset{\circ}{A}.$
""", imagecenter("https://upload.wikimedia.org/wikipedia/commons/b/ba/Interior_illustration.svg",w=240))

# ╔═╡ efb00c8d-f113-4ade-a880-0c4c22e281ce
foldable0(md"Obviamente, $U\subset X$ es abierto si y solo si $U=\overset{\circ}{U}$.")

# ╔═╡ 72e04f42-421c-4f77-981f-ec1f536ddbeb
md"""
## Acumulación y Cerrados

Sean $(X,d)$ espacio métrico y $A\subset X$.
"""

# ╔═╡ 875005d4-e719-4c1e-b5f4-ab3fa17ffc6e
twocolumn(imagecenter("https://upload.wikimedia.org/wikipedia/commons/b/ba/Interior_illustration.svg",w=240), md"""
!!! note "Definición"
	Un punto $x\in X$ es **de acumulación** (ó **límite**) de $A$ si para todo $\varepsilon>0$ se tiene que $(\mathcal{B}(x,\varepsilon)-\{x\})\cap A\neq \emptyset.$

	Al conjunto $A$ unión sus puntos de acumulación se le llama **cerradura** de $A$ y se denota $\overline{A}$.
""")

# ╔═╡ 3db49b8c-98b5-4cba-950a-d374752bead3
foldable0(md"""
!!! note "Definición"
	 $A$ es **cerrado** si $A=\overline{A}$.
""")

# ╔═╡ 4ef4fe03-b15c-4759-a3ee-328f39b55014
md"""
## Acumulación y Cerrados

!!! tip "Ejemplo"
	Sea $(X,d)$ un espacio métrico y $A=\{x_1,\dots,x_n\}\subset X$ (un conjunto finito).
"""

# ╔═╡ 7d3fd892-4170-4a3b-b48f-32b0d91ed0d8
foldable0(md"""
!!! tip ""
	Sea $x\in X-A$. Para $\varepsilon<\min_{x_i\in A}\{d(x,x_i)\}$ tenemos que $(\mathcal{B}(x,\varepsilon)-\{x\})\cap A=\emptyset$.
""")

# ╔═╡ 446ace98-83c9-4cbe-bc1d-afcfd0dd3871
foldable0(md"""
!!! tip ""
	Sea $x\in A$. Para $\varepsilon<\min_{x_i\in A,\,x_i\neq x}\{d(x,x_i)\}$ tenemos que $(\mathcal{B}(x,\varepsilon)-\{x\})\cap A=\emptyset$.
""")

# ╔═╡ 100d49da-23b2-48b8-8bff-6c7ef9d99815
foldable0(md"""
!!! tip ""
	Por lo tanto, el conjunto de puntos de acumulación de $A$ es vacío y entonces $A=\overline{A}$.
""")

# ╔═╡ afe31a02-2901-4b15-a85d-c0bec36f9d74
md"""
## Acumulación y cerrados

!!! tip "Ejemplo"
	Sea $(X,d)$ un espacio métrico y $\color{red}A=\{x_1,x_2,x_3\}\color{black}\subset X$.

	 $\color{red}A$ no tiene puntos de acumulación y es cerrado.
"""

# ╔═╡ 2a91b52f-abdb-4a82-a1e4-ac39a4a3dd3d
LocalResource("pics/mat04Topo_ClosedFinite.png", :width=>800)

# ╔═╡ f420c8db-7d14-4520-9e2f-5a8848f55a28
md"""
## Abiertos vs. Cerrados
Un resultado conocido y relativamente fácil de demostrar.

Sea $(X,d)$ un espacio métrico y $A\subset X$.
!!! thrm "Teorema"
	 $A$ es abierto si y solo si $X-A$ es cerrado
"""

# ╔═╡ 077178dd-d9f3-41ca-8bc6-43e535b1e9b5
foldable0(md"""
!!! tip "Ejemplo"
	Sean $(X,d)$ un espacio métrico y $A\subset X$ un subconjunto finito.
		  
	Entonces $X-A$ es un abierto.
""")

# ╔═╡ 7a319d1f-5bae-49e9-8b4e-c16177492bb2
md"""
## Topología de Cerrados
Sea $(X,d)$ un espacio métrico.
!!! thrm "Teorema"
	1.  $\emptyset$ y $X$ son cerrados.
	2. Si $C,D\subset X$ son cerrados, entonces $C\cup D$ es cerrado.
	3. Si $\mathfrak{C}$ es una familia de cerrados, entonces $\bigcap_{C\in\mathfrak{C}}C$ es cerrado.
"""

# ╔═╡ 3bacd330-cc5c-45ed-a546-69335ddccf27
md"""
## Cerrados
!!! exm "Ejemplo: El conjunto de Cantor de los tercios de en medio excluidos"
	El *conjunto de Cantor de los tercios de en medio excluidos* se construye de la siguiente manera:

	1. Se toma el conjunto $C_0=[0,1]$ y se "excluye" el "tercio de en medio" $(1/3,2/3)$ para formar un nuevo conjunto

	$C_1=C_0-(1/3,2/3)=[0,1/3]\cup [2/3,1].$
"""

# ╔═╡ 5dad2bd2-81b6-41e7-9fc0-11c0e5f553e0
foldable0(md"""
!!! tip ""
	2. Luego, al conjunto $C_1$ y se le "excluyen" los "tercios de en medio" $(1/9,2/9)$ y $(7/9,8/9)$ de cada componente, para formar un nuevo conjunto

	$C_2=C_1-\big((1/9,2/9)\cup(7/9,8/9)\big)$

	$=[0,1/9]\cup [2/9,1/3]\cup [2/3,7/9]\cup [8/9,1].$
""")

# ╔═╡ c5eada90-4a7b-4b8c-adda-30d2dae4c550
md"""
## Cerrados
!!! exm "Ejemplo: El conjunto de Cantor de los tercios de en medio excluidos"
	3. Se repite el proceso de "exclusión de tercios de en medio" para cada $C_n$ para obtener $C_{n+1}$, y al límite se obtiene el *conjunto de Cantor de los tercios de en medio excluidos*, que denoteremos $C$.
"""

# ╔═╡ e70472f6-d0d8-4de2-b05a-77357b12dccf
foldable0(md"""
!!! tip ""
	Nótese que para cada $n\in\mathbb{N}$ el conjunto $C_n$ es cerrado, $C_{n+1}\subset C_n$, y $C\subset C_{n},$ por lo que

	$C=\bigcap_{n\in\mathbb{N}}C_n$

	es cerrado.
""")

# ╔═╡ 81dca506-1c97-4e88-a4d8-98ba6a152395
md"""
## Cerrados
!!! exm "Ejemplo: El conjunto de Cantor de los tercios de en medio excluidos"
	Nótese que

	$0,1,1/3,2/3,1/9,2/9,7/9,8/9,\dots \in C.$
"""

# ╔═╡ 6128a505-37b6-479a-8945-b517d894bc69
imagecenter("https://upload.wikimedia.org/wikipedia/commons/e/eb/Conjunto_de_Cantor.png",w=1200)

# ╔═╡ fa300a84-c60d-4b54-8760-8ac096c29821
md"""
## Continuidad y Cerrados

Sean $(X,d_X)$ y $(Y,d_Y)$ espacios métricos.

!!! thrm "Teorema"
	Sean $f:X\rightarrow Y$ continua y $C\subset Y$ cerrado, entonces $f(C)$ es cerrado.
"""

# ╔═╡ ddafae27-5923-4d9a-aca5-2c1278fad647
foldable0(md"""
!!! thrm "Corolario"
	Si $f:X\rightarrow Y$ es un homeomorfismo y $C\subset Y$ es cerrado, entonces $f^{-1}(C)$ es cerrado.
""")

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
# ╟─93862c73-c8a8-4765-805d-9d06a11943d6
# ╟─de015123-559a-4225-908f-4b8751776330
# ╟─1b61dfee-8a7a-42d2-9f6c-e6478d763e99
# ╟─eeb04034-09b1-41f9-be7f-a9538ffa90ef
# ╟─de4847c3-51eb-491e-96e1-d22653498b09
# ╟─ba4af3bf-6803-4023-bab3-fc011e34b7cf
# ╟─97e9916c-4062-4d21-8223-0ca21be5f236
# ╟─09b94b3a-d059-427f-8baf-82a19e3653e8
# ╟─205069a0-202f-4e7e-975d-388559f5f7f8
# ╟─cc6d35d9-549f-4934-b286-de5603c317b7
# ╟─751d88fc-f72a-472f-81ad-ac7b39afc62f
# ╟─4e4105aa-fc2d-4ff0-8900-2151fed3268e
# ╟─32fcfbc5-9965-4bd1-8b49-bdb866fb35ad
# ╟─efb00c8d-f113-4ade-a880-0c4c22e281ce
# ╟─72e04f42-421c-4f77-981f-ec1f536ddbeb
# ╟─875005d4-e719-4c1e-b5f4-ab3fa17ffc6e
# ╟─3db49b8c-98b5-4cba-950a-d374752bead3
# ╟─4ef4fe03-b15c-4759-a3ee-328f39b55014
# ╟─7d3fd892-4170-4a3b-b48f-32b0d91ed0d8
# ╟─446ace98-83c9-4cbe-bc1d-afcfd0dd3871
# ╟─100d49da-23b2-48b8-8bff-6c7ef9d99815
# ╟─afe31a02-2901-4b15-a85d-c0bec36f9d74
# ╟─2a91b52f-abdb-4a82-a1e4-ac39a4a3dd3d
# ╟─f420c8db-7d14-4520-9e2f-5a8848f55a28
# ╟─077178dd-d9f3-41ca-8bc6-43e535b1e9b5
# ╟─7a319d1f-5bae-49e9-8b4e-c16177492bb2
# ╟─3bacd330-cc5c-45ed-a546-69335ddccf27
# ╟─5dad2bd2-81b6-41e7-9fc0-11c0e5f553e0
# ╟─c5eada90-4a7b-4b8c-adda-30d2dae4c550
# ╟─e70472f6-d0d8-4de2-b05a-77357b12dccf
# ╟─81dca506-1c97-4e88-a4d8-98ba6a152395
# ╟─6128a505-37b6-479a-8945-b517d894bc69
# ╟─fa300a84-c60d-4b54-8760-8ac096c29821
# ╟─ddafae27-5923-4d9a-aca5-2c1278fad647
# ╟─243e1cb8-a01f-40bc-81a7-db96819512c6
# ╠═390a0bde-676f-486e-a859-5e7a720ce27e
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
