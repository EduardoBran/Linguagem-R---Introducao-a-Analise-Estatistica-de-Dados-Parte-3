# Conceito Amostragem

# Configurando o diretório de trabalho
setwd("C:/Users/Julia/Desktop/CienciaDeDados/1.Big-Data-Analytics-com-R-e-Microsoft-Azure-Machine-Learning/10.Introducao-a-Analise-Estatistica-de-Dados---Parte-3")
getwd()



# - Vamos imaginar uma fábrica de biscoitos, que gostaria de medir se o nível de sal presente nos seus produtos, está dentro dos padrões
#   determinados pelo Ministério da Saúde.


# - Seria viável a empresa medir cada unidade de biscoito produzida?

# Resposta:
# - São produzidos milhares de pacotes por dia, cada um dom dezenas de unidades.
# - Portando não seria economicamente viável medir o nível de sal da população inteira de biscoitos.

# - A solução então, seria selecionar de forma randômica, mas rotineira, pequenas amostras de biscoitos, que fossem representativas da
#   população.


# - A análise da quantidade de sal na amostra, permitiria fazer inferências sobre toda a população de biscoitos.


# - Trabalhando com dados representativos na amostra, podemos inferir o que está acontecendo na população como um todo.


# - Portando assim acabamos de definir o que é ESTATÍSTICA INFERENCIAL.



# - E assim nós coletamos amostras (através de técnicas apropriadas) e com base nos dados da amostra fazemos inferência na população.
# - Fazemos desta forma também em Machine Learning.



## Definições de Amostragem


# - Amostragem: É a técnica, processo ou pesquisa que podem ser realizadas para obter uma amostra.
#               Usa a coleta, organização, apresentação e análise dos dados como meio de estudar os parâmetros de uma população.
#               É a técnica que seleciona alguns elementos da população para se obter uma amostra.


# - Censo: É a técnica que seleciona e avalia todos os elementos da população quando se realiza uma pesquisa.




# - Em resumo se a amostra for selecionada corretamente e a análise sobre ela for feita seguindo as metodologias estatísticas, esta informação
#   pode ser usada para fazer uma avaliação precisa sobre a população inteira.




# Entretanto, existem riscos envolvidos em tomar decisões baseadsa em amostragem:

# - A amostragem pode ser exposta a erros, que podem levar a decisões incorretas.
# - E como veremos mais tarde, nós podemos quantificar a probabilidade destes erros ocorrerem.



