y1 <- 1:6
y2 <- y1
library(pracma)
z <- meshgrid(y1,y2)
n <- 1000
sampler <- function(n)
{
sample = matrix(nrow=n,ncol=2)
for( i in 1:n)
{
  sample[i,1] <- sample(z$X,1)
  sample[i,2] <- sample(z$Y,1)
}
return(colMeans(sample))
}
m<-100
dist <- matrix(nrow=m,ncol=2)
for( i in 1:m)
{
  dist[i,] <- sampler(1000)
}
library(plot3D)
z <- density2d(x = dist[,1],y = dist[,2])
persp3D(x=z$x,y=z$y,z=z$z,theta = -90, phi = 30)

library(plotly)
plot_ly() %>% add_trace(x=z$x, y=z$y, z=z$z, type="mesh3d" ) 



