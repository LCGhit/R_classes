maximo <- function(dataF, col) {
  maxVar <- max(dataF[,col], na.rm=T)
  minVar <- min(dataF[,col], na.rm=T)
  sdVar <- sd(dataF[,col], na.rm=T)
  meanVar <- mean(dataF[,col], na.rm=T)
  listVar <- list(maximo=maxVar, minimo=minVar,desvio=sdVar,media=meanVar)
  return(listVar)
}
maximo(airquality,"Temp")

#ficha 1, pergunta 10 c
max(airquality[["Temp"]][airquality$Month == 6])

mean(airquality[["Temp"]][airquality$Month == 6])

byMonth <- split(a=airquality$Ozone, b=airquality$Month)
ozoneMaxByMonth <- sapply(byMonth, max, na.rm=T)
ozoneMaxByMonth
getMax <- function(x) max(x, na.rm=T)
getMax(byMonth[[1]])
sapply(airquality$Temp, max)


tapply(airquality$Ozone, airquality[,5:6], max, na.rm=T)
cbind(airquality$Ozone, airquality$Temp)
