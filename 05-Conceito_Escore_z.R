# Conceito Escore z

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()


library(dplyr)




# - O Escore z identifica o número de desvios padrão que um determinado valor possui de distância em relação à média do conjunto de dados ao
#   qual faz parte.


# - Vamos pensar no Escore z como uma simples conversão de um valor para uma outra unidade específica, a fim de chegar a conclusões.


# - O dataframe abaixo mostra o número de calorias de sanduíches. Vejamos:

df <- data.frame(
  Hamburguer = c('Cheeseburguer', 'Big Mac', 'Whopper', 'Double Cheeseburguer', 'Chicken Burguer', 'Bacon Burguer', 'Quarteirão', 'Mega Burger'),
  Restaurante = c('Mcdonalds', 'Mcdonalds', 'Burger King', 'Bobs', 'Mcdonalds', 'Bobs', 'Mcdonalds', 'Burger King'),
  Calorias = c(300, 430, 540, 670, 780, 840, 1230, 1420))

df_est <- 
  df %>% 
  summarise(
    media = mean(Calorias),
    sd = sd(Calorias)
  )

df_est   # média da amostra - 776.25 . desvio padrão - 385.11


# Calculando escore z de Mega Burger

# Escore z  =>  x - x1 / s  =  1420 - 776.25 / 385.11  =  1.67


# E o que significa esse resultado de 1.67 ?

# -> significa que as caloridas do Mega Burguer são 1.67 desvio padrão acima da média.


# Calculando escore z de Big Mag

(430 - 776.25) / 385.11  # -0.89

# -> neste caso o valor negativo indica que as caloridas do Big Mac estão 0.89 abaixo da média.



# - Portanto o Escore z representa uma forma de analisar o quão distante estão seus dados da média.




# O Escore z terá sempre um dos 3 atributos:

# -> Positivo - valores acima da média
# -> Negativo - valores abaixo da média
# -> Zero     - valores iguais a média



# - O Escore z também possui uma característica importante que é nos ajudar a identificar os outliers (valores extremos) dos nossos dados.

# - Valores de dados que possuem Escore z acima de +3 ou abaixo de -3 são classificados como outliers.





