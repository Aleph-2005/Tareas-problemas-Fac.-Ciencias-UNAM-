### A Pluto.jl notebook ###
# v0.20.28

#> [frontmatter]
#> title = "Mini Curso SDD. Pluto"
#> date = "2023-08-01"
#> description = "Introducción a Pluto"

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    #! format: off
    return quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
    #! format: on
end

# ╔═╡ f7f11498-bab5-4336-a39b-fe9a7b7955d3
using PlutoUI

# ╔═╡ 1352af2a-0014-4388-8939-25da86e646b7
include("src/nbutils.jl")

# ╔═╡ 228a12de-2692-11ee-3545-119c7d391320
md"""
# **Pluto.jl**
### Ambiente de programación interactiva para **Julia**
---
![PlutoLogo](https://raw.githubusercontent.com/fonsp/Pluto.jl/master/frontend/img/logo.svg)
"""

# ╔═╡ 9f280ecf-68ef-4440-81ae-fbc9bee6d55c
md"""
## ¿Qué es **Pluto**?

Es una aplicación *web* ambiente de programación interactiva para el lenguaje de programación **Julia**.

Los archivos *notebook* de **Pluto** pueden contener texto, fórmulas matemáticas, contenido formateado en *markdown* y *html*, código de **Julia**, imágenes y gráficos generados con **Julia**, *widgets*, ¡etc!

---
Sitio web oficial: [plutolj.org](https://plutojl.org)
"""

# ╔═╡ 27c55dfb-4aaa-4a91-a402-d5f94ae98b72
md"""
## Características
- Creado para el lenguaje de programación **Julia**.


- Es un paquete (biblioteca y *app*) de **Julia**.


- Corre en navegador *web*.


- Simple (inicialmente 😅).


- Interactivo.


- Reactivo.


- Sin variables ocultas.
"""

# ╔═╡ 561ce504-dab4-4023-9b7b-a0a2ffc60adb
md"""
## Ejecutando **Pluto**

1. Abrir una terminal de **Julia**


2. Escribir
```julia
import Pluto; Pluto.run()
```


3. Ejecutar con `enter`.

Se debe abrir el navegador *web* por defecto del sistema operativo mostrando la pantalla inicial de **Pluto**.
"""

# ╔═╡ da4551d6-74f0-4fc1-8c19-adfae5de973a
md"""
## Pantalla inicial
- *My work*: Crear nuevo archivo y lista de archivos trabajados para abrir. Si se van usar varios *notebooks*, recomiendo hacer clic derecho y seleccionar "abrir en nueva pestaña" o "ventana".


- *Open a notebook*: Abrir archivo.


- Vínculos a archivos de tutoriales.
"""

# ╔═╡ 68640214-b82b-443a-97db-871f2ca943f0
md"""
## Interfaz del *Notebook*
- Al abrir un *notebook*, este no se encuentra en "modo programación", aunque si se puede editar. Para iniciar el "modo programación" hacer clic en el botón *Run notebook code*.


- Regresar a la pantalla inicial de **Pluto**, con clic en el logo o ⬅ del navegador *web*.


- Guardar archivo. O mover (=renombrar) archivo si ya estaba guardado. También se puede usar después `ctrl+s`.


- Con el botón exportar, se abre un menú con:
  - Opciones de exportar a **JL** (**Julia**), **HTML**, **PDF** o ¡incluso grabar!
  - Establecer la *metadata* del *notebook* para el caso de publicación *web*.
  - Botón de modo presentación.
"""

# ╔═╡ c3adcb59-5cf3-4c44-add2-3acb05eeeb35
md"""
## Interfaz del *Notebook*
En la esquina inferior derecha está el menú con los botones
- *Live Docs*: Ayuda para usuarios (documentación de software).


- *Status*: Tiempos de carga, ejecución y otros procesos técnicos de **Julia** y **Pluto**.

!!! danger "Aviso"
	En el modo presentación este menú desaparece.
"""

# ╔═╡ f6b0b0c8-226f-475c-ba06-248c22d03882
md"""
# *Notebook* y celdas
Los archivos de  **Pluto** son llamados *notebooks* y están formados por *celdas*. Cada celda se puede pensar como un "micro-programa".

Las celdas están formadas por
- Una zona que muestra el resultado de una ejecución del "micro-programa".


- Una zona de edición de código.
"""

# ╔═╡ 3cecb912-9cce-41ca-ba2d-27b05c298c0b
1+2

