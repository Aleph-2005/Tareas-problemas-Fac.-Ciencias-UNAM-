### A Pluto.jl notebook ###
# v0.20.28

#> [frontmatter]
#> title = "Geometría Fractal"
#> date = "2023-08-01"
#> description = "Introducción"
#> 
#>     [[frontmatter.author]]
#>     name = "Renato Leriche Vázquez"
#>     url = "https://www.fciencias.unam.mx/directorio/45394"

using Markdown
using InteractiveUtils

# ╔═╡ 243e1cb8-a01f-40bc-81a7-db96819512c6
include("src/nbutils.jl")

# ╔═╡ 228a12de-2692-11ee-3545-119c7d391320
md"""
# Introducción
#### Seminario de Geometría A:
### **Geometría Fractal y Visualización**

---

Prof. **Renato Leriche Vázquez**

Ayud. **Rubén Andrés Baca González**
"""

# ╔═╡ 1da02c9c-54c7-4564-ad9a-78eb243d8a4d
html"""
<center>
<img src="https://www.fciencias.unam.mx/sites/default/files/logoFC_3.png" width=600/>
</center>
"""

# ╔═╡ 9f280ecf-68ef-4440-81ae-fbc9bee6d55c
md"""
# ¿*Fractal*? 🤔
"""

# ╔═╡ c1ab8f60-1c03-45ea-a4a0-7cad466c17a5
foldable0(md"""
En realidad no hay un concenso respecto a la definición...

Pero veamos que se dice al repecto.
""")

# ╔═╡ 858ab9d6-76e4-4ebb-b66e-c3e7d8d0b6a3
md"""
# La Geometría de la Naturaleza
"""

# ╔═╡ 8d807f0a-0ed8-4b82-abcf-6f7e4aa676c0
html"""<center>
<img src="https://cdn.mos.cms.futurecdn.net/xaycNDmeyxpHDrPqU6LmaD.jpg" height=240/><img src="https://marshabalaeva.wordpress.com/wp-content/uploads/2013/11/clouds.jpg" height=240/><img src="https://upload.wikimedia.org/wikipedia/commons/5/5f/Baja_peninsula_%28mexico%29_250m.jpg" height=240/><img src="https://metode.org/wp-content/uploads/2013/04/db5a020ea11104f42d1c369a226cc392.jpg" height=240/>
</center>
"""

# ╔═╡ 3122777b-97b6-4104-86ab-0e4d6bc974d8
md"""
> "¿Porqué a menudo se describe la *geometría* como algo 'frío' y 'seco'? Una de las razones es su incapacidad de describir la forma una nube, una montaña, una costa o un árbol. Ni las las nubes son esféricas, ni las montañas son cónicas, ni las costas circulares, ni las cortezas suaves, ni tampoco el rayo es rectilíneo."
>
> - Benoit B. Mandelbrot, *The Fractal Geometry of the Nature*, 1977. 
"""

# ╔═╡ 67cb93bf-4f0c-4339-95a4-ec8a29017279
md"""
## La Geometría de la Naturaleza

> "En términos más generales, creo que muchas formas naturales son tan irregulares y fragmentadas, que en comparación con lo euclidiano [...] la naturaleza no sólo presenta un grado superior, sino que está a un nivel completamente diferente. El número de escalas de longitud de las distintas formas naturales es, a efectos prácticos, infinito."
> 
> - Benoit B. Mandelbrot, *The Fractal Geometry of the Nature*, 1977. 
"""

# ╔═╡ 24d57c1a-d8e9-466e-a10d-fc58671a7f5c
html"""<center>
<img src="https://images.squarespace-cdn.com/content/v1/61c4da8eb1b30a201b9669f2/c30dcfd9-a596-4753-9ddb-eefb1cc71973/fern-zoom-in.jpg" height=240/><img src="https://i0.wp.com/softbites.org/wp-content/uploads/2018/08/fractalleaf.jpg" height=240/><img src="https://fractalfoundation.org/OFCA/lungs.jpg" height=240/><img src="https://services.meteored.com/img/article/un-affascinante-problema-di-matematica-nel-broccolo-romanesco-1710331182661_512.jpg" height=240/>
</center>
"""

# ╔═╡ f28e1924-76e7-49c5-bad7-6b749afa01d2
md"""
## La Geometría de la Naturaleza
"""

