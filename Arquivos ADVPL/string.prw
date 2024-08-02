#include "protheus.ch"

User Function TESTEVAR()
    nNumero := 10.5
    cNumero := 0
    dData := CTOD("01/12/24")
    cData := 0
    sData := 0
    cTexto := "Aula Prática"
    cTexto2 := 0

    cData := DTOC(dData)
    sData := DTOS(dData)
    cNumero := STR(nNumero)
    cTexto2 := SUBSTR(cTexto, 0, 5)
    cTexto2 := CAPITAL(cTexto2)
    cTexto2 := LOWER(cTexto2)
    cTexto2 := STRTRAN(cTexto2, 'a', 'o')
