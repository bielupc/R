n <- 100
res <- sample(x = 1:6, size=n, replace=TRUE)

sale.1 <- (res == 1)
cum.fr.1 <- cumsum(sale.1)/(1:n)

plot(1:n, cum.fr.1, type="l")
abline(h=1/6, col="red",lty=2)

aux <- seq(.9*n,n,by=1)
plot(aux, cum.fr.1[aux], type="l")
abline(h=1/6, col="red",lty=2)

####
n<-1000
dados <- matrix(sample(x = 1:6, size=3*n, 
                       replace=TRUE),
                ncol=3)
dim(dados)

difs <- apply(dados, 1, 
              function(x){
                (length(x)==length(unique(x)))
                }
              )

cum.difs <- cumsum(difs)/(1:n)

plot(1:n, cum.difs, type="l")
abline(h=5/9, col="red",lty=2)

                


