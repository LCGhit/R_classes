read.table
dim(dados)
names(dados)
names(dados) <- c("genero", "mes")
names(dados)
table(dados$genero)
table(dados)
which.max(table(dados$mes))
newVar = table(genero, mes)
dim(newVar)
which.max(newVar[,2])
dados
table(dados)

par(mfrow=c(1,2))
barplot(table(dados$mes), beside=T)
barplot(table(dados), beside=T, col=c("lightblue","seagreen"), legend.text=T)
pie(table(dados))

beer <- c(3, 4, 1, 1, 3, 4, 3, 3, 1, 3, 2, 1, 2, 1, 2, 3, 2, 3, 1, 1, 1, 1, 4, 3, 1)
barplot(table(beer))
beerCount <- table(beer)
names(beerCount) <- c("d can", "d bottle", "microbrew", "import")
pie(beerCount)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
getmode(beerCount)
#acetato 20/29
which.min(faithful$eruptions)
which.min(faithful$waiting)


