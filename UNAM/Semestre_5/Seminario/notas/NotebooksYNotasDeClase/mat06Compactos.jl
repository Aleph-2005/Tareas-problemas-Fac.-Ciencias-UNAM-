### A Pluto.jl notebook ###
# v0.20.28

#> [frontmatter]
#> title = "Mini Curso SDD. Pluto"
#> date = "2023-08-01"
#> description = "Introducción a Pluto"

using Markdown
using InteractiveUtils

# ╔═╡ b1cef9d9-b551-4e22-865a-fa8cc80a425b
using PlutoUI

# ╔═╡ 243e1cb8-a01f-40bc-81a7-db96819512c6
include("src/nbutils.jl")

# ╔═╡ 228a12de-2692-11ee-3545-119c7d391320
md"""
# Compactos
"""

# ╔═╡ 9f280ecf-68ef-4440-81ae-fbc9bee6d55c
md"""
## Introducción
Así como nos serán muy útiles los espacios métricos completos, también nos serán muy útiles subconjuntos que sean "completos".
"""

# ╔═╡ dd1c6308-5fd9-4197-bc8d-85812cac97ac
foldable0(md"""
Estos subconjuntos "completos" son los *compactos*, que además tienen un montón de propiedades topológicas y métricas que hacen que se "comporten muy bien".
""")

# ╔═╡ 4167e674-02ff-4295-b375-b9b7a1783134
md"""
# Subsucesiones
Sea $(X,d)$ un espacio métrico y $\{x_n\}$ una sucesión en $X$.

!!! note "Definición"
	Una **subsucesión** de $\{x_n\}$ es una sucesión formada por elementos $x_{n_k}$ de $\{x_n\}$ con $n_0<n_1<n_2<\dots$.
"""

# ╔═╡ e1e905f1-485e-42ae-9a82-941070832be4
md"""
## Convergencia y Subsucesiones

Un resultado bien conocido y fácil de demostrar.

Sea $(X,d)$ un espacio métrico y $\{x_n\}$ una sucesión en $X$.

!!! thrm "Proposición"
	Si $x_n\rightarrow x$, entonces toda subsucesión $\{x_{n_k}\}$ de $\{x_n\}$ cumple que $x_{n_k}\rightarrow x$.
"""

# ╔═╡ cd289263-5ae1-4013-b656-5bd8ee78ce77
md"""
## Propiedad de Bolzano-Weierstrass
!!! thrm "Teorema (La propiedad de Bolzano-Weierstrass)"
	Sean $a,b\in\mathbb{R}$ con $a<b$. Toda sucesión en $[a,b]$ tiene una subsucesión convergente en $[a,b]$.
"""

# ╔═╡ 3c2836ff-d1bc-4fdd-8604-8e14f8dd4d9d
foldproofi(md"""
Sea $\{x_n\}$ en $[a,b]$.

Se define $I_0=[a,b]$ y recursivamente $I_{k+1}=[a_{k+1},b_{k+1}]$ como el intervalo $[a_k,\frac{a_k+b_k}{2}]$ ó $[\frac{a_k+b_k}{2},b_k]$ que contenga una infinidad de elementos $x_n$. 
""")

# ╔═╡ 103726c1-13f6-4ae4-bb6c-0c77afe8cca3
foldable0(md"""
!!! warning ""
	Como $|a_k-b_k|\rightarrow 0$ tenemos que $a_k\rightarrow x$ y $b_k\rightarrow x$, con $x\in[a,b]$.

	Entonces se puede tomar una subsucesión con $x_{n_k}\in I_k$ que converge a $x$. $\square$
""")

# ╔═╡ 6293daad-8e0a-459c-9f0c-413728171f8c
md"""
## Propiedad de Bolzano-Weierstrass
Toda sucesión en $[a,b]$ tiene una subsucesión convergente en $[a,b]$.
"""

# ╔═╡ 557202fb-c319-45e0-9600-b60acc847a40
LocalResource("pics/mat06Compact_Interval.png")

# ╔═╡ fc46c008-f0cc-471b-9f5b-4bb7a365a656
md"""
## Subconjuntos "Completos"

Así tenemos que los intervalos $[a,b]$ tienen la propiedad de ser "completos": Ninguna sucesión puede acumularse en algún punto fuera de $[a,b]$.
"""

# ╔═╡ 7c97bec0-fea0-41c8-bcf4-90f17def556e
foldable0(md"""
Quisiéramos que nuestros subconjuntos "completos" en espacios métricos generales tengan las mismas propiedades y se comporten igual de bien que los intervalos $[a,b]$...
""")

# ╔═╡ de015123-559a-4225-908f-4b8751776330
md"""
# Compactos
Sea $(X,d)$ un espacio métrico y $A\subset X$.
!!! note "Definición"
	 $A$ es (**sucesionalmente**) **compacto** si toda sucesión en $A$ tiene una subsucesión convergente a un punto en $A$.
"""

