Algoritmo "semnome"
// 
//  
// Descrição   : 2 funcionalidades;
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 18/08/2022

tipo
    cliente = registro
    usuario, senha : caractere
    fimregistro
Var
// Seção de Declarações das variáveis 
vetUsuario : vetor[0..2] de cliente
usuario,usuarioLogin, senha, senhaLogin :caractere
indice,opcao :inteiro

procedimento p_cadastro (par_usuario, par_senha :caractere)
var
inicio
vetUsuario.usuario[indice] <- par_usuario
vetUsuario.senha[indice] <- par_senha
indice <- indice + 1
fimprocedimento



Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
enquanto (opcao <> 9) faca
escreval("1 - Criar login")
escreval("2 - Já possui login")
escreval("9 - Sair")
escreval ("Opção: ")
leia (opcao)
escolha(opcao)
caso 1


escreval ("Criar conta")
escreva ("Nome de usuário: ")
leia (usuario)
escreva ("Senha: ")
leia (senha)
p_cadastro(usuario,senha)
limpatela
escreval ("Sua conta foi criada")
caso 2
escreval ("Login")
escreva ("Nome de usuário: ")
leia (usuarioLogin)
escreva ("Senha: ")
leia (senhaLogin)
se (usuario <> usuarioLogin) ou (senha<>senhaLogin) entao
escreval ("Cliente não cadastrado.")
senao
escreval ("Cliente foi cadastrado!")
fimse
fimescolha
fimenquanto
Fimalgoritmo