# ╔═╡ f811aba4-fbd5-4054-aa2c-8170306152ff
md"""
!!! danger "¡Importante!" 
	Cada celda sólo puede contener una única expresión.
"""

# ╔═╡ a66fc1ba-cbe8-407c-8701-51cb4fedb9fe
md"""
## Trabajando con celdas
- Para ejecutar el contenido de una celda presionar `shift+enter`, ó el botón ▶ (*play*) en la esquina inferior derecha de la celda.
"""

# ╔═╡ b8b02e22-c784-4f72-b3b8-b9973e904dfc
1+2

# ╔═╡ 64b51e27-0caf-44d2-aaa5-cce39e323d5a
md"""
!!! danger "¡Importante!"
	Al ejecutar una celda, ¡se guarda automáticamente el *notebook*!
"""

# ╔═╡ 8677da14-f230-4887-8821-2e7b7b932bf2
md"""
## Trabajando con celdas
"""

# ╔═╡ 2bb34bcb-b63c-4fcf-92fe-a0b90bca3b3c


# ╔═╡ 2326b543-a6e0-4de4-8351-21e1d5d3bf53
# ╠═╡ disabled = true
#=╠═╡
1+2+3+4+5
  ╠═╡ =#

# ╔═╡ 89bd4ae3-a685-40ee-b83d-a03cb421a998
md"""
- Se puede ocultar o mostrar la zona de edición con el botón "ojo" (arriba a la izquierda de la celda).


- Se pueden agregar celdas antes o después de la actual con los botones ➕.


- Se pueden mover las celdas arrastrando su zona izquierda.


- Se pueden borrar, deshabilitar o habilitar y copiar contenido de celdas, en el menú "..." (arriba a la derecha de la celda).


- *Keyboard shorcuts*: `F1`.
"""

# ╔═╡ 35cbe59d-428d-43b9-b59c-7db4710d4569
md"""
# Interactividad
Como hemos visto, trabajando con las celdas proporciona una gran interactividad con la creación del contenido en un *notebook*.

Y claro, la interacción importante será la creación y ejecución "inmediata" del código de **Julia** en las celdas.
"""

# ╔═╡ 8e4153cf-f08f-461e-80ab-9c1d37b688cc
md"""
## Reactividad

Una interactividad novedosa de **Pluto** es la *reactividad*: La ejecución de una celda hace que "reaccionen" (es decir, se ejecuten y actualicen) ¡todas las otras celdas relacionadas!
"""

# ╔═╡ cec45d98-e8d7-4076-aa9c-58dee1fff060
a = 8

# ╔═╡ ce293430-e20b-4849-9b11-d2c7860d7f13
b = 17

# ╔═╡ 53d06493-4111-4013-936e-04f0b290e2d9
result1 = a+b

# ╔═╡ cf4e5c61-2a56-4646-af1c-998a823f9a00
result2 = a/b

# ╔═╡ 08a1ed4f-66cb-468c-b734-0c1a93c0abe0
result1 - result2

# ╔═╡ 7f0350f0-ef9c-4d3b-a01c-f803214ea564
md"""
## Reactividad
!!! danger "¡Muy importante!"
	En **Pluto** no ¡importa el orden de las celdas! ¡Habrá reactividad sin importar el orden!
"""

# ╔═╡ d5d369fa-8b0a-4485-aaba-fd02448f6ff6
c = 9

# ╔═╡ b17f91b4-2116-4c3e-bf2e-7e7a2dc693ff
result3 = (3+c)/2-1

# ╔═╡ 712963c6-994b-46d7-8f45-831d704b843a
md"""
## Celdas con código
Como hemos visto, las celdas contienen código y se muestra el resultado de ejecución, pero veremos con más detalle la elaboración del código (en **Julia**, claro) en las siguientes clases.

Ahora veamos que otras cosas se pueden hacer en **Pluto** con celdas conteniendo cierto código especial.
"""

# ╔═╡ 9f146bb7-d4c7-4ebc-939a-f062e87e30dd
md"""
# **Markdown**
El **Markdown** es un lenguaje de *marcado* que permite formatear texto y contenidos multimedia. 

Una celda que contiene un bloque
~~~julia
md\"""
   ...
\"""
~~~
se formatea con **Markdown** al ejecutarse.

---
"""

# ╔═╡ d99cc997-9968-4be9-8330-606e4c308b11
md"""
Hola mundo!!!
"""

