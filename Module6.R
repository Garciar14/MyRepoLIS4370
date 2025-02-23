A = matrix(c(2,0,1,3),ncol=2)
B = matrix(c(5,2,4,-1),ncol=2)

onea <- A + B
oneb <- A - B
onea
oneb

q2 <- diag(c(4,1,2,3))
q2

q3 <- matrix(0, nrow=5, ncol=5)
q3[1, ] <- c(3,1,1,1,1)
diag(q3[2:5, 2:5]) <- 3
q3[2:5, 1] <- 2
q3
