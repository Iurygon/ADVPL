#include "Protheus.ch"

//AULA DE MANIPULA��O DE VARI�VEIS NUM�RICAS E VERIFICA��O DE TIPOS DE VARI�VEIS

User Function NUMERICAS()
    nNumero := 13
    nResultado := NOROUND(nNumero / 2)
    cTexto := "Teste"
    aArray := {}
    ALERT("O tipo da vari�vel nNumero � " + TYPE("nNumero"))
    ALERT("O tipo da vari�vel nResultado � " + TYPE("nResultado"))
    ALERT("O tipo da vari�vel cTexto � " + VALTYPE(cTexto))
    ALERT("O tipo da vari�vel aArray � " + VALTYPE(aArray))
Return
