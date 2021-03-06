#Inicio del trabajo
ejemplos = sample(c("positivo", "negativo", "neutros"), 100, replace = TRUE)
#Pregunta n�1: testeo de conteos
str(ejemplos)
summary(ejemplos)
list(ejemplos)

totalP=0
totalN <- 0
totalNT <- 0

for(i in 1:length(ejemplos)){
  if(ejemplos[i]=="positivo"){totalP=totalP+1}
}
for(i in 1:length(ejemplos)){
  if(ejemplos[i]=="negativo"){totalN=totalN+1}
}
for(i in 1:length(ejemplos)){
  if(ejemplos[i]=="neutros"){totalNT=totalNT+1}
}
#corroborar por medio de la suma
totalN+totalNT+totalP
#testeo n�2: Seed
set.seed(10)
ejemplo1=sample(c("positivo","negativo","neutro"), 10, replace=TRUE)
list(ejemplo1)
ejemplo2=sample(c("positivo","negativo","neutro"), 10, replace=TRUE)
list(ejemplo2)

#pregunta n�3
set.seed(66)
ejemplos = sample(c("positivo", "negativo", "neutro"), 100, replace = TRUE)
list(ejemplos)

totalP=0
totalN <- 0


for(i in 1:length(ejemplos)){
  if(ejemplos[i]=="positivo"){totalP=totalP+1}
}
for(i in 1:length(ejemplos)){
  if(ejemplos[i]=="negativo"){totalN=totalN+1}
}
totalN+totalP
#se observa que que total de datos contabilizados son menores a la cantidad total de datos que se poseen
#generando de esta manera cierto "sesgo" o inutilizando toda la data disponible
totalN/(totalN+totalP)
totalP/(totalN+totalP)
#de esta manera se distribuye todo el % de poder entre estas dos variables, generando que sean mas fuertes o relevantes

totalP=0
totalN <- 0
totalNT <- 0

ejemplos = sample(c("positivo", "negativo", "neutros"), 100, replace = TRUE)

for(i in 1:length(ejemplos)){
  if(ejemplos[i]=="positivo"){totalP=totalP+1}
}
for(i in 1:length(ejemplos)){
  if(ejemplos[i]=="negativo"){totalN=totalN+1}
}
for(i in 1:length(ejemplos)){
  if(ejemplos[i]=="neutros"){totalNT=totalNT+1}
}
totalN+totalNT+totalP

totalP/(totalN+totalNT+totalP)
totalN/(totalN+totalNT+totalP)
totalNT/(totalN+totalNT+totalP)
#de manera opuesta, en el momento que se realiza con la consideracion de los neutros, se observa que tanto los datos totales, como su
#% de participacion son distintos, generando de esta menera una valoracion mas correcta, e incluso, con menor sesgo al considerar todos los datos.

ejemplos = sample(c("positivo", "negativo"), 100, replace = TRUE)
list(ejemplos)

totalP=0
totalN <- 0


for(i in 1:length(ejemplos)){
  if(ejemplos[i]=="positivo"){totalP=totalP+1}
}
for(i in 1:length(ejemplos)){
  if(ejemplos[i]=="negativo"){totalN=totalN+1}
}
totalN+totalP
#en el momento de no considerar totalmente los neutros, se observa que se distribuyen "50/50" aprox.

#Pregunta n�4: juego de cartas
#se consideran los 13 valores del mazo de cartas, del 1 al 13, desde el ace, hasta la J, Q K (11, 12 y 13 respectivamente)
cartas=sample(c(1:13),31, replace=TRUE)
cuentacartas<-0
for(i in 1:length(cartas)){
  if(cartas[i]==1|cartas[i]==10|cartas[i]==11|cartas[i]==12|cartas[i]==13){cuentacartas=cuentacartas-1}
}
for(i in 1:length(cartas)){
  if(cartas[i]==7|cartas[i]==8|cartas[i]==9) {cuentacartas<-cuentacartas-0}}

for(i in 1:length(cartas)){
  if(cartas[i]==2|cartas[i]==3|cartas[i]==4|cartas[i]==5|cartas[i]==6){cuentacartas=cuentacartas+1}
}
#se observa el valor de la variable "cuentacartas" que es la valorizacion de las siguientes cartas que saldrian.
cuentacartas
summary(cartas)

#Pregunta n�5
set.seed(10)
cartas=sample(c(1:13),31, replace=TRUE)
cuentacartas<-0
carta_altas<-0
for(i in 1:length(cartas)){
  if(cartas[i]==1|cartas[i]==10|cartas[i]==11|cartas[i]==12|cartas[i]==13){carta_altas=carta_altas+1}
}
cartas_neutra <- 0
for(i in 1:length(cartas)){
  if(cartas[i]==7|cartas[i]==8|cartas[i]==9) {cartas_neutra<-cartas_neutra+1}
}
cartas_bajas <- 0
for(i in 1:length(cartas)){
  if(cartas[i]==2|cartas[i]==3|cartas[i]==4|cartas[i]==5|cartas[i]==6){cartas_bajas=cartas_bajas+1}
}
#representacion del porcentaje por medio de la generacion de 3 variables nuevas
carta_altas/(length(cartas))*100
cartas_neutra/(length(cartas))*100
cartas_bajas/(length(cartas))*100

