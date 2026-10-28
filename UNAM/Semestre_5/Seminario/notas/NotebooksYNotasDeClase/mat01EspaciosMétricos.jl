### A Pluto.jl notebook ###
# v0.20.28

#> [frontmatter]
#> title = "Espacios Métricos"
#> description = "Seminario de Geometría: Geometría Fractal y Visualización"
#> 
#>     [[frontmatter.author]]
#>     name = "Renato Leriche Vázquez"
#>     url = "https://www.fciencias.unam.mx/directorio/45394"

using Markdown
using InteractiveUtils

# ╔═╡ ed5b43c0-0ea0-427e-b7d7-7f3574460af0
include("src/nbutils.jl")

# ╔═╡ ebd503e4-4174-11ef-16f4-491850109f05
md"""
# Espacios Métricos
"""

# ╔═╡ b7db3416-80c8-4692-8e27-fa0d8cfa28e0
md"""
## Introducción

Nos interesa estudiar distintos *espacios*, en particular los llamados *métricos*, pues los *fractales* serán subconjuntos con propiedades especiales de estos *espacios* en los que podemos "medir distancias".  
"""

# ╔═╡ 3c201127-95b2-4bee-b7c6-7e4ade1609f5
md"""
## Espacios y puntos

Por conveniencia y tradición, se establece la siguiente definición.

!!! note "Definición"
	Un **espacio** es un conjunto y un **punto** en dicho espacio es un elemento del conjunto.
"""

# ╔═╡ 77eba067-3254-413c-8284-59794776c21c
foldable(md"",md"""Por supuesto, estos espacios serán "homogéneos" (estarán formados por el mismo tipo de elementos) y más adelante les otorgaremos una o más "estructuras". """)

# ╔═╡ 69bcc7c3-6d1d-4b50-af58-a42ed3ceddf4
md"""
## Espacios

!!! example "Ejemplos"
	-  $\mathbb{R}$, la recta de los números reales.


    -  $\mathbb{R}^n=\Pi_{i=1}^n\mathbb{R}$, el $n-$producto cartesiano de $\mathbb{R}$.
"""

# ╔═╡ 2d87e810-27cc-4721-9cfb-49722fddd061
foldable0(md"""
!!! example ""
    -  $\mathbb{C}$, el plano de números complejos.


    -  $\widehat{\mathbb{C}}=\mathbb{C}\cup\{\infty\}$, el plano de números complejos extendido.
""")

# ╔═╡ eb03b212-eea1-443f-8568-91708cd428de
foldable0(md"""
!!! example ""
	-  $\mathbb{Q}$, el conjunto de números racionales.


	-  $\mathbb{Z}$, el conjunto de números enteros.


	-  $\mathbb{N}$, el conjunto de números naturales.
""")

# ╔═╡ 4c196910-e61f-4253-8b84-0dd6076d38a1
md"""
## Subespacios

A los subconjuntos de espacios podemos llamarlos **subespacios**.

!!! example "Ejemplos"
	-  $\mathbb{R}^+=\{x\in\mathbb{R}:\, x > 0\}$, los números reales positivos.


	-  $\mathbb{R}^+_0=\{x\in\mathbb{R}:\, x \geq 0\}$, los números reales positivos con el $0$.
"""

# ╔═╡ 22c6b4d0-feed-4dfe-8a8d-36b55e2c0ef8
foldable0(md"""
!!! example ""
	-  $(a,b)=\{x\in\mathbb{R}:\, a< x< b\}$, un intervalo abierto.


	-  $[a,b]=\{x\in\mathbb{R}:\, a\leq x\leq b\}$, un intervalo cerrado.
""")

# ╔═╡ 4ab15fa4-3931-4d61-b0ab-12f65795a704
foldable0(md"""
!!! example ""
	- ⬛ $=[0,1]\times [0,1]\subset \mathbb{R}^2$, el cuadrado unitario estándar cerrado.
""")

# ╔═╡ b79eeb0f-21bd-4727-8d7a-a927440395e4
md"""
## Mas subespacios

!!! example "Ejemplos"

	-  $\mathbb{D}=\{z\in\mathbb{C}:\,|z|<1\}$, el disco unitario abierto.


	- ⚫ $=\{z\in\mathbb{C}:\,|z|\leq 1\}$, el disco unitario cerrado.


	-  $\mathbb{C}^*=\mathbb{C}-\{0\}$, el plano de números complejos agujerado.


    -  $\mathbb{H}^2=\{z\in\mathbb{C}:\,\mathrm{Im}(z)>0\}$, el semi-plano superior en el plano de números complejos.
"""

# ╔═╡ 21b799a3-6d05-4f7c-b01f-866d0cf475e6
md"""
## Más espacios

!!! example "Ejemplos"
	-  $\Pi_{i=1}^\infty\mathbb{R}$ el espacio de sucesiones de números reales.


	-  $\Pi_{i=1}^\infty[0,1]$ el cubo de Hilbert.
"""

