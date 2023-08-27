# Teste de Hipóteste (Lógica)

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()


library(dplyr)



## A Lógica do Teste de Hipótese


# => A H0 (Hipótese Nula) representa o status quo (aquilo que já existe).
#    A circunstância que está sendo testada e o objetivo dos testes de hipótese é sempre tentar rejeitar a hipótese nula.

# => A Ha (Hipóteste Alternativa) representa o que se desejaprovar ou estabelecer.
#    É formulada para contradizer a hipótese nula.


# - O teste busca encontrar evidências para rejeitar H0 em favor de Ha.



# - Podemos fazer apenas 2 afirmações sobre a Hipóteste Nula :

#         Rejeitar              Não Rejeitar

# - A razão pelo qual estamos limitados a apenas 2 conclusões possíveis é que o teste de hipótese se baseia em "provar contradições".



# - Com isso, nós podemos apenas concluir que a HIPÓTESE PODE SER VERDADEIRA, mas não temos evidências suficientes para afirmar que a 
#   Hipótese Nula é realmente verdadeira.

# - Por conta desta limitação, NUNCA podemos aceitar a Hipótese Nula.

# - Podemos apenas dizer que: NÃO HÁ EVIDÊNCIAS SUFICIENTES PARA REJEITAR A HIPÓTESE NULA.

# - Utilizando o exemplo da lâmpada devemos dizer que: 
#   "não há evidências para rejeitar a afirmação de que o tempo médio de vida do novo produto desenvolvido pelo fabricante é menor ou igual a 8.000hs.


# Resumo

# - Rejeitar a Hipótese Nula (H0): Se as evidências amostrais forem fortes o suficiente e indicarem que a afirmação representada por H0 é
#   improvável ou falsa, podemos rejeitar H0 em favor da Hipótese Alternativa (Ha).

# - Não Rejeitar a Hipótese Nula (H0): Se as evidências amostrais não forem fortes o suficiente para contradizer H0, não temos base para rejeitar H0.
#   No entanto, isso não significa que aceitamos H0 como verdadeira. Em vez disso, afirmamos que "não há evidências suficientes para rejeitar
#   a Hipótese Nula".

# - É importante entender essa distinção. Mesmo quando não rejeitamos H0, não estamos afirmando que H0 é verdadeira. Estamos simplesmente 
#   reconhecendo que não temos evidências convincentes para contradizê-la.




## Qual das Hipóteses devo escolher afinal ? Como fazer esta escolha ?

# - Para inicar um teste de hipótese é importante que as hipóteses nula e alternativa sejam escolhidas corretamente.

# - Portanto cabe ao Cientista de Dados, a responsabilidade de escolher o teste mais apropriado.


# -> Se deseja testar uma situação pré-estabelecida ou uma determinada afirmação, esta afirmação deverá ser a Hipótese Nula, ou seja H0.

# -> Se você deseja obter uma evidência para suportar uma afirmação feita por você, então, você deve escolher a Hipótese Alternativa, ou seja Ha.


# - A escolha entre as hipóteses depende da pergunta que você deseja responder e do objetivo do teste. Aqui estão alguns cenários comuns:
  
# -> Teste de Igualdade: Se você está testando se um parâmetro é igual a um valor específico, a hipótese nula (H0) geralmente assume que o
#    parâmetro é igual ao valor, enquanto a hipótese alternativa (Ha) afirma que o parâmetro é diferente do valor.

# -> Teste de Maior ou Menor: Se você está testando se um parâmetro é maior ou menor do que um valor específico, a hipótese nula (H0) geralmente
#    assume que o parâmetro é menor ou igual ao valor, enquanto a hipótese alternativa (Ha) afirma que o parâmetro é maior ou menor do que o valor.

# -> Teste de Diferença: Se você está testando a diferença entre dois grupos, a hipótese nula (H0) frequentemente assume que não há diferença,
#    enquanto a hipótese alternativa (Ha) afirma que há uma diferença.



### Importante saber falar e entender corretamente os conceitos.




