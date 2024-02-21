nuevo_dir <- "C:/pr5_21feb"
setwd(nuevo_dir) 
if(file.exists(nuevo_dir)) {
  cat("Directorio creado correctamente: ", nuevo_dir, "\n")
} else {
  cat("Fallo al crear directorio: ", nuevo_dir, "\n")
}

#Ejercicio 1
library(ggplot2)
n <- 200
set.seed(123)
yacimiento <- sample(paste0("site", 1:10), n, replace = TRUE)
tipo_de_artefacto <- sample(c("Pottery", "Tools", "Jewelry", "Weapons"), n, replace = TRUE)
latitud <- runif(n, min = 0, max = 90)
longitud <- runif(n, min = -180, max = 180)
numero_de_artefacto <- sample(1:1000, n, replace = TRUE)
contexto <- sample(c("Habitacional", "Funerario", "Otros"), n, replace = TRUE)

archaeology_data <- data.frame(
  site = yacimiento,
  tipo_de_artefacto = tipo_de_artefacto,
  numero_de_artefacto = numero_de_artefacto,
  contexto = contexto,
  latitud = latitud,
  longitud = longitud
)

#Ejercicio 2
mean(numero_de_artefacto)
cuartil <- quantile(numero_de_artefacto) 

#Ejercicio 3
hist(x = numero_de_artefacto, main = "Historiograma")
median(numero_de_artefacto)
#

#Ejercicio 4
grafico_caja <- boxplot(archaeology_data$numero_de_artefacto)
#

#Ejercicio 5


#Ejercicio 6
ggplot(archaeology_data, aes(x = longitud, y = latitud)) +
  geom_bin2d() +
  labs(title = "Artifact Density Heatmap", x = "Longitud", y = "Latitud")

#Ejercicio 7
total_artefactos <- sum(archaeology_data$numero_de_artefacto)

#Ejercicio 8
median(archaeology_data$numero_de_artefacto)

#Ejercicio 9
desviacion_estandar <-sd(numero_de_artefacto)
print(desviacion_estandar)

#Ejercicio 10
which.max(total_artefactos)

#Ejercicio 11
tabla_sumario <- aggregate(numero_de_artefacto ~ site, data = archaeology_data,
          FUN = )

#Ejercicio 12

