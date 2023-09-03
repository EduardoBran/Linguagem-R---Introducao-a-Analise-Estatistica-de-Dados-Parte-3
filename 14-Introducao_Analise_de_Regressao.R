# Análise de Regressão

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()


library(dplyr)
library(ggplot2)



### Introdução


# - Vamos começar com alguns cenários:

#  -> Uma imobiliária precisa estabelecer a relação entre o tamanho de uma casa e seu preço de venda.
#     (neste caso a imobiliária quer saber se o tamanho da casa influencia ou não no preço e segundo e se tiver casas com tamanho cada vez maior,
#      isso também se reflete em preços maiores?)

#  -> O gerente de uma loja de eletrônicos gostaria de saber o efeito de reduzir o preço de uma impressora em R$ 10,00 e a demanda pela impressora
#     na semana seguinte.
#     (se modificar o preço seja para baixo ou para cima, como isso pode impactar as vendas?)

#  -> A Coca-Cola gostaria de prever se o aumento do tempo de seus comerciais em horário nobre, de 30 para 45 segundos, resultaria em aumento de 
#     venda dos seus produtos.


# - O que temos em comum nesses exemplos de problemas de negócio ?

#     Variável Dependente e Independente

# - Nos três cenários acima nós temos duas variáveis que de alguma forma se relacionam (e os nomes delas são dependente e independente).
# - No exemplo da imobiliária temos o tamanho da casa e o preço, já na loja de eletrônicos temos a redução do preço da impressoa e volume de vendas.


# De forma bem objetiva:

# - Uma variável independente x explica a variação em outra variável, que é chamada de variável dependente y. Este relacionamento existe em apenas
#   uma direção:

#    variável independente (x) -> variável dependente (y)


# - Exemplo: A quantidade de km rodados de um carro, seria uma variável independente e o preço do carro seria uma variável dependente.

# - A medida que aumenta a km , o preço diminui e o contrário existe? Não.
#   Este relacionamento não funciona em modo reverso, ou seja, se alterarmos o preço do carro, a quantidade de km rodados não será alterada.

# - Logo temos uma relação entre duas variáveis (dependente e independete) que existe em uma direção e queremos estudar esta direção através
#   de técnicas. 
#   Antes vamos a alguns exemplos de variável independente (x) e variável dependente (y):


#         Variável independente (x)               variável dependente (y)

#     o tamanho da tela de um monitor                 preço do monitor
#   número de visitantes em um web site       quantidade de vendas no web site
#     tempo de experiência profissional                  salário

# - No primeiro exemplo, o tamanho da tela do monitor é a variável independente, e o preço do monitor é a variável dependente. Esperamos que o 
#   tamanho da tela tenha algum impacto sobre o preço do monitor.

# - No segundo exemplo, o número de visitantes em um site é a variável independente, enquanto a quantidade de vendas no site é a variável 
#   dependente. Aqui, queremos entender como o número de visitantes afeta as vendas.

# - No terceiro exemplo, o tempo de experiência profissional é a variável independente, e o salário é a variável dependente. Queremos determinar 
#   como o tempo de experiência profissional se relaciona com o salário.




# - Uma das preocupações estatísticas ao analisar dados é a de criar modelos que expliquem estruturas do fenômeno de observação.

# -> E o modelo de regressão é um dos métodos estatísticas mais usados para investigar a relação entre variáveis.
#    Podemos estudar inclusive a relação entre mais de 2 variáveis.



# - Como estudante, você já deve ter se perguntado quantas horas de estudo por semana seriam necessárias para conseguir 9.5 na sua prova final.

#  -> Com esta pergunta, você estava buscando o relacionamento entre horas de estudo e sua nota final (relação entre variáveis).



# - E temos algumas técnicas de análise estatística principais para estudar este relacionamento:

#  -> Teste hipóteste (usado para validar uma suposição no relacionamento entre variáveis)

#  -> Análise de correlação (que determina a força e direção do relacionamento entre duas variáveis)

#  -> Regressão Linear Simples (que descreve o relacionamento entre duas variáveis usando uma equação)

#  -> Regressão Linear Múltipla (que é uma extensão da regressão linear simples, permitindo modelar a relação entre uma variável dependente
#                                e duas ou mais variáveis independentes.)





# --------------------------------------------------- Parte 2 ---------------------------------------------------


# - Antes de começarmos um processo de Análise de Regressão, precisamos coletar primeiro as informações sobre a CORRELAÇÃO entre as variáveis.