#representacion de el procentaje por medio del ejercicio anterior
for(i in 1:length(cartas)){
  if(cartas[i]==1|cartas[i]==10|cartas[i]==11|cartas[i]==12|cartas[i]==13){cuentacartas=cuentacartas-1}
}
for(i in 1:length(cartas)){
  if(cartas[i]==7|cartas[i]==8|cartas[i]==9) {cuentacartas<-cuentacartas-0}}

for(i in 1:length(cartas)){
  if(cartas[i]==2|cartas[i]==3|cartas[i]==4|cartas[i]==5|cartas[i]==6){cuentacartas=cuentacartas+1}
}

#pregunta 6

noticia1 <- c("La Prueba de Selecci�n Universitaria (PSU) se rendir� este lunes y martes, por primera vez en enero, a consecuencia del estallido social que se inici� el 18 de octubre, hace ya casi tres meses. Justamente en relaci�n con el estallido social, el Presidente Sebasti�n Pi�era afirm� recientemente que lo peor ya hab�a pasado. Tales declaraciones desataron una ola de cr�ticas en distintos sectores de la ciudadan�a y el hecho de que la PSU pueda aplicarse o no, a lo largo de todo el pa�s, puede ser observado como una pulseada entre los que piensan que el conflicto transita hacia el establecimiento de la normalidad y aquellos que reclaman que nada se ha resuelto. Las organizaciones que congregan a los estudiantes de ense�anza media, ACES y CONES, representan la segunda posici�n y sus integrantes defienden que la PSU 2019 no se rinda, hecho in�dito desde que se implement� el actual sistema. Analizando lo ocurrido en los �ltimos a�os, estas mismas organizaciones estudiantiles han sido las m�s cr�ticas respecto de la PSU. Han manifestado reparos, cuestionamientos y propuestas; pero sus demandas, como muchas otras que se han mostrado en el estallido social, no han sido escuchadas. Asimismo, si se considera que la PSU es una prueba declarada como transitoria, camino a la implementaci�n del nuevo Sistema de Ingreso a la Educaci�n Superior (SIES), entonces lo sucedido con los requerimientos de ACES y CONES resultan delicados, por cuanto en ese tr�nsito, los principales beneficiados o afectados por el sistema de admisi�n universitaria debieron ser considerados en una nueva modalidad que, seg�n la Ley de Educaci�n Superior, servir� para el proceso de admisi�n 2021 y posteriores. El Consejo de Rectores de las Universidades Chilenas (CRUCH), a trav�s de su Vicepresidente, Aldo Valle, expres� ayer su preocupaci�n: Respetamos las organizaciones de estudiantes que tienen juicios cr�ticos, pero nuestra responsabilidad es atender a las 297 mil personas inscritas. Junto con indicar que se han definido todas las medidas de contingencia a fin de brindar garant�as a todas y todos los que rindan esta prueba, el representante del Consejo de Rectores muestra dos se�ales que deber�an considerarse: por una parte, que las demandas de los estudiantes secundarios deben ser escuchadas y, por otra, que el establecer garant�as para quienes rendir�n la PSU no contempla, en modo alguno, una sobrerreacci�n de parte nuestra en materia de seguridad, por ejemplo, con la fuerza p�blica. El Consejo de Rectores de Chile (CRUCH) muestra caminos para tener en cuenta cuando se presentan conflictos sociales, de modo que, si se ha de pensar desde principios democr�ticos, parece razonable tratar de no perjudicar a los cerca de 300 mil j�venes que deber�n rendir la PSU ma�ana y pasado.")
#asi lo toma como 1 solo chr.

library(tidyverse)
library(tokenizers)
#procedemos a segmentar las palabras

palabras_n1 <- tokenize_words(noticia1)
palabras_n1
#se analiza cuantas palabras hay
length(palabras_n1[[1]])
#se genera la tabla
tabla_n1 <- table(palabras_n1[[1]])
tabla_n1 <- data_frame(palabras = names(tabla_n1), recuento = as.numeric(tabla_n1))
tabla_n1
#se ordena la tabla
arrange(tabla_n1, desc(recuento))
n1 <- arrange(tabla_n1, desc(recuento))
noticia2 <- c("Despu�s de que fuera postergado por las manifestaciones del estallido social, finalmente ya hay fecha para el concierto que ofrecer� The Offspring en Chile. La bandaestadounidense cumplir� la promesa de reencontrarse con el p�blico chileno y llegar� el pr�ximo s�bado 14 de marzo al Vel�dromo del Estadio Nacional. El show tambi�n contar� con la presencia de m�ltiples bandas invitadas, las que se anunciar�n dentro de los pr�ximos d�as. Eso s�, ya no se contar� con la presencia de Bad Religion, como se hab�a presupuestado para el show inicial de octubre. Las entradas para ver a The Offspring est�n disponibles en Ticketek, desde los 45.000 pesos, m�s cargo por servicio. Los tickets adquiridos con anterioridad seguir�n siendo v�lidos para la nueva fecha. Mientras que quienes no puedan asistir, deber�n ponerse en contacto directamente con Ticketek, para el proceso de devoluci�n.")

palabras_n2 <- tokenize_words(noticia2)
palabras_n2
#se analiza cuantas palabras hay
length(palabras_n2[[1]])
#se genera la tabla
tabla_n2 <- table(palabras_n2[[1]])
tabla_n2 <- data_frame(palabras = names(tabla_n2), recuento = as.numeric(tabla_n2))
tabla_n2
#se ordena la tabla
arrange(tabla_n2, desc(recuento))
n2 <- arrange(tabla_n2, desc(recuento))
tabla_final <- full_join(n1,n2, by = "palabras")
tabla_final

