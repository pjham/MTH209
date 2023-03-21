#Q1
library(lpSolve)
f.con <- matrix(c(1,0,2,3,1,1,1,0,0,1), nrow = 5, ncol = 2, byrow = TRUE)
f.rhs <- c(16,9,8, 0, 0)
f.obj <- c(5,7)
f.dir <- c("<=","<=","<=",">=",">=")
Sol <- lp ("max", f.obj, f.con, f.dir, f.rhs)
Sol$objval

#Q2
f.con <- matrix(c(4,3,-20,1,1,-10,1,0,-2,1,1,0), nrow = 4, ncol = 3, byrow = TRUE)
f.dir <- c("<=","<=","<=",">=")
f.rhs <- c(200,500,100,1000)
f.obj <- c(30,40,80)
Sol <- lp ("min", f.obj, f.con, f.dir, f.rhs, int.vec = 1:3)
Sol$objval