# ╔═╡ 34597471-3529-477b-9c65-f4af3355870a
foldable0(md"""
!!! example ""
	-  $C[0,1]=\{f:[0,1]\rightarrow \mathbb{R}\,\mathrm{continua}\}$ el espacio de funciones continuas de $[0,1]$ a $\mathbb{R}$.


	-  $V^*=\{f:V\rightarrow \mathbb{R}\,\mathrm{lineal}\}$ el espacio dual de $V$, donde este último es un espacio vectorial sobre el campo $\mathbb{R}$.
""")

# ╔═╡ 7922d946-306d-42ac-8411-67eaf43a38af
foldable0(md"""
!!! example ""
	-  $\mathcal{P}(X)=\{A\subset X\}$, el conjunto potencia del conjunto $X$.
""")

# ╔═╡ cbae3bef-aa75-49cb-8af7-7d75c681b605
md"""
# Espacios métricos

!!! note "Definición"
	Un **espacio métrico** es un espacio $X$ con una función $d:X\times X\rightarrow \mathbb{R}$ llamada **métrica** (ó **función distancia**) tal que para cualequiera $x,y,z\in X$ se tiene que
	1.  $d(x,y)=0$ si y solo si $x=y$,
	2.  $d(x,y)=d(y,x)$ (**simetría**), y
	3.  $d(x,z)\leq d(x,y) + d(y,z)$ (la **desigualdad del triángulo**).
"""

# ╔═╡ afe16c70-9278-467f-8c4c-3fc41a953e14
foldable0(md"""
Usualmente se denota al espacio métrico con su métrica así: $(X,d)$.
""")

# ╔═╡ 2440d7fa-64a0-4411-bdc6-c0965cf832a5
foldable0(md"""Por supuesto, dado un subespacio $S\subset X$ de un espacio métrico $(X,d)$, se tiene que $(S,d)$ es un espacio métrico""")

# ╔═╡ 09f98423-57c6-4473-9c63-d4c7d0852962
md"""
## Otra propiedad de la métrica

Sea $(X,d)$ un espacio métrico.

!!! thrm "Proposición"
	 $d(x,y) > 0$ para todo par de puntos $x,y\in X$ tales que $x\neq y$.
"""

# ╔═╡ 502467c8-4657-4040-b4a4-767c3a510aec
foldproof(md"""
Sean $x,y\in X$. Usando las propiedades de la métrica tenemos directamente 

$0=d(x,x)\leq d(x,y) + d(y,x) = d(x,y) + d(x,y) = 2d(x,y).$
		  
Luego, por el punto 1. de la definición de métrica, $0<d(x,y)$. $\square$
""")

# ╔═╡ 7ae96c1d-9f3a-4354-b986-fd12a8267242
md"""
## Métricas

!!! example "Ejemplo"
	La métrica **euclidiana** en $\mathbb{R}^n$ es

	$d_E(x,y)=\sqrt{\sum_{i=1}^n (x_i-y_i)^2},$
	
	donde $x=(x_1,\dots,x_n), y=(y_1,\dots,y_n)\in \mathbb{R}^n$.
"""

# ╔═╡ f84cb757-3f95-45d8-8ffe-d8437d12b0ab
md"""
## 💻 `Programación` -- Métrica euclidiana
La implementación de $d_E$ para $\mathbb{R}^n$ es directa de su definición.

---
"""

# ╔═╡ 5d570cdb-3692-4dbe-a5d5-8a20e0fa3bde
function dE_Rn(x,y)
	d = 0
	for i in 1:length(x)
		d += (x[i] - y[i])^2
	end
	sqrt(d)
end

# ╔═╡ 72d592c0-d47f-4527-b25d-055ee04e3609
dE_Rn([0,0], [-2,4])

# ╔═╡ 3b6164a2-f6a9-4178-a2a6-baf6352d5bcd
dE_Rn([0,0,1], [2.5,-4,0])

# ╔═╡ d0c00bce-92bf-49c5-800b-544283874ad5
md"""
## Métricas

!!! example "Ejemplo"
	La métrica **euclidiana** en $\mathbb{C}$ es

	$d_E(x,y)=|x-y|,$
	
	donde $x,y\in \mathbb{C}$ y $|\cdot|$ es el módulo de un número complejo.
"""

# ╔═╡ e3a43acc-0001-477a-8433-0223aa26abc4
md"""
#### 💻 `Programación` -- Métrica euclidiana
"""

# ╔═╡ 5268bbad-f317-48ba-9838-840f449ba197
dE_C(x,y) = abs(x-y)

# ╔═╡ 38376ec0-d702-420b-85fc-592a0974e0af
dE_C(2+im, -4+0.5im)

# ╔═╡ ac8c783d-068f-4a7b-aba8-cf9b120ea6b7
md"""
## Métricas

!!! example "Ejemplo"
	La métrica **Manhattan** (o **del taxista**) en $\mathbb{R}^n$ es

	$d_M(x,y)=\sum_{i=1}^n |x_i-y_i|,$
	
	donde $x=(x_1,\dots,x_n), y=(y_1,\dots,y_n)\in \mathbb{R}^n$.
"""

