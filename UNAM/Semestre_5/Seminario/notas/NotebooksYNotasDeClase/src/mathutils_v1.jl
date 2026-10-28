# math utils, versión 1


# Calcula los primeros N elementos de la órbita de x bajo f.
function calcorbit(f, x, N)
    orbit = [x]
    for n in 1:(N-1)
        push!(orbit, f(orbit[n]))
    end
    orbit
end


# Crea una function que es un polinomio, con un arreglo de coeficientes como argumento.
function createpolynomial(coeffs) # coeffs debe ser una arreglo de coeficientes
    function polynomial(x)
        finalval = coeffs[end] # Coeficiente a_{n-1}, índice n=end
        for k in (length(coeffs)-1):-1:1 # Coeficientes a_{n-1} (índice n) a a_0 (índice 1)
            finalval = coeffs[k] + x*finalval
        end
        finalval
    end # La última instrucción de "createpolynomial" es todo un bloque "function ... end"
end


# Crea una function que es la derivada numérica de una función.
function createnumderivative(f, ε)
    function numder(x)
        (f(x+ε)-f(x-ε))/(2ε)
    end
end