pbinom(3,5,1/3,lower.tail = FALSE)
ppois(20,16)-ppois(13,16)
ppois(3,2, lower.tail = FALSE)
ppois(1,2)
ppois(11,16)
dpois(11,16)
plot(0:20,dpois(0:20,16), type="h")

pnorm(10.17,10,sqrt(0.091))-pnorm(9.82,10,sqrt(0.091))*pnorm(99,100,sqrt(0.041))-pnorm(100,100,sqrt(0.041))
plot(pnorm(1.2,0,1)-pnorm(0,0,1), type="h")
pnorm(0.2,0,1)-pnorm(-0.2,0,1)
plot(pnorm(0.2,0,1)-pnorm(-0.2,0,1), type="h")
?qnorm
qnorm(0.5)
qnorm(0.9,mean=0,sd=1)
?dnorm
?pnorm
teor <- c(9.8,9.7,10.2,10,9.8,10.1,10.2,10.5,9.5,10.2,10)
mean(teor)
var(teor)
?shapiro.test
?qt