# ╔═╡ a6c03eaa-c57e-4e1a-821a-f64290239f25
md"""
## Métricas euclidiana y Manhattan

La trayectoria $\color{green}\ell_1$ tiene longitud $\color{green}d_E(p,q)$, todas las demás trayectorias $\color{red}\ell_2$, $\color{blue}\ell_3$ y $\color{yellow}\ell_4$ tienen la longitud dada por la distancia Manhattan $d_M(p,q)$...
"""

# ╔═╡ 393ac12f-10af-424b-ba57-4456f898ec35
html"""
<center>
<img src="https://upload.wikimedia.org/wikipedia/commons/0/08/Manhattan_distance.svg" width=500px/>
</center>
"""

# ╔═╡ b0288437-a924-4aa4-b541-63a9b85c9225
md"""
## 💻 `Programación` -- Métrica Manhattan
"""

# ╔═╡ e221916f-7787-4054-aea7-5933978fdbfb
function dM_Rn(x,y)
	d = 0
	for i in 1:length(x)
		d += abs(x[i] - y[i])
	end
	d
end

# ╔═╡ fc22e160-6521-4cfe-95e7-9c201b998cdc
dM_Rn([0,0], [-2,-4])

# ╔═╡ 86cfb808-af7d-4cf9-835a-c2168b646a75
dM_Rn([0,0,1], [2,-4,0])

# ╔═╡ f9cd708c-2004-4eef-ae72-4498566df46f
md"""
## 💻 `Programación` -- Métrica Manhattan en $\mathbb{C}$

Podríamos implementar fácilmente una versión de la métrica Mahattan para $\mathbb{C}$, pero es aún mas fácil reutilizar el código ya creado junto con las *functions* `real` e `imag`:
"""

# ╔═╡ a7c43cef-bf1d-4f16-9ccf-c533b374f805
dM_C(x,y) = dM_Rn([real(x), imag(x)], [real(y), imag(y)])

# ╔═╡ 4f9cc398-9099-42ad-855c-fef272e2c77c
dM_C(1+im, -0.5-2im)

# ╔═╡ 47b70047-2cc1-4c70-bba0-a597d3332edf
foldable(md"💻 Nota técnica.", md""" > Seguramente será más eficiente computacionalmente implementar la versión directa de `dM_C`, pues se evitan varios pasos intermedios antes del resultado.
>
> Pero no nos preocupemos por la eficiencia en estos momentos... 
""")

# ╔═╡ 36aad098-54be-47e9-a06f-73ef37003307
md"""
## Métricas

!!! example "Ejemplo"
	La métrica **de Chebyshev** (ó **del máximo**) en $\mathbb{R}^n$ es

	$d_{\max}(x,y)=\max_{i=1,\dots,n} \{|x_i-y_i|\},$
	
	donde $x=(x_1,\dots,x_n), y=(y_1,\dots,y_n)\in \mathbb{R}^n$.
"""

# ╔═╡ db9c54d2-d39a-4934-8a75-6706f09ea55f
md"""
## 📜 Algoritmo -- Métrica de Chebyshev
El cálculo de la métrica de Chebyshev consiste en la búsqueda de un máximo. Vale la pena describirlo.

---

#### Ingredientes para el algoritmo
- Puntos $x=(x_1,\dots,x_n),y=(y_1,\dots,y_n)\in\mathbb{R}^n$.
"""

# ╔═╡ c9dd3835-9030-4a3c-9bfe-373d8ec3a909
foldable(md"#### Pasos del algoritmo",md"""
- Crear una variable `dxymax`$=0$
- Para cada índice $i$ de $1$ a $n$
  - Si `dxymax`$<|x_i-y_i|$
    - Asignar `dxymax`$=|x_i-y_i|$
""")

# ╔═╡ b8898843-4a73-40bb-83bb-760d83e0670b
md"""
## 💻 `Programación` -- Métrica de Chebyshev
La implementación del algoritmo anterior, dentro de una *function*.

---
"""

# ╔═╡ a11aa470-39c8-4a53-8f46-4af9f47ea1bc
function dmax_Rn(x,y)
	dxymax = 0
	for i in 1:length(x)
		di = abs(x[i] - y[i])
		if di > dxymax
			dxymax = di
		end
	end
	dxymax
end

# ╔═╡ 5d164315-7dbb-4495-bfe0-3724760b8e68
dmax_Rn([1,1], [-2,4])

# ╔═╡ cc9bcaeb-3f38-4d93-a698-0612352409d6
dmax_Rn([0,0,1], [2,-4,0])

# ╔═╡ 1aaccc08-7f00-4fee-917c-4449174a2554
md"""
## Métricas

!!! example "Ejemplo"
	Dado $p\in\mathbb{R}$ con $p\geq 1$, la métrica **$L_p$** en $\mathbb{R}^n$ es

	$d_{L_p}(x,y)=\Big(\sum_{i=1}^n |x_i-y_i|^p\Big)^{\frac{1}{p}},$
	
	donde $x=(x_1,\dots,x_n), y=(y_1,\dots,y_n)\in \mathbb{R}^n$.
"""