# ╔═╡ 6275c521-ef20-4de2-87ae-b260f58a4ac9
foldable0(md"""
En inglés, sucesión es *sequence*, y sucesionalmente es *sequentially*, que en realidad literalmente se traduce como "secuencialmente".

Pero según mi opinión, esta última traducción no describe adecuadamente el concepto en la definición.
""")

# ╔═╡ 9b0bd6fe-8be3-4657-bba4-d69d6f233179
md"""
## Sucesionalmente Compactos
"""

# ╔═╡ 13da3df9-53de-46f6-be00-662bbc91203b
imagecenter("https://mathstrek.blog/wp-content/uploads/2013/02/sequential_compact.png",w=800)

# ╔═╡ 9a6bbe47-9a6e-4063-b7e7-38ab87e7ab8c
md"""
## Compactos
!!! tip "Ejemplo"
	 $A=[a_1,b_1]\times\dots\times[a_n,b_n]\subset\mathbb{R}^n$ es compacto. Usaremos la métrica $d_E$. 

	Sea $\{x_m=(x_{1,m},\dots,x_{n,m})\}$ una sucesión en $A$.

	Por la propiedad de Bolzano-Weierstrass:
	-  $\{x_{1,m}\}$ tiene una subsucesión convergente $\{x_{1,m_{k_1}}\}$ en $[a_1,b_1]$.
"""

# ╔═╡ 9d16d84a-7849-491f-83a1-efc8d6d4e406
foldable0(md"""
!!! tip ""
	-  $\{x_{2,m_{k_1}}\}$ tiene una subsucesión convergente $\{x_{2,m_{k_2}}\}$ en $[a_2,b_2]$.

	- ...

	-  $\{x_{n,m_{k_{n-1}}}\}$ tiene una subsucesión convergente $\{x_{n,m_{k_n}}\}$ en $[a_n,b_n]$.

	Así, $\{x_{m_{k_n}}\}$ es convergente en $A$.
""")

# ╔═╡ ac5397d6-84ab-4a31-8e37-18c8ee6da03d
md"""
## Compactos
Algunos resultados fáciles de demostrar.

Sea $(X,d)$ métrico.

!!! thrm "Proposición"
	Si $A\subset X$ es cerrado y $X$ compacto, entonces $A$ es compacto.
"""

# ╔═╡ eddc915b-53e6-4379-b73e-e65cae3c65dd
foldproof(md"""
Sea $\{x_n\}$ en $A$. Al ser $X$ compacto, existe $\{x_{n_j}\}$ convergente a $x\in X$. 
		  
Al ser $A$ cerrado, toda sucesión convergente se acumula en $A$, por lo tanto $x\in A$. $\square$
""")

# ╔═╡ f881dd36-761a-4a56-929b-52d759005cc0
foldable0(md"""
!!! thrm "Proposición"
	Sea $Y$ un espacio métrico. $X$ y $Y$ son compactos si y solo si $X\times Y$ es compacto. 
""")

# ╔═╡ 961ca925-558a-4560-bb36-a88c193b0384
md"""
## Compactos

!!! ex "Ejemplos"
	Tomemos $C\subset\mathbb{R}$ el conjunto de Cantor de los tercios de en medio excluidos construido antes.

	1. Se demostró que $C$ es cerrado, además sabemos que $C\subset [0,1]$, por lo que $C$ es compacto.
"""

# ╔═╡ 955b62ea-025b-4a18-8d96-0f67dd93e09e
foldable0(twocolumn(md"""
!!! ex ""
	2.  $C^n=C\times \dots \times C\subset \mathbb{R}^n$ es un compacto.
![Cantor Dust](https://www.robertdickau.com/cantordust.png)
""",imagecenter("https://upload.wikimedia.org/wikipedia/commons/f/fe/Cantorcubes.gif",w=320)))

# ╔═╡ e30e7fb0-2f3f-49fc-95b5-af9170b19243
md"""
## Compactos y Continuidad
Sean $(X,d_X)$ y $(X,d_Y)$ espacios métricos.
!!! thrm "Teorema"
	Si $f:X\rightarrow Y$ es continua y $A\subset X$ es compacto, entonces $f(A)$ es compacto.
"""

# ╔═╡ 008063af-8bda-4c44-abbe-a294c864042b
foldproof(md"""
Sea $\{y_n\}$ en $f(A)$. Entonces existe $\{x_n\}$ en $A$ con $f(x_n)=y_n$.

Como $A$ es compacto, existe $\{x_{n_k}\}$ convergente a $x\in A$.

Por continuidad de $f$ tenemos $f(x_{n_k})=y_{n_k}\rightarrow f(x)\in f(A)$. $\square$
""")

