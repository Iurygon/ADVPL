#include "Protheus.ch"

User Function DIRETIVAS()
    Local nValor1     := 10
    Local nValor2     := 20
    Local nResultado  := 0
    nResultado := RECEBE(@nValor1, nValor2) //O USO DO @ INDICA QUE O VALOR DA VARIÁVEL PASSADA NO PARÂMETRO SERÁ ALTERADO CONFORME O VALOR QUE RECEBE NA FUNÇÃO EM QUE É CHAMADA
    Alert('O valor de nResultado é ' + Str(nResultado))
Return

Static Function RECEBE(nValor1, nValor2)
    Local nRetorno := 0
    nValor1 := 20
    nRetorno := nValor1 * nValor2
Return nRetorno