# ╔═╡ 44c86d0e-dff2-4661-888f-0f98daf4aebc
foldable(md"",md"""
Nótese que $d_{L_2}=d_E$ y $d_{L_1}=d_M$. Además $\lim_{p\rightarrow\infty}d_{L_p}(x,y)=d_\max(x,y)$.
""")

# ╔═╡ 3df81d38-4d73-42c7-a73e-4ab88c1de30c
md"""
#### 💻 `Programación` -- Métrica $L_p$
"""

# ╔═╡ d27be975-c2a9-4908-984a-f6cf682df1db
foldable(md"", md"Tarea.")

# ╔═╡ 53090d1a-1411-4467-9e45-f3f63242b4e3
md"""
## Métricas $L_p$
!!! thrm "Proposición"
	Las funciones $d_{L_p}$ son métricas para $\mathbb{R}^n$.
"""

# ╔═╡ 307bce6e-03a7-49c6-8768-83549fb45afd
foldproof(md"""
Sean $x=(x_1,\dots,x_n),y=(y_1,\dots,y_n),z=(z_1,\dots,z_n)\in\mathbb{R}^n$.
1. Como $|x_i-y_i|=0$ si y solo si $x_i=y_i$, entonces $d_{L_p}(x,y)=0$ si y solo si $x=y$.


2. Como $|x_i-y_i|=|y_i-x_i|$, entonces $d_{L_p}(x,y)=d_{L_p}(y,x)$.
""")

# ╔═╡ 5632a3dc-c3ae-4048-83db-7955e95ae663
md"""
## Métricas $L_p$
!!! warning "Demostración (continuación)"
	3. Sea $\mathbf{0}=(0,\dots,0)\in\mathbb{R}^n$. La desigualdad de Minkowski establece que
	$d_{L_p}(\mathbf{0},x+y)\leq d_{L_p}(\mathbf{0},x)+d_{L_p}(\mathbf{0},y).$

	(Véase la demostración de de la desigualdad de Minkowski en algún libro de análisis. O en esta referencia: [people.math.wisc.edu/~aseeger/522/ineq.pdf](https://people.math.wisc.edu/~aseeger/522/ineq.pdf))
"""

# ╔═╡ beb96068-0691-45c7-82fc-62a5c2c61e42
foldable0(md"""
!!! warning ""
	Así

	$d_{L_p}(x,y)+d_{L_p}(y,z)$
	$=d_{L_p}(\mathbf{0},x-y)+d_{L_p}(\mathbf{0},y-z)$
	$\geq d_{L_p}(\mathbf{0},x-y+y-z)$
    $=d_{L_p}(x,z).\, \square$
""")

# ╔═╡ 105f46da-a31e-4a7c-92cd-373f04f991e3
md"""
## No métrica $L_p$
!!! thrm "Proposición"
	Si $0<p<1$ y $n>1$, entonces $d_{L_p}$ no es una métrica en $\mathbb{R}^n$.
"""

# ╔═╡ 32116840-e0ce-4678-bdab-be8543aa592d
foldproof(md"""
Basta demostrarlo para $n=2$.

$d_{L_p}((1,0),(0,1))=(1^p+1^p)^{1/p}=2^\frac{1}{p}.$

Por otro lado

$d_{L_p}((1,0),(0,0))=d_{L_p}((0,0),(0,1))=(1^p)^{1/p}=1.$

Como $p<1$, entonces $2^{1/p}>2$ y por lo tanto

$d_{L_p}((1,0),(0,1))>d_{L_p}((1,0),(0,0))+d_{L_p}((0,0),(0,1)).\,\square$
""")

# ╔═╡ 72f9ae3c-eb3b-4d07-9ef4-2054a80e570b
md"""
## Métricas

!!! example "Ejemplo"
	Dado $p\in\mathbb{R}$ con $0<p<1$, la métrica **$\ell_p$** en $\mathbb{R}^n$ es

	$d_{\ell_p}(x,y)=\sum_{i=1}^n |x_i-y_i|^p,$
	
	donde $x=(x_1,\dots,x_n), y=(y_1,\dots,y_n)\in \mathbb{R}^n$.
"""

# ╔═╡ 6d35b622-f3de-4a7f-a8e2-a76ef30e309c
md"""
## Métricas

!!! example "Ejemplo"
	La métrica **cordal** en $\widehat{\mathbb{C}}$ es

	$d_{chord}(x,y)=d_{chord}(y,x)=\begin{cases}
	\frac{2|x-y|}{\sqrt{(1+|x|^2)(1+|y|^2)}} && \mathrm{si}\, x,y\neq\infty \\
	\frac{2}{\sqrt{1+|x|^2}} && \mathrm{si}\, y=\infty
	\end{cases}.$
"""

