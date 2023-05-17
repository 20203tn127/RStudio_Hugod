
#Declarasao do variables
price = "Hola"
price <- 100
precio = 100

#If statement
if(price<100){
  print("Menor a 100")
}else{
  print("Mayor a 100")
}

#Variable de multiples valores y su evaluacion en un if ternario
quantity <- c(1,1,2,1,2) #Declaracion de un combine (equals(java.util.list))
ifelse(quantity == 1, 'Yes', 'No') #Este if ternario itera un combine, el otro if no

#La condicion tiene longitud > 1 y solo el primerelemento sera usado, por lo que causara un error
price <- c(58,100,110)
if(price<100){
  print("menor a 100")
}else if(price == 100){
  print("=100")
}else{
  print(">100")
}


#Funcion all and any
price <- c(58,100,110)
if(all(price<100)){
  print("Todos menor a 100")
}
if(any(price<100)){
  print("Alguno menor a 100")
}

#Funcion con otro tipo de switch:
#Puedes acceder con el valor, o con numeros, empezando con 1
days <- function(x){
  switch(x,
         Mon = "Monday",
         Tue = "Tuesday",
         Wed = "Wednesday",
         Thu = "Thursday",
         Fri = "Friday",
         "Weekend")
}

days("Mon")
days(6)

#Ejemplo de la forma de Funcion mas utilizada en R
quantity <- c(1,2,3,4,5)
avg_qty <- function(qty, type){
  switch(type,
         arithmetic = mean(quantity),
         geometric = prod(quantity)^(1/length(quantity)))
}

avg_qty(quantity,"arithmetic")
avg_qty(quantity,2)

#For Each
cart <- c("apple", "cookie","lemon")
for(x in cart){
  print(x)
}

#Al utilizar un ciclo, es posible usar un arreglo de 1 sola posicion, y obtener
price_discounted <- c(1)
price <- c(30,120,50,70,150,100,50,25,110)
for (i in 1:length(price)) {
  price_discounted[i] <- price[i] - price[i] * 0.1
  print(price_discounted[i])
  print(price_discounted)
}

#Concatenacion
index <- 1
while(index<4){
  print(paste("Index is", index))
  index <- index + 1
}

#Ciclos no estructurados controlados por estructuras de control
x<-1
repeat{
  print(x)
  x <- x+1
  if(x == 3){
    break
  }
}

#Funcion set working directory setwd
setwd("c:\\agl")
maraton <- read.csv("maraton_ny.csv",
                    header = TRUE, #El 1 y el TRUE son intercambiables
                    row.names = 1, #Identifica si el primer row es usado para tabular
                    sep = ",", #separator trough comas
                    dec = ".") #Decimales por .

#Imprime en una tabla mi csv 
View(maraton)
#Funcion equivalente de TypeOf, muestra el tipo de dato
class(maraton)
#-------------------------
#Existen tipos de datos en R, los cuales son
#Logical
#Character == String
#Numeric
#Factor
#Matrix
#-------------------------
#Vector
#List
#data.frame = un conjunto de vectores ordenados por filas
#-------------------------
#Funcion dimension de un data.frame
dim(maraton)
#Imprime los nombres de los encabezados de el data.frame
names(maraton)
#Retorna las observaciones/registros de manera estructurada, es decir, las describe
str(maraton)
#NUmero de rows
nrow(maraton)
#Ejemplo de instalacion de paquetes
install.packages("dplyr")
library("dplyr") #Utilizacion de librerias
glimpse(maraton) #Describe el data frame
summary(maraton) #Describe
