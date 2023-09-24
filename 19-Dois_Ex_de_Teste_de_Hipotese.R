# Lista de Exemplos

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()



# Pacotes

#install.packages('nycflights13')

library('ggplot2')
library('dplyr')
library('nycflights13')
library(car)                                  # utiliza funções como qqplot
library(tidyverse)                            # utiliza funções para visualizar/modelar/processar dados
library(dplyr)



## DADOS EXERCÍCIO 2

# Para reproduzibilidade
set.seed(123) 

# Gerando dados fictícios
campanha <- sample(c("A", "B"), 1000, replace = TRUE)
conversao <- sample(c(0, 1), 1000, replace = TRUE)

# Criando o dataframe
ecommerce_data <- data.frame(
  Campanha = campanha,
  Conversao = conversao
)

# Exibindo as primeiras linhas do dataframe
head(ecommerce_data)



## DADOS EXERCÍCIO 3

# Criando um exemplo de dataframe para o exercício
set.seed(123)  # Para reproduzibilidade

# Gerando dados fictícios
dias_semana <- sample(c("Dia Útil", "Fim de Semana"), 100, replace = TRUE)
tempo_gasto <- round(rnorm(100, mean = 30, sd = 10), 2)

# Criando o dataframe
pageviews <- data.frame(
  Dia_Semana = dias_semana,
  Tempo_Gasto = tempo_gasto
)

# Exibindo as primeiras linhas do dataframe
head(pageviews)







############## EXERCÍCIOS ##############


#### Exercício 1 (Primeira Abordagem - Comparação de Médias):
  
#  Problema de Negócio: Você trabalha em uma empresa que realiza testes de qualidade em dois tipos de máquinas de produção, Máquina A e Máquina B.
#                       A empresa deseja saber se há uma diferença significativa no tempo médio de produção entre essas duas máquinas.

# -> Dados Disponíveis: Utilize o dataframe "mtcars" do R, que contém informações sobre carros, incluindo o consumo de combustível (mpg) e o número
#                       de cilindros (cyl).

# Instruções:
  
# -> Divida o dataframe "mtcars" em dois grupos: carros com 4 cilindros (cyl=4) e carros com 6 cilindros (cyl=6).

# -> Realize um teste de hipótese para verificar se há uma diferença significativa no consumo médio de combustível (mpg) entre carros com 4 
#    cilindros e carros com 6 cilindros.

# -> Formule as hipóteses nula (H0) e alternativa (H1).

# -> Execute o teste t para comparar as médias dos dois grupos e interprete os resultados.



#   -> H0 = afirma que não há diferença significativa nas médias.
#   -> H1 = afirma que há diferença significativa nas médias.



View(mtcars)


dados <- 
  mtcars %>% 
  filter(cyl %in% c(4, 6))

View(dados)

## REALIZANDO AS VALIDAÇÕES

mtcars_4c <- dados$cyl == 4
mtcars_6c <- dados$cyl == 6

# Validando com qqPlot (verificando a distribuição normal)

qqPlot(dados$mpg[mtcars_4c])
qqPlot(dados$mpg[mtcars_6c])


# Validando Teste de Normalidade shapiro.test()

# - Para dizer que uma distribuição é normal, o valor-p precisa ser maior do que 0.05.

shapiro.test(dados$mpg[mtcars_4c])    # valor-p = 0.2606 (ou seja, maior que 0.05)
shapiro.test(dados$mpg[mtcars_6c])    # valor-p = 0.3252 (ou seja, maior que 0.05)

# Interpretando -> O valor-p do teste de cada grupo é maior que 0.05 e então falhamos em rejeitar a H0. Neste caso consideramos H0 validada.
#                  Podemos assumir que os dados seguem uma distribuição normal.



# Utilizando var.teste() para o teste f, o valor-p precisa ser maior que 0.05

resultado_teste_f <- var.test(data = dados, mpg ~ cyl)
resultado_teste_f                                            #  valor-p = 0.01182 (ou seja, menor que 0.05)


# - Neste caso, o resultado do teste F apresenta um valor-p de 0.01182, que é menor que o nível de significância padrão de 0.05. Portanto,
#   rejeitamos a hipótese nula (H0) de igualdade das variâncias entre os grupos. Isso significa que há evidências estatísticas para sugerir que as
#   variâncias não são iguais.

# - Quando as variâncias não são iguais entre os grupos, é aconselhável realizar um teste t específico, chamado de teste t com correção para
#   variâncias desiguais (ou teste t de Welch), em vez do teste t padrão. O teste t de Welch leva em consideração as diferenças nas variâncias ao 
#   calcular os graus de liberdade e os intervalos de confiança.