# ╔═╡ cb8923f6-cf10-4498-be34-54f1fdb92527
foldable(md"""Corolario""", md"""
La compacidad es un invariante topológico.
""")

# ╔═╡ 12fe1e12-aff0-484a-8ed5-ee2ab440f897
md"""
# Acotados
Sea $(X,d)$ un espacio métrico y $A\subset X$.
!!! note "Definición"
	 $A$ es **acotado** si existen $x\in X$ y $r\in\mathbb{R}^+$ tales que $A\subset\mathcal{B}(x,r)$.
"""

# ╔═╡ 3b799153-f816-42f7-9bfc-62c1d8b5d165
foldexample(md"""
- Conjuntos $[a_1,b_1]\times\dots\times[a_n,b_n]$ son acotados en $(\mathbb{R}^n,d_E)$.


- Subconjuntos $A\subset [a_1,b_1]\times\dots\times[a_n,b_n]$ son acotados en $(\mathbb{R}^n,d_E)$.
""")

# ╔═╡ 97540fee-a2e9-4727-8742-71bf18632e74
foldable0(md"""
!!! tip ""
	- Todo subconjunto en $(\widehat{\mathbb{C}},d_{chord})$ es acotado, pues $d_{chord}(x,y)\leq 2$ para todo $x,y\in\widehat{\mathbb{C}}$.
""")

# ╔═╡ 3014571a-e2eb-4219-a7f3-382f0acb7109
md"""
## Equivalencia de Acotados
Sean $(X,d_X)$ y $(Y,d_Y)$ espacios métricos.
!!! thrm "Teorema"
	Si $f:X\rightarrow Y$ es establece una equivalencia métrica y $A\subset X$ es acotado, entonces $f(A)$ es acotado.
"""

# ╔═╡ b47d6d42-f8c0-4064-87ec-317bcdc8d90c
foldproof(md"""
Sean $x\in X$ y $r\in\mathbb{R}^+$ tales que $A\subset\mathcal{B}_{d_X}(x,r)$. 
Sean $c_1<c_2$ las constantes positivas de la equivalencia métrica. Entonces para todo $x'\in A$

$d_Y(f(x),f(x')) \leq c_2 d_X(x,x')< c_2 r.$

Es decir $f(A)\subset \mathcal{B}(f(x), c_2 r)$. $\square$
""")

# ╔═╡ 0cccb430-4318-462c-8ec6-418dbe5a2b89
md"""
## No Equivalencia de Acotados

!!! tip "Ejemplos"
	Como vimos antes $(\mathbb{R},d_E)$ y $((-1,1),d_E)$ son homeomorfos, pero
	-  $(-1,1)\subset \mathcal{B}(0,1)$ implica que $(-1,1)$ es acotado.


	-  $\mathbb{R}$ no es acotado.
"""

# ╔═╡ 84eb6ac8-5ba9-4703-a631-17410dac83f9
foldexample(md"""
-  $A=[0,1)\subset (-1,1)$ es acotado.


- Mediante el homeomorfismo mencionado se tiene que $f(A)=[0,\infty)$, que no es acotado.
""")

# ╔═╡ bf23a674-77fd-448f-bc99-64118e07c2b8
md"""
# Compactos en $\mathbb{R}^n$
Un resultado bastante conocido y muy útil.

Consideremos $(\mathbb{R}^n,d_E)$ y $A\subset \mathbb{R}^n$.
!!! thrm "Teorema"
	Si $A$ es cerrado y acotado, entonces es compacto.
"""

# ╔═╡ 03928cd4-1180-4e00-9583-f94f15540399
foldproof(md"""
Como $A$ es acotado, existen $x\in\mathbb{R}^n$, $r\in\mathbb{R}^+$ y $[a_i,b_i]$ tales que

$A\subset\mathcal{B}(x,r)\subset R=[a_1,b_1]\times\dots\times[a_n,b_n].$

Como $A$ es cerrado y $R$ es compacto, entonces $A$ es compacto. $\square$ 
""")

# ╔═╡ e9503e72-204c-4ba2-a7cd-c8a2b1c8044f
md"""
## Cerrado y Acotado no Compacto
!!! tip "Ejemplo"
	Sea $X=(0,1)\cup\{2\}\subset\mathbb{R}$. Usaremos la métrica $d_E$. Es claro  que $(0,1)$ es abierto en $X$ y $\{2\}$ es cerrado en $X$, además de que ambos son acotados.
"""

# ╔═╡ 59db2ad2-2cba-4907-b9a1-16118eb8cf04
foldable0(md"""
!!! tip ""
	Tomando $x\in\{2\}$ tenemos que $\mathcal{B}(x,1/2)=\{2\}\subset \{2\}$, por lo que $\{2\}$ es abierto en $X$. Por lo tanto $X-\{2\}=(0,1)$ es cerrado en $X$.
""")

