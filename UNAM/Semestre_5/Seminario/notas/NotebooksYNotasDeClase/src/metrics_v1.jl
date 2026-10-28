# Métricas, versión 1


# Métrica euclidiana en R^n
function dE_Rn(x,y)
	d = 0
	for i in 1:length(x)
		d += (x[i] - y[i])^2
	end
	sqrt(d)
end


# Métrica euclidiana en los complejos
dE_C(x,y) = abs(x-y)


# Métrica euclidiana en R^n
function dM_Rn(x,y)
	d = 0
	for i in 1:length(x)
		d += abs(x[i] - y[i])
	end
	d
end


# Métrica Manhattan en los complejos
dM_C(x,y) = dEM_Rn([real(x), imag(x)], [real(y), imag(y)])


# Métrica de Chebyshev en R^n
function dmax_Rn(x,y)
	d = 0
	for i in 1:length(x)
		di = abs(x[i] - y[i])
		if di > d
			d = di
		end
	end
	d
end


# Métrica de Chebyshev en los complejos
dmax_C(x,y) = dmax_Rn([real(x), imag(x)], [real(y), imag(y)])


# Métrica cordal en el plano complejo extendido
function dchord_Cext(x,y)
	if isinf(y)
		return 2/sqrt(1+abs(x)^2)
	elseif isinf(x)
		return 2/sqrt(1+abs(y)^2)
	end
	2abs(x-y)/sqrt((1+abs(x)^2)*(1+abs(y)^2))
end

# Métrica cordal en el plano complejo
dchord_C(x,y) = 2abs(x-y)/sqrt((1+abs(x)^2)*(1+abs(y)^2))

# Métrica cordal en R2
dchord_R2(x,y) = dchord_C(complex(x[1],x[2]),complex(y[1],y[2]))


# Métrica esférica en el plano complejo extendido
dsph_Cext(x,y) = 2asin(dchord_Cext(x,y)/2)

# Métrica esférica en el plano complejo
dsph_C(x,y) = 2asin(dchord_C(x,y)/2)

# Métrica esférica en R2
dsph_R2(x,y) = dsph_C(complex(x[1],x[2]),complex(y[1],y[2]))


# Métrica hiperbólica en el semi-plano superior complejo
dH_H2(x,y) = acosh(1+abs2(x-y)/(2imag(x)*imag(y)))

# Métrica hiperbólica en el semi-plano superior versión R^2
dH_HR2(x,y) = dH_H2(complex(x[1],x[2]), complex(y[1],y[2]))


# Métrica hiperbólica en el disco unitario,
# inducida por la métrica hiperbólica el semi-plano superior complejo,
# usando la transformación de Cayley z -> (z+1)/(im*z-im).
dH_D(x,y) = dH_H2((x+1)/(im*x-im),(y+1)/(im*y-im)) 

# Métrica hiperbólica en el disco unitario, versión R2
dH_DR2(x,y) = dH_D(complex(x[1],x[2]), complex(y[1],y[2])) 