# - Portanto, no seu caso, você deve realizar um teste t de Welch para comparar as médias dos dois grupos (carros com 4 cilindros e carros com 6
#   cilindros), levando em consideração a diferença nas variâncias. Isso ajudará a determinar se há uma diferença significativa no consumo médio 
#   de combustível (mpg) entre esses dois grupos.


# Realiza um teste t de Welch para comparar as médias dos dois grupos, (se o valor-p for maior que 0.05, significa falhar em rejeitar a H0)

resultado_teste_welch <- t.test(mpg ~ cyl, data = dados, var.equal = FALSE)

print(resultado_teste_welch)   # t = 4.7191, df = 12.956, p-value = 0.0004048


## CONCLUSÃO

# - O teste t de Welch foi realizado para comparar as médias de consumo de combustível (mpg) entre dois grupos de carros: aqueles com 4 cilindros
#   e aqueles com 6 cilindros. O valor-p obtido é muito baixo (0.0004048), o que indica que há evidências estatísticas significativas de diferença
#   nas médias entre os dois grupos. Como o valor-p é menor que um nível de significância comum, como 0.05, rejeitamos a hipótese nula (H0), que 
#   afirma que não há diferença significativa nas médias.

# - Portanto, com base neste resultado, podemos concluir que há uma diferença significativa no consumo médio de combustível entre carros com 4 
#   cilindros e carros com 6 cilindros.






#### Exercício 2 (Segunda Abordagem - Comparação de Proporções - Não é obrigatório realizar as validações de shapiro-wilk ou test f):
  
#  Problema de Negócio: Você é um analista de marketing e deseja avaliar se duas campanhas publicitárias, A e B, têm taxas de conversão 
#                       significativamente diferentes em um site de comércio eletrônico.

# -> Dados Disponíveis: Utilize o dataframe "ecommerce_data" que você criou anteriormente, contendo informações sobre as campanhas A e B, incluindo
#                       se os visitantes do site realizaram uma compra após ver a campanha (1 para sim, 0 para não).

# Instruções:
  
# -> Divida o dataframe "ecommerce_data" em dois grupos: visitantes que viram a campanha A e visitantes que viram a campanha B.

# -> Realize um teste de hipótese para verificar se há uma diferença significativa na taxa de conversão entre as campanhas A e B.

# -> Formule as hipóteses nula (H0) e alternativa (H1).

# -> Execute um teste de diferença de proporções para comparar as taxas de conversão dos dois grupos e interprete os resultados.


#   -> H0 = afirma que não há diferença significativa.
#   -> H1 = afirma que há diferença significativa na taxa de conversão entre as campanhas A e B.


View(ecommerce_data)

grupo_a <- 
  ecommerce_data %>% 
  filter(Campanha == "A") %>% 
  na.omit(grupo_a)

grupo_b <- 
  ecommerce_data %>% 
  filter(Campanha == "B") %>% 
  na.omit(grupo_b)
View(grupo_b)


t.test(grupo_a$Conversao, grupo_b$Conversao, alternative = "two.sided")  # p-value = 0.6664



## CONCLUSÃO

# - Valor-p maior que o nível de significânica (0.05)
# - Isso que dizer que há uma probabilidade alta de não haver diferença significativa na taxa de conversão entre as campanhas A e B.

# EXPLICAÇÃO

# - Ao usar alternative = "two.sided", você está realizando um teste de hipótese bidirecional que considera diferenças significativas em ambas as
#   direções (ou seja, A ser maior que B ou B ser maior que A). A conclusão correta com um valor-p maior que o nível de significância (0.05) é que
#   não há evidência estatística de uma diferença significativa na taxa de conversão entre as campanhas A e B.

# - Essa abordagem é mais abrangente e considera ambas as possibilidades, o que é apropriado quando você não tem um pressuposto direcional 
#   específico e deseja ter uma visão mais completa da situação. 






#### Exercício 3

# - Problema de Negócio: Você trabalha em uma empresa de comércio eletrônico e deseja saber se a média de tempo que os clientes passam no seu
#   site difere significativamente em dias úteis (segunda a sexta-feira) em comparação com os fins de semana (sábado e domingo).

# Dados Disponíveis: Utilize o dataframe "pageviews" criado acima, que contém informações sobre o tempo gasto por visitantes no site da empresa.
#                    O dataframe inclui a coluna "tempo_gasto" (tempo em minutos) e a coluna "dia_semana" (que indica se é um dia útil ou fim de
#                    semana).

# Instruções:
  
# -> Divida o dataframe "pageviews" em dois grupos: um grupo para os dias úteis e outro grupo para os fins de semana.

# -> Formule as hipóteses nula (H0) e alternativa (H1):
  
#  -> H0: A média de tempo gasto nos dias úteis é igual à média de tempo gasto nos fins de semana.
#  -> H1: A média de tempo gasto nos dias úteis é diferente da média de tempo gasto nos fins de semana.

# -> Execute um teste t para comparar as médias de tempo gasto nos dois grupos.

# -> Interprete os resultados do teste, incluindo o valor-p, e conclua se há uma diferença significativa no tempo gasto entre dias úteis e fins 
#    de semana.

# Dica: Lembre-se de realizar as validações necessárias, como testes de normalidade ou verificação da igualdade de variâncias, se aplicável.

head(pageviews)


## Validações com qqPlot, Shapiro-Wilk e teste f

grupo_diasuteis <- pageviews$Dia_Semana == "Dia Útil"
grupo_fds <- pageviews$Dia_Semana == "Fim de Semana"

qqPlot(pageviews$Tempo_Gasto[grupo_diasuteis])
qqPlot(pageviews$Tempo_Gasto[grupo_fds])

shapiro.test(pageviews$Tempo_Gasto[grupo_diasuteis]) # valor-p = 0.0882 (ou seja, maior que 0.05)
shapiro.test(pageviews$Tempo_Gasto[grupo_fds])       # valor-p = 0.6886 (ou seja, maior que 0.05)

resultado_teste_f <- var.test(data = pageviews, Tempo_Gasto ~ Dia_Semana)
resultado_teste_f # p-value = 0.5356 (ou seja, maior que 0.05)


# teste t

resultado_teste_t <- t.test(data = pageviews, Tempo_Gasto ~ Dia_Semana, var.equal = TRUE)
resultado_teste_t                 # t = 0.0022393, df = 98, p-value = 0.9982


# Análise Final

# - O valor-p do teste é de 0.9982, logo, maior que 0.05. Falhamos em rejeitar a H0.
# - Podemos concluir que a média de tempo gasto nos dias úteis é igual à média de tempo gasto nos fins de semana.










# -> Para um teste de comparação de proporções (por exemplo, comparando a taxa de conversão entre dois grupos), você não precisa realizar as
#    mesmas validações que são comuns em testes t de comparação de médias (por exemplo, teste t para médias de duas amostras). As validações 
#    específicas que você deve considerar dependem das características dos seus dados e do tipo de teste que está realizando.

# Aqui estão algumas considerações comuns ao realizar um teste de comparação de proporções:
  
#  -> Origem dos Dados: Verifique a fonte dos seus dados e certifique-se de que eles sejam representativos da população ou do contexto que você 
#     deseja estudar. Certifique-se também de que os dados foram coletados de maneira confiável e consistente.

#  -> Tratamento dos Dados: Certifique-se de que seus dados estejam limpos e prontos para análise. Isso pode incluir lidar com valores ausentes,
#     dados duplicados ou outliers, se aplicável.

#  -> Tamanho da Amostra: Verifique se você tem um tamanho de amostra adequado para realizar o teste. Em geral, um tamanho de amostra maior
#     aumentará o poder estatístico do teste, permitindo detectar diferenças menores.

#  -> Distribuição das Proporções: Embora não seja estritamente necessário para um teste de comparação de proporções, algumas pessoas optam por 
#     verificar se a distribuição das proporções se assemelha a uma distribuição normal. Isso pode ser feito visualmente com um histograma ou 
#     quantil-quantil (Q-Q) plot, ou por meio de um teste de normalidade como o teste de Shapiro-Wilk. No entanto, essa verificação não é tão 
#     crítica quanto em testes de médias.

#  -> Independência: É importante que as observações em cada grupo sejam independentes umas das outras. Se houver dependência entre as observações,
#     os resultados do teste podem não ser confiáveis.

#  -> Formulação de Hipóteses: Certifique-se de formular corretamente as hipóteses nula (H0) e alternativa (H1) de acordo com a pergunta de
#     pesquisa que você deseja responder. As hipóteses devem ser claras e mutuamente exclusivas.

#  -> Escolha do Teste Estatístico: Escolha o teste de comparação de proporções apropriado com base na natureza dos seus dados e nas hipóteses que
#     você está testando. O teste t de diferença de proporções (ou teste z para proporções) é comumente usado para esse tipo de comparação.

#  -> Interpretação dos Resultados: Após realizar o teste, interprete os resultados corretamente e considere o valor-p em relação ao nível de
#     significância escolhido. Lembre-se de que um valor-p menor que o nível de significância (geralmente 0,05) sugere evidências para rejeitar a
#     hipótese nula.







# - Lembre-se de realizar todas as etapas necessárias, incluindo a formulação das hipóteses, a escolha do nível de significância e a 
#   interpretação dos resultados.