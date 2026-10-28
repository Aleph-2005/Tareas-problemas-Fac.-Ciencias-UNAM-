# Entrega 1 de proyecto Elias Lopez Rivera Hector Santiago Gonzalez Baltierra
import numpy as np
import networkx as nx
import matplotlib.pyplot as plt

n_aristas = 1001 # Número de aristas
x = np.random.randint(1, 1001, size=n_aristas) # Nodos para x
y = np.random.randint(1, 1001, size=n_aristas) # Nodos para y

aristas = list(zip(x, y)) # Creamos las aristas en una lista

print(f"Número de aristas generadas: {len(aristas)}")
G=nx.Graph()
G.add_edges_from(aristas)
plt.figure(figsize=(8,8))
nx.draw(G, node_size=30, edge_color="red", alpha=0.6)
nx.spring_layout(G)
plt.show()
print("coeficiente de asortatividad: ",nx.degree_assortativity_coefficient(G))
"""
No hay correlacion clara, el coeficiente de correlacion explica la covarianza entre dos variables aleatorias, es decir que tanto dependen
una de la otra, en este caso particular estamos calculando que tanto tienen que ver las conexiones de la red con alguna caracteristica especifica, como aqui no hay ninguna caracteristica en particular por la que dos nodos esten conectados
la asortatividad tiende a cero
"""