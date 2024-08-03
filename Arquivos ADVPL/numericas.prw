#include "Protheus.ch"

//AULA DE MANIPULAÇÃO DE VARIÁVEIS NUMÉRICAS E VERIFICAÇÃO DE TIPOS DE VARIÁVEIS

User Function NUMERICAS()
    nNumero := 13
    nResultado := NOROUND(nNumero / 2)
    cTexto := "Teste"
    aArray := {}
    ALERT("O tipo da variável nNumero é " + TYPE("nNumero"))
    ALERT("O tipo da variável nResultado é " + TYPE("nResultado"))
    ALERT("O tipo da variável cTexto é " + VALTYPE(cTexto))
    ALERT("O tipo da variável aArray é " + VALTYPE(aArray))
Return
