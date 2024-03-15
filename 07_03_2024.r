# class 07/03/2024
class(Orange)
names(Orange)
summary(Orange)
barplot(table(Orange))
plot(Orange$age, Orange$circumference, xlab="idade(dias)", ylab="circunferência(mm")

#extra
set.seed(Null)
x <- rnorm(100, mean = 0) #gerar 100 numeros em torno de 0
y <- x^2
plot(x, y)
cor(x, y)

#case II
?iris
summary(iris)
names(iris)
boxplot(iris$Petal.Length) #pouco interesse
#boxplot do comprimento da pétala em função da espécie
boxplot(iris$Petal.Length ~ iris$Species, xlab="petal length", ylab="species")
?without
iris[which(iris$Species != "Septosa"),]

#case III - duas var numericas e uma categorica
genero <- c(rep("F",11), rep("M",25))
mPeso <- rnorm(25, mean=70, sd=4)
fPeso <- rnorm(11, mean=60, sd=4)
peso <- c(mPeso, fPeso)

mAltura <- rnorm(25, mean=1.8, sd=0.07)
fAltura <- rnorm(11, mean=1.65, sd=0.07)
altura <- c(mAltura, fAltura)

dados <- data.frame(as.factor(genero), peso, altura)
summary(dados)
