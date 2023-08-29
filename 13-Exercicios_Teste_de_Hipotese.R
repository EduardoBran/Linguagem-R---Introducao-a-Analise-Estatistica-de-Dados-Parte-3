# Teste de Hipóteste (Exercícios)

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()


library(dplyr)



## Qual das Hipóteses devo escolher afinal ? Como fazer esta escolha ?

# -> Se deseja testar uma situação pré-estabelecida ou uma determinada afirmação, esta afirmação deverá ser a Hipótese Nula, ou seja H0.

# -> Se você deseja obter uma evidência para suportar uma afirmação feita por você, então, você deve escolher a Hipótese Alternativa, ou seja Ha.

# - A escolha entre as hipóteses depende da pergunta que você deseja responder e do objetivo do teste. Aqui estão alguns cenários comuns:

# -> Teste de Igualdade: Se você está testando se um parâmetro é igual a um valor específico, a hipótese nula (H0) geralmente assume que o
#    parâmetro é igual ao valor, enquanto a hipótese alternativa (Ha) afirma que o parâmetro é diferente do valor.

# -> Teste de Maior ou Menor: Se você está testando se um parâmetro é maior ou menor do que um valor específico, a hipótese nula (H0) geralmente
#    assume que o parâmetro é menor ou igual ao valor, enquanto a hipótese alternativa (Ha) afirma que o parâmetro é maior ou menor do que o valor.

# -> Teste de Diferença: Se você está testando a diferença entre dois grupos, a hipótese nula (H0) frequentemente assume que não há diferença,
#    enquanto a hipótese alternativa (Ha) afirma que há uma diferença.




## Exercícios sobre Teste de Hipótese



#### Exercício 1

# - Um provedor quer validar se a média de uso de banda larga é maior, menor ou diferente de 1.8GB por mês.
#   Quais seriam as Hipóteses Nula e Alternativa ?


## Resposta 1 - aceitável

# - H0 = 1.8
# - Ha ≠ 1.8 


## Resposta 2 - contendo mais opções para Ha

# - H0 = 1.8
# - Ha > 1.8

# - Este teste seria usado por alguêm que acredita que o uso de banda larga AUMENTOU e quer suportar que a média de uso de banda larga é agora
#   maior que 1.8GB por mês.



# - H0 = 1.8
# - Ha < 1.8

# - Este teste seria usado por alguêm que acredita que o uso de banda larga DIMINUIU e quer suportar que a média de uso de banda larga é agora
#   maior que 1.8GB por mês.



# - H0 = 1.8
# - Ha ≠ 1.8

# - Este teste seria usado por alguêm que acredita que não possui uma expectativa específica, mas quer testar a suposição que a média de uso de
#   banda larga é 1.8GB por mês. (esta opção poderia substituir as duas de cima conforme resposta 1, embora fazer os 3 testes também é possível)

# - Este último teste é mais genérico e o cenário real poderia ser desta forma:

#   -> Iríamos dizer ao cliente "baseado nas evidências, eu estou rejeitando a H0, o que significa que a média é diferente de 1.8GB."
#      Após isso o cliente então pergunta: "então é maior ou menor que 1.8?".

#   -> E assim com este cenário endendemos que a melhor forma talvez não seja usar a opção mais genérica.





#### Exercício 2

# - Uma empresa de alimentos alega que seu novo cereal possui uma média de calorias igual a 120 por porção. Um nutricionista suspeita que o cereal
#   pode ter mais calorias do que o anunciado. Formule as hipóteses nula (H0) e alternativa (Ha) para testar essa suspeita.


# - H0 = 120   (A média de calorias do novo cereal é igual a 120 por porção.)
# - Ha > 120   (A média de calorias do novo cereal é maior do que 120 por porção.)





#### Exercício 3

# - Um fabricante de baterias alega que sua bateria dura em média 400 horas. Um consumidor desconfia dessa alegação e suspeita que a bateria pode 
#   durar menos do que isso. Formule as hipóteses nula (H0) e alternativa (Ha) para testar essa suspeita.


# - H0 = 400
# - Ha < 400





##### Exercício 4

# - Uma empresa de streaming de vídeos afirma que seus usuários assistem em média 20 horas de conteúdo por semana. Um pesquisador deseja verificar
#   se a média de horas assistidas é diferente da alegação da empresa. Formule as hipóteses nula (H0) e alternativa (Ha) para testar essa
#   diferença.


# - H0 = 20
# - Ha > 20
# - Ha < 20
# - Ha ≠ 20





