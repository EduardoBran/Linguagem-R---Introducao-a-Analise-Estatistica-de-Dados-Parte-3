# Conceito Nível de Confiança

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()


library(dplyr)



# Nível de confiança é a probabilidade.



# Enquanto o Intervalo de Confiança seria o limite superior e inferior onde buscamos que ali esteja a média da população.
# Temos o Nível de Confiança que é a representação da probabilidade, que é na verdade a forma como interpretamos o resultado.
# Temos o Nível de Significância que é o valor/número que nos ajuda a chegar no Nível de Confiança.



# Normalmente utiliza-se Nível de Confiança (NC) de:   (IC - Intervalo de Confiança . a - Nível de Significância)

# IC = 90%       IC = 95%       IC = 99%
# a  = 0.10      a  = 0.05      a  = 0.01



# Ou seja, tudo até aqui é chegar ao nosso principal objetivo que é fazer inferências sobre a população.

# - Nós não usamos a população inteira, coletamos amostras utilizando 1 ou mais técnicas de amostragem e então começamos a interpretrar os resultados.
# - A partir desta interpretação, chegamos a inferência da média da população. A média da amostra é mais fácil de calcular, basta aplicar os 
#   cálculos para isso.
# - Uma vez que chegamos as médias amostrais, começamos a fazer a interpretação para encontrar a média da população.
# - E aí temos dentro dos dados o nível de confiança que ali vamos encontrar a média da população.



# E qual a relação entre o Nível de Confiança e o Escore z?



