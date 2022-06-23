Algoritmo "Login"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi 
// Descrição   : Aqui você descreve o que o programa faz! (função)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 15/06/2022
Var
// Seção de Declarações das variáveis

login, senha, xxlogin, xxsenha : caractere
opcao : inteiro


Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

mudacor( "Amarelo", "Frente")


enquanto (opcao <> 3) faca

  limpatela
  escreval("------------------")
  escreval("    Cadastre-se   ")
  escreval("------------------")
  escreva("Usuário: ")
  leia(xxlogin)
  escreval("------------------")
  escreva("Senha: ")
  leia(xxsenha)
  escreval("------------------")

limpatela
escreval("1-Faça Login:")
escreval("2-Cadastre-se")
escreval("3-Sair")
leia(opcao)

se (opcao = 1) entao

limpatela
escreval("------------------")
escreval("    Faça Login    ")
escreval("------------------")
escreva("Usuário: ")
leia(login)
escreval("------------------")
escreva("Senha: ")
leia(senha)
escreval("------------------")

se (senha = xxsenha) e (login = xxlogin) entao
limpatela
escreval("Login aprovado")
interrompa
  senao
  limpatela
  escreval("Login não aprovado: Credenciais invalidas")
  interrompa
fimse

  senao
  se(opcao = 2) entao

  limpatela
  escreval("------------------")
  escreval("    Cadastre-se   ")
  escreval("------------------")
  escreva("Usuário: ")
  leia(xxlogin)
  escreval("------------------")
  escreva("Senha: ")
  leia(xxsenha)
  escreval("------------------")

    senao
    se(opcao = 3) entao
    limpatela
    escreval("Programa finalizado")
      senao
      escreval("Opção invalida")
    fimse
  fimse
fimse

fimenquanto

Fimalgoritmo