# ╔═╡ 3bec4f54-45a1-4358-a496-2679b8728f9d
html"""<center>
<img src="https://upload.wikimedia.org/wikipedia/commons/e/e0/Brownian_tree.gif" height=260/> <img src="https://labs.minutelabs.io/Brownian-Motion/thumb.gif" height=260/><img src="https://upload.wikimedia.org/wikipedia/commons/c/c4/Rec8_3kc2p.jpg" height=260 width=240/> <img src="https://i.pinimg.com/originals/e1/73/bb/e173bb6a8c8bafb4235c51aab4d9363a.gif" height=260/>
</center>
"""

# ╔═╡ 4f37b7e1-d40a-456d-aceb-89864ad58af1
md"""
> "La observación hecha por Mandelbrot sobre de la existencia de una 'Geometría de la Naturaleza' nos ha llevado a pensar de una nueva manera científica sobre los bordes de las nubes, los perfiles de las cimas de los bosques en el horizonte y la intrincada disposición en movimiento de las plumas de las alas de un pájaro mientras vuela.
>
> - Michael F. Barnsley, *Fractals Everywhere*, 1988.
"""

# ╔═╡ 4a7454eb-6a14-460d-a2e3-301e20a936a4
md"""
# La Geometría
"""

# ╔═╡ 35d7e33b-4fc2-4070-9330-f2847d9dba66
md"""
> "La *geometría* se ocupa de hacer objetivas nuestras intuiciones espaciales. La *geometría clásica* proporciona una primera aproximación a la estructura de los objetos físicos; es el lenguaje que utilizamos para comunicar los diseños de productos tecnológicos y, de forma muy aproximada, las formas de las creaciones naturales."
>
> - Michael F. Barnsley, *Fractals Everywhere*, 1988.
"""

# ╔═╡ c5400c3b-b353-4a61-a097-998be89ac619
html"""<center>
<img src="https://upload.wikimedia.org/wikipedia/commons/c/c8/Britain-fractal-coastline-100km.png" height=300/><img src="https://t4.ftcdn.net/jpg/01/05/72/03/360_F_105720386_OLVehyZc3UW3tLXrMnu13BlW6IAIH55V.jpg" height=300/><img src="https://st2.depositphotos.com/4140623/6004/v/450/depositphotos_60049553-stock-illustration-mountain-range.jpg" height=300/>
</center>
"""

# ╔═╡ 3a12d815-9b29-4c91-a2f3-5a2e26d45183
md"""
# La Geometría *Fractal*
"""

# ╔═╡ 835af076-11f7-4cc9-b2fa-e7ade6388972
html"""<center>
<img
src="https://upload.wikimedia.org/wikipedia/commons/8/83/Barnsley_fern_1024x1024.png"
height=240/><img
src="https://creativity103.com/collections/Fractal/fractal-mandlebrot070326-2.jpg"
height=240/><img
src="https://fractalfoundation.org/wp-content/uploads/2010/04/fatree400.jpg"
height=240/><img
src="https://ak.picdn.net/shutterstock/videos/3139495/thumb/1.jpg"
height=240/>
</center>
"""

# ╔═╡ bdd73c97-3e22-4d87-89b8-faf2b854d484
md"""
> "La *geometría fractal* es una extensión de la geometría clásica. Puede utilizarse para crear modelos precisos de estructuras físicas, desde helechos hasta galaxias.
>
> La *geometría fractal* es un nuevo lenguaje. Una vez que sepas hablarlo, podrás describir la forma de una nube con tanta precisión como un arquitecto puede describir una casa. "
>
> - Michael F. Barnsley, *Fractals Everywhere*, 1988.
"""

# ╔═╡ 7b3437bc-34c3-4474-8feb-4db2b879818d
md"""
# *Fractales* en la Historia
"""

# ╔═╡ ebf4c0c9-3385-44f2-996c-08cf960da735
html"""<center>
<img
src="https://larryriddle.agnesscott.org/ifs/ksnow/KochSnowflakeBoundary2.gif"
height=240/><img
src="https://larryriddle.agnesscott.org/ifs/levy/levySimilarity.gif"
height=240/><img
src="https://larryriddle.agnesscott.org/ifs/siertri/sierpinskiSimilarity.gif"
height=240/><img
src="https://larryriddle.agnesscott.org/ifs/heighway/IFSselfSimilar.gif"
height=240/>
<p style="font-size:16px;">Koch: 1904; Cesàro, Faber, Lévy: 1906; Sierpiński: 1915; Heighway, Harter, Banks: 1960's.</p>
</center>
"""