# ╔═╡ 843b0e8a-a412-4de6-8214-984cc83c4936
md"""
!!! note "Nota"
	`md` indica que el bloque de texto es de tipo **Markdown**.
"""

# ╔═╡ 10d68a25-b91c-4546-b538-7b5f66e2feef
md"""
## *Shorcut* para el texto **Markdown**
!!! danger "¡Importante!"
	Se puede usar `ctrl+m` para añadir rápidamente el bloque de texto **Markdown** 😃. (También sirve para quitar el bloque...)
"""

# ╔═╡ 8aa9009f-6eac-4ab3-b8d6-974954ca8e96


# ╔═╡ 6453737f-8138-4527-ae12-9bcddcc87991
md"""
## Texto en negritas, cursivas y mono-espaciadas

Para las cursivas se pone el texto entre `*` ó `_`, y para negritas entre `**`. Para mono-espaciadas se usa ` ` `.

---
"""

# ╔═╡ c34f1507-3eb3-40d4-b585-45914b8333fe
md"""

*Cursivas* y _cursivas_

**Negritas**

_**Cursivas con negritas**_

`mono-espaciadas`
"""

# ╔═╡ 1ce2c23b-5575-4740-a701-ab4c519522f3
md"""
## Listas simples
Las listas simples utilizan `-` antes de cada ítem.

---
"""

# ╔═╡ 8346c9a1-506d-4fc3-a792-a0f70007eab1
md"""
- Item A
- Item B
  - Subitem B1
  - Subitem B2
    - Subsubitem B2.1
- Item C
"""

# ╔═╡ 3dce51b2-ac31-49fd-b84c-15a5aafef459
md"""
## Listas enumeradas
Las listas enumeradas usan $n$`.` , donde $n$ es un número natural.

---
"""

# ╔═╡ 9cfe204d-86d8-42b2-96ef-40dbfe20c679
md"""
1. Uno
1. Dos
    1. Dos Uno 
    2. Dos Dos
3. Tres
"""

# ╔═╡ 29aa2523-8099-4367-95ea-14e6f636bb50
md"""
## Encabezados
Para los encabezados niveles 1 a 4 se utilizan `#`, `##`, `###` y `####`.

---
"""

# ╔═╡ c1933482-3755-4092-acf2-635c2cee260c
md"""
### Encabezado nivel 3
Texto texto texto...
#### Encabezado nivel 4
Texto texto texto...
"""

# ╔═╡ 1144cd62-66c4-4b71-9b56-96e1f7ea625e
md"""
## Encabezados y el modo presentación
"""

# ╔═╡ f63c5164-6e90-401d-825f-a2fe1a8428b0
md"""
!!! danger "Aviso"
	En el modo presentación de **Pluto**, los encabezados de nivel 1 (`#`) y 2 (`##`) indican una página o *slide*.

	(Véase por ejemplo el encabezado de este *slide*.)
"""

# ╔═╡ 72f81c73-790a-490c-b3b4-64a82c4addbf
md"""
## Separadores
Una línea horizontal separadora de párrafos se crea con un renglón que contenga `---` .

---
"""

# ╔═╡ 2d993a7d-1312-4d23-a50f-0248e3bfc0ff
md"""
Párrafo A separado del

---

Párrafo B...
"""

# ╔═╡ aceaee6f-217e-48bf-9eb4-e3a46b9134b8
md"""
## Bloques de cita
Un bloque de cita se crea con texto iniciando con `>` en un renglón independiente.

---
"""

# ╔═╡ 7fb1786c-2635-4e78-92c3-b6568810d1f8
md"""
Texto texto.
> Esto es un bloque de cita...
>
> Con varios párrafos.
Texto texto texto.
"""

# ╔═╡ e85813ee-e360-43c5-84cc-d696c67c6bdc
md"""
## Bloques de amonestación
Un bloque de amonestación puede ser tipo *tip*, *note*, *warning* o *danger*. Cada tipo tiene un color distintivo. Véase el siguiente ejemplo para los detalles:
"""

# ╔═╡ 60e3d90a-3105-44a5-91db-1b371b6836b0
md"""
!!! tip "Título del bloque"
	Contenido del bloque.
"""

# ╔═╡ 2e4f0a5e-8b65-4a37-86c7-ad74a4a5f8c0
md"""
## Bloque de código en texto
Se puede poner código con resaltado de sintaxis en un bloque así:
```
~~~julia
bloque de código...
~~~
```

---
"""

