#include "Protheus.ch"

/*AULA DE ESTRUTURA DE REPETIÇÃO E CONDICIONAL*/

User Function DECISAO()
    Local nNumero := 0
    Local nCount := 0
    Local lContinua := .T.
    Local aArray    := {0, 0, 0}
    Local aArray2   := {0}

    While nCount <= 10
        aArray[1] := nCount
        aArray[2] := nCount / 2
        // aArray[3] : nCount ^ 2
        If nCount == 10
            lContinua := .F.
        EndIf
        If lContinua == .F.
            Exit
        EndIf
        nCount ++
    End

    For nNumero := 1 to 10 step 1
        Aadd(aArray2, nNumero)
        Do case
            CASE nNumero == 7
                Exit
            OTHERWISE
                Loop
        Endcase
    Next

    For xx := 1 to Len(aArray2) 
        If aArray2[xx] == 4
            Adel(aArray2, xx)
            Asize(aArray2, 6)
        EndIf
Return