# ╔═╡ 4c123c2b-ce51-40b7-ac73-364dd3235a39
md"""
> "*Fractal* es una palabra acuñada por Mandelbrot para reunir bajo un sólo nombre una gran familia de objetos que han tenido un papel histórico en el desarrollo de la matemática pura. Una gran revolución separa la matemática clásica del siglo XIX con la matemática moderna del siglo XX. La matemática clásica está enraizada en las estructuras regulares de la geometría de Euclides y la evolución continua de la dinámica de Newton..." 
>
> - Freeman Dyson, *Characterizing Irregularity*, Science Vol. 200, 1978.
"""

# ╔═╡ 907c17b7-523a-4876-a8eb-f2f0eb8ed3d2
md"""
## *Fractales* en la Historia
> "... La matemática moderna empezó con la teoría de conjuntos de Cantor y la curva de Peano que llena un plano. Desde el punto de vista histórico, la revolución se produjo al descubrirse estructuras matemáticas que no encajaban con los patrones de Euclides y Newton. Estas nuevas estructuras fueron consideradas [...] 'patológicas' [...] como una 'galería de monstruos'".
>
> - Freeman Dyson, *Characterizing Irregularity*, Science Vol. 200, 1978.
"""

# ╔═╡ 2f62e18a-2227-4980-8f5e-2bce948c240c
html"""
<center><img
src="https://graphicmaths.com/img/fractals/fractals/cantor-set/cantor-set-03.png"
height=240/><img
src="https://upload.wikimedia.org/wikipedia/commons/5/58/Peano_curve.png"
height=240/><img
src="https://upload.wikimedia.org/wikipedia/commons/6/60/WeierstrassFunction.svg"
height=240/><img
src="https://upload.wikimedia.org/wikipedia/commons/c/c0/Menger_4.PNG"
height=240/>
<p style="font-size:16px;">Smith: 1874 & Cantor: 1883; Peano: 1890; Weierstrass: 1872; Sierpiński: 1916.</p>
</center>
"""

# ╔═╡ cc878594-a292-4fb1-aa05-87b14886d4d7
md"""
## La Venganza de los *Fractales*
> "Los matemáticos creadores de esos monstruos les concedían importancia por cuanto mostraban que el mundo de las matemática pura tiene una riqueza de posibilidades que va más allá de las estructuras sencillas que veían en la naturaleza. [...]"
"""

# ╔═╡ 21477881-2d11-4682-84e1-2c5bc86df74b
foldable0(md"""
> "... Sin embargo, como señala Mandelbrot, la naturaleza ha gastado una broma a los matemáticos. Quizá a los matemáticos les haya faltado imaginación, pero no así a la naturaleza. Las mismas estructuras patológicas que inventaron los matemáticos para escapar del naturalismo del siglo XIX han resultado ser inherentes a muchos de los objetos que nos rodean." 
>
> - Freeman Dyson, *Characterizing Irregularity*, Science Vol. 200, 1978.
""")

# ╔═╡ ed478ff0-ef37-492b-9d83-6426e403a100
md"""
# *Fractales* y Sistemas Dinámicos
"""

# ╔═╡ d79a1488-b4ea-413c-bb75-e81783a31499
md"""
> "Ejemplos de [diversos conjuntos *fractales*] existían en la literatura matemática de la época [1900's], pero eran generalmente dados con un proceso constructivo muy detallado y artifical. Más aún, [como escribió Fatou en 1906] muchos matemáticos franceses estaban disgustados por la existencia de curvas sin tangentes y no sólo las consideraba antinaturales, sino que a veces ridiculizaban a quienes las estudiaban."
>
> - Daniel S. Alexander, *A History of Complex Dynamics*, 1994. 
"""

# ╔═╡ bca05e07-88ef-4a83-8153-e8699c15e2bb
md"""
## *Fractales* y Sistemas Dinámicos
"""

# ╔═╡ 3d78004c-6384-4784-88d1-21edb547228b
html"""
<center><img
src="https://upload.wikimedia.org/wikipedia/commons/e/e9/Julia-Menge.png"
height=180/><img
src="https://upload.wikimedia.org/wikipedia/commons/d/d5/JSr07885.gif"
height=180/><img
src="https://upload.wikimedia.org/wikipedia/commons/3/34/Julia_dem_c%3D-0.1%2B0.651.png"
height=180/><img
src="https://upload.wikimedia.org/wikipedia/commons/6/6a/Julia-set_N_z3-1.png"
height=180/>
</center>
"""