# ╔═╡ 5d012918-a181-4509-b5a4-7476c98a9c78
md"""
~~~julia
import Pluto; Pluto.run()
a = 1
b = 2.5 + a
~~~
"""

# ╔═╡ 49faf08c-8f63-48b4-a0ba-4bfb05d87475
md"""
## Bloque de código en texto
"""

# ╔═╡ 47ede8b7-76b2-46a2-a8e0-2124d03d5fea
md"""
!!! note "Nota"
	Por supuesto, el lenguje puede ser otro. O no especificar lenguaje si no se quiere usar resaltado de colores.
"""

# ╔═╡ 766fe6cb-085b-4b53-b5cc-4350dde067cd
md"""
~~~
import Pluto; Pluto.run()
a = 1
b = 2.5 + a
~~~
"""

# ╔═╡ ae99736d-3d28-44a5-9f2b-285e27767a93
md"""
## $\LaTeX$
Se puede usar $\LaTeX$ entre el texto con su código entre `$`, ó centrado con un bloque `$...$` en un renglón aparte.

---
"""

# ╔═╡ 5b8955b1-ed6e-4db6-8a6f-7ddffa1d18c2
md"""
Sea $f_\alpha:\mathbb{R}^2\rightarrow \mathbb{C}$ dada por

$f_\alpha(x,y) = e^{i \pi \int_0^\infty\frac{1}{t^\alpha}\Big|\begin{pmatrix} a & b \\ c & d \end{pmatrix}\begin{pmatrix} x \\ y \end{pmatrix}\Big|^t dt}$

El $\alpha$...
"""

# ╔═╡ ef40326d-6e04-4204-b5bb-39b43ec496cb
md"""
## Hipervínculos
Se pueden agregar hipervínculos con
~~~
[texto](hipervínculo)
~~~

---
"""

# ╔═╡ 7a619d02-19e2-4830-b90e-7a54e273e441
md"""
[Facultad de Ciencias UNAM](https://www.fciencias.unam.mx)
"""

# ╔═╡ fa3a889c-18fc-4e25-87e6-df4414022a54
md"""
## Imágenes
Se pueden agregar imágenes en internet con
~~~
![texto](hipervínculo a la imagen)
~~~

---
"""

# ╔═╡ 2cd73039-025b-46f8-9d5e-506314259783
md"""
![FC](https://www.fciencias.unam.mx/sites/default/files/logoFC85.png)
"""

# ╔═╡ 3e8d0ca3-6174-4e16-8a21-a5df8962574d
md"""
## Imágenes locales

Si es posible usar imágenes locales, pero no es tan sencillo como el caso de las imágenes de internet con **Markdown**.

Lo explicaré un poco más adelante.
"""

# ╔═╡ 32c6897c-3fa0-4e6f-802a-6d6dfb2dd333
md"""
## Tablas
Se pueden crear tablas indicando los lados de las columnas con `|` y debajo del encabezado de la tabla indicando las columnas con `:---:` (centrado), `:---` (izquierda) ó `---:` (derecha).

---
"""

# ╔═╡ a54e8f70-817e-425c-ace3-9a1f62b038ea
md"""
| | Función | Derivada |
|:---:|---:|:---|
| 1 | $x^n$ | $nx^{n-1}$ |
| 2 | $e^x$ | $e^x$ |
| 3 | $\log(x)$ | $\frac{1}{x}$ |
"""

# ╔═╡ c765e736-3fa5-4549-938a-f817f60c2c13
md"""
# **HTML**
El **HTML** (_**H**yper **T**ext **M**odeling **L**anguage_) es un lenguaje de *marcado* para formatear contenidos de páginas *web*.

Para formato **HTML**, usar el bloque
~~~julia
html\"""
   ...
\"""
~~~

---
"""

# ╔═╡ 80fdef0d-67c9-42eb-b6d7-1ceea2205db5
html"""<center><h4>¡HTML!</h4></center><p>Estamos viendo: <b>Pluto.jl</b> <img src="https://plutojl.org/assets/favicon.svg" width="60px"></img></p><hr>
Sitio web <i>oficial</i>: <a href="https://plutojl.org" target="_blank">plutojl.org</a>"""

