# Functions para dibujo de bolas 


# Bolas monocromáticas
function drawballR2!(img, x, r, d, xmin, xmax, ymin, ymax, color)        
    height, width = size(img)
        
    for h in 1:height
        for w in 1:width
            y = pixtopR2(w,h,width,height,xmin,xmax,ymin,ymax)

	    if d(x,y) < r # Si p está en la bola, lo pintamos
                img[h,w] = color
            end # if
                
        end # for width
    end # for height    
    
    img
end


# Bolas con gradiente de color
function drawballgradR2!(img, x, r, d, xmin, xmax, ymin, ymax, c1, c2)        
    height, width = size(img)
        
    for h in 1:height
        for w in 1:width
            y = pixtopR2(w,h,width,height,xmin,xmax,ymin,ymax)

	    dis = d(x,y) # Recomendable para no recalcular d(x,y) 
			
	    if dis < r # Si p está en la bola, lo pintamos
                img[h,w] = linterpcolor(c1,c2,dis/r)
            end # if
                
        end # for width
    end # for height    
    
    img
end