# ╔═╡ 1b6654c0-d247-47d6-9ad9-19a5849f95c7
foldable0(twocolumn(md"""Existe una equivalencia entre $\widehat{\mathbb{C}}$ y la esfera 
					
$S^2=\{p\in\mathbb{R}^3:\,d_E((0,0,0),p)=1\},$
					
de modo que la longitud de una cuerda en $S^2$ es la distancia cordal.""",html"""
<center>
<img src="https://www.ck12.org/studyguides/images/Parts-of-a-Sphere.jpg" width=520px/>
<center>
"""))

# ╔═╡ 27443d24-dc54-4662-95d3-8e4cfdd7254e
md"""
## 💻 `Programación` -- Métrica cordal
"""

# ╔═╡ 4eb7cd47-f78f-4ac9-a5cf-9ed9f65f3766
function dchord_Cext(x,y)
	if isinf(y)
		return 2/sqrt(1+abs2(x))
	elseif isinf(x)
		return 2/sqrt(1+abs2(y))
	end
	2abs(x-y)/sqrt((1+abs2(x))*(1+abs2(y)))
end

# ╔═╡ 63478217-8c82-4ef3-9c9a-5d78ffc398e1
dchord_Cext(1+2im, -0.5+2.5im)

# ╔═╡ 79e358df-113b-40b2-a4f0-519ba709a957
dchord_Cext(0,1)

# ╔═╡ 5b92dd71-a965-438c-bb4a-af48b7c96f04
dchord_Cext(0, Inf)

# ╔═╡ 49b641a4-94fc-4941-8f9d-e59c9162dfef
dchord_Cext(Inf, im)

# ╔═╡ 03d3b96a-c799-4683-8768-07b723a460ac
md"""
## Métricas
"""

# ╔═╡ 593e61b3-3358-42a5-8d54-1d7ee1f94a19
twocolumn(md"""Con trigonometría, podemos calcular la distancia **esférica** (sobre el segmento de círculo máximo) en $\widehat{\mathbb{C}}$ a partir de la métrica cordal.
""",imagecenter("https://mathcentral.uregina.ca/QQ/database/QQ.09.02/matt1.1.gif",w=260))

# ╔═╡ 73805efb-30c5-4473-a5d2-1a85384ae475
foldable0(md"""Con $r=1$ y $C=(0,0)$, tenemos $d_{chord}(A,B)=2\sin(\theta/2)$, y entonces

!!! tip ""
	$d_{sph}(A,B)=s=r\theta=\theta=2\sin^{-1}\Big(\frac{d_{chord}(A,B)}{2}\Big)$
""")

# ╔═╡ f041cbab-114b-44c1-b2eb-a78a04d25d5b
md"""
## 💻 `Programación` -- Métrica esférica
"""

# ╔═╡ 35f82abd-243a-49d3-b54c-95531297f625
dsph_Cext(x,y) = 2asin(dchord_Cext(x,y)/2)

# ╔═╡ 62aff43a-60f4-4b66-b780-caa0548d634c
dsph_Cext(0,Inf)

# ╔═╡ 743684eb-946f-4d61-a26d-95c9b125e293
dsph_Cext(1,im)

# ╔═╡ 13af66d4-011f-4dd0-8fd7-095d222db1d4
dchord_Cext(1,im)

# ╔═╡ cf249f03-abb4-4e42-bc08-14ceaa88dd40
md"""
## 💻 `Programación` -- Métricas de $\widehat{\mathbb{C}}$ para $\mathbb{C}$
Podemos crear las versiones "restringidas" a $\mathbb{C}$ de $d_{chord}$ y $d_{sph}$ para evitar los cálculos con $\infty$. 
"""

# ╔═╡ ba1a7e10-f87e-467d-b75b-a95b54e9a61e
dchord_C(x,y) = 2abs(x-y)/sqrt((1+abs(x)^2)*(1+abs(y)^2))

# ╔═╡ 73319b6c-72e5-464f-912c-2ac926bf08a0
dsph_C(x,y) = 2asin(abs(x-y)/sqrt((1+abs(x)^2)*(1+abs(y)^2)))

# ╔═╡ 4833e34e-3187-4abf-af26-87d562030d11
md"""
## Métricas

!!! example "Ejemplo"
	La métrica **hiperbólica** en $\mathbb{H}^2$ es

	$d_H(x,y)=\cosh^{-1}\Big(1+\frac{|x-y|^2}{2\mathrm{Im}(x)\mathrm{Im}(y)}\Big)$
"""

# ╔═╡ 1c4a2e35-2cae-4ccc-979d-430b0f805f34
md"""
#### 💻 `Programación` -- Métrica hiperbólica
"""

# ╔═╡ 0f4283f6-0c99-4ff8-bde6-151149327791
dH_H2(x,y) = acosh(1+abs2(x-y)/(2imag(x)*imag(y)))

# ╔═╡ 4ea7f368-edf5-4b21-a8c4-c274c49a3436
dH_H2(im, 1+im)

# ╔═╡ 6bb6bf5f-4acf-490c-a10c-60e8457bcba6
dH_H2(im, 2im)

