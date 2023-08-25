# Resumo

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()


library(dplyr)




# - A matemática em si é básica, não tem mistério. A questão é crompreender o problema e saber usar a ferramenta correta.

# -> Vamos trabalhar com teorema do limite central
# -> Aprender como calcular erro de amostragem
# -> onde aplicar o escore z
# -> como calcular e encontrar o nível de confiança
# -> qual nível de significância ideal para que se possa chegar ao intervalo de confiança e partir daí encontrar ou prever onde está a média
#    da população.


# Expandindo o resumo acima 

# - Embora a matemática subjacente à estatística possa ser relativamente simples, a chave para uma análise estatística bem-sucedida reside na
#   compreensão do problema em questão e na aplicação correta das ferramentas estatísticas disponíveis. Vou resumir os tópicos que você mencionou
#   para reforçar o caminho que você está planejando seguir:
  
# -> Teorema do Limite Central:
# -  Entender o Teorema do Limite Central é fundamental, pois ele é a base da estatística inferencial. Isso nos permite compreender como as médias
#    amostrais se comportam e como podemos fazer inferências sobre a população.

# -> Cálculo do Erro de Amostragem: 
# -  Aprender a calcular o erro de amostragem é essencial para compreender a precisão das estimativas amostrais e como elas se relacionam com a
#    população.

# -> Escore z: 
# -  Aprender como usar o escore z é importante para padronizar valores e entender quão distante estão da média populacional.

# -> Cálculo e Interpretação do Nível de Confiança: 
# -  Saber como calcular e interpretar intervalos de confiança com diferentes níveis de confiança é crucial para comunicar a incerteza em torno
#    das estimativas.

# -> Nível de Significância:
# -  Compreender como o nível de significância está relacionado ao nível de confiança e como ele afeta testes de hipóteses e decisões estatísticas.

# -> Aplicações Práticas:
# -  Praticar a aplicação desses conceitos em problemas do mundo real é fundamental para fortalecer sua compreensão e habilidades estatísticas.

# - Se você se concentrar nesses tópicos e se familiarizar com a aplicação prática deles, estará bem equipado para realizar análises estatísticas
#   eficazes e tomar decisões informadas com base em dados. A prática e a exploração de exemplos reais são importantes para internalizar esses 
#   conceitos e desenvolver confiança em sua capacidade de aplicá-los.




### Alguma das ações para Responder as Perguntas de Negócio com base nos conhecimentos até aqui:

# -> Tratar os dados
# -> Coletar Amostras
# -> Calcular o Intervalo de Confiança

# -> Como já sabemos, o Intervalo de Confiança da Média é um intervalo de estimativa em torno da média da amostra, que provê um range de valores
#    no qual está a média da população.

# -> De fato, a média da população raramente é conhecida, assim o Intervalo de Confiança é a única evidência que nós temos sobre a média da 
#    população.

# -> Por isso precisamos do Intervalor de Confiança, precisamos escolher qual o Nível de Confiança iremos trabalhar (95% ou 99%) e partir daí
#    escolher o Nível de Significância

# -> Encontrar a média da cada amostra e chegar a média das médias

# -> Na sequência buscamos os limites (a média com limite inferior e a média com limite superior) e para isso usamos os valores críticos.


# Expandindo o resumo acima:

# -> Tratamento de Dados: Garantir que os dados estejam limpos e preparados para a análise é fundamental.

# -> Coleta de Amostras: Utilizar uma técnica de amostragem apropriada para coletar dados representativos da população.

# -> Cálculo do Intervalo de Confiança: Utilizar os dados das amostras para calcular um intervalo de confiança em torno da média da amostra, 
#    fornecendo uma estimativa da média populacional.

# -> Escolha do Nível de Confiança: Decidir qual nível de confiança (por exemplo, 95% ou 99%) será utilizado para construir o intervalo.

# -> Escolha do Nível de Significância: Determinar o nível de significância (alfa) para a análise, que está relacionado ao nível de confiança.

# -> Cálculo das Médias e Limites: Calcular a média de cada amostra e, a partir dos valores críticos, calcular os limites do intervalo de
#    confiança.

# -> Interpretação: Entender o significado do intervalo de confiança, que é a faixa de valores na qual a média populacional provavelmente se
#    encontra.

# -> Resposta à Pergunta de Negócio: Baseado no intervalo de confiança calculado, você pode responder à pergunta de negócio, fornecendo uma 
#    estimativa da média populacional com um certo grau de confiança.


# Seguindo esses passos de maneira cuidadosa e precisa, estará apto a utilizar as ferramentas da estatística inferencial para responder perguntas 
# de negócios e tomar decisões informadas com base em análises de dados.





### Exemplo onde vamos unir todos os conceitos estudados até aqui:


# - Uma fábrica de parafusos tem por especificação fabricá-los com diâmetro médio de 25mm.
# - Para o controle de seu processo, coleta-se ao longo de um dia de operação, 35 amostras de tamanho 30 (n = 30).
#   Logo temos 35 amostras e cada amostra de 30 parafusos, por isso 'n = 30'.


# - A média das médias das amostras e o desvio padrão de um determinado dia acusaram:

#  -> A média das médias das amostras = 25mm
#  -> Desvio padrão                   = 1,5mm


# - Até aqui os seguintes passos foram feitos.

# - 1º passo: foi definir o problema de negócio e identificar qual é a população.
# - 2º passo: utilizar umas das técnicas de amostragem e coleta as amostras.
# - 3º passo: foi calculado a média o desvio padrão.
# - 4º passo: iniciar o trabalho de estatística inferencial.


# - Considerando um grau de confiança de 99%, calcule os valores críticos Z destra distribuição:

#  -> Grau (Intervalo) de Confiança - 99%
#  -> Nível de Significância (alfa) - 0,01
#  -> Valor Crítico Z               - 2,575

# Resposta:

# x1 = 28,86mm
# x2 = 21,14mm

# Existe 99% de probabilidade do intervalo de 21,14 e 28,86mm conter a média populacional de diâmetro de parafuso.

# A fábrica possui 99% de chance de produzir lotes de peças com médias entre 21,14mm e 28,86mm.




# Definindo os parâmetros do problema
media_populacional <- 25  # Média populacional de diâmetro de parafusos
desvio_padrao <- 1.5       # Desvio padrão

# Número de amostras e tamanho de cada amostra
num_amostras <- 35
tamanho_amostra <- 30

# Cálculo da média das médias das amostras
media_amostras <- media_populacional
cat("Média das médias das amostras:", media_amostras, "mm\n")

# Cálculo do desvio padrão das amostras
desvio_padrao_amostras <- desvio_padrao / sqrt(tamanho_amostra)
cat("Desvio padrão das amostras:", desvio_padrao_amostras, "mm\n\n")

# Grau de confiança desejado
grau_confianca <- 0.99
nivel_significancia <- 1 - grau_confianca

# Cálculo do valor crítico Z
valor_critico_z <- qnorm(1 - nivel_significancia / 2)
cat("Valor crítico Z:", valor_critico_z, "\n\n")

# Cálculo dos limites do intervalo de confiança
limite_inferior <- media_amostras - valor_critico_z * desvio_padrao_amostras
limite_superior <- media_amostras + valor_critico_z * desvio_padrao_amostras

# Resultado final
cat("Intervalo de confiança:", limite_inferior, "a", limite_superior, "mm\n")
cat("Existe", (1 - nivel_significancia) * 100, "% de probabilidade do intervalo de",
    round(limite_inferior, 2), "e", round(limite_superior, 2),
    "mm conter a média populacional de diâmetro de parafuso.")









