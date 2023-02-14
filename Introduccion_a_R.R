# Vector
x <- c(3, 5, 6, 2)

# Vector operation
y <- 2*x

# Access index by vector of index
z <- x[c(2, 4, 1, 3)]

# Creem ajutament de plot amb layout de 3 col
par(mfrow = c(1, 3))
plot(x, z)
plot(x, z, type="l")
plot(x, z, type="b")

# Matrius
A <- matrix(1:15, nrow=5, ncol=3)
B <- matrix(-(1:10),nrow=5) # Si falten nombres repeteix les dades
C <- matrix((1:6)*100,ncol=3) # row auto

# Concatenacio horitzontal de matrius
cbind(A,B)

# Concatenació vertical de matrius
rbind(A, C)

# Multiplicacio de enters per la trasposada
print(A %*% t(C))

# Matriu de randint amb distribució uniforme a un decimal i 7 col
D <- matrix(round( 10 * runif(35) , 1), ncol=7)
dim(D)

# De les col 2-5 menys la 1-2 i 6
W <- D[2:5, -c(1:2,6)]

# Inversa
invW <- solve(W)

# Les llistes poden contenir diferents tipus
llista <- list(1,2,3,nombre=c("Laia","Adrian"), vector= c(4,6,1,0), TF = TRUE)

# [[]] per accedir als elements o $
llista[[4]]

llista$vector

names(llista)
str(llista)

# Convertir a Data Frame
df <- as.data.frame(llista)
class(df)















