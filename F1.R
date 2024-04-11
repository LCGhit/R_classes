seq(a)
y <- c(1.75, 1.84, 1.65, 1.78, 1.64, 1.79)
u <- 3
z <- 2
w <- 1:6
x+y
x*y
x*z
y^z
sqrt(x)
sum(x)
prod(y)
cumsum(x)
factorial(w)
choose(3,2)
choose(2,5)
x[4]
y[2:4]
w[-3]
x[x>18 & x<22]
q7a <- 2^(1:20)
q7b <- 0.2^(0:20)*0.8^(20:0)
q7c <- (exp(-2)*2^(0:20))/factorial(0:20)
q7d <- 0.2^(3+3*(0:12))*0.4^(1+3*(0:12))

A <- cbind(x,y)
B <- rbind(x,y)
D <- cbind(x,y,w)
class(x)
class(y)
E <- cbind(x,y,z)
F <- data.frame(x,y,z)
str(F)
mylist <- c(idade=x, altura=y, nome=z, ind=w, outro=u)
mylist
?airquality
str(airquality)

max(airquality$Temp[which(airquality$Month == 6)])
split(airquality, ~airquality$Month)
sapply(airquality$Temp, max)

sapply(airquality$Month[airquality$Temp], max)
airquality$Month[airquality$Temp]
unique(airquality$Month[airquality$Temp > 90 & airquality$Temp > 70])

















#FICHA
?quantile

library(MASS)
data.frame(survey)
newSurvey <- data.frame(survey)
newSurvey <- newSurvey[,c("Sex","Pulse","Exer","Smoke","Age")]
newSurvey["Healthy"] <- newSurvey$Pulse > 55 & newSurvey$Pulse < 85
quantile(newSurvey$Pulse, probs = c(5,50,95)/100, na.rm=TRUE)
summation_1 = 4:20
sum(2*(summation_1^2)+summation_1^3)
summation_2 = 1:500
sum(1/(summation_2^2))-((pi^2)/6)
newSurvey$Exer


freqPulse = median(newSurvey$Pulse[which(newSurvey$Exer == "Freq")], na.rm=TRUE)
nonePulse = median(newSurvey$Pulse[which(newSurvey$Exer == "None")], na.rm=TRUE)
somePulse = median(newSurvey$Pulse[which(newSurvey$Exer == "Some")], na.rm=TRUE)
table(newSurvey$Exer[newSurvey$Pulse > 55 & newSurvey$Pulse < 85])
barplot(c(freqPulse,nonePulse,somePulse), names.arg=c("frequent exer","no exer", "some exer"))
newSurvey$Sex(sum(newSurvey$Exer=="Freq")==table(newSurvey$Sex[which(newSurvey$Exer == "Freq")]))
sum(newSurvey$Exer=="Freq")
newSurvey$Smoke

youngest <- survey$Age[which.min(newSurvey$Age)]