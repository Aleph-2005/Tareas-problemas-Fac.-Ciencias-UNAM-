# Functions útiles para tratar con imágenes


# "Rota" ángulo 'a' el matiz de una imagen en colores HSV
function rotatehue!(img, a)
    height, width = size(img) # alto y ancho de la imagen      
    for h in 1:height # Recorriendo renglones de la imagen
        for w in 1:width # Recorriendo columnas de la imagen
            img[h,w] = HSV(hue(img[h,w]) + a, comp2(img[h,w]), comp3(img[h,w]))
        end
    end    
    img
end


# Thresholding para imagen en grises
function threshold!(img, vmin, vmax)
	H, W = size(img)
	for h in 1:H
		for w in 1:W
			if img[h,w] < vmin
				img[h,w] = vmin
			elseif img[h,w] > vmax
				img[h,w] = vmax
			end # if
		end # for w
	end # for h
	img
end


# Binarización para imagen en grises
function binarize!(img, val)
	H, W = size(img)
	for h in 1:H
		for w in 1:W
			img[h,w] = img[h,w] <= val ? Gray(0) : Gray(1) 
		end # for w
	end # for h
	img
end


# Inversión para imagen en grises
function invert!(img)
	H, W = size(img)
	for h in 1:H
		for w in 1:W
			img[h,w] = 1.0 - img[h,w] 
		end # for w
	end # for h
	img
end