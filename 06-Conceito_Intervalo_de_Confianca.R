# Conceito Intervalo de Confiança

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()


library(dplyr)



# - Imagine um arqueiro atirando em um alvo.


# - Suponha que ele acerte no centro do raio de 10cm 95% das vezes. Ou seja, ele erra apenas uma vez a cada 20 tentativas.

# - Atrás do alvo encontra-se um estatístico, que não onde está o centro.
# - Ele então desenha vários círculos atrás do alvo e concluiu que em 95% dos casos o arqueiro acertou o centro do alvo.

# - Resumindo, o estatístico coletou as amostras e construiu um intervalo de confiança, os seus círculos incluíram 95% dos casos.


# - De maneira simples podemos definir que o Intervalo de Confiança é simplesmente determinar um valor limite mínimo e um valor limite máximo e 
#   considerar dentro deste limite nós teremos por exemplo a média populacional.


# E como aumentar o intervalo de confiança ???


# - Utilizando o mesmo exemplo do arqueiro pode aumentar o nível de confiança:

# -> aumentando o tamanho do círculo (equivale a alargar o intervalo de confiança de 95% para 99% por exemplo).
# -> melhorar a mira do arqueiro (equivale a aumentar o número de observações na amostra).


