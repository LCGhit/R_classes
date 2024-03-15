#aula 29/02/2024
hist(faithful$eruptions)
skewness(faithful$eruptions) #coeficiente de assimetria
hist(faithful$waiting)
skewness(faithful$waiting)

#extra: gerar 100 dados de uma dist N(0,1)
x <- rnorm(10, mean=0, sd=1)
y <- rnorm(100000, mean=0, sd=1) #a greater sample's skewness tends to 0
hist(x, breaks=14)
skewness(x)
hist(y, breaks=14)
skewness(y)

set.seed(123) #makes the rnorm output always the same
newX <- rnorm(100)
hist(newX, breaks=14)
skewness(newX)
kurtosis(newX)
summary(newX)
boxplot(newX, horizontal = FALSE)

#base de dados faithful
dim(faithful)
overThree <- faithful[which(faithful$eruptions >= 3),]
overThree
underThree <- faithful[which(faithful$eruptions < 3),]
underThree
dim(overThree)
dim(underThree)
dim(faithful)
faithful[10:15,]
attach(faithful) #so you do not have to repeat faithful$...
eruptions<3
head(faithful$eruptions, 10)
overThreeEntry <- c(min(overThree), max(overThree), mean(overThree$eruptions), sd(overThree$eruptions))
underThreeEntry <- c(min(underThree), max(underThree), mean(underThree$eruptions), sd(underThree$eruptions))
names(overThreeEntry) <- c("min","max","mean", "sd")

par(mfrow=c(2,3))
hist(faithful$eruptions, main="all", col="red", xlab="eruptions")
hist(underThree$eruptions, main="short", col="green", xlab="eruptions")
hist(overThree$eruptions, main="long", col="blue", xlab="eruptions")
hist(faithful$waiting, main="all", col="red", xlab="eruptions")
hist(underThree$waiting, main="short", col="green", xlab="eruptions")
hist(overThree$waiting, main="long", col="blue", xlab="eruptions")
par(mfrow=c(2,2))
plot(faithful$eruptions, faithful$waiting, main="all", xlab="eruptions")
plot(underThree$eruptions, underThree$waiting, main="short", xlab="eruptions")
plot(overThree$eruptions, overThree$waiting, main="long", xlab="eruptions")
