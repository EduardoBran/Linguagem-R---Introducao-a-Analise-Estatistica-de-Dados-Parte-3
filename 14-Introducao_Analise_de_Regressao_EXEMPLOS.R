# Análise de Regressão (exemplos de valores de r)

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()


library(dplyr)
library(ggplot2)

set.seed(1)

# Cenário A: Correlação positiva perfeita (r = 1.0)

x_a <- 1:10
y_a <- 1:10
df_a <- data.frame(x = x_a, y = y_a)
df_a

ggplot(df_a, aes(x, y)) +
  geom_point() +
  geom_smooth(method = 'lm', se = FALSE, color = 'blue', linetype = 'dashed') +
  labs(title = "Cenário A: Correlação positiva perfeita (r = 1.0)")



# Cenário B: Correlação negativa perfeita (r = -1.0)

x_b <- 1:10
y_b <- rev(1:10)
df_b <- data.frame(x = x_b, y = y_b)
df_b

ggplot(df_b, aes(x, y)) +
  geom_point() +
  geom_smooth(method = 'lm', se = FALSE, color = 'red', linetype = 'dashed') +
  labs(title = "Cenário B: Correlação negativa perfeita (r = -1.0)")



# Cenário C: Correlação positiva moderada (r = 0.6)

x_c <- 1:10
y_c <- x_c + rnorm(10, mean = 0, sd = 1)
df_c <- data.frame(x = x_c, y = y_c)
df_c

ggplot(df_c, aes(x, y)) +
  geom_point() +
  labs(title = "Cenário C: Correlação positiva moderada (r = 0.6)")



# Cenário D: Correlação negativa fraca (r = -0.4)

x_d <- 1:10
y_d <- 10 - x_d + rnorm(10, mean = 0, sd = 2)
df_d <- data.frame(x = x_d, y = y_d)
df_d

ggplot(df_d, aes(x, y)) +
  geom_point() +
  labs(title = "Cenário D: Correlação negativa fraca (r = -0.4)")



# Cenário E: Sem relação (r = 0)

x_e <- 1:10
y_e <- rep(5, 10)
df_e <- data.frame(x = x_e, y = y_e)
df_e

ggplot(df_e, aes(x, y)) +
  geom_point() +
  labs(title = "Cenário E: Sem relação (r = 0)")


x_e <- 1:10
y_e <- rnorm(10, mean = 0, sd = 1) # Dados aleatórios
df_e <- data.frame(x = x_e, y = y_e)
df_e

ggplot(df_e, aes(x, y)) +
  geom_point() +
  labs(title = "Cenário E: Sem relação (r = 0)")




