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

# H0 -> valor da média da população = 56 segundos.
# H0 = 56

# Ha -> condição oposta, ou seja, que o tempo médio que os internautas ficam em uma web page NÃO é igual a 56 segundos.
# Ha = média diferente de 56



# - O trabalho de definir o que é H0 e o que é Ha é primordial, enquanto essa definição não for feita, não podemos sequer começar a executar qualquer
#   tipo de cálculo.

# - Uma declaração de hipótese pode somente ser usada como parâmetro da população (tal como no Exemplo 1 que foi usado a média da população, porém
#   poderíamos ter utilizado um outro parâmtro), e não com uma estatística de amostra (tal como a média da amostra).

# - O propósito do teste de hipótese é atestar uma conclusão sobre os parâmetros da população, sobre os quais não temos conhecimento completo.




# Exemplo 2:

# - Vamos imaginar um fabricante de lâmpadas que afirma que desenvolveu um novo produto cujo tempo médio de vida supera a média da indústria de
#   8.000 horas.

# - Interpretando o problema de negócio podemos constatar que segundo o exemplo 2 o tempo médio de vida de uma lâmpada é de 8.000 horas, em seguida
#   o fabricante está atestando/dizendo que a sua lâmpada dura mais de 8.000 horas, logo o que o fabricante diz é uma hipótese alternativa enquanto
#   o stato quo seria a media de 8.000 horas da indústria.
# - O que iremos testar na Hipóteste Alternativa é aquilo que o fabricante está dizendo que é capaz de fazer.

# Portanto...

# H0 -> O tempo médio de vida do novo produto desenvolvido pelo fabricante é menor ou igual a 8.000 horas.
# H0 <= 8.000 horas

# Ha -> O tempo médio de vida do novo produto desenvolvido pelo fabricante é maior do que 8.000 horas.  
# Ha > 8.000 horas


# - Perceba que a Hipóteste Alternativa foi usada para representar a afirmação feita pelo fabricante. As 8.000 horas de tempo de vida em média é
#   considerado ser verdadeiro (status quo) e por isso foi atribuído à Hipóteste Nula.




### IMPORTANTE ###

# => A H0 (Hipótese Nula) sempre fica com o status quo (aquilo que já existe).
# => A Ha (Hipóteste Alternativa) fica com a afirmação (aquilo que estamos tentando provar).





