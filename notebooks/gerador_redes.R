library(statnet)
library(network)
library(ergm)
library(sna)
set.seed(1)
data(package='ergm') # tells us the datasets in our packages
data(florentine) # loads flomarriage and flobusiness data
flomarriage # Let's look at the flomarriage data
plot(flomarriage)
flomodel.02 <- ergm(flomarriage~edges+triangle)

library(igraph)
library(intergraph)



g<-static.power.law.game(50, 50, exponent.out= 2.2, exponent.in = -1, loops = FALSE, multiple = FALSE, finite.size.correction = TRUE) 
plot(g, vertex.label= NA, edge.arrow.size=0.02,vertex.size = 0.5, xlab = "Scale-free network model (static)")
gg <- asNetwork(g)
graphmodel <- ergm(gg~edges+triangle)
data = as.matrix(gg,matrix.type="adjacency")
write.csv(data, file = "/home/novais/Desktop/Mestrado/3_trim_2019/Estatísitica Computacional/Trabalho Final/graph.csv")
