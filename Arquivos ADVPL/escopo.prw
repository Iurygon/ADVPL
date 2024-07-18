#INCLUDE "Protheus.ch"

//AULA DE ESCOPO DE VARIÁVEIS//

Static cTexto:= "ESTATICA"
User Function Principal()
    Local nNumero:= 10
    Private dData:= Date()
    Filha()
RETURN

Static Function Filha()
    Local nNumero:= 20
    Private lContinua:= .T.
    Public aDados:= {1,3,7}
    cTexto:= "ALTERADA"
    U_Secundaria()
RETURN

User Function Secundaria()
    Local nNumero:= 30
    aDados:= {0,0,0}
RETURN
