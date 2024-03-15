z <- 3
numbers <- c(1,2,3)
z+a
colors <- c("orange","red","green","green","green","red","green")
join <- c(numbers,colors)
z;join
max(colors)
min(colors)
mean(numbers)
var(numbers)
summary(numbers)
table(colors)
#plot example
axisOne <- c(2,3,4,5,7,8)
axisTwo <- c(3,5,6,2,9,0)
plot(axisOne,axisTwo)
plot(axisOne,axisTwo,type="l")
boxplot(numbers)
tableColors <- table(colors)
barplot(tableColors,col=c("LightBlue","Coral","LightGreen"))
