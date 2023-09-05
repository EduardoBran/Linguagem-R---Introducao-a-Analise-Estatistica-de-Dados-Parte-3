# Análise de Regressão (premissas da análise de regressão)

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()


library(dplyr)
library(ggplot2)




### Premissas da Análise de Regressão

# - Como estamos trabalhando com dados da amostra para fazer previsões sobre a população, como podemos saber qual é o nível de precisão nas predições
#   que fazemos usando regressão linear ?

#  -> Para responder a esta pergunta, precisamos cronstruir um intervalo de confiança.
#     Os intervalos de confiança oferecem uma estimativa do parâmetro da população, baseado na estatística da amostra.


# - Aqui estão algumas Premissas para Análise de Regressão:

#  -> Para que os resultados de uma análise de regressão seja confiáveis, algumas premissas precisam ser satisfeitas.


## Premissa 1

# - O relacionamento entre a variável independente e a variável dependente deve ser linear.
#   (caso não tenhamos uma relação linear entre as variáveis, utilizaremos outros algoritimos)


## Premissa 2

# - O valor residual não deve exibir um padrão através da variável independente



# - Algumas armadilhas da Análise de Regressão:

#  -> NÃO fazer previsões para a variável dependente (y), além do range de valores da variável independente (x).
#     (caso nao tenha dados suficientes para fazer uma previsão, não inventar)

#  -> NÃO há garantia que o relacionamento estimado é apropriado além do range que foi observado.

#  -> NÃO confundir correlação com causalidade.
#     (apesar do relacionamento entre as variáveis ser estatisticamente significante, não prova que a variável independente realemente causou
#      a mudança na variável dependente)



