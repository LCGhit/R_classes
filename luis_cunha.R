#a)
set.seed(123)
genero <- c(rep("F",11), rep("M",25))
mPeso <- rnorm(25, mean=70, sd=4)
fPeso <- rnorm(11, mean=60, sd=4)
peso <- c(mPeso, fPeso)

mAltura <- rnorm(25, mean=1.8, sd=0.07)
fAltura <- rnorm(11, mean=1.65, sd=0.07)
altura <- c(mAltura, fAltura)

dados <- data.frame(as.factor(genero), altura, peso)
summary(dados)

#b)
plot(peso ~ altura, col="darkblue")
cor(peso, altura) #0.3667088
#conclusão:
#Há uma pequena diferença de peso entre os indivíduos mais baixos e mais altos,
#com associação linear direta entre altura e peso.

#c)
boxplot(mPeso, fPeso, names=c("Male", "Female"), col="lightblue")
#conclusão:
#Em relação ao peso, no gráfico dos homens verifica-se que do primeiro ao terceiro quartil,
#ou seja metade da amostra, tem uma diferença de peso reduzida.
#A mínima e a máxima estão a cerca de 5kg do primeiro quartil e terceiro quartis, respetivamente.
#O gráfico das mulhere revela muito maior variação abaixo da mediana, verificando-se
#ainda um outlier.

boxplot(mAltura, fAltura, names=c("Male", "Female"), col="lightgreen")
#conclusão:
#A altura dos homens revela-se bastante distribuída, sendo a sua variação semelhante
#para ambos os lados da mediana,  com exceção de um outlier de valor superior.
#Quanto à altura das mulheres, há uma maior distância entre valores, apesar
#de terem uma distribuição também equilibrada.
