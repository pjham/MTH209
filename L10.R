library(mvtnorm)
library(plot3D)
x <- (-40:40)/10
y <- x
xy <-mesh(x,y) 
x0 <- as.vector(xy$x); y0 <- as.vector(xy$y); z0 <- cbind(x0, y0)
mean <- c(0,0) # mean vector
sigma <- matrix(c(1,0.7,0.7,1), ncol=2) # covariance matrix
# pdf of a multivariate normal distribution:
z1 <- dmvnorm(z0, mean, sigma) # pdf of multivariate normal
z = matrix(z1, ncol = length(x))
persp3D(z = z, x = x, y = y, theta = -30, phi = 30, colvar = z, col="steelblue",shade = 0.5, main="cor=0.7")

library(fMultivar); library(graphics)
x <- (-40:40)/10; X <- grid2d(x)
z <- dnorm2d(X$x, X$y, rho = -0.8)
X <- list(x = x, y = x, z = matrix(z, ncol = length(x)))
# Perspective Density Plot:
persp(X, theta = -30, phi = 25, expand = 0.5, col = "lightblue", ltheta = 120, shade = 0.15, ticktype = "detailed", xlab = "x", ylab = "y", zlab =" ")



X <- rnorm(1000,162,7)
Y <- rnorm(1000,3+0.4*X,8)
plot(x=X,y=Y)
mean(X)
mean(Y)
sd(X)
sd(Y)
cov(X,Y)


x <- rnorm(1000,100,16)
qqnorm(x,col='blue')
abline(100,16)
