#include "Protheus.ch"

/*AULA DE ESTRUTURA DE REPETIÇÃO E CONDICIONAL*/

User Function DECISAO()
    Local nNumero := 0
    Local nCount := 0
    Local lContinua := .T.

    While nCount <= 10
        If nCount == 10
            lContinua := .F.
        EndIf
        If lContinua == .F.
            Exit
        EndIf
        nCount ++
    End

    For nNumero := 1 to 10 step 1
        Do case
            CASE nNumero == 7
                Exit
            OTHERWISE
                Loop
        Endcase
    Next