# ╔═╡ 0cdc35bb-9dd2-431b-ad3f-f38ed17a1afd
md"""
> "Tal vez como réplica a tales sentimientos, Fatou y Julia proporcionaron muchas construcciones de este tipo de conjuntos y curvas, y el hecho de que aparecieran tan frecuentemente como fronteras del conjunto de Fatou ofrecía evidencia persuasiva de que tales las cosas no eran en modo alguno antinaturales." 
>
> - Daniel S. Alexander, *A History of Complex Dynamics*, 1994. 
"""

# ╔═╡ 799d5bc1-cfe0-400c-8dd5-06bc69d5ffc7
html"""
<center><img
src="https://upload.wikimedia.org/wikipedia/commons/c/c4/Julia_0_0.8.png"
height=180/><img
src="https://upload.wikimedia.org/wikipedia/commons/3/3a/Demj.jpg"
height=180/><img
src="https://upload.wikimedia.org/wikipedia/commons/d/d4/Julia_0.285_0.01.png"
height=180/><img
src="https://upload.wikimedia.org/wikipedia/commons/9/92/Julia_dem.png"
height=180/>
<p style="font-size:16px;">Imágenes modernas de diversos conjuntos de Fatou y Julia de funciones holomorfas en ℂ.</p>
</center>
"""

# ╔═╡ b1bc44a7-ead9-4b95-a468-fda8f9c64071
md"""
## *Fractales* y Sistemas Dinámicos
"""

# ╔═╡ 99e7ec7d-f470-405c-8b29-3fd255135179
html"""
<center><img
src="https://upload.wikimedia.org/wikipedia/commons/2/21/Mandel_zoom_00_mandelbrot_set.jpg"
height=180/><img
src="https://upload.wikimedia.org/wikipedia/commons/a/a4/Mandelbrot_sequence_new.gif"
height=180/><img
src="https://upload.wikimedia.org/wikipedia/commons/5/5b/Mandel_zoom_03_seehorse.jpg"
height=180/><img
src="https://upload.wikimedia.org/wikipedia/commons/b/b3/Mandel_zoom_07_satellite.jpg"
height=180/>
</center>
"""

# ╔═╡ 90e447f9-fc7c-47fb-bab4-778623e6e262
md"""
> "Julia, Fatou, Hubbard, Barnsley, Mandelbrot -- estos matemáticos cambiaron las reglas sobre como crear formas geométricas. [...] La geometría estándar toma una ecuación y pregunta por el conjunto de puntos que la satisfacen. [...] Pero cuando un geómetra itera una ecuación en lugar de resolverla, la ecuación se convierte en proceso en lugar de una descripción, dinámica en lugar de estática."
>
> James Gleick, *Chaos: Making a New Science*, 1987.
"""

# ╔═╡ ed685430-d2cf-4f3b-ba51-7d6318844028
html"""
<center><img
src="https://upload.wikimedia.org/wikipedia/commons/b/b5/Mandel_zoom_04_seehorse_tail.jpg"
height=180/><img
src="https://upload.wikimedia.org/wikipedia/commons/a/a4/Mandel_zoom_11_satellite_double_spiral.jpg"
height=180/><img
src="https://upload.wikimedia.org/wikipedia/commons/b/b8/Self-Similarity-Zoom.gif"
height=180/><img
src="https://upload.wikimedia.org/wikipedia/commons/3/37/Mandel_zoom_14_satellite_julia_island.jpg"
height=180/>
<p style="font-size:16px;">Imágenes modernas del conjunto de Mandelbrot.</p>
</center>
"""

# ╔═╡ ab5b28b5-0b1e-4598-9427-410ef9950784
md"""
# El programa de Erlangen

En 1872 Félix Klein presentó para su ingreso como profesor a la Universidad de Nürenberg-Erlangen su "programa para caracterización de las geometrías". En resumen se puede establecer así:
"""

# ╔═╡ aa87715f-6014-445a-a7a8-98f1b8d113a7
twocolumn(md"> Una **geometría** está determinada por los **invariantes** bajo un **grupo** de **transformaciones** en un **espacio**. ",html"""
<img src="https://www.onlinemathlearning.com/image-files/transformations-grade6.png", height="400px"/>
""")

