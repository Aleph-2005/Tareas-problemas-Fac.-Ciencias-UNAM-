#tarea_3 phyton Elías López Rivera & Hector santiago Gonzalez Baltierra

import pandas as pd
import networkx as nx
import matplotlib.pyplot as plt 

df=pd.read_excel("C:/Users/Elías López/Downloads/Latex/UNAM/Semestre_5/Seminario_redes/tareas/para_clase_redes_bipartitas.xlsx")
#ruta del archivo puse la absoluta perdon
df=df.dropna(axis=1,how="all") 
df = df.dropna(subset=["fecha", "anio", "mes","linea","afluencia"])
df["linea"]=df["linea"].astype(str).str.replace("LÃ­nea", "línea")
#print(df.isna().sum())
df["fecha"]=pd.to_datetime(df["fecha"],format="%d/%m/%y")
#df=df.sort_values("fecha")
df_filtrado=df[((df["fecha"].dt.year==2018) & (df["fecha"].dt.month.isin([6,7])))]
#print(df_filtrado.sample(10))
B=nx.Graph()
conjunto_lineas=df_filtrado["linea"].unique()
conjunto_fechas=df_filtrado["fecha"].unique()
B.add_nodes_from(conjunto_lineas,bipartite=0)
B.add_nodes_from(conjunto_fechas, bipartite=1)
B.add_weighted_edges_from(df_filtrado[["linea","fecha","afluencia"]].values)

grado_pesado = dict
(
    B.degree(conjunto_lineas, weight="weight")
)
print(grado_pesado)

node_sizes = []

for nodo in B.nodes():
    if nodo in conjunto_lineas:
        node_sizes.append(grado_pesado[nodo]/1000)
    else:
        node_sizes.append(300)
        

pos = nx.bipartite_layout(B, conjunto_lineas)

plt.figure(figsize=(100,80))

nx.draw(
    B,
    pos,
    node_size=node_sizes,
    node_color="lightgreen",
    edge_color="purple",
    with_labels=True
)

plt.show()
