# Conceito Tipos de Amostragem

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()



# - Existem muitas opções disponíveis para coletar uma amostra de uma população.


# Os tipos básicos que estudaremos a seguir são:

# - Amostragem Probabilística
# - Amostragem Não-Probabilística




### Amostragem Não-Probabilística

# - É subjetiva e não aleatória, pois é influenciada pela pessoa que está conduzindo a pesquisa. Ela se baseia nas decisões pessoais do pesquisador.

# Exemplo: uma pesquisa eleitoral que entrevista apenas pessoas que frequentam um determinado evento político pode não representar adequadamente
#          as opiniões de toda a população.


# Métodos de Amostragem:

# -> Conveniência - é basicamente quando o pesquisador na ausência de qualquer outro método disponível escolhe ele mesmo quais elementos de uma
#                    população irão fazer parte de uma amostra.




### Amostra Probabilística

# - É objetiva e aleatória, pois não é influenciada pela pessoa que está conduzindo a pesquisa.
# - Os elementos da amostra são selecionados aleatoriamente e todos eles possuem probabilidade conhecida de serem escolhidos.
# - Tal seleção ocorre através de uma forma de sorteio não viciado, como o sorteio em uma urna ou por números gerados por computador.
# - Ou seja, o ideal é que o pesquisador não interfara na maneira como a amostra será selecionada para que desta forma todos os membros da
#   popualção tenham chance de pertencer a amostra.


# Exemplo: uma pesquisa que seleciona aleatoriamente um número representativo de eleitores de uma lista completa de eleitores e os entrevista de
#          forma imparcial.


# Métodos de Amostragem:

# -> Aleatória Simples - como o nome sugere é um método de usar um critério de randomização para recolher os elementos da população que irão
#                        fazer parte da amostra.
#                      - todos os elementos da população tem a mesma probabilidade de pertencerem à amostra. Essa amostragem pode ser sem reposição,
#                        que é quando o elemento que já foi sorteado não continua no sorteio, ou com reposição, quando o elemento sorteado continua
#                        no sorteio, podendo ser escolhido novamente.

# -> Sistemática       - onde você faz a escolha de de maneira aleatória através de um sistema para isso.
#                        (Ex: fábrica de biscoitos, onde a cada 100 biscoitos, pegamos um para fazer parte de uma amostra).
#                        Portando é Sistemática por conta que definimos que a cada '100 biscoitos, coletamos um'.

# -> Estratificada     - onde coletamos estratos (grupos mutuamente exclusivos) da população que irão fazer parte da amostra. Esses estratos 
#                        geralmente são coletados de forma sistemática.

# -> Conglumerados     - onde escolhemos grupos (ou clusters) dentro de uma população e então esses grupos farão parte de uma amostra.


# -> Reamostragem (Bootstrap)

# - Reamostragem é uma técnica estatística em que várias amostras são repetidamente extraídas da população.
# - Quando extraímos uma amostragem da população, escolhemos um dos tipos de métodos de amostragem e então coletamos a amostra.
#   Mas o que impede de fazer isso repetidas vezes? Como forma de ter uma amostra mais representativa possível.


# - Um tipo específico de técnica de Reamostragem é conhecido como método Bootstrap.

# - O método Bootstrap consiste em usar software de computador para extrair diversas amostras (com reposição), para estimar determinados 
#   parâmetros da população, tais como média e proporção. Ou seja, ao invés de trabalharmos apenas como uma amostra, nós vamos extraindo 
#   repetidas amostras repetidamente com a linguagem R.

# Exemplo: Vamos supor que uma rede de supermercados queira estimar a proporção de clientes do sexo feminino em suas lojas.
#          Randomicamente, o supermercado seleciona 100 operações (compras de produto) e descobre que 58% foram realizadas por clientes mulheres.
#          Não descartamos os dados coletados anteriormente, a cada nova coleta de amostra nós buscamos tudo de novo, como se fosse da primeira vez.







# - Usaremos mais a Amostragem Aleatória Simples e Reamostragem que são os mais usados em Ciência de Dados.