# ╔═╡ 2a2e4e18-18a9-471c-916e-5927950c4fb0
foldable0(md"""
Este punto punto de vista se volvió muy importante ya que ha permitido unificar el estudio de las Geometrías Proyectiva, Euclidiana, Esférica, Hiperbólica... ¡y muchas más! 
""")

# ╔═╡ 78200dde-602f-4c93-86a2-0de7bc47810c
md"""
## La Visión de Félix Klein
En infinidad de geometrías que existen con esta forma de ver de Klein, generalmente aparecen conjuntos invariantes...
"""

# ╔═╡ fb00e0a8-561f-4615-a214-eb6eac21ef5f
foldable0(html"""
<p>... ¡que resultan ser <i>fractales</i>!</p>
<center>
<img src="https://www.math.u-bordeaux.fr/wiki-klein/images/thumb/2/2c/Fricke-Klein.png/270px-Fricke-Klein.png" height=240/>
<img src="https://www.dhushara.com/DarkHeart/quasif/img/snake2b.png" height=240 />
<img src="https://upload.wikimedia.org/wikipedia/commons/e/e6/Apollonian_gasket.svg" height=240/>
<img src="https://www.dhushara.com/DarkHeart/quasif/img/743spirally.png" height=240/>
<img src="https://www.dhushara.com/DarkHeart/quasif/img/t2c7.png" height=240/>
<p style="font-size:16px;">Klein & Friecke, 1890-1892; imágenes modernas de diversos conjuntos límite de grupos kleinianos actuando en ℂ.</p></center>
""")

# ╔═╡ ca9a60ab-6db0-40d2-8234-a77ed057e9ff
md"""
# Pero... ¿Qué es un *fractal*?
Mandelbrot acuño el término en 1975 y lo definió así:
"""

# ╔═╡ c41840f6-db8b-4223-8c02-259527a79e87
foldable0(md"""
> "Un **fractal** es un conjunto cuya *dimensión de Hausdorff-Besicovitch* es estrictamente mayor que su *dimensión topológica*."
""")

# ╔═╡ 5938df73-9e42-46cb-82ec-4964bf3fc7c2
foldable0(md"""
Bueno, para entender esto habrá que saber que son la *dimensión topológica* y la *dimensión de Hausdorff-Besicovith*.

Por otro lado, el mismo Mandelbrot indico que su definición no siempre es la más adecuada. 
		  
(Los detalles los veremos durante el curso 😅.)
""")

# ╔═╡ 87292ec3-55e6-4dc0-9d30-3bf028196491
md"""
## ¿Qué más vemos en los *fractales*?
"""

# ╔═╡ 2cce559b-3ef3-4de3-bc9a-197448d5845f
foldable0(
twocolumn(md"""
- Tienen la propiedad de ser "auto-similares" a escalas infinitas... 
		  
Es decir, cada parte, por pequeña que sea, es "similar" al todo. 
""",html"""<img src="https://upload.wikimedia.org/wikipedia/commons/3/3f/Zooming_in_a_point_of_Koch_curve_that_is_not_a_vertex.gif" width="300px"/> """
))

# ╔═╡ 6bab9e54-825b-4c6a-99c8-e6fcf79d5f3b
foldable0(
twocolumn(html"""<center><img
src="https://upload.wikimedia.org/wikipedia/commons/a/ad/Douday_rabbit_rough_dynamics.png" height="400px"/></center>""",md"""
- Están asociados a procesos dinámicos deterministas (ó en su defecto aleatorios, pero "no demasiado aleatorios"). 
"""
))

# ╔═╡ 00f3072a-1b36-4d0e-a687-d0bc0ecca5ab
md"""
## En este Seminario de Geometría
Para este curso nos interesará:
"""

# ╔═╡ 35e916d1-8e73-4e48-9aaa-22ab2f87168f
twocolumn(md"""
- Caracterizar conjuntos *fractales* por medio de **procesos dinámicos deterministas** utilizando **transformaciones** en **espacios** adecuados.
""",
md"""![Dragon](https://upload.wikimedia.org/wikipedia/commons/a/a0/Dragon_Curve_unfolding_zoom_numbered.gif)""")

# ╔═╡ 13911c15-3984-4d4b-9993-bcbc287ce75c
foldable0(md"""
- Conocer **algoritmos** para dibujo de *fractales* y su **implementación**. 
""")

