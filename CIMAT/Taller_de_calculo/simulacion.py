import networkx as nx
import matplotlib.pyplot as plt

# Crear un grafo vacío
G = nx.Graph()

# Agregar nodos
G.add_nodes_from([1, 2, 3, 4])

# Agregar aristas
G.add_edges_from([(1, 2), (2, 3), (3, 4), (4, 1), (1, 3)])

# Dibujar el grafo
plt.figure(figsize=(6,6))
nx.draw(G, with_labels=True, node_color="skyblue", node_size=1200, font_size=14, edge_color="gray")
plt.title("Ejemplo de grafo en Python")
plt.show()