# ╔═╡ 4681d129-9c32-441d-8861-f4eade0866c1
md"""
## 💻 `Programación`
### Métrica hiperbólica en $\mathbb{H}^2\subset\mathbb{R}^2$

---

Nos sería fácil implementar la versión $\mathbb{R}^2$ de la métrica hiperbólica, pero es mucho más fácil usar lo ya programado y la *function* `complex`:
"""

# ╔═╡ 3a9fca27-96ee-46b2-b62a-fd178c4bebd9
dH_HR2(x,y) = dH_H2(complex(x[1],x[2]), complex(y[1],y[2]))

# ╔═╡ c283d609-9064-48c4-9f8e-902eb207f9ad
dH_HR2([1,2], [-1, 0.001])

# ╔═╡ f989067c-6230-4c8b-9b07-9079ddecd9de
dE_Rn([1,2], [-1, 0.001])

# ╔═╡ e946e9d0-7070-49b9-aba6-e87f0ff7a721
md"""
# Métrica inducida
En ocasiones es útil construir una métrica para cierto espacio a partir de una métrica dada en otro espacio.

Sean $X$ un espacio, $(Y,d)$ un espacio métrico y $f:X\rightarrow Y$ inyectiva.
"""

# ╔═╡ ce8e5974-f054-4516-900a-75977e2d70b8
folddef(md"""
La **métrica inducida** por $f$ y $(Y,d)$ en $X$ es

$f^*d(x,y)=d(f(x),f(y))$

con $x,y\in X$.
""")

# ╔═╡ 080df635-02ba-4ec7-b810-4de791e1783f
md"""
## Métrica inducida
Sean $X$ un espacio, $(Y,d)$ un espacio métrico y $f:X\rightarrow Y$ inyectiva.
!!! thrm "Proposición"
	 $f^*d$ es una métrica para $X$.
"""

# ╔═╡ 55536686-db51-43d9-aa8a-08b00c11ea29
foldproof(md"""Sean $x,y,z\in X$.
1. $0=f^*d(x,y)=d(f(x),f(y)) \iff f(x)=f(y) \iff x=y.$ La última implicación es porque $f$ es inyectiva.
""")

# ╔═╡ 45e54efc-9032-4e4d-9d9e-0d46140e3b35
md"""
## Métrica inducida
!!! warning "Demostración (continuación)"
	2. $f^*d(x,y)=d(f(x),f(y))=d(f(y),f(x))=f^*d(y,x).$
"""

# ╔═╡ 55f29695-3878-46c1-b98a-bd3c05917682
foldable0(md"""
!!! warning ""
	3. $f^*d(x,z)=d(f(x),f(z))$
	$\leq d(f(x),f(y)) + d(f(y),f(z))$
	$=f^*d(x,y) + f^*d(y,z).\,\square$ """)

# ╔═╡ b98d7ede-1797-4f33-88f3-f8263e567193
md"""
## *Pullback*

La notación $f^*d$ indica el *pullback* (o *pre-composición*) de $d$ bajo $f$.

No es tan común denotar la métrica inducida con el *pullback*, pero lo hago aquí para dar a conocer este concepto utilizado en muchas áreas de las matemáticas.
"""

# ╔═╡ 97866265-e9be-4562-aa0d-adc52d8f12ed
foldable0(md"""
Por ejemplo, para espacios vectoriales $V$ y $W$, el *pullback* de la forma bi-lineal $\varphi:W\times W\rightarrow \mathbb{R}$ bajo la transformación lineal $f:V\rightarrow W$ es la forma bi-lineal $f^*\varphi:V\times V\rightarrow \mathbb{R}$ dada por

$f^*\varphi(x,y)=\varphi(f(x),f(y)).$
""")

# ╔═╡ 965b7e27-6318-4c1f-b8e1-e8a02bda3091
md"""
## Métrica inducida
!!! example "Ejemplo"
	Tómese $(\mathbb{N},d_E)$ y $f:\mathbb{Z}\rightarrow\mathbb{N}$ dada por

	$f(x)=\begin{cases}2x && \mathrm{si}\,x\geq 0 \\
	-2x-1 && \mathrm{si}\,x< 0 \end{cases}.$

	Nótese que $f$ manda $0$ y positivos a pares, y negativos a impares.
"""

# ╔═╡ c21b53ec-299b-472b-990d-9c58b07e21b5
foldable0(md"""
!!! example ""
	Claramente $f$ es biyectiva, entonces es posible crear una métrica inducida en $\mathbb{Z}$.
""")

# ╔═╡ dc242af4-cacf-4b8f-adc3-57029b01fec1
md"""
#### 💻 `Programación` -- Una métrica inducida en $\mathbb{Z}$
"""

# ╔═╡ 9510464f-bec5-4cab-a9c5-16506b3bd7b5
f(x) = x >= 0 ? 2x : -2x-1

# ╔═╡ 79b89782-e9b9-4b83-9265-08dbc0e50188
f(0)

# ╔═╡ 22a8648f-ff82-4cbe-bff5-b5c84d1cc646
#dE_Rn(f(0),f(1))

