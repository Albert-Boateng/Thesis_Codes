install.packages("TAR")
install.packages("mvtnorm")
library(TAR)

url <- "https://roughan.info/data/Abilene.tar.gz"
download.file(url, "Abilene.tar.gz")

tar_file <- "Abilene.tar.gz"
extract_dir <- "C:/Users/HP/Desktop"
untar(tar_file, exdir = extract_dir)

install.packages("R.matlab")
library(R.matlab)
install.packages("sand")
library(sand)
library(igraph)

data <- readMat("C:/Users/HP/Desktop/traffic_dataset.mat")
data
W <- data$tra.adj.mat
g.cd <- graph_from_adjacency_matrix(W, weighted=TRUE, mode = "directed")
plot(g.cd,edge.arrow.size=0.1)


vertex_attr <- list(shape = "circle",    # Shape of vertices (circle in this example)
                    color = "blue",      # Color of vertices (blue in this example)
                    size = 8)           # Size of vertices (10 in this example)

# Plot the graph with modified vertex attributes
plot(g.cd, vertex.size = vertex_attr$size, vertex.shape = vertex_attr$shape,edge.width=2,edge.arrow.size=0.15)
names(data)
X.mat <- data$tra.X.tr
print(X.mat[1241])

library(igraph)

# Assuming you have an adjacency matrix called `adj_mat`

# Create a graph from the adjacency matrix
g <- graph_from_adjacency_matrix(W, mode = "undirected")

# Plot the graph
plot(g, vertex.color = "lightblue", edge.color = "gray", edge.arrow.size = 0.5)


library(sand)
data(karate)
hist(degree(g), col="lightblue", xlim=c(0,10),
     xlab="Vertex Degree", ylab="Frequency", main="")
hist(strength(g), col="pink",
     xlab="Vertex Strength", ylab="Frequency", main="")

library(igraph)

# Assuming you have an adjacency matrix called `adj_mat`

# Create a graph from the adjacency matrix
g <- graph_from_adjacency_matrix(adj_mat, mode = "undirected")

# Plot the graph
plot(karate, vertex.color = "lightblue", edge.color = "gray", edge.arrow.size = 0.5)
