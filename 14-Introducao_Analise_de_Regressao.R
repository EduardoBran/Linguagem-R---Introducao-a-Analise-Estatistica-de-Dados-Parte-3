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









