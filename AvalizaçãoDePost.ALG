Algoritmo "AvaliaçõesDePost"
// Descrição   : Fazer avaliações em post do aplicativo
// Autor(a)    : Guilherme Marques Lopes
// Data atual  : 18/06/2022
Var
// Seção de Declarações das variáveis 

like, deslike, controle, percLike, percDeslike: real
comentario, opcao : caractere

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

enquanto controle <> 4 faca

mudacor("Amarelo", "frente")
limpatela
escreval("======================================")
escreval("              GamesHub                ")
escreval("--------------------------------------")
escreval("          Review de um jogo           ")
escreval("--------------------------------------")
escreval("          1-like  2-dislike           ")
escreval("--------------------------------------")
escreval("4-Ver porcentagem de avaliação do jogo")
escreval("======================================")
leia(controle)

se (controle = 1) entao

  like <- like + 1
  senao
    se (controle = 2) entao
    
    deslike <- deslike + 1
    senao
      se(controle = 4) entao
        limpatela
        senao
          escreval("Opção invalida")
      fimse
    fimse
fimse
fimenquanto

escreva("Vc deseja fazer um comentário?  S/N")
leia(opcao)

se (opcao = "S") ou (opcao = "s") entao
  escreval("--------------")
  escreval("  Comentario  ")
  escreval("--------------")
  leia(comentario)
  limpatela
  senao
    se (opcao = "N") ou (opcao = "n") entao
      limpatela
      escreval("Vc desejou não comentar")
      senao
        escreval("Opção Invalida")
    fimse
fimse


percLike <- like / (like + deslike) * 100
percdesLike <- deslike / (like + deslike) * 100

escreval("Numero de likes ", like," Numero de deslikes ",deslike)
escreval(perclike, "% de aprovação" , percDeslike, "% de reprovação")

se (perclike <= 100) e (perclike >= 85) entao
  escreval("Avaliações Extremamente Positivas")
  senao
    se (perclike < 85) e (perclike >= 65) entao
      escreval("Avaliações Ligeiramente Positivas")
      senao
        se (perclike < 65) e (perclike > 50) entao
          escreval("Avaliações Positivas")
          senao
            se(perclike = 50) entao
              escreval("Avaliações Neutras")
              senao
                se(perclike < 50) e (perclike >= 35) entao
                  escreval("Avaliaçoes Negativas")
                  senao
                    se (perclike < 35) e (perclike >= 20) entao
                      escreval("Avaliações Ligeiramente Negativas")
                      senao
                        se(perclike < 20) e (perclike >=0) entao
                        escreval("Avaliações Extremamente Negativas")
                        fimse
                    fimse
                fimse
            fimse
        fimse
    fimse
fimse

se (opcao = "S") ou (opcao = "s") entao
  escreval("Esse foi o seu comentário: ")
  escreval(Comentario)
fimse




Fimalgoritmo