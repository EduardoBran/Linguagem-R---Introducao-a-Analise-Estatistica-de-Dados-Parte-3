# Teste de Hipóteste (Aplicação)

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()


library(dplyr)


## Exemplos de aplicação do Teste de Hipótese



# Exemplo 1:

# - Vamos assumir que usuários de internet ficam em média 56 segundos em uma web page.
#   Suponhamos que o propósito do teste seja determinar se a média da população é igual a um valor específico.
#   Logo, definiríamos assim as nossas hipóteses (estas escolhas são feitas pelo pesquisar/analista/cientista):

# H0 seria o valor da média da população = 56 segundos.
# H0 = 56

# Ha = condição oposta, ou seja, que o tempo médio que os internautas ficam em uma web page NÃO é igual a 56 segundos.
# Ha = média diferente de 56



# - O trabalho de definir o que é H0 e o que é Ha é primordial, enquanto essa definição não for feita, não podemos sequer começar a executar qualquer
#   tipo de cálculo.

# - Uma declaração de hipótese pode somente ser usada como parâmetro da população (tal como no Exemplo 1 que foi usado a média da população, porém
#   poderíamos ter utilizado um outro parâmtro), e não com uma estatística de amostra (tal como a média da amostra).

# - O propósito do teste de hipótese é atestar uma conclusão sobre os parâmetros da população, sobre os quais não temos conhecimento completo.




# Exemplo 2:

# - Vamos imaginar um fabricante de lâmpadas que afirma que desenvolveu um novo produto cujo tempo médio de vida supera a média da indústria de
#   8.000 horas.