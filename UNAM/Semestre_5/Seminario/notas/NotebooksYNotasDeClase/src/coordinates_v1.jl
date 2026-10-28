# Cambios de coordenadas y otras cosas relacionadas


# x,y a pixel
xyR2topix(x,y,xmin,xmax,ymin,ymax,W,H) = [Int64(floor((W-1)*(x-xmin)/(xmax-xmin)))+1, Int64(floor((H-1)*(y-ymax)/(ymin-ymax)))+1]

# Punto p=[x,y] a pixel
pR2topix(p,xmin,xmax,ymin,ymax,W,H) = [Int64(floor((W-1)*(p[1]-xmin)/(xmax-xmin)))+1, Int64(floor((H-1)*(p[2]-ymax)/(ymin-ymax)))+1]

# Punto número complejo z a pixel
complextopix(z,xmin,xmax,ymin,ymax,W,H) = [Int64(floor((W-1)*(real(z)-xmin)/(xmax-xmin)))+1, Int64(floor((H-1)*(imag(z)-ymax)/(ymin-ymax)))+1]


# Pixel a punto [x,y] 
pixtopR2(w,h,W,H,xmin,xmax,ymin,ymax) = [(xmax-xmin)*(w-1)/(W-1)+xmin, (ymax-ymin)*(h-H)/(1-H)+ymin]

# Pixel a punto número complejo
pixtocomplex(w,h,W,H,xmin,xmax,ymin,ymax) = complex((xmax-xmin)*(w-1)/(W-1)+xmin, (ymax-ymin)*(h-H)/(1-H)+ymin)


# Dibujo de una curva en un canvas (imagen dada)
function drawcurve!(canvas,xmin,xmax,ymin,ymax,curve,tmin,tmax,Δt,color)
	H,W = size(canvas)
	for t in tmin:Δt:tmax
		w,h = pR2topix(curve(t),xmin,xmax,ymin,ymax,W,H)
		if (0 < w <= W) && (0 < h <= H) # Verificando que los índices de la matriz sean correctos
			canvas[h,w] = color
		end
	end
	canvas
end


# Dibujo de los ejes coordenados
function drawaxes!(canvas,xmin,xmax,ymin,ymax,color)
	H,W = size(canvas)
	wmin,h0 = pR2topix([xmin,0],xmin,xmax,ymin,ymax,W,H)
	wmax,h0 = pR2topix([xmax,0],xmin,xmax,ymin,ymax,W,H)
	w0,hmax = pR2topix([0,ymin],xmin,xmax,ymin,ymax,W,H)
	w0,hmin = pR2topix([0,ymax],xmin,xmax,ymin,ymax,W,H)
	if 0 < h0 <= H
		for w in max(wmin,1):min(wmax,W)
			canvas[h0,w] = color
		end
	end
	if 0 < w0 <= W
		for h in max(hmin,1):min(hmax,H)
			canvas[h,w0] = color
		end
	end
	canvas	
end