x1<-c(25,26,25,24,23,22,20,22,24,25)
x2<-c(50,55,58,59,59,59,58,58,59,60)
x3<-c(60,65,65,64,62,63,62,61,63,61)
x4<-c(36,35,34,31,32,33,33,34,37,37)
x5<-c(40,45,42,42,40,43,38,32,35,45)
matriz<-matrix(c(x1,x2,x3,x4,x5),ncol=5)
matriz
library(apcluster)
MD<-dist(matriz,method="euclidean",diag=T,upper=T)
MD2<-MD^2
plot(MD2)
resultados<-hclust(MD2, method="ward.D")
resultados
plot(resultados)
grupos<-cutree(resultados,k=2)
grupos
rect.hclust(resultados,k=2,border="red")
grupos1<-cutree(resultados,k=3)
grupos1
plot(resultados)
rect.hclust(resultados,k=3,border="red")
grupos2<-cutree(resultados,k=4)
grupos2
plot(resultados)
rect.hclust(resultados,k=4,border="red")
grupos3<-cutree(resultados,k=5)
grupos3
plot(resultados)
rect.hclust(resultados,k=5,border="red")





x1<-c(25,26,25,24,23,22,20,22,24,25)
x2<-c(50,55,58,59,59,59,58,58,59,60)
x3<-c(60,65,65,64,62,63,62,61,63,61)
x4<-c(36,35,34,31,32,33,33,34,37,37)
x5<-c(40,45,42,42,40,43,38,32,35,45)
datos2<-rbind(x1,x2,x3,x4,x5)
datos2
MS<-negDistMat(datos2,r=2)
resultados2<-apcluster(MS)
resultados2
matriz<-matrix(c(x1,x2,x3,x4,x5),ncol=5)
matriz
library(apcluster)
MD<-dist(matriz,method="euclidean",diag=T,upper=T)
MD2<-MD^2
plot(MD2)
resultados<-hclust(MD2, method="ward.D")
resultados
plot(resultados)
grupos<-cutree(resultados,k=2)
grupos
rect.hclust(resultados,k=2,border="red")