# - A análise de correlação nos permite medir a força e direção de um relacionamento linear entre duas variáveis.

# - O relacionamento entre duas variáveis é linear, se o gráfico de dispersão entre elas tem o padrão de uma linha reta. Vejamos exemplos:


# -> Exemplo de relação linear POSITIVO (inclinação positiva):

estudo_horas <- c(2, 3, 1, 4, 3, 5, 2, 6, 5, 4)
notas <- c(60, 70, 50, 80, 75, 90, 65, 95, 85, 80)
dados <- data.frame(Estudo_Horas = estudo_horas, Notas = notas)

ggplot(dados, aes(x = Estudo_Horas, y = Notas)) +                                 # Adiciona df e variaveis
  geom_point() +                                                                  # Adiciona os pontos de dispersão
  geom_smooth(method = "lm", se = FALSE, color = "blue", linetype = "dashed") +   # Adicione a linha de regressão
  labs(x = "Horas de Estudo", y = "Notas") +                                      # Rótulos dos eixos
  ggtitle("Relação entre Horas de Estudo e Notas")                                # Título do gráfico



# -> Exemplo de relação linear NEGATIVO (inclinação negativa):

horas_tv <- c(3, 4, 2, 5, 6, 4, 7, 2, 1, 3)
horas_exercicio <- c(2, 1, 3, 1, 0, 2, 0, 3, 4, 2)
dados_negativo <- data.frame(Horas_TV = horas_tv, Horas_Exercicio = horas_exercicio)

ggplot(dados_negativo, aes(x = Horas_TV, y = Horas_Exercicio)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "red", linetype = "dashed") +
  labs(x = "Horas de TV", y = "Horas de Exercício") +
  ggtitle("Relação entre Horas de TV e Horas de Exercício (Negativa)")




### OUTRO EXEMPLO (relação positiva)

# - Uma revendedora de automóveis gostaria de examinar a relação entre a quantidade de comerciais de TV por semana e a venda de carros por 
#   semana.
# - Espera-se que o número de comerciais de TV por semana (x) afete a venda de carros por semana (y).

dados <- data.frame(semana = c(1,2,3,4,5,6),
                    Numero_de_comerciais_x = c(3,6,4,5,6,3),
                    Numero_de_carros_vendidos_y = c(13,31,19,27,23,19))
View(dados)

# - Perceba que esta relação possui uma única direção. Suponha uma amostra de 6 semanas, com os dados coletados do dataframe acima.
#   (variável x = dependente, variável y = independente, estamos estudos esta relação. Teremos uma relação positiva ou negativa? E a força?)

ggplot(dados, aes(x = Numero_de_comerciais_x, y = Numero_de_carros_vendidos_y)) +
  geom_point() +
  geom_smooth(method = 'lm', se = FALSE, color = 'blue', linetype = 'dashed') +
  labs (x = 'Nº de Comerciais por Semana', y = 'Nº de Carros Vendidos por Semana') +
  ggtitle("Relação entre quantidade de carros vendidos por semana e a quantidade de comerciais de TV por semana")        # _ x   | y

# - Temos uma relação positiva, ou seja, a medida que o número de comerciais aumenta, temos um aumento nas vendas dos números de carros.



# - Portando o COEFICIENTE DE RELAÇÃO (r) indica a força e direção de uma relação linear entre a variável independente e dependente.

# - A correlação, insto é a ligação entre dois eventos, não implica necessariamente uma relação de casualidade, ou seja, que um dos eventos
#   tenha causado a ocorrência do outro.

# - A correlação pode no entanto indicar possíveis causas ou áreas para um estudo mais aprofundado, ou seja, a correlação pode ser uma pista.
#   A ideia oposta, de que correlação prova automaticamente causalidade é uma falácia lógica.

# - Resumindo: Só porque (A) acontece juntamente com (B) não significa que (A) causa (B).


# - Existem várias razões pelas quais duas variáveis podem estar correlacionadas:

#  -> Causalidade: Uma variável pode causar diretamente a outra. No entanto, apenas a correlação não é suficiente para provar causalidade.
#     São necessárias evidências adicionais e experimentos controlados para estabelecer relações de causa e efeito.

#  -> Terceira Variável: Pode haver uma terceira variável não considerada que afeta ambas as variáveis observadas. Essa variável comum pode ser a
#     verdadeira causa da correlação.

#  -> Coincidência: Às vezes, as correlações ocorrem simplesmente por acaso. Isso é mais comum em conjuntos de dados grandes, onde muitas relações
#     são testadas.

