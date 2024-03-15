typos <- c(2,3,0,3,1,0,0,1)
typosNum <- length(typos)
mean(typos)

A <- matrix(seq(1,6), 2, 3, TRUE, dimnames = list(NULL, c("col1", "col2", "col3")))
B <- 2*A
C <- A+B
D <- A^2
#matrices multiplication
A%*%B #will return error because both are 2*3 matrices
A%*%t(B)#one must be transposed

data <- read.table(file='age_gender.txt', header=T)
class(data)
names(data)
dim(data)
table(data$birthmonth)
max(table(data$birthmonth))
summary(as.factor(data$gender))
sumarry(data$gender)