# ╔═╡ 1bcb284f-8f79-477f-87ea-c1f3568cb939
md"""
# Interactividad con *widgets*
Un *widget* es un elemento gráfico de la interfaz de usuario (_**U**ser **I**nterface_) de un software, por ejemplo los botones, *sliders*, *checkboxes*, *dropdowns*, etc.

Se requiere cargar el paquete `PlutoUI` para poder usar *widgets*.
"""

# ╔═╡ 355a97bf-832c-4fcb-a1df-8580cebbc5ae
md"""
!!! note "Nota"
	La ✔ indica que el paquete ya está cargado y listo para usar.
"""

# ╔═╡ 6d9d00fd-207f-416f-b116-551ff37a1347
md"""
## *Sliders*
Para obtener valores numéricos dentro de cierto rango.
"""

# ╔═╡ ef7fd52d-1074-4121-9808-2777991c3bf0
@bind value Slider(1:20)

# ╔═╡ 65356bc3-7cd9-470f-b98c-af1d0ee938b9
100/value

# ╔═╡ e0a05056-8b7a-4944-93d2-27a59097d5b2
md"""
## *Buttons*
Para ejecutar un código al presionar un botón.
"""

# ╔═╡ 3275f8b1-60e2-48d6-b3ea-425418c65172
@bind button_clicked Button("Número real aleatorio entre 0 y 1")

# ╔═╡ a8eb40e8-5069-4eff-be49-aac35b06888d
button_clicked; rand()

# ╔═╡ 22ae5aac-14c9-4a33-8106-cfcc06a1230f
md"""
## ¡Y muchos más *widgets*!
Claro, hay mucho más *widgets*, como _**Scrubbable**_, _**Select**_, _**MultiSelect**_, _**CheckBox**_, _**TextField**_, _**NumberField**_, _**Confirm**_, _**Combine**_, _**ColorPicker**_, ¡etc!
"""

# ╔═╡ afa155d4-3992-4f9a-9de6-c597318bce6f
@bind color ColorPicker()

# ╔═╡ 33c9c104-2097-41f2-8952-b4687d023c1d
md"""
!!! danger "Aviso"
	No veremos como usar *widgets* en este curso. Quienes tengan interés chequen el *notebook* _**Interactivity**_ que está entre los ejemplos de **Pluto**.
"""

# ╔═╡ 843d7627-97be-4a34-91f8-e22531f8d911
md"""
## Imágenes locales

Como los *notebooks* de **Pluto** están pensados para ser independientes y son archivos de texto, no pueden contener imágenes.

Por otro lado, si es posible hacer referencia a archivos locales con la instrucción `LocalResource`, que está dentro de la biblioteca `PlutoUI`.
"""

# ╔═╡ 6d256f0c-ef5e-45b1-9d1a-361015093782
md"""
## Imágenes locales

Por supuesto, si se utilizan archivos locales estos deben de ser compartidos junto con el **notebook** y referenciados con una ruta relativa. Por ejemplo
"""

# ╔═╡ fb5b961b-f66c-42fb-9026-e58de25a5f64
LocalResource("./pics/pluto.svg", :width=>300)

# ╔═╡ e6ed33e9-b381-4012-ad5d-53a1907e6de3
md"""
# Algunas observaciones y recomendaciones técnicas

> - Los archivos *notebook* no guardan resultados, ni textos formateados, ni imágenes, ni *widgets*... Sólo guarda el código de las celdas de edición. Por ello, dichos **archivos son muy ligeros**. (En realidad son puro texto, código de **Julia**.)

> - Cada vez que se abre un *notebook* y se ejecuta, **se ejecutan todas las celdas** para formatear y obtener resultados. Por ello se recomienda no hacer muy largos estos archivos, o con poco código de ejecución "pesada" (al menos de inicio). 
"""

# ╔═╡ 41f5ec05-1e4d-4ca8-83eb-080fd923f587
md"""
## Un truco
> Si no se quiere que se ejecute un código al cargar el *notebook*, simplemente se puede comentar el código, con `#` para una línea o con el bloque comentario
> ~~~julia
> #=
>   ... Código
> =#
> ~~~
> y guardar el *notebook*...
"""

# ╔═╡ 5ce0a7f0-3fe0-4e61-8a98-44a849aa9777
# Comentario de una línea...

# ╔═╡ f7ada2a2-8eef-4a49-813d-207772838b52
#=
Bloque
de comentarios
=#