# ╔═╡ 1dfb6527-5edf-4498-be6b-e489e3e300a9
foldable0(md"""
!!! tip ""
	Por otro lado, toda subsucesión de $\{1/n\}$ en $(0,1)$ no converge en $(0,1),$ por lo tanto $(0,1)$ no es compacto.
""")

# ╔═╡ 1c13573a-2259-44fe-814e-2dd3b347963a
md"""
# Totalmente acotados
Sea $(X,d)$ métrico.
!!! note "Definición"
	 $A\subset X$ es **totalmente acotado** si para todo $\varepsilon>0$ existe un conjunto finito $N_\varepsilon=\{x_1,\dots,x_m\}\subset A$ tal que para todo $x\in A$ existe $x_i\in N_\varepsilon$ tal que $d(x,x_i)<\varepsilon$.
"""

# ╔═╡ 2f81f6f5-ef5e-4c2a-ae0b-c9ec705394c0
foldable0(md"""
!!! note ""
	Al conjunto $N_\varepsilon$ se le llama **$\varepsilon$-red** para $A$.
""")

# ╔═╡ a42f1cdf-6757-47cc-9795-2d345a328a10
foldable0(md"""
Directamente de la definición se tiene el siguiente resultado

!!! thrm "Proposición"
	Sea $A\subset X$ totalmente acotado, $\varepsilon>0$ y $N_\varepsilon$ una $\varepsilon$-red. Entonces

	$A\subset\bigcup_{x_k\in N_\varepsilon}\mathcal{B}(x_k,\varepsilon).$
""")

# ╔═╡ a6202e7f-267d-4ee0-9b1f-dee977240afe
md"""
## Totalmente Acotados

!!! ex "Ejemplo"
	El conjunto $\color{gray}S$ en el espacio métrico $(X,d)$, con una $r$-red y la unión de bolas cubriendo a  $\color{gray}S$.
"""

# ╔═╡ 0762a118-6581-4fbf-8f1b-7fdb48235454
imagecenter("https://www.mileshwheeler.com/ma30252/external/totalbdd.svg",w=920)

# ╔═╡ 2899dca6-41f9-4130-88f9-da4e09b23660
md"""
## Acotados y Totalmente Acotados
Sean $(X,d_X)$ espacio métrico y $A\subset X$.
!!! thrm "Proposición"
	Si $A$ es totalmente acotado, entonces es acotado.
"""

# ╔═╡ 094f494f-cb6d-4e1a-be1f-c6c66b20e560
foldproof(md"""
Sea $N_1$ una $1$-red para $A$. Tómese

$r=1+\max_{x_i,x_j\in N_1}\{d(x_i,x_j)\}\in\mathbb{R}^+.$

Para cualquier $x\in A$ existe $x_i\in N_1$ con $d(x,x_i)<1$, entonces

$d(x,x_1)\leq d(x,x_i)+d(x_i,x_1)< r.\,\,\square$
""")

# ╔═╡ 83b8c325-b8ae-4889-9d72-d2f42bac8a0a
md"""
## Acotados no Totalmente Acotados
!!! tip "Ejemplo"
	Sea $(\mathbb{Z},d_{dis})$ donde $d_{dis}$ es la llamada **métrica discreta**:

	$d_{dis}(x,y)=\begin{cases}0,\, \mathrm{si}\, x=y \\ 1,\, \mathrm{si}\, x\neq y\end{cases}$
"""

# ╔═╡ 5e13baef-fb84-4ffa-9120-aaa0866a4ddf
foldable0(md"""
!!! tip ""
	  $\mathbb{Z}$ es acotado pues $\mathbb{Z}\subset\mathcal{B}_{d_{dis}}(0,2)$.
""")

# ╔═╡ 42855f0d-5c75-4b92-bcb9-54a95d46a30a
foldable0(md"""
!!! tip ""
	Pero $\mathbb{Z}$ no es totalmente acotado, pues para $\varepsilon=1/2$ no existe un subconjunto finito $N_\varepsilon$ que sea $\varepsilon$-red, ya que para todo $y\in \mathbb{Z} - N_\varepsilon$ y $x\in N_\varepsilon$ se cumple que $d_{dis}(x,y)=1>1/2$.
""")

# ╔═╡ 1585cc54-01d9-475f-b4a5-7f8813c423e7
md"""
## Totalmente Acotados
Sea $(X,d)$ un espacio métrico.
!!! thrm "Proposición"
	Sea $A\subset X$ totalmente acotado y $B\subset A$, entonces $B$ es totalmente acotado.
"""

