library(matlib)
A=matrix(1:100, nrow=10)
B=matrix(1:1000, nrow=10)
B <- B[,1:10]

det(A) # 0 for determinant
inv(A) #Singular system for inverse

det(B) # 0 for determinant
inv(B) # System is singular for inverse
