#matrices matrix(vector, nrow=n, byrow= valor_logico)
#para definir una matriz d n filas formada por las entradas
#de un vector.

M= matrix(1:12, nrow = 3)
M
M= matrix(1:12, ncol  =4)
M
matrix(1, nrow = 4, ncol = 5)
#rbind añade filas a la matriz
rbind(M,c(1,2,3,4))
#cbind añade columas a la matriz
cbind(M,c(5,9,15))
#diag crea una matriz con diagonal
diag(c(1,5,4))

M
M[2,3]
M[3,4]

mean(M)
sum(M)
nrow(M)
ncol(M)
colSums(M)
rowSums(M)
colMeans(M)
rowMeans(M)

apply(M, MARGIN  = 1, FUN = function(x) {sqrt(sum( x))})#margin 1 filas, 2 columnas
apply(M, MARGIN  = 2, FUN = function(x) {sqrt(x)})



