nuevo_dir <- "C:/estadisticadescriptiva"
setwd(nuevo_dir) 
if(file.exists(nuevo_dir)) {
  cat("Directorio creado correctamente: ", nuevo_dir, "\n")
} else {
  cat("Fallo al crear directorio: ", nuevo_dir, "\n")
}

#1
vector_x <- c(1,2,3,4,5)
typeof(vector)

vector_y <- c(9.1,2.4,7.5,1.3,3.4)
typeof(vector)

x <- c(1,2,3,4,5)
y <- c(9.1,2.4,7.5,1.3,3.4)

#Un vector es la estructura de datos más sencilla en R.La diferencia entre un vector en R y una lista es que los elementos de un vector tienen que ser del mismo tipo, mientras que los de una lista pueden ser de distinto tipo.El tipo double es un tipo de datos que puede almacenar números reales con decimales (hasta cierta precisión), tales como 3.1415926537 o 1.0 , mientras que el tipo int es un tipo entero y solo puede almacenar números sin decimales.

#2
valor_suma <- x+y
print(valor_suma)

valor_resta <- x-y
print(valor_resta)

valor_multiplicacion <- x*y
print(valor_multiplicacion)

valor_division <- x/y
print(valor_division)

valor_elevar <- x^y
print(valor_elevar)

#3
c(9.1,2.4,7.5,1.3,3.4)^2
c(y)^2

#4
c(9.1,2.4,7.5,1.3,3.4)*10
c(y)*10

#5
c(9.1,2.4,7.5,1.3,3.4)+25
c(y)+25

#6
max(9.1,2.4,7.5,1.3,3.4)
max(y)

#7
min(9.1,2.4,7.5,1.3,3.4)
min(y)

#8
abs(9.1)

#9
sqrt(y)

#10
sum(9.1,2.4,7.5,1.3,3.4)
sum(y)

#11
list <- list(c(x,y))
print(list)
typeof(list)
str(list)
View(list)

#

#12
is.na(list)

#13
z <- c(29,NA,12,46,73)
is.vector(z)

#14
valor_suma <- 29+NA+12+46+73
print(valor_suma)
valor_division <- NA/5
print(valor_division)

mean(z)

#

#15
matriz <- matrix(c(24,69,3,90,23,56,1,63,87,21,77,19), nrow = 4, byrow = TRUE)

#Los valores numéricos se rellenan por columnas en la matriz por defecto de la función matrix.

#16
matriz_filas <- matrix(c(24,69,3,90,23,56,1,63,87,21,77,19), nrow = 4, byrow = FALSE)

#17
matriz_a <- matrix(c(1,2,3,4,5,6,7,8,9), nrow = 3, byrow = TRUE)
matriz_b <- matrix(c(10,11,12,13,14,15,16,17,18), nrow = 3, byrow = TRUE) 

#18
sum(matriz_a,matriz_b)
valor_resta <- matriz_a-matriz_b
print(valor_resta)
resta_matriz <- matriz_a-matriz_b

#19
matriz
matriz_t <- t(matriz)
matriz_t

#20
matriz*2

#21
matriz_mult <- matriz_a*matriz_b

#22
matriz_mult[3,2]
matriz_mult[,2]
matriz_mult[3,]

#Segunda práctica en aula

#1
set.seed(123)
num_cuentas <- round(rnorm(100, mean = 50, sd = 10))
print(num_cuentas)

#2
mean(num_cuentas)

#3
median(num_cuentas)

#4
moda <- as.numeric(names(sort(table(num_cuentas), decreasing = TRUE)[1]))
print(paste("La moda de las cuentas en el yacimiento es:", moda))

#5
range(num_cuentas, na.rm = FALSE)

#6
percentil_25 <- quantile(num_cuentas, 0.25)
print(paste("El percentil 25 de las cuentas en el yacimiento es:", percentil_25))

#7
percentil_75 <- quantile(num_cuentas, 0.75)
print(paste("El percentil 75 de las cuentas en el yacimiento es:", percentil_75))

#8
var(num_cuentas)

#9
sd(num_cuentas)

#10
hist(x = num_cuentas, main = "Historiograma",
     xlab = "numero de cuentas", ylab = "frecuencia")

#11
boxplot(x = num_cuentas, main = "Diagrama de caja",
        xlab = "numero de cuentas", ylab = "yacimiento")

#12


#13
df <- data.frame(num_cuentas)
df$categoria <- cut(df$num_cuentas, breaks = 10)
ggplot(df, aes(x=categoria)) + 
  geom_bar(fill = "orange", color = "black") +
  labs(title = "Gráfico de barras de cuentas en el yacimiento", x = "Categoría de cuentas", y = "Frecuencia")

#14

