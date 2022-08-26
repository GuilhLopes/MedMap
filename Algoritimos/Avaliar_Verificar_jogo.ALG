Algoritmo "Avaliação de jogo"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/08/2022
tipo
    jogo = registro
    avaliacao, avaliadores: inteiro
    nome: caractere
fimregistro

Var
// Seção de Declarações das variáveis
vetJogo: vetor[0..9] de jogo

nome: caractere
opcao, ind, iv, avaliacao, avaliadores: inteiro

// Procedimento que serve para inserir Jogos Novso no site
procedimento p_inserir(par_nome : caractere; par_avaliacao: inteiro; par_avaliadores : inteiro)
var
inicio


vetJogo.nome[ind] <- par_nome
vetJogo.avaliacao[ind] <- par_avaliacao
vetJogo.avaliadores[ind] <- par_avaliadores
ind <- ind + 1

fimprocedimento
//
//
//

//Mostar Jogos
procedimento p_mostrarJogos
var
i :inteiro
inicio
para i <- 0 ate 9 faca
  se(vetJogo.nome[i] <> "") entao
    escreval(vetJogo.nome[i])
  fimse
fimpara


fimprocedimento


// Verifica se o Jogo existe

funcao f_verifica (nome :caractere): logico
var
i :inteiro
verificar : logico
inicio
verificar <- falso

para i <- 0 ate 9 faca
  se(vetJogo.nome[i] = nome) entao
    verificar <- verdadeiro
    iv <- i
  fimse
fimpara

retorne verificar

fimfuncao
//
//
//

procedimento p_pesquisa (jogo : caractere)
var
i : inteiro
inicio
  se (f_verifica(jogo) = verdadeiro) entao
    escreval("Essas são as avaliações do Jogo Procurado:")
    escreval("Nome:", vetJogo.nome[iv])
    escreval("Avaliação:", vetJogo.avaliacao[iv], " de 100")
    escreval("Avaliadores:", vetJogo.avaliadores[iv], " pessoas")
  senao
    escreval("Esse jogo não existe no nosso sistema!")
  fimse
fimprocedimento

//
//
//
//


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
enquanto (opcao <> 9) faca

escreval("Jogos já avaliados: ")
 p_inserir("sekiro", 100, 10)
 p_inserir("hollow knight", 80, 30)
 p_inserir("dark souls", 90, 60)
 p_mostrarJogos
escreval("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-")
escreval("1-Cadastrar um jogo novo")
escreval("2-Pesquisar a avaliação de um Jogo")
escreval("3-Mostar Jogos")
escreval("9-Sair")
escreval("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-")
leia(opcao)

escolha opcao

caso 1
escreval("Defina o Nome do Jogo")
leia(nome)
escreval("Defina a sua Avaliação. (de 0 Até 100)")
leia(avaliacao)
escreval("Defina quantas pessoas avaliaram ele:")
leia(avaliadores)

p_inserir(nome,avaliacao,avaliadores)

caso 2
escreval("Defina o nome do curso que desja buscar:")
leia(nome)
p_pesquisa(nome)

caso 3
p_mostrarJogos


fimescolha

fimenquanto

Fimalgoritmo