# ╔═╡ c8dd67f9-96e2-431d-9fae-de4587af6327
md"""
## Métrica inducida
!!! example "Ejemplo"
	Tómese $(\mathbb{H}^2,d_H)$ y $K:\mathbb{D}\rightarrow\mathbb{H}^2$ dada por

	$K(z)=\frac{z+1}{iz-i}$

	Esta transformación de Möbius es la **transformación de Cayley**, y resulta ser una biyección entre $\mathbb{D}$ y $\mathbb{H}^2$.
"""

# ╔═╡ d975ee0a-2562-499f-8f4c-846a0dfdbd58
md"""
#### 💻 `Programación` -- Métrica hiperbólica inducida en $\mathbb{D}$
"""

# ╔═╡ deee9b51-531c-4a20-8142-a5c68223fc69
K(z)=(z+1)/(im*z-im)

# ╔═╡ b40df1fc-5848-4632-81a6-22bd8896d22d
#dH_H2(K(0), K(0.5))

# ╔═╡ 507bd818-58f3-44c7-98b7-f88ef603d70d
md"""
## 💻 `Programación` -- Reuso de *functions*

Todas *functions* que son implementaciones de métricas vistas en esta clase (y otras más), están agrupadas en el archivo

`src/metrics_v1.jl`

para poder ser usadas posteriormente.
"""