# ╔═╡ 87753aa8-21dd-4d8c-8e58-daddfb944772
foldproof(md"""
Sean $\varepsilon>0$ y $N=\{a_1,\dots,a_n\}$ una $(\varepsilon/2)$-red para $A$.

Como $B\subset A$, para cada $i$ con $\mathcal{B}(a_i,\varepsilon/2)\cap B\neq\emptyset$ podemos tomar $b_i\in \mathcal{B}(a_i,\varepsilon/2)\cap B$.
""")

# ╔═╡ 88279d93-f91a-4222-aaf8-64f24fa39c12
foldable0(md"""
!!! warning ""
	Sea $b\in B$. Existe $a_i\in N$ tal que $d(b,a_i)<\varepsilon/2$ y por construcción $b_i\in\mathcal{B}(a_i,\varepsilon/2)$, entonces

	$d(b,b_i)\leq d(b,a_i)+d(a_i,b_i)<\frac{\varepsilon}{2}+\frac{\varepsilon}{2}=\varepsilon.$

	Por lo tanto, $N'=\{b_1,\dots,b_n\}\subset B$ es una $\varepsilon$-red para $B$. $\square$
""")

# ╔═╡ d1ad037d-5fa6-4381-b97b-6d86ba9338a4
md"""
## Equivalencia de Totalmente Acotados
Sean $(X,d_X)$ y $(Y,d_Y)$ espacios métricos.
!!! thrm "Teorema"
	Si $f:X\rightarrow Y$ es establece una equivalencia métrica y $A\subset X$ es totalmente acotado, entonces $f(A)$ es totalmente acotado.
"""

# ╔═╡ 4d75c6a5-48e0-412d-a4ab-3ac47f07182d
foldproof(md"""
Sean $\varepsilon>0$, $y\in f(A)$ y $x\in A$ tal que $f(x)=y$.

Sean $c_1<c_2$ las constantes positivas de la equivalencia métrica y $N_{\varepsilon/c_2}$ una $(\varepsilon/c_2)-$red para $A$. Entonces existe $x_i\in N_{\varepsilon/c_2}$ tal que $d(x,x_i)<\varepsilon/c_2$ y así 

$d_Y(y,f(x_i)) =d_Y(f(x),f(x_i)) \leq c_2 d_X(x,x_i)< \varepsilon.$

De modo que $f(N_{\varepsilon/c_2})$ es una $\varepsilon$-red para $f(A)$. $\square$
""")

# ╔═╡ 967ebf55-5d79-45a5-8050-ed0f21a267b4
md"""
# Caracterización de Compactos
Sea $(X,d)$ un espacio métrico completo y $A\subset X$.
!!! thrm "Teorema"
	 $A$ es compacto si y solo si $A$ es cerrado y totalmente acotado.
"""

# ╔═╡ fb8f212e-bca3-40f4-b415-635a2762d5d8
foldproofi(md"""
 $\Rightarrow$) 1) Supongamos que para un $\varepsilon>0$ dado no existe una $\varepsilon$-red para $A$.

Entonces existe $\{x_n\}$ en $A$ tal que $d(x_i,x_j)\geq\varepsilon$ para todo $i\neq j$. Como $A$ es compacto, debe existir $\{x_{n_k}\}$ convergente en $A$.

Entonces $\{x_{n_k}\}$ es de Cauchy y existe $N$ tal que para todo $n_l,n_m>N$ se tiene que $d(x_{n_l},x_{n_m})<\varepsilon$, una contradicción
""")

# ╔═╡ 0284ee7d-327b-47b6-a9d8-c1170b0b2b33
md"""
## Caracterización de Compactos
!!! warning "Demostración"
	 $\Rightarrow$) 2) Supongamos que $A$ no es cerrado.

	Entonces debe existir $\{x_n\}$ en $A$ tal que $x_n\rightarrow x\notin A$.

	Por lo que ninguna subsucesión de $\{x_n\}$ converge en $A$, una contradicción al ser $A$ compacto.
"""

# ╔═╡ f0c1b1e7-9f5a-4213-a4b0-cab1069ccfc5
foldable0(md"""
Nótese que no se usó la hipótesis $(X,d)$ completo. Así que en general tenemos que en cualquier $(X,d)$, si $A$ es compacto entonces $A$ es cerrado y totalmente acotado.
""")

# ╔═╡ a73e764b-e409-4d45-8590-1bd65a6d9c40
md"""
## Caracterización de Compactos
!!! warning "Ideas prinicpales de la demostración"
	 $\Leftarrow$) Sea $\{x_n\}$ en $A$.

	Sea $N_1$ una $1$-red para $A$. Existe $y_1\in N_1$ tal que $d(x_n,y_1)<1$ para una infinidad de $n$'s. 

	Sea $B_1=\mathcal{B}(y_1,1)\cap A$.
"""