# ╔═╡ a51bd03a-cd9c-45a4-bf79-6b5c11bfab24
md"""
## En este Seminario de Geometría
Para este curso nos interesará:
- Conocer algunas relaciones entre el área de los **sistemas dinámicos** y los *fractales*.
"""

# ╔═╡ f2ae6367-0f07-45d1-a223-c5f7e28b6de9
foldable0(twocolumn(html"""<img src="https://upload.wikimedia.org/wikipedia/commons/2/28/Great_Britain_Box.svg"></img>""",md"""
- Comprender que es la **dimensión de Hausdorff-Besicovitch** (junto con otras dimensiones *fractales* y la dimensión topológica).
"""))

# ╔═╡ fe79861e-63a1-4eda-8146-e75f1e2e0551
md"""
## Importancia de la Geometría Fractal
"""

# ╔═╡ 99b8bdd8-0abf-4ef6-bda6-d9be13c7a06d
md"""
- Ayuda en la comprensión de fenómenos u objetos físicos donde "aparecen" *fractales* mediante su aproximación con *fractales deterministas*.
"""

# ╔═╡ 9eb17eb9-ce89-48c4-8afb-d00d97444de6
foldable0(md"""
- Establecer de propiedades de fenómenos naturales donde "aparecen" *fractales*  mediante el cálculo de *dimensiones fractales*.
""")

# ╔═╡ 8dc97913-35a3-4974-b336-e56284a73e3e
foldable0(md"""
- Varias propiedades de sistemas dinámicos (como el *caos*, la *entropía*, *números de Lyapunov*, *medidas invariantes*, etc.) están estrechamente relacionadas con la *dimensión fractal* de conjuntos asociados al sistema.
""")

# ╔═╡ d1c8d690-e084-4544-bea8-5fd36eb88348
md"""
# El "Peligro" de la Geometría *Fractal*

> "La *geometría fractal* te hará ver todo de otra manera. Hay un peligro en seguir leyendo [el libro *Fractals Everywhere*]. Corres el riesgo de perder esa mirada infantil a las nubes, los bosques, las galaxias, las hojas, las plumas, las flores, las rocas, las montañas, los torrentes de agua, las alfombras, los ladrillos y mucho más. Nunca más tu interpretación de estas cosas será la misma."
>
> - Michael F. Barnsley, *Fractals Everywhere*, 1988.
"""

# ╔═╡ 05d9b2f5-6b37-46de-9ce6-47a35ed62dc9
html"""
<center>
<img src="https://upload.wikimedia.org/wikipedia/commons/4/47/The_ferns_of_Great_Britain%2C_and_their_allies_the_club-mosses%2C_pepperworts%2C_and_horsetails_%28Pl._2%29_%288515393495%29.jpg" height=300/>
<img src="https://upload.wikimedia.org/wikipedia/commons/9/94/Asplenium_adiantum-nigrum_Moore36.png" height=300/>
<img src="https://upload.wikimedia.org/wikipedia/commons/8/83/Barnsley_fern_1024x1024.png" height=300/>
<img src="https://www.dcnicholls.com/byzantium/ferns/f2.gif" height=300/>
</center>
"""

