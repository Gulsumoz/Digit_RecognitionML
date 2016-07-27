
#scaling the matrix making it zero mean
rm=colMeans(mymatrix)
plot(rm, type="l")
plot(mymatrix[357, ], type="l")
plot(mymatrix[, 357], type = "l")
rm[357]
Zmatrix<-scale(mymatrix, scale = FALSE)
plot(Zmatrix[, 357], type = "l")
plot(Zmatrix[357, ], type="l")
#covariance matrix
Cmatrix<-cov(Zmatrix)
plot(Cmatrix[357, ], type="l")
#eigenvector of of Cmatrix
Eigenvalue<-eigen(Cmatrix, symmetric=TRUE, only.values = FALSE)
Vmatrix<-Eigenvalue$vectors
Values<-Eigenvalue$values
Pmatrix<-Zmatrix%*%Vmatrix
sdev=sqrt(Vmatrix) 
head(sdev)
#cov of PCA shoud be equal to 0 or near 
cov(Pmatrix)
#should equals zero since they are orthogonal between themselves
Vmatrix[4:6,159] %*% Vmatrix[4:6,160] # 
kip <- 100 * sum(Values[1:10])/sum(Values)
kip2<- 100 * Values[2]/sum(Values)
round(mean(Pmatrix))

hist(Pmatrix[, 1:5], type="l")
plot(Pmatrix[, 1:5] ,)
barplot(Values[1:10], type = "l")
plot(Vmatrix[, 1:2])
plot(Vmatrix[ 710:713, ])
R<-Pmatrix[1, 1:2]%*%Vmatrix[1:2, ]



