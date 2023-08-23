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



## Processo de inferência estatística e o objetivo final desse processo.

# - Objetivo da Inferência Estatística: O objetivo fundamental da inferência estatística é tirar conclusões sobre uma população com base nas 
#   informações contidas em uma amostra representativa dessa população. Isso é especialmente útil quando não é viável ou prático estudar a
#   população inteira.

# - Coleta de Amostras: Em vez de trabalhar com a população inteira, a inferência estatística envolve coletar amostras usando várias técnicas de 
#   amostragem, como amostragem aleatória simples, estratificada, sistemática etc. A amostra deve ser representativa para garantir que as 
#   conclusões sejam válidas para a população.

# - Interpretação dos Resultados: Após coletar amostras e calcular estatísticas amostrais, como médias amostrais, desvios padrão amostrais etc.,
#   o próximo passo é interpretar esses resultados. Isso envolve a construção de intervalos de confiança e a realização de testes de hipóteses.

# - Inferência da Média da População: Com base na interpretação dos resultados da amostra, é possível fazer inferências sobre a média da população.
#   Os intervalos de confiança fornecem uma faixa de valores dentro da qual acredita-se que a média populacional esteja, com uma determinada 
#   probabilidade de confiança.

# - Nível de Confiança: O nível de confiança é a probabilidade associada aos intervalos de confiança. Ele reflete quão certo estamos de que o
#   parâmetro populacional está contido no intervalo calculado.

# - Processo Iterativo: A inferência estatística é um processo iterativo. À medida que a coleta de dados e análises avançam, as conclusões podem 
#   ser refinadas e ajustadas com base nas informações adicionais obtidas.


# Em resumo, a inferência estatística nos permite obter informações valiosas sobre uma população com base em amostras representativas, ajudando-nos
# a tomar decisões informadas e tirar conclusões confiáveis sobre o mundo ao nosso redor.





# E qual a relação entre o Nível de Confiança e o Escore z?



