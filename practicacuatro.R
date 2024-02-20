nuevo_dir <- "C:/practicacuatro"
setwd(nuevo_dir) 
if(file.exists(nuevo_dir)) {
  cat("Directorio creado correctamente: ", nuevo_dir, "\n")
} else {
  cat("Fallo al crear directorio: ", nuevo_dir, "\n")
}

#Ejercicio 1
install.packages("readxl")
library(readxl)

spear <- read_excel("C:/practicacuatro/spearheads.xlsx")
spear <- as.data.frame(spear)
View(spear) 
str(spear)
class(spear)

spear <- as.data.frame(spear)
class(spear) 

#Ejercicio 2
names(spear)[names(spear) == "Mat"] <- "Materiales"
names(spear)[names(spear) == "Con"] <- "Contexto"
names(spear)[names(spear) == "Cond"] <- "Conservación"
names(spear)[names(spear) == "Loo"] <- "Loop"
names(spear)[names(spear) == "Peg"] <- "Remache"
names(spear)[names(spear) == "Date"] <- "Fecha"
names(spear)[names(spear) == "Maxle"] <- "Longitud_max"
names(spear)[names(spear) == "Socle"] <- "Longitud_encaje"
names(spear)[names(spear) == "Maxwi"] <- "Ancho_max"
names(spear)[names(spear) == "Upsoc"] <- "Ancho_encaje"
names(spear)[names(spear) == "Maxwit"] <- "Ancho_max_encaje"
names(spear)[names(spear) == "Weight"] <- "Peso"
spear
View(spear)

#Ejercicio 3
spear$Contexto=factor(spear$Contexto, levels = c("1","2","3"), labels=c("s/c", "Habitacional", "Funerario"))
spear$Conservacion=factor(spear$Conservacion, levels = c(1,2,3,4), labels=c("Excelente", "Bueno", "Regular", "Malo"))
spear$Remache=factor(spear$Remache, levels = c(1,2), labels=c("Si", "No"))
spear$Materiales=factor(spear$Materiales, levels = c(1,2), labels=c("Bronce", "Hierro"))
View(spear)


#Ejercicio 4
freq.mat=table(spear$Materiales)
View(freq.mat)
freq.con=table(spear$Contexto)
View(freq.con)
freq.cond=table(spear$Conservacion)
View(freq.cond) 

#Ejercicio 5
cross.condcon=table(spear$Conservacion, spear$Contexto)
cross.condcon
cross.condmat=table(spear$Conservacion, spear$Materiales)
cross.condmat

#Ejercicio 6
prop.mat=prop.table(freq.mat)
View(prop.mat)
prop.mat <- as.data.frame(prop.mat)
prop.mat$Porcentaje <- prop.mat$Freq * 100
prop.mat

#Ejercicio 7
prop.cross.condon=round(prop.table(cross.condcon)*100,0)
View(prop.cross.condon)
prop.cross.condmat=round(prop.table(cross.condmat)*100,0)
View(prop.cross.condmat)

#Ejercicio 8
bar.cond=barplot(table(spear$Conservacion))
bar.con=barplot(table(spear$Contexto))

#Ejercicio 9
barh.mater=barplot(table(spear$Materiales), horiz=TRUE)
xlim <- c(0, 1.2*max())


#Ejercicio 10
bar.cond= barplot(cross.condmat, width = 0,85, ylim=c(=0,sum(cross.condma))
                  main = "Estado de conservación vs. Materiales",
                  ylab = "Frecuencia",
                  legend=T)
barplot(tabla_materiales, tabla_conservacion,
        main = "Grafico de barras ampliado",
        xlab = "Materiales", ylab = "Conservacion",
        col = "yellow","green")

#Ejercicio 11
labs<- paste("(",freq.cond,")\n"


#Ejercicio 12