# ╔═╡ d606ffec-917e-443e-82fd-0346ddd04da2
LocalResource("pics/mat06Compact_Equiv1.png", :width=>600)

# ╔═╡ 8d640c18-94a3-4f29-b91c-5cb18886663a
md"""
## Caracterización de Compactos
!!! warning "Ideas prinicpales de la demostración (continuación)"
	 $B_1\subset A$ es totalmente acotado. Sea $N_{1/2}$ una $(1/2)$-red para $B_1$. Existe $y_2\in N_{1/2}$ tal que $d(x_n,y_2)<1/2$ para una infinidad de $n$'s. 

	Sea $B_2=\mathcal{B}(y_2,1/2)\cap B_1.$
"""

# ╔═╡ 7b644bd4-fe18-457e-acc9-e1dd290ffd3b
twocolumn(LocalResource("pics/mat06Compact_Equiv2.png"),foldable0(md"""
!!! warning ""
	Análogamente se construyen $B_{k+1}=\mathcal{B}(y_k,1/2^k)\cap B_k$.
	
	Tomando $x_{n_k}\in B_k$, por construcción $\{x_{n_k}\}$ es de Cauchy. 
	
	Al ser $X$ completo $\{x_{n_k}\}$ converge a algún $x\in X$. 
	
	Al ser $A$ cerrado, $x\in A$. $\square$
"""))

# ╔═╡ 4ca2fc61-ed3f-4c09-be68-83fd4680b47a
md"""
## Acotados no Totalmente Acotados
!!! tip "Ejemplo"
	Nótese que toda sucesión de Cauchy en $(\mathbb{Z},d_{dis})$ es eventualmente constante, y entonces convergente.

	Por lo tanto, $(\mathbb{Z},d_{dis})$ es un espacio métrico completo.

	Ya sabemos que $\mathbb{Z}$ es cerrado y acotado, pero no totalmente acotado.
"""

# ╔═╡ 1ec7d52a-e809-4322-8ac7-b41b9f667ada
foldable0(md"""
!!! tip ""
	Por otro lado, ¡no es compacto!: la sucesión $\{n\}$ no tiene ninguna subsucesión convergente en $(\mathbb{Z},d_{dis})$.
""")

# ╔═╡ 9882ac4f-0523-444f-8581-b83b616d27e0
md"""
## Compactos en $\mathbb{R}^n$
Consideremos otra vez $(\mathbb{R}^n,d_E)$ y $A\subset \mathbb{R}^n$.
!!! thrm "Corolario"
	Si $A$ es compacto, entonces es cerrado y acotado.
"""

# ╔═╡ 8e3b8682-7234-40f2-bebe-c02219ee37b1
foldproof(md"""
Por el teorema anterior, $A$ es cerrado y totalmente acotado, y además acotado por otro resultado anterior. $\square$  
""")

# ╔═╡ ebb8edcf-39a1-4932-9d7e-75eef9b9ab27
md"""
# Cubiertas Abiertas
Sea $(X,d)$ un espacio métrico y $A\subset X$.

!!! note "Definición"
	Un conjunto $\mathfrak{U}$ de conjuntos abiertos en $X$ es una **cubierta abierta** de $A$ si

	$A\subset\bigcup_{U\in\mathfrak{U}}U$
"""

# ╔═╡ 5746251d-fba4-4f02-a72b-0ea652a89b63
foldable0(md"""
!!! note ""
	Un subconjunto $\mathfrak{U}'$ de una cubierta abierta $\mathfrak{U}$ es una **subcubierta abierta** si también es cubierta de $A$, es decir,

	$A\subset\bigcup_{U\in\mathfrak{U}'}U$
""")

# ╔═╡ 7a504aaf-4291-4252-82b2-0ffe8142e634
md"""
## Totalmente Acotados y Cubiertas
Nótese que la propiedad de ser totalmente acotado equivale a decir que existe una cubierta abierta finita de bolas de radio $\varepsilon$: Los puntos de la $\varepsilon$-red son los centros de las bolas.
"""

# ╔═╡ b1b8e413-1bd9-4738-90cd-5ed09652748e
imagecenter("https://mathstrek.blog/wp-content/uploads/2013/02/totally_bounded.png",w=800)

# ╔═╡ 9f5631e8-6c6b-4718-849f-8bccdbd1f021
md"""
## Compactos y Cubiertas
Sea $(X,d)$ un espacio métrico y $A\subset X$.
!!! thrm "Teorema"
	 $A$ es compacto sí y sólo sí toda cubierta abierta de $A$ tiene una subcubierta finita.
"""

# ╔═╡ 4b13c1d0-01c2-47f7-846a-b70a29e7baf5
imagecenter("https://mathstrek.blog/wp-content/uploads/2013/02/compact_spaces.png",w=800)