# ╔═╡ 93f9dd04-088e-49cb-8dd0-f01f9c9ef45e
md"""
## Comentarios
Por supuesto, el propósito original de los comentarios es, hacer anotaciones adicionales al código para aclarar o explicar el funcionamiento (a nivel de instrucciones de programación) de un programa.

Esto es muy útil y recomendable cuando se comparte el código entre varias personas, e incluso para recordar el funcionamiento de un código creado tiempo atrás...
"""

# ╔═╡ 00259f42-2ed5-48db-a071-a91da33ea91b
md"""
# Referencias
- Fons van der Plas, **Pluto.jl**, [plutojl.org](http://plutojl.org), MIT & Technische Universität Berlin, 2019.
- Fons van der Plas, **GitHub/Pluto.jl**, [GitHub/Pluto.jl](https://github.com/fonsp/Pluto.jl), 2019.
"""

# ╔═╡ 69e4e026-90a7-4e50-a555-69f1213be694
html"""
<center>Fons van der Plas -> <img src="https://avatars.githubusercontent.com/u/6933510?v=4" height="300px"/></center>
"""

# ╔═╡ 5eba4426-9fb8-4c20-b412-435e0a24c373
md"""
# Cerrando **Pluto**.
Para no dejar procesos inútiles corriendo en la computadora, hacer lo siguiente:
1. Regresar al la pantalla principal de **Pluto** (cerrando pestaña del navegador o con ⬅, según sea el caso).
    - Si hay cambios sin guardar se impide cerrar y las celdas modificadas están indicadas con color café claro. 
2. En *My work*, cerrar el (o los) *notebook* en cuestión con $\otimes$.
1. Cerrar la pestaña (o el navegador) con la pantalla inicial de **Pluto**.
1. En la terminal de **Julia**, presionar la combinación de teclas `ctrl+c`.
1. Cerrar la terminal de **Julia**, con `ctrl+d`, si ya no se usará...
1. Opcionamente, cerrar la terminal del sistema si es el caso.
> Todo lo anterior son recomendaciones para evitar posibles problemas, también todo se puede cerrar a la brava 🤣, en general no pasa nada.
"""


# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
PlutoUI = "~0.7.59"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.6"
manifest_format = "2.0"
project_hash = "e4f2d46d04d86c02521c9a55644f69f331290a35"

[[deps.AbstractPlutoDingetjes]]
deps = ["Pkg"]
git-tree-sha1 = "6e1d2a35f2f90a4bc7c2ed98079b2ba09c35b83a"
uuid = "6e696c72-6542-2067-7265-42206c756150"
version = "1.3.2"

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
git-tree-sha1 = "b10d0b65641d57b8b4d5e234446582de5047050d"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.5"

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
deps = ["Statistics"]
git-tree-sha1 = "05882d6995ae5c12bb5f36dd2ed3f61c98cbb172"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.5"

[[deps.Hyperscript]]
deps = ["Test"]
git-tree-sha1 = "179267cfa5e712760cd43dcae385d7ea90cc25a4"
uuid = "47d2ed2b-36de-50cf-bf87-49c2cf4b8b91"
version = "0.0.5"

[[deps.HypertextLiteral]]
deps = ["Tricks"]
git-tree-sha1 = "7134810b1afce04bbc1045ca1985fbe81ce17653"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.5"

