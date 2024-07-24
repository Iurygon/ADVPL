#INCLUDE "Protheus.ch"

//AULA DE ESCOPO DE VARI�VEIS//

Static cTexto:= "ESTATICA"
User Function Principal()
    Local nNumero:= 10
    Private dData:= Date()
    Filha()
    If nNumero >= 10.5
        Alert("nNumero � maior ou igual a 10.5")
    EndIf
RETURN

Static Function Filha()
    Local nNumero:= 20
    Private lContinua:= .T.
    Public aDados:= {1,3,7}
    cTexto:= "ALTERADA"
    cTexto+=  " Novamente" + Space(10)
    U_Secundaria()
    dData+= nNumero
    If lContinua == .F.
        Alert("lContinua � falsa")
    ElseIf lContinua == .T.
        Alert("lContinua � verdadeira")
    EndIf
RETURN

User Function Secundaria()
    Local nNumero:= 30
    aDados:= {0,0,0}
    cTexto-= " Sem espa�o"
    Local nResultado := nNumero % 4
    If "Ateu" $ cTexto
        Alert("cTexto cont�m 'Ateu'")
    EndIF
RETURN