# ╔═╡ 995805be-7ca6-4f6c-a9a2-fbddc678b86b
md"""
## Compactos y Cubiertas
!!! warning "Ideas principales de la demostración"
	 $\Rightarrow$) Sea $\mathfrak{U}$ una cubierta abierta de $A$. Al ser $A$ compacto, existe $\varepsilon>0$ tal que para todo $x\in A$ se tiene que existe $U\in\mathfrak{U}$ tal que $\mathcal{B}(x,\varepsilon)\subset U$.
"""

# ╔═╡ 77d4e51b-85d8-43a5-9535-f5d61bd647dd
foldable0(md"""
!!! warning ""
	(Si no, para cada $\varepsilon_n=1/n$ existiría $\{x_n\}$ tal que $\mathcal{B}(x_n,1/n)$ no está contenido en ningún $U\in\mathfrak{U}$. Por la hipótesis, $\{x_n\}$ tendría una subsucesión convergente a $x\in A$, que implica que para algún $U\in\mathfrak{U}$ las bolas $\mathcal{B}(x_n,1/n)\subset U$ para una infinidad de $n$'s, una contradicción.)
""")

# ╔═╡ 608a81bc-2e52-4e89-899d-ea12e6e98ae8
foldable0(md"""
!!! warning ""
	Como $A$ es totalmente acotado, existe una cubierta finita formada por $\mathcal{B}(x_i,\varepsilon)$. Tomando los abiertos $U_i\in\mathfrak{U}$ tal que $\mathcal{B}(x_i,\varepsilon)\subset U_i$, tenemos la subcubierta finita.
""")

# ╔═╡ 4c82f077-ccb8-487c-a085-837d717ed7c7
md"""
## Compactos y Cubiertas
!!! warning "Demostración"
	 $\Leftarrow$) Supongamos que existe $\{x_n\}$ en $A$ sin subsucesiones convergentes. 

	Entonces, para todo $x\in A$ existe $\varepsilon_x>0$ tal que $U_x=\mathcal{B}(x,\varepsilon_x)$ contiene una cantidad finita de elementos $x_n$. 
"""

# ╔═╡ 4f75d4b4-0a11-4c21-86cb-a8155be9ed61
foldable0(md"""
!!! warning ""
	Por construcción $\mathfrak{U}=\{U_x\}_{x\in A}$ es una cubierta abierta de $A$. Por hipótesis, existe una subcubierta finita $\mathfrak{U}'\subset\mathfrak{U}$.

	Pero esto último implica que $\bigcup_{U\in\mathfrak{U}'}U\supset A$ contiene una cantidad finita de elementos $x_n$, una contradicción. $\square$
""")

# ╔═╡ de0c0d83-761c-4adf-9884-d0be3167b74d
md"""
# Observaciones
Como hemos visto, los compactos tienen bastantes propiedades convenientes, en especial cuando están contenidos en espacios métricos completos (como $\mathbb{R}^n$).
"""

