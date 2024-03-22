library(MASS); data(Cars93); attach(Cars93)

?Cars93
#a)
dim(Cars93)

#b)
MPG.highway
Price
Type
table(Type)
summary(Price)

#c)
priceCat <- cut(Price,c(0, 12, 20, max(Price)))
levels(priceCat) <- c("barato", "okay", "caro")
consumoCat <- cut(MPG.highway, c(0, 20, 30, max(MPG.highway)))
levels(consumoCat) <- c("bebedo", "okay", "economico")
consumoCat

names(Cars93)
class(Cars93)

carros93 <- cbind(Cars93, priceCat, consumoCat) #concatena colunas(rbind para linhas)
carros93

#f)
#novo dataframe só com certas colunas
carros93 <- data.frame(Price, MPG.highway, Type, priceCat, consumoCat)
#ou em alternativa
carros93Alternativa <- cbind(Cars93[,c(5,8,3)],priceCat,consumoCat)

#g) verifique se há relação entre o Preço com o Consumo?
detach(Cars93)
detach(carros93)
#Como se relacionam as variáveis quantitativas entre si?
plot(Cars93$Price,Cars93$MPG.highway, xlab="price in $1000", ylab="miles per gallon")
#Como se relacionam as variáveis quantitativas com as categóricas?
boxplot(carros93$Price ~ carros93$consumoCat)
boxplot(carros93$Price ~ carros93$Type)
#Como se relacionam as variáveis categóricas?
#1. construir tabela de contagem individuais
table(carros93$Type)
table(carros93$priceCat)
table(carros93$consumoCat)
#2. tabelas cruzadas
carros93
table(carros93$priceCat, carros93$Type)
table(carros93$priceCat, carros93$consumoCat)
barplot(table(carros93$priceCat,carros93$consumoCat))
barplot(table(carros93$priceCat, carros93$Type), legend=rownames(table(priceCat)))
table(carros93$priceCat, carros93$Type)
