# Functions útiles para tratar con colores


# Conversión de RGB a arreglo
RGBtoarray(c) = [red(c), green(c), blue(c)]

# Conversión de RGBA a arreglo
RGBAtoarray(c) = [red(c), green(c), blue(c), alpha(c)]

# Conversión de HSV a arreglo
HSVtoarray(c) = [hue(c), comp2(c), comp3(c)]

# Conversión de HSVA a arreglo
HSVAtoarray(c) = [hue(c), comp2(c), comp3(c), alpha(c)]


# HSVA aleatorio
randHSVA() = HSVA(rand(0:360)*rand(), rand(), rand(), rand())


# Interpolación lineal de colores
linterpcolor(c1,c2,t) = c1 + t*(c2 - c1)