# ╔═╡ e0c6cc30-e289-4722-aede-60b68961652d
foldable0(md"""
Los *fractales* serán conjuntos compactos en espacios métricos completos, y como veremos, estas características serán no sólo convenientes, sino "naturales".
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
# ╟─dd1c6308-5fd9-4197-bc8d-85812cac97ac
# ╟─4167e674-02ff-4295-b375-b9b7a1783134
# ╟─e1e905f1-485e-42ae-9a82-941070832be4
# ╟─cd289263-5ae1-4013-b656-5bd8ee78ce77
# ╟─3c2836ff-d1bc-4fdd-8604-8e14f8dd4d9d
# ╟─103726c1-13f6-4ae4-bb6c-0c77afe8cca3
# ╟─6293daad-8e0a-459c-9f0c-413728171f8c
# ╟─557202fb-c319-45e0-9600-b60acc847a40
# ╟─fc46c008-f0cc-471b-9f5b-4bb7a365a656
# ╟─7c97bec0-fea0-41c8-bcf4-90f17def556e
# ╟─de015123-559a-4225-908f-4b8751776330
# ╟─6275c521-ef20-4de2-87ae-b260f58a4ac9
# ╟─9b0bd6fe-8be3-4657-bba4-d69d6f233179
# ╟─13da3df9-53de-46f6-be00-662bbc91203b
# ╟─9a6bbe47-9a6e-4063-b7e7-38ab87e7ab8c
# ╟─9d16d84a-7849-491f-83a1-efc8d6d4e406
# ╟─ac5397d6-84ab-4a31-8e37-18c8ee6da03d
# ╟─eddc915b-53e6-4379-b73e-e65cae3c65dd
# ╟─f881dd36-761a-4a56-929b-52d759005cc0
# ╟─961ca925-558a-4560-bb36-a88c193b0384
# ╟─955b62ea-025b-4a18-8d96-0f67dd93e09e
# ╟─e30e7fb0-2f3f-49fc-95b5-af9170b19243
# ╟─008063af-8bda-4c44-abbe-a294c864042b
# ╟─cb8923f6-cf10-4498-be34-54f1fdb92527
# ╟─12fe1e12-aff0-484a-8ed5-ee2ab440f897
# ╟─3b799153-f816-42f7-9bfc-62c1d8b5d165
# ╟─97540fee-a2e9-4727-8742-71bf18632e74
# ╟─3014571a-e2eb-4219-a7f3-382f0acb7109
# ╟─b47d6d42-f8c0-4064-87ec-317bcdc8d90c
# ╟─0cccb430-4318-462c-8ec6-418dbe5a2b89
# ╟─84eb6ac8-5ba9-4703-a631-17410dac83f9
# ╟─bf23a674-77fd-448f-bc99-64118e07c2b8
# ╟─03928cd4-1180-4e00-9583-f94f15540399
# ╟─e9503e72-204c-4ba2-a7cd-c8a2b1c8044f
# ╟─59db2ad2-2cba-4907-b9a1-16118eb8cf04
# ╟─1dfb6527-5edf-4498-be6b-e489e3e300a9
# ╟─1c13573a-2259-44fe-814e-2dd3b347963a
# ╟─2f81f6f5-ef5e-4c2a-ae0b-c9ec705394c0
# ╟─a42f1cdf-6757-47cc-9795-2d345a328a10
# ╟─a6202e7f-267d-4ee0-9b1f-dee977240afe
# ╟─0762a118-6581-4fbf-8f1b-7fdb48235454
# ╟─2899dca6-41f9-4130-88f9-da4e09b23660
# ╟─094f494f-cb6d-4e1a-be1f-c6c66b20e560
# ╟─83b8c325-b8ae-4889-9d72-d2f42bac8a0a
# ╟─5e13baef-fb84-4ffa-9120-aaa0866a4ddf
# ╟─42855f0d-5c75-4b92-bcb9-54a95d46a30a
# ╟─1585cc54-01d9-475f-b4a5-7f8813c423e7
# ╟─87753aa8-21dd-4d8c-8e58-daddfb944772
# ╟─88279d93-f91a-4222-aaf8-64f24fa39c12
# ╟─d1ad037d-5fa6-4381-b97b-6d86ba9338a4
# ╟─4d75c6a5-48e0-412d-a4ab-3ac47f07182d
# ╟─967ebf55-5d79-45a5-8050-ed0f21a267b4
# ╟─fb8f212e-bca3-40f4-b415-635a2762d5d8
# ╟─0284ee7d-327b-47b6-a9d8-c1170b0b2b33
# ╟─f0c1b1e7-9f5a-4213-a4b0-cab1069ccfc5
# ╟─a73e764b-e409-4d45-8590-1bd65a6d9c40
# ╟─d606ffec-917e-443e-82fd-0346ddd04da2
# ╟─8d640c18-94a3-4f29-b91c-5cb18886663a
# ╟─7b644bd4-fe18-457e-acc9-e1dd290ffd3b
# ╟─4ca2fc61-ed3f-4c09-be68-83fd4680b47a
# ╟─1ec7d52a-e809-4322-8ac7-b41b9f667ada
# ╟─9882ac4f-0523-444f-8581-b83b616d27e0
# ╟─8e3b8682-7234-40f2-bebe-c02219ee37b1
# ╟─ebb8edcf-39a1-4932-9d7e-75eef9b9ab27
# ╟─5746251d-fba4-4f02-a72b-0ea652a89b63
# ╟─7a504aaf-4291-4252-82b2-0ffe8142e634
# ╟─b1b8e413-1bd9-4738-90cd-5ed09652748e
# ╟─9f5631e8-6c6b-4718-849f-8bccdbd1f021
# ╟─4b13c1d0-01c2-47f7-846a-b70a29e7baf5
# ╟─995805be-7ca6-4f6c-a9a2-fbddc678b86b
# ╟─77d4e51b-85d8-43a5-9535-f5d61bd647dd
# ╟─608a81bc-2e52-4e89-899d-ea12e6e98ae8
# ╟─4c82f077-ccb8-487c-a085-837d717ed7c7
# ╟─4f75d4b4-0a11-4c21-86cb-a8155be9ed61
# ╟─de0c0d83-761c-4adf-9884-d0be3167b74d
# ╟─e0c6cc30-e289-4722-aede-60b68961652d
# ╟─243e1cb8-a01f-40bc-81a7-db96819512c6
# ╠═b1cef9d9-b551-4e22-865a-fa8cc80a425b
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
