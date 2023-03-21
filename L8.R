library("igraph")
G <- sample_gnp(10, 0.5,directed = TRUE)
plot(G)
N <- barabasi.game(10)
plot(N)
## Example 165
as_adjacency_matrix(N)
## Example 173
library(pracma)
D = diag(c(3,3,3,2,1))
L <- matrix(c(3, -1, -1, -1, 0, -1, 3, -1, 0, -1, -1, -1, 3, -1, 0, -1, 0, -1, 2, 0, 0, -1, 0, 0, 1), 5, 5)
dim(nullspace(L))



### Practical Applications
library(igraph)
library(igraphdata)
data("macaque")

LM <- graph.laplacian(macaque)
LM <- as.numeric(LM)
LLM <- matrix(LM, 45, 45)
dim(nullspace(LLM))

LM2 <- graph.laplacian(macaque, normalized = TRUE)
LM2 <- as.numeric(LM2)
LLM2 <- matrix(LM2, 45, 45)
EE <- eigen(LLM2)
sum(EE$values)

data("UKfaculty")
LF <- graph.laplacian(UKfaculty)
LF <- as.numeric(LF)
LLF <- matrix(LF, 81, 81)
dim(nullspace(LLF))
plot(UKfaculty)

AF <- get.adjacency(as.undirected(UKfaculty))
DF<-degree(UKfaculty)
AAF <- matrix(as.numeric(AF), 81, 81)
for(i in 1:81){
  AAF[i, ] <- AAF[i,]/DF[i]
}
LF3 <- eye(81) - AAF
EF <- eigen(LF3)
sum(EF$values)

for(i in (0:(81-15)))
{
  subUK <- induced_subgraph(UKfaculty,vids=1+i:15+i)
  plot(subUK)
  Sys.sleep(0.1)
}



