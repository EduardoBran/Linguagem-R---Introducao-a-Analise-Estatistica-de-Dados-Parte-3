# Análise de Regressão (exemplo completo de regressão linear simples)

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()


library(dplyr)
library(ggplot2)



#  - Vamos estudar um exemplo completo de regressão linear simples contendo dados



## Exemplo


# - Partindo sempre do princípio que tudo depende da definição do problema de negócio, e só então a partir desta definição que podemos ver quais
#   ferramentas, metodologias, técnicas que serão utilizadas para o processo de análise, vamos ao exemplo:


# - Vamos imaginar que um professor tenha interesse em saber a relação entre as horas de estudo fora da sala de aula e nota final dos alunos em um
#   exame.


# - Para isso, o professor conduziu uma pesquisa em uma turma com 10 estudantes de uma mesma classe. Esta tabela mostra o resultado da pesquisa:

dados <- data.frame(Estudante = c('Marcio', 'Tiago', 'David', 'Nadir', 'Leonardo', 'Jaime', 'Aline', 'Dalton', 'Flavio', 'Henrique'),
                    Tempo_Gasto_em_Estudo_Fora_da_Sala_min = c(15,20,20,40,50,25,10,55,35,30),
                    Nota_no_Exame_Final_0_a_100 = c(24,18,45,60,75,33,15,96,84,60))
View(dados)

# - Analisando a tabela acima podemos dizer que (e esta escolha é feita pelo Cientista de Dados, dependerá do objetivo final):

#  -> Tempo_Gasto_em_Estudo_Fora_da_Sala_min seria nossa variável dependente (X)

#  -> Nota_no_Exame_Final_0_a_100            seria nossa variável independente (y)  


# gráfico

ggplot(dados, aes(x = Tempo_Gasto_em_Estudo_Fora_da_Sala_min, y = Nota_no_Exame_Final_0_a_100)) +
  geom_point() +
  geom_smooth(method = 'lm', se = FALSE, color = 'blue', linetype = 'dashed') +
  labs (x = 'Tempo Gasto de Estudo (min)', y = 'Nota Final') +
  ggtitle("Relação entre as horas de estudo fora da sala de aula e nota final dos alunos")        # _ x   | y




# - Este problema pode ser representado por esta equação (ou modelo) de regressão simples:

#  -> ŷ = a + bx


# - Com base no cenário, como montar esta esquação ?

#  -> Nota Final = A + B x Tempo de Estudo

# - Como temos valores para Nota Final e Tempo de Estudo, agora podemos treinar o algoritimo e encontrar os coeficientes A e B.
#   Uma vez finalizado o treinamento, voltaremos a equação já com o valor de A e valor de B e assim apresentar novos valores de X para prever
#   novos valores de Y. O objetivo agora é prever o futuro.
#   Não estamos estabelecendo casualidade, estamos estebelecendo uma relação entre duas variáveis. Isso é Regressão Linear Simples.



# - Com uma linha de código em R, estabelecemos a equação acima. Só que antes disso temos que:

#  -> coletar dados históricos
#  -> preparar e transformar os dados
#  -> caso os dados não estejam no formato de variável quantitativa, teremos que fazer a transformação.
#  -> fazer a limpeza dos dados (caso tenha lixo)
#  -> remover valores n.a.
#  -> realizar análise exploratória (para buscar valor médio, desvio padrão, mediana)
#  -> podemos colocar tudo em um grafico para compreender como as variáveis estão relacionadas
#  -> calcular coeficiente de relação


# - Tudo isso é trabalho do Cientista de Dados para que no final nós tenhamos o modelo preditivo capaz de entregar resultados para os tomadores de
#   decisão.