# ╔═╡ 00259f42-2ed5-48db-a071-a91da33ea91b
md"""
# Referencias
- Felix Klein, *Vergleichende Betrachtungen über neuere geometrische Forschungen*, 1872.
- Pierre Fatou, *Sur les équations fonctionnelles, I, II & III*, 1919-1920.
- Benoit B. Mandelbrot, *The Fractal Geometry of the Nature*, 1977 & 1982 (2da Edición).
- Freeman Dyson, *Characterizing Irregularity*, Science Vol. 200, 1978.
- Michael F. Barnsley, *Fractals Everywhere*, 1988 & 1993 (2da Edición).
- James Gleick, *Chaos: Making a New Science*, 1987.
- Daniel S. Alexander, *A History of Compelx Dynamics*, 1994.
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
# ╟─228a12de-2692-11ee-3545-119c7d391320
# ╟─1da02c9c-54c7-4564-ad9a-78eb243d8a4d
# ╟─9f280ecf-68ef-4440-81ae-fbc9bee6d55c
# ╟─c1ab8f60-1c03-45ea-a4a0-7cad466c17a5
# ╟─858ab9d6-76e4-4ebb-b66e-c3e7d8d0b6a3
# ╟─8d807f0a-0ed8-4b82-abcf-6f7e4aa676c0
# ╟─3122777b-97b6-4104-86ab-0e4d6bc974d8
# ╟─67cb93bf-4f0c-4339-95a4-ec8a29017279
# ╟─24d57c1a-d8e9-466e-a10d-fc58671a7f5c
# ╟─f28e1924-76e7-49c5-bad7-6b749afa01d2
# ╟─3bec4f54-45a1-4358-a496-2679b8728f9d
# ╟─4f37b7e1-d40a-456d-aceb-89864ad58af1
# ╟─4a7454eb-6a14-460d-a2e3-301e20a936a4
# ╟─35d7e33b-4fc2-4070-9330-f2847d9dba66
# ╟─c5400c3b-b353-4a61-a097-998be89ac619
# ╟─3a12d815-9b29-4c91-a2f3-5a2e26d45183
# ╟─835af076-11f7-4cc9-b2fa-e7ade6388972
# ╟─bdd73c97-3e22-4d87-89b8-faf2b854d484
# ╟─7b3437bc-34c3-4474-8feb-4db2b879818d
# ╟─ebf4c0c9-3385-44f2-996c-08cf960da735
# ╟─4c123c2b-ce51-40b7-ac73-364dd3235a39
# ╟─907c17b7-523a-4876-a8eb-f2f0eb8ed3d2
# ╟─2f62e18a-2227-4980-8f5e-2bce948c240c
# ╟─cc878594-a292-4fb1-aa05-87b14886d4d7
# ╟─21477881-2d11-4682-84e1-2c5bc86df74b
# ╟─ed478ff0-ef37-492b-9d83-6426e403a100
# ╟─d79a1488-b4ea-413c-bb75-e81783a31499
# ╟─bca05e07-88ef-4a83-8153-e8699c15e2bb
# ╟─3d78004c-6384-4784-88d1-21edb547228b
# ╟─0cdc35bb-9dd2-431b-ad3f-f38ed17a1afd
# ╟─799d5bc1-cfe0-400c-8dd5-06bc69d5ffc7
# ╟─b1bc44a7-ead9-4b95-a468-fda8f9c64071
# ╟─99e7ec7d-f470-405c-8b29-3fd255135179
# ╟─90e447f9-fc7c-47fb-bab4-778623e6e262
# ╟─ed685430-d2cf-4f3b-ba51-7d6318844028
# ╟─ab5b28b5-0b1e-4598-9427-410ef9950784
# ╟─aa87715f-6014-445a-a7a8-98f1b8d113a7
# ╟─2a2e4e18-18a9-471c-916e-5927950c4fb0
# ╟─78200dde-602f-4c93-86a2-0de7bc47810c
# ╟─fb00e0a8-561f-4615-a214-eb6eac21ef5f
# ╟─ca9a60ab-6db0-40d2-8234-a77ed057e9ff
# ╟─c41840f6-db8b-4223-8c02-259527a79e87
# ╟─5938df73-9e42-46cb-82ec-4964bf3fc7c2
# ╟─87292ec3-55e6-4dc0-9d30-3bf028196491
# ╟─2cce559b-3ef3-4de3-bc9a-197448d5845f
# ╟─6bab9e54-825b-4c6a-99c8-e6fcf79d5f3b
# ╟─00f3072a-1b36-4d0e-a687-d0bc0ecca5ab
# ╟─35e916d1-8e73-4e48-9aaa-22ab2f87168f
# ╟─13911c15-3984-4d4b-9993-bcbc287ce75c
# ╟─a51bd03a-cd9c-45a4-bf79-6b5c11bfab24
# ╟─f2ae6367-0f07-45d1-a223-c5f7e28b6de9
# ╟─fe79861e-63a1-4eda-8146-e75f1e2e0551
# ╟─99b8bdd8-0abf-4ef6-bda6-d9be13c7a06d
# ╟─9eb17eb9-ce89-48c4-8afb-d00d97444de6
# ╟─8dc97913-35a3-4974-b336-e56284a73e3e
# ╟─d1c8d690-e084-4544-bea8-5fd36eb88348
# ╟─05d9b2f5-6b37-46de-9ce6-47a35ed62dc9
# ╟─00259f42-2ed5-48db-a071-a91da33ea91b
# ╟─243e1cb8-a01f-40bc-81a7-db96819512c6
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