[[deps.IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "b6d6bfdd7ce25b0f9b2f6b3dd56b2673a66c8770"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.5"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"
version = "1.11.0"

[[deps.JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "31e996f0a15c7b280ba9f76636b3ff9e2ae58c9a"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.4"

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

[[deps.LibGit2]]
deps = ["LibGit2_jll", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"
version = "1.11.0"

[[deps.LibGit2_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "OpenSSL_jll"]
uuid = "e37daf67-58a4-590a-8e99-b0245dd2ffc5"
version = "1.9.0+0"

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
git-tree-sha1 = "65f28ad4b594aebe22157d6fac869786a255b7eb"
uuid = "6c6e2e6c-3030-632d-7369-2d6c69616d65"
version = "0.1.4"

[[deps.Markdown]]
deps = ["Base64", "JuliaSyntaxHighlighting", "StyledStrings"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"
version = "1.11.0"

[[deps.Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"
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

[[deps.Parsers]]
deps = ["Dates", "PrecompileTools", "UUIDs"]
git-tree-sha1 = "8489905bcdbcfac64d1daa51ca07c0d8f0283821"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.8.1"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "Random", "SHA", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.12.1"

    [deps.Pkg.extensions]
    REPLExt = "REPL"

    [deps.Pkg.weakdeps]
    REPL = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.PlutoUI]]
deps = ["AbstractPlutoDingetjes", "Base64", "ColorTypes", "Dates", "FixedPointNumbers", "Hyperscript", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "MIMEs", "Markdown", "Random", "Reexport", "URIs", "UUIDs"]
git-tree-sha1 = "ab55ee1510ad2af0ff674dbcced5e94921f867a9"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.59"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "5aa36f7049a63a1528fe8f7c3f2113413ffd4e1f"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.2.1"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "9306f6085165d270f7e3db02af26a400d580f5c6"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.3"

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
git-tree-sha1 = "ae3bb1eb3bba077cd276bc5cfc337cc65c3075c0"
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.11.1"

    [deps.Statistics.extensions]
    SparseArraysExt = ["SparseArrays"]

    [deps.Statistics.weakdeps]
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[deps.StyledStrings]]
uuid = "f489334b-da3d-4c2e-b8f0-e476e12c162b"
version = "1.11.0"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"
version = "1.11.0"

[[deps.Tricks]]
git-tree-sha1 = "eae1bb484cd63b36999ee58be2de6c178105112f"
uuid = "410a4b4d-49e4-4fbc-ab6d-cb71b17b3775"
version = "0.1.8"

[[deps.URIs]]
git-tree-sha1 = "67db6cc7b3821e19ebe75791a9dd19c9b1188f2b"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.5.1"

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

[[deps.p7zip_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.7.0+0"
"""

# ╔═╡ Cell order:
# ╟─228a12de-2692-11ee-3545-119c7d391320
# ╟─9f280ecf-68ef-4440-81ae-fbc9bee6d55c
# ╟─27c55dfb-4aaa-4a91-a402-d5f94ae98b72
# ╟─561ce504-dab4-4023-9b7b-a0a2ffc60adb
# ╟─da4551d6-74f0-4fc1-8c19-adfae5de973a
# ╟─68640214-b82b-443a-97db-871f2ca943f0
# ╟─c3adcb59-5cf3-4c44-add2-3acb05eeeb35
# ╟─f6b0b0c8-226f-475c-ba06-248c22d03882
# ╠═3cecb912-9cce-41ca-ba2d-27b05c298c0b
# ╟─f811aba4-fbd5-4054-aa2c-8170306152ff
# ╟─a66fc1ba-cbe8-407c-8701-51cb4fedb9fe
# ╠═b8b02e22-c784-4f72-b3b8-b9973e904dfc
# ╟─64b51e27-0caf-44d2-aaa5-cce39e323d5a
# ╟─8677da14-f230-4887-8821-2e7b7b932bf2
# ╠═2bb34bcb-b63c-4fcf-92fe-a0b90bca3b3c
# ╠═2326b543-a6e0-4de4-8351-21e1d5d3bf53
# ╟─89bd4ae3-a685-40ee-b83d-a03cb421a998
# ╟─35cbe59d-428d-43b9-b59c-7db4710d4569
# ╟─8e4153cf-f08f-461e-80ab-9c1d37b688cc
# ╠═cec45d98-e8d7-4076-aa9c-58dee1fff060
# ╠═ce293430-e20b-4849-9b11-d2c7860d7f13
# ╠═53d06493-4111-4013-936e-04f0b290e2d9
# ╠═cf4e5c61-2a56-4646-af1c-998a823f9a00
# ╠═08a1ed4f-66cb-468c-b734-0c1a93c0abe0
# ╟─7f0350f0-ef9c-4d3b-a01c-f803214ea564
# ╠═b17f91b4-2116-4c3e-bf2e-7e7a2dc693ff
# ╠═d5d369fa-8b0a-4485-aaba-fd02448f6ff6
# ╟─712963c6-994b-46d7-8f45-831d704b843a
# ╟─9f146bb7-d4c7-4ebc-939a-f062e87e30dd
# ╠═d99cc997-9968-4be9-8330-606e4c308b11
# ╟─843b0e8a-a412-4de6-8214-984cc83c4936
# ╟─10d68a25-b91c-4546-b538-7b5f66e2feef
# ╠═8aa9009f-6eac-4ab3-b8d6-974954ca8e96
# ╟─6453737f-8138-4527-ae12-9bcddcc87991
# ╠═c34f1507-3eb3-40d4-b585-45914b8333fe
# ╟─1ce2c23b-5575-4740-a701-ab4c519522f3
# ╠═8346c9a1-506d-4fc3-a792-a0f70007eab1
# ╟─3dce51b2-ac31-49fd-b84c-15a5aafef459
# ╠═9cfe204d-86d8-42b2-96ef-40dbfe20c679
# ╟─29aa2523-8099-4367-95ea-14e6f636bb50
# ╠═c1933482-3755-4092-acf2-635c2cee260c
# ╠═1144cd62-66c4-4b71-9b56-96e1f7ea625e
# ╟─f63c5164-6e90-401d-825f-a2fe1a8428b0
# ╟─72f81c73-790a-490c-b3b4-64a82c4addbf
# ╠═2d993a7d-1312-4d23-a50f-0248e3bfc0ff
# ╟─aceaee6f-217e-48bf-9eb4-e3a46b9134b8
# ╠═7fb1786c-2635-4e78-92c3-b6568810d1f8
# ╟─e85813ee-e360-43c5-84cc-d696c67c6bdc
# ╠═60e3d90a-3105-44a5-91db-1b371b6836b0
# ╟─2e4f0a5e-8b65-4a37-86c7-ad74a4a5f8c0
# ╠═5d012918-a181-4509-b5a4-7476c98a9c78
# ╟─49faf08c-8f63-48b4-a0ba-4bfb05d87475
# ╟─47ede8b7-76b2-46a2-a8e0-2124d03d5fea
# ╠═766fe6cb-085b-4b53-b5cc-4350dde067cd
# ╟─ae99736d-3d28-44a5-9f2b-285e27767a93
# ╠═5b8955b1-ed6e-4db6-8a6f-7ddffa1d18c2
# ╟─ef40326d-6e04-4204-b5bb-39b43ec496cb
# ╠═7a619d02-19e2-4830-b90e-7a54e273e441
# ╟─fa3a889c-18fc-4e25-87e6-df4414022a54
# ╠═2cd73039-025b-46f8-9d5e-506314259783
# ╟─3e8d0ca3-6174-4e16-8a21-a5df8962574d
# ╟─32c6897c-3fa0-4e6f-802a-6d6dfb2dd333
# ╠═a54e8f70-817e-425c-ace3-9a1f62b038ea
# ╟─c765e736-3fa5-4549-938a-f817f60c2c13
# ╠═80fdef0d-67c9-42eb-b6d7-1ceea2205db5
# ╟─1bcb284f-8f79-477f-87ea-c1f3568cb939
# ╠═f7f11498-bab5-4336-a39b-fe9a7b7955d3
# ╟─355a97bf-832c-4fcb-a1df-8580cebbc5ae
# ╟─6d9d00fd-207f-416f-b116-551ff37a1347
# ╠═ef7fd52d-1074-4121-9808-2777991c3bf0
# ╠═65356bc3-7cd9-470f-b98c-af1d0ee938b9
# ╟─e0a05056-8b7a-4944-93d2-27a59097d5b2
# ╠═3275f8b1-60e2-48d6-b3ea-425418c65172
# ╟─a8eb40e8-5069-4eff-be49-aac35b06888d
# ╟─22ae5aac-14c9-4a33-8106-cfcc06a1230f
# ╠═afa155d4-3992-4f9a-9de6-c597318bce6f
# ╟─33c9c104-2097-41f2-8952-b4687d023c1d
# ╟─843d7627-97be-4a34-91f8-e22531f8d911
# ╟─6d256f0c-ef5e-45b1-9d1a-361015093782
# ╠═fb5b961b-f66c-42fb-9026-e58de25a5f64
# ╟─e6ed33e9-b381-4012-ad5d-53a1907e6de3
# ╟─41f5ec05-1e4d-4ca8-83eb-080fd923f587
# ╠═5ce0a7f0-3fe0-4e61-8a98-44a849aa9777
# ╠═f7ada2a2-8eef-4a49-813d-207772838b52
# ╟─93f9dd04-088e-49cb-8dd0-f01f9c9ef45e
# ╟─00259f42-2ed5-48db-a071-a91da33ea91b
# ╟─69e4e026-90a7-4e50-a555-69f1213be694
# ╟─5eba4426-9fb8-4c20-b412-435e0a24c373
# ╟─1352af2a-0014-4388-8939-25da86e646b7
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
