#include "Protheus.ch"

User Function DIRETIVAS()
    Local nValor1     := 10
    Local nValor2     := 20
    Local nResultado  := 0
    nResultado := RECEBE(@nValor1, nValor2) //O USO DO @ INDICA QUE O VALOR DA VARI�VEL PASSADA NO PAR�METRO SER� ALTERADO CONFORME O VALOR QUE RECEBE NA FUN��O EM QUE � CHAMADA
    Alert('O valor de nResultado � ' + Str(nResultado))
Return

Static Function RECEBE(nValor1, nValor2)
    Local nRetorno := 0
    nValor1 := 20
    nRetorno := nValor1 * nValor2
Return nRetorno