#  -> Relação Espúria: As variáveis podem estar correlacionadas devido a uma relação espúria, onde não há causalidade, mas parece haver uma 
#     conexão devido a padrões nos dados.

# - Portanto, é essencial ser cauteloso ao interpretar correlações e não assumir automaticamente que uma relação causal está presente com base na
#   correlação observada. 


### Então como se determina a causalidade ?

#  -> Dependerá sobretudo da complexidade do problema, mas a verdade é que a casualidade dificilmente poderá ser determinada com certeza absoluta.






# --------------------------------------------------- Parte 3 ---------------------------------------------------

# - O conjunto de técnicas de regressão é provavelmente um dos mais utilizados em análise de dados

# - Existem diversos modelos de regressão:

#  -> Regressão Linear Simples e Múltipla
#  -> Regressão Logística Binária
#  -> Regressão Logística Multinomial
#  -> Regressão Poisson
#  -> Regressão Binomial
#  -> Regressão Ridge
#  -> Regressão Lasso
#  -> Regressão ElasticNet


# - Por hora, vamos focar em definir o que é a REGRESSÃO LINEAR SIMPLES (e mais a frente vamos estudar e aplicar com R e Azure Machine Learning).


# - Os modelos de regressão linear simples e múltipla são os mais utilizados em diversos campos do conhecimento.

# - Exemplos de        : grupo de pesquisadores com interesse em estudar como as taxas de retorno de um ativo financeiro comportam-se em relação ao
#   aplicação de         mercado, como um custo de uma empresa varia quando aumenta sua capacidade produtiva ou incrementa numero de horas, 
# análise de regressão   como o estudo de o numero de quartos em um imóvel pode influenciar nos preços de venda)


# - Análise de regressão é uma metodologia estatística que utiliza a relação entre duas ou mais variáveis quantitativas de tal forma que uma 
#   variável possa ser predita a partir da outra.

# - Análise de regressão é utilizada para se fazer a previsão de resultados. O caso mais simples de regressão é quando temos duas variáveis e a
#   relação entre elas pode ser representada por uma linha reta.






# --------------------------------------------------- Parte 4 ---------------------------------------------------

# - Para compreender ainda melhor conceito de regressão, vamos focar no Fenômeno da Regressão


# - A partir de um gráfico scatterplot (grafico de dispersao) onde temos varios 'pontinhos' onde cada ponto é a interseção com o valor do
#   eixo x (altura do pai) e eixo y (altura do filho).

#   Então o que fazemos com a regressão?
#   Basicamente desenhamos uma linha vermelha (que é na verdade um conjunto de previsões).
#   Com isso vamos estabelecer uma fórmula matemática que partir dos dados do eixo x seremos capaz de prever dados do eixo y.
#   Estas previsões estarão exatamente nesta linha vermelha (que é chamada de linha de regressão).

#   Se a partir de agora eu colocar uma fórmula de altura de um pai qualquer, nós teremos a previsão sobre a possível altura do filho.

#   E podemos utilizar esta analogia para qualquer outro exemplo onde queremos estudar a relação entre duas variáveis.

#   E para encontrar esta formula matemática para fazer isto, nós dados históricos (ou seja, pegar os 'pontinhos pretos' que são os dados) de um
#   dataset cujo  os dados já foram coletados, preparados, analisados e etc.

#   E com isso podemos alimentar o modelo para o treinamento. O modelo aprender uma formula matemática e uma vez aprendida a fórmula,
#   não precisaremos mais entregar ao modelo os dados de y. Entregamos os dados de x, preenchemos a fórmula e conseguimos as previsões dos dados.

#   E assim descrevemos o que é Machine Learning, o que muda é a fórmula matemática.

#   Em regressão o que queremos é encontrar a 'linha vermelha' que é dada através de uma fórmula matemática.



### REGRESSÃO e CORRELAÇÃO são a mesma coisa ?

#  -> Não.

## REGRESSÃO

# - Análise de regressão: prevê o valor médio de uma variável com base nos valores estabelecidos de uma ou mais variáveis.

## CORRELAÇÃO

# - Análise de correlação: tem como objetivo medir o grau de associação linear entre duas variáveis.


#  -> Ou seja, usamos a correlação para medir o grau de relação entre duas variáveis e depois usamos regressão para estudar o relacionamento
#     entre elas.


# - Portando durante o processo de análise de regressão, em algum momento iremos calcular a correlação para compreender como as variáveis estão
#   relacionadas.