# ╔═╡ e15dfedf-be23-4bce-bbfc-b2e5864f670c
foldable0(md"""Más adelante con más conocimentos de programación, veremos mejores implementaciones de estás y más *functions*, de modo que tendremos un archivo `src/metrics_v2.jl`.""")

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
# ╟─ebd503e4-4174-11ef-16f4-491850109f05
# ╟─b7db3416-80c8-4692-8e27-fa0d8cfa28e0
# ╟─3c201127-95b2-4bee-b7c6-7e4ade1609f5
# ╟─77eba067-3254-413c-8284-59794776c21c
# ╟─69bcc7c3-6d1d-4b50-af58-a42ed3ceddf4
# ╟─2d87e810-27cc-4721-9cfb-49722fddd061
# ╟─eb03b212-eea1-443f-8568-91708cd428de
# ╟─4c196910-e61f-4253-8b84-0dd6076d38a1
# ╟─22c6b4d0-feed-4dfe-8a8d-36b55e2c0ef8
# ╟─4ab15fa4-3931-4d61-b0ab-12f65795a704
# ╟─b79eeb0f-21bd-4727-8d7a-a927440395e4
# ╟─21b799a3-6d05-4f7c-b01f-866d0cf475e6
# ╟─34597471-3529-477b-9c65-f4af3355870a
# ╟─7922d946-306d-42ac-8411-67eaf43a38af
# ╟─cbae3bef-aa75-49cb-8af7-7d75c681b605
# ╟─afe16c70-9278-467f-8c4c-3fc41a953e14
# ╟─2440d7fa-64a0-4411-bdc6-c0965cf832a5
# ╟─09f98423-57c6-4473-9c63-d4c7d0852962
# ╟─502467c8-4657-4040-b4a4-767c3a510aec
# ╟─7ae96c1d-9f3a-4354-b986-fd12a8267242
# ╟─f84cb757-3f95-45d8-8ffe-d8437d12b0ab
# ╟─5d570cdb-3692-4dbe-a5d5-8a20e0fa3bde
# ╟─72d592c0-d47f-4527-b25d-055ee04e3609
# ╟─3b6164a2-f6a9-4178-a2a6-baf6352d5bcd
# ╟─d0c00bce-92bf-49c5-800b-544283874ad5
# ╟─e3a43acc-0001-477a-8433-0223aa26abc4
# ╟─5268bbad-f317-48ba-9838-840f449ba197
# ╟─38376ec0-d702-420b-85fc-592a0974e0af
# ╟─ac8c783d-068f-4a7b-aba8-cf9b120ea6b7
# ╟─a6c03eaa-c57e-4e1a-821a-f64290239f25
# ╟─393ac12f-10af-424b-ba57-4456f898ec35
# ╟─b0288437-a924-4aa4-b541-63a9b85c9225
# ╟─e221916f-7787-4054-aea7-5933978fdbfb
# ╟─fc22e160-6521-4cfe-95e7-9c201b998cdc
# ╟─86cfb808-af7d-4cf9-835a-c2168b646a75
# ╟─f9cd708c-2004-4eef-ae72-4498566df46f
# ╟─a7c43cef-bf1d-4f16-9ccf-c533b374f805
# ╟─4f9cc398-9099-42ad-855c-fef272e2c77c
# ╟─47b70047-2cc1-4c70-bba0-a597d3332edf
# ╟─36aad098-54be-47e9-a06f-73ef37003307
# ╟─db9c54d2-d39a-4934-8a75-6706f09ea55f
# ╟─c9dd3835-9030-4a3c-9bfe-373d8ec3a909
# ╟─b8898843-4a73-40bb-83bb-760d83e0670b
# ╟─a11aa470-39c8-4a53-8f46-4af9f47ea1bc
# ╟─5d164315-7dbb-4495-bfe0-3724760b8e68
# ╟─cc9bcaeb-3f38-4d93-a698-0612352409d6
# ╟─1aaccc08-7f00-4fee-917c-4449174a2554
# ╟─44c86d0e-dff2-4661-888f-0f98daf4aebc
# ╟─3df81d38-4d73-42c7-a73e-4ab88c1de30c
# ╟─d27be975-c2a9-4908-984a-f6cf682df1db
# ╟─53090d1a-1411-4467-9e45-f3f63242b4e3
# ╟─307bce6e-03a7-49c6-8768-83549fb45afd
# ╟─5632a3dc-c3ae-4048-83db-7955e95ae663
# ╟─beb96068-0691-45c7-82fc-62a5c2c61e42
# ╟─105f46da-a31e-4a7c-92cd-373f04f991e3
# ╟─32116840-e0ce-4678-bdab-be8543aa592d
# ╟─72f9ae3c-eb3b-4d07-9ef4-2054a80e570b
# ╟─6d35b622-f3de-4a7f-a8e2-a76ef30e309c
# ╟─1b6654c0-d247-47d6-9ad9-19a5849f95c7
# ╟─27443d24-dc54-4662-95d3-8e4cfdd7254e
# ╟─4eb7cd47-f78f-4ac9-a5cf-9ed9f65f3766
# ╟─63478217-8c82-4ef3-9c9a-5d78ffc398e1
# ╟─79e358df-113b-40b2-a4f0-519ba709a957
# ╟─5b92dd71-a965-438c-bb4a-af48b7c96f04
# ╟─49b641a4-94fc-4941-8f9d-e59c9162dfef
# ╟─03d3b96a-c799-4683-8768-07b723a460ac
# ╟─593e61b3-3358-42a5-8d54-1d7ee1f94a19
# ╟─73805efb-30c5-4473-a5d2-1a85384ae475
# ╟─f041cbab-114b-44c1-b2eb-a78a04d25d5b
# ╟─35f82abd-243a-49d3-b54c-95531297f625
# ╟─62aff43a-60f4-4b66-b780-caa0548d634c
# ╟─743684eb-946f-4d61-a26d-95c9b125e293
# ╟─13af66d4-011f-4dd0-8fd7-095d222db1d4
# ╟─cf249f03-abb4-4e42-bc08-14ceaa88dd40
# ╟─ba1a7e10-f87e-467d-b75b-a95b54e9a61e
# ╟─73319b6c-72e5-464f-912c-2ac926bf08a0
# ╟─4833e34e-3187-4abf-af26-87d562030d11
# ╟─1c4a2e35-2cae-4ccc-979d-430b0f805f34
# ╟─0f4283f6-0c99-4ff8-bde6-151149327791
# ╟─4ea7f368-edf5-4b21-a8c4-c274c49a3436
# ╟─6bb6bf5f-4acf-490c-a10c-60e8457bcba6
# ╟─4681d129-9c32-441d-8861-f4eade0866c1
# ╟─3a9fca27-96ee-46b2-b62a-fd178c4bebd9
# ╟─c283d609-9064-48c4-9f8e-902eb207f9ad
# ╟─f989067c-6230-4c8b-9b07-9079ddecd9de
# ╟─e946e9d0-7070-49b9-aba6-e87f0ff7a721
# ╟─ce8e5974-f054-4516-900a-75977e2d70b8
# ╟─080df635-02ba-4ec7-b810-4de791e1783f
# ╟─55536686-db51-43d9-aa8a-08b00c11ea29
# ╟─45e54efc-9032-4e4d-9d9e-0d46140e3b35
# ╟─55f29695-3878-46c1-b98a-bd3c05917682
# ╟─b98d7ede-1797-4f33-88f3-f8263e567193
# ╟─97866265-e9be-4562-aa0d-adc52d8f12ed
# ╟─965b7e27-6318-4c1f-b8e1-e8a02bda3091
# ╟─c21b53ec-299b-472b-990d-9c58b07e21b5
# ╟─dc242af4-cacf-4b8f-adc3-57029b01fec1
# ╠═9510464f-bec5-4cab-a9c5-16506b3bd7b5
# ╠═79b89782-e9b9-4b83-9265-08dbc0e50188
# ╠═22a8648f-ff82-4cbe-bff5-b5c84d1cc646
# ╟─c8dd67f9-96e2-431d-9fae-de4587af6327
# ╟─d975ee0a-2562-499f-8f4c-846a0dfdbd58
# ╟─deee9b51-531c-4a20-8142-a5c68223fc69
# ╠═b40df1fc-5848-4632-81a6-22bd8896d22d
# ╟─507bd818-58f3-44c7-98b7-f88ef603d70d
# ╟─e15dfedf-be23-4bce-bbfc-b2e5864f670c
# ╠═ed5b43c0-0ea0-427e-b7d7-7f3574460af0
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
