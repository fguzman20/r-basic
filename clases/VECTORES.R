head(datos)
x= c(datos$AHORRO) #crear un vector
scan() #cargar e importar en formato vector un fichero
scan(what = "character")
fix(x) #modificar un vector
class(x) #tipo de vector
rep("marcos",4) #definir vector

a= c(16,0,1,20)
fix(a)
a
?seq
seq(2,20,by=8)
x

#concatenar vectores:
c(rep(pi, 5), 5:10, c(7,2))

#OPERACIONES CON VECTORES:
x = 1:10
x
y = x +pi
y

#FUNCIONES A CADA ELEMENTO
#sapply(nombre_de_vecto, FUN= nombre_funcion)
sapply(x, FUN= function(Raiz){sqrt(Raiz)})

mean(x)
cumsum(x) #sumas acumuladas
sort(x, decreasing = TRUE)

#SUBVECTORES
v= c(14,5,6,19,32)
v[2]
v[v >= 15 & v!= 19]

x= seq(3,50, by = 3)
x[1]
x[1:5]

x[seq(2,length(x), by = 2)] #pares
x[-seq(2,length(x), by = 2)] #impares

xx[seq(2,length(x), by = 2)]
x[x>20]

x>30
which(x> 30)

x[17] = 5 #nuevo registro
x[length(x) + 5 ] = 52 #agregar a la 5ta posicion 52 los demas NA
cumsum(x)
mean(x, na.rm = TRUE) #Elimina los NA

is.na(x)
################CONVERTIR LOS NA A VALORES DE LA MEDIA
which(is.na(x))
y= x
y[is.na(y)] = mean(y, na.rm = TRUE)
y
########################################### aa
cumsum(x[!is.na(x)])
na.omit(x) ##omite NA

sum(na.omit(x))

cumsum(na.omit(x))

x_clean = na.omit(x) 
x_clean
attr(x_clean, "na.action") = NULL #limpia el vector
x_clean

#FACTORES-- es como un vector pero con una estructura interna mas rica
# que permite usarlo para clasificar observaciones
nombres = c("marcos","jorge","andrea")
nombres
nombres.factor = factor(nombres)
nombres.factor ##el factor tiene un atributo especial levels
## funcion factor(vector, levels...) define un factor a partir del vector.

gender = c("M","M","H","M")
gender.fact = factor(gender)
gender.fact
gender.fact2 = as.factor(gender)
gender.fact2
gender.fact3  = factor(gender, levels= c("M","H"), labels = c("MUJER","HOMBRE"))
gender.fact3
levels(gender.fact3) = c("FEMENINO","MASCULINO")
gender.fact3

#LISTAS- esta formada por diferentes objetos, no necesariamente
#del mismo tipo list() obtener componente list$componente
x = c(1,5,6,5,-5)
L= list(nombre= "Temperaturas", datos=x,media=mean(x))
L
L$media

3 * L[[3]]
str(L)
names(L)

summary(lm(c(1,2,3,4)~c(1,2,3,6)))
reg <- (lm(c(1,2,3,4)~c(1,2,3,6)))
reg$coefficients
?lm






