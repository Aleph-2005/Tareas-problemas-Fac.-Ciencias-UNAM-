# Cosas útiles para notebooks de Pluto.

foldable(title, content) = HTML("<details><summary>$(html(title))</summary>$(html(content))</details>")

foldable0(content) = HTML("<details><summary></summary>$(html(content))</details>")

twocolumn(c1, c2) = HTML("""<div style="display: flex;">
<div style="flex: 50%;">$(html(c1))</div>
<div style="flex: 50%;">$(html(c2))</div></div>""")

folddef(content) = HTML("""<div class=\"admonition info\"><p class=\"admonition-title\">Definición</p>
<p class=\"content\"><details><summary> </summary>$(html(content))</details></p>""")

foldexample(content) = HTML("""<div class=\"admonition example\"><p class=\"admonition-title\">Ejemplos</p>
<p class=\"content\"><details><summary> </summary>$(html(content))</details></p>""")


foldproof(content) = HTML("""<div class=\"admonition warning\"><p class=\"admonition-title\">Demostración</p>
<p class=\"content\"><details><summary> </summary>$(html(content))</details></p>""")

foldproofi(content) = HTML("""<div class=\"admonition warning\"><p class=\"admonition-title\">Ideas principales de la demostración</p>
<p class=\"content\"><details><summary> </summary>$(html(content))</details></p>""");


function imagecenter(url;w=300,h=0)
  if h > 0 
    return HTML("""<center><img src=$(url) width="$(w)px" height="$(h)px"/><center>""")
  end
  HTML("""<center><img src=$(url) width="$(w)px"/><center>""")
end 


html"""
<style>
html { font-size: 24px; }
main {
    font-size: 24px;
    max-width: 72%;
    margin-left: 14%;
    margin-right: 14% !important;
}
pluto-output h1 { font-size: 64px; }
pluto-output h2 { font-size: 48px; }
pluto-output h3 { font-size: 36px; }
pluto-output h4 { font-size: 32px; }
pluto-output p { font-size: 24px; }
pluto-output div.admonition.thrm {
    background: #d9edf7;
    border: 5px solid #3a87ad;
}
pluto-output div.admonition.thrm .admonition-title {
    background: #3a87ad;
}
</style>

<h1>🚧 Configuración 🚧</h1>
<b>Advertencia</b>: Configuración de este <i>notebook</i> de aquí en adelante...
"""