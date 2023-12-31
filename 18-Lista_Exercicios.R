# Lista de Exercícios

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()



# Pacotes

#install.packages('nycflights13')

library('ggplot2')
library('dplyr')
library('nycflights13')




### EXERCÍCIO

View(flights)
?flights


### Definindo o Problema de Negócio 

# - Criar um teste de hipótese para verificar se os voos da Delta Airlines (DL) atrasam mais do que os voos da UA (United Airlines).






# Exercício 1

# - Construa o dataset pop_data com os dados de voos das companhias aéreas UA (United Airlines) e DL (Delta Airlines).
# - O dataset deve conter apenas duas colunas, nome da companhia e atraso nos voos de chegada.
# - Os dados devem ser extraídos do dataset flights para construir o dataset pop_data.
# - Vamos considerar este dataset como sendo nossa população de voos.

pop_data <- 
  flights %>% 
  select(carrier, arr_delay)

pop_data <- 
  pop_data %>% 
  filter(carrier %in% c('UA', 'DL')) %>% 
  arrange(carrier) %>% 
  na.omit(pop_data)

View(pop_data)





# Exercício 2 

# - Crie duas amostras de 1000 observações cada uma a partir do dataset pop_data apenas com dados da companhia DL para amostra 1 e
#   apenas dados da companhia UA na amostra 2

# Dica: inclua uma coluna chamada sample_id preenchida com número 1 para a primeira amostra e 2 para a segunda amostra

amostra_1_dl <- 
  pop_data %>% 
  filter(carrier == 'DL') %>% 
  sample_n(1000, replace = FALSE) %>% 
  mutate(sample_id = '1')

View(amostra_1_dl)

amostra_2_ua <- 
  pop_data %>% 
  filter(carrier == 'UA') %>% 
  sample_n(1000, replace = FALSE) %>% 
  mutate(sample_id = '2')

View(amostra_2_ua)





# Exercício 3 

# - Crie um dataset contendo os dados das 2 amostras criadas no item anterior. 

dados <- bind_rows(amostra_1_dl, amostra_2_ua)

View(dados)





# Exercício 4


# - Calcule o intervalo de confiança (95%) da amostra1

# Usaremos a fórmula: erro_padrao_amostra1 = sd(amostra1$arr_delay) / sqrt(nrow(amostra1))

#  -> Esta fórmula é usada para calcular o desvio padrão de uma distribuição da média amostral (de um grande número de amostras de uma população).
#     Em outras palavras, só é aplicável quando você está procurando o desvio padrão de médias calculadas a partir de uma amostra de tamanho n𝑛,
#     tirada de uma população.

#  -> Digamos que você obtenha 10000 amostras de uma população qualquer com um tamanho de amostra de n = 2.
#     Então calculamos as médias de cada uma dessas amostras (teremos 10000 médias calculadas).
#     A equação acima informa que, com um número de amostras grande o suficiente, o desvio padrão das médias da amostra pode ser aproximado usando
#     esta fórmula: sd(amostra) / sqrt(nrow(amostra))

#  -> Deve ser intuitivo que o seu desvio padrão das médias da amostra será muito pequeno, ou em outras palavras, as médias de cada amostra terão
#     muito pouca variação.

#  -> Com determinadas condições de inferência (nossa amostra é aleatória, normal, independente), podemos realmente usar esse cálculo de desvio
#     padrão para estimar o desvio padrão de nossa população. 
#     Como isso é apenas uma estimativa, é chamado de erro padrão. A condição para usar isso como uma estimativa é que o tamanho da amostra n é 
#     maior que 30 (dado pelo teorema do limite central) e atende a condição de independência n <= 10% do tamanho da população.


# Calculando Erro padrão

erro_padrao_amostra1 <- sd(amostra_1_dl$arr_delay) / sqrt(nrow(amostra_1_dl))
erro_padrao_amostra1


# Calculando Limites inferior e superior (1.96 é o valor de z score para 95% de confiança)

limite_inferior = mean(amostra_1_dl$arr_delay) - 1.96 * erro_padrao_amostra1  
limite_superior = mean(amostra_1_dl$arr_delay) + 1.96 * erro_padrao_amostra1


# Calculando a média e o intervalo de confiança

mean(amostra_1_dl$arr_delay)

ic_1 = c(limite_inferior, limite_superior)
ic_1





# Exercício 5

# - Calcule o intervalo de confiança (95%) da amostra2

erro_padrao_amostra2 <- sd(amostra_2_ua$arr_delay) / sqrt(nrow(amostra_2_ua))
erro_padrao_amostra2

limite_inferior = mean(amostra_2_ua$arr_delay) - 1.96 * erro_padrao_amostra2
limite_superior = mean(amostra_2_ua$arr_delay) + 1.96 * erro_padrao_amostra2

ic_2 = c(limite_inferior, limite_superior)
ic_2





# Exercício 6 

# - Crie um plot Visualizando os intervalos de confiança criados nos itens anteriores
#   Dica: Use o geom_point() e geom_errorbar() do pacote ggplot2


# Criando dataframe com os intervalos de confiança

intervalos_confianca <- data.frame(
  Amostra = c("Amostra 1", "Amostra 2"),
  Limite_Inferior = c(ic_1[1], ic_2[1]),
  Limite_Superior = c(ic_1[2], ic_2[2])
)
intervalos_confianca


# Criando o gráfico

ggplot(intervalos_confianca, aes(x = Amostra, y = (Limite_Inferior + Limite_Superior) / 2)) +
  geom_point(color = "red", size = 3) +
  geom_errorbar(aes(ymin = Limite_Inferior, ymax = Limite_Superior), width = 0.2) +
  labs(title = "Intervalo de Confiança (95%) das Amostras",
       y = "Média dos Atrasos nos Voos de Chegada",
       x = "Amostra") +
  theme_minimal()






# Exercício 7

# - Podemos dizer que muito provavelmente, as amostras vieram da mesma população? 
#   Por que?


# Sim. A maior parte dos dados reside no mesmo intervalo de confiança nas duas amostras.






# Exercício 8 

# - Crie um teste de hipótese para verificar se os voos da Delta Airlines (DL) atrasam mais do que os voos da UA (United Airlines)

#  -> H0 e H1 devem ser mutuamente exclusivas.


# H0 - Não há diferença significativa entre os atrasos. (diferença das médias de atraso = 0)
# H1 - Voos da Delta (DL) atrasam mais.                 (diferença das médias de atraso > 0)


# Cria as amostras das duas companias

amostra_1_dl <- 
  pop_data %>% 
  filter(carrier == 'DL') %>% 
  sample_n(1000, replace = FALSE) %>% 
  mutate(sample_id = 1)

amostra_2_ua <- 
  pop_data %>% 
  filter(carrier == 'UA') %>% 
  sample_n(1000, replace = FALSE) %>% 
  mutate(sample_id = 2)



## Validações com qqPlot, Shapiro-Wilk e teste f

dados <- bind_rows(amostra_1_dl, amostra_2_ua)
head(dados)

dados_dl <- dados$carrier == "DL"
dados_ua <- dados$carrier == "UA"

shapiro.test(dados$arr_delay[dados_dl]) # valor-p = 2.2e-16 (menor que 0.05)
shapiro.test(dados$arr_delay[dados_ua]) # valor-p = 2.2e-16 (menor que 0.05)

var.test(data = dados, arr_delay ~ carrier) # p-value = 0.8396 (maior que 0.05)



# Os cálculos  para erro padrão, média e limites são úteis quando você deseja entender e interpretar os resultados do teste t, mas eles não são 
# diretamente usados na função t.test porque a função já realiza esses cálculos internamente. No entanto, é uma prática comum calcular essas
# estatísticas antecipadamente para entender os dados e interpretar os resultados do teste t de forma mais completa.

# Calcula erro padrão / média / limites inferior e superior da compania DL

erro_padrao_amostra_1_dl <- sd(amostra_1_dl$arr_delay) / sqrt(nrow(amostra_1_dl))
erro_padrao_amostra_1_dl

media_amostra_1_dl <- mean(amostra_1_dl$arr_delay)
media_amostra_1_dl

limite_inferior_dl <- mean(amostra_1_dl$arr_delay) - 1.96 * erro_padrao_amostra_1_dl
limite_superior_dl <- mean(amostra_1_dl$arr_delay) + 1.96 * erro_padrao_amostra_1_dl

ic_dl <- c(limite_inferior_dl, limite_superior_dl)
ic_dl


# Calcula erro padrão / média / limites inferior e superior da compania UA

erro_padrao_amostra_2_ua <- sd(amostra_2_ua$arr_delay) / sqrt(nrow(amostra_2_ua))
erro_padrao_amostra_2_ua

media_amostra_2_ua <- mean(amostra_2_ua$arr_delay)
media_amostra_2_ua

limite_inferior_ua <- mean(amostra_2_ua$arr_delay) - 1.96 * erro_padrao_amostra_2_ua
limite_superior_ua <- mean(amostra_2_ua$arr_delay) + 1.96 * erro_padrao_amostra_2_ua

ic_ua <- c(limite_inferior_ua, limite_superior_ua)
ic_ua


# calcula o teste t

t.test(amostra_1_dl$arr_delay, amostra_2_ua$arr_delay, alternative="greater")    # valor-p = 0.9537

# Regra
# Baixo valor p: forte evidência empírica contra h0
# Alto valor p: pouca ou nenhuma evidência empírica contra h0

# Falhamos em rejeitar a hipótese nula, pois p-valor é maior que o nível de significância
# Isso que dizer que há uma probabilidade alta de não haver diferença significativa entre os atrasos.
# Para os nossos dados, não há evidência estatística de que a DL atrase mais que a UA.


# -> opção alternative="greater", indica que você está testando se a média dos atrasos de chegada da Delta Airlines (DL) é estatisticamente maior
#    do que a da United Airlines (UA)

# -> opção alternative="two.sided", indica que você está  interessado em saber se há diferença significativa em qualquer direção (ou seja, se 
#    as médias são diferentes, seja maior ou menor)










# Intervalo 90% -> 1.645

# Intervalo 95% -> 1.96

# Intervalo 99% -> 2.576