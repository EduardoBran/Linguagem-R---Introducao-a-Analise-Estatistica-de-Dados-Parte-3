# Análise de Regressão (etapas do processo de análise de regressão)

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()


library(dplyr)
library(ggplot2)




### O processo de análise de regressão envolve várias etapas, e o cientista de dados desempenha um papel crucial em cada uma delas.


# - Aqui estão as etapas-chave do processo:
  
#  -> Coleta de Dados: Isso envolve a obtenção de dados históricos relevantes que serão usados para construir o modelo de regressão. Esses dados 
#     podem ser coletados de várias fontes, como bancos de dados, pesquisas ou registros históricos.

#  -> Preparação e Transformação de Dados: Os dados brutos coletados podem não estar em um formato adequado para análise. O cientista de dados 
#     precisa preparar os dados, o que inclui a limpeza, a remoção de valores ausentes e a transformação de variáveis, se necessário.

#  -> Análise Exploratória de Dados (EDA): Antes de ajustar um modelo de regressão, é importante realizar uma análise exploratória dos dados. Isso 
#     envolve a criação de gráficos, a identificação de tendências, a determinação de estatísticas descritivas e a compreensão da distribuição das
#     variáveis.

#  -> Visualização de Dados: A criação de gráficos, como scatterplots, histogramas e gráficos de caixa, ajuda a visualizar como as variáveis estão 
#     relacionadas e se há alguma tendência aparente.

#  -> Cálculo do Coeficiente de Correlação: O coeficiente de correlação, como o coeficiente de correlação de Pearson (r), é calculado para medir a 
#     força e a direção da relação entre as variáveis. Isso ajuda a determinar se uma análise de regressão é apropriada.

#  -> Construção do Modelo de Regressão: Uma vez que a relação entre as variáveis é avaliada e determinada como apropriada, o cientista de dados
#     constrói o modelo de regressão. Para a regressão linear simples, isso envolve encontrar os coeficientes a e b da equação da linha.

#  -> Avaliação do Modelo: O modelo construído deve ser avaliado quanto à sua adequação e precisão. Isso geralmente é feito usando métricas de 
#     avaliação, como o erro médio quadrático (MSE) ou o coeficiente de determinação (R²).

#  -> Interpretação dos Resultados: Uma vez que o modelo é ajustado e avaliado, os resultados podem ser interpretados. Isso inclui entender o 
#     significado dos coeficientes a e b na equação de regressão.

#  -> Uso do Modelo para Previsões: Com um modelo ajustado, ele pode ser usado para fazer previsões. Isso permite que as pessoas tomem decisões com
#     base nas previsões do modelo.

#  -> Comunicação dos Resultados: Os resultados da análise de regressão devem ser comunicados de forma clara e compreensível para os interessados.
#     Isso muitas vezes envolve a criação de relatórios ou apresentações.


# - O processo de análise de regressão é uma parte fundamental da análise de dados e é usado para entender e prever relacionamentos entre variáveis.
#   O cientista de dados desempenha um papel central em cada etapa, desde a coleta de dados até a comunicação dos resultados.





