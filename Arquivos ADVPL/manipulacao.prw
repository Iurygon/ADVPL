#include "Protheus.ch"
#include "TbiConn.ch"
#include "TbiCode.ch"

User Function manipulacao()
    Local cCliente  := "000001"
    Local cLoja     := "01"
    Local cProduto  := "000001"

    RpcSetType(3)
    PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"
    
    dbSelectArea("SZ1")
    dbSetOrder(1)
    RecLock("SZ1",.T.)
    Z1_FILIAL   := xFilial()
    Z1_CLIENTE  :=  cCliente
    Z1_LOJA     := cLoja
    Z1_PRODUT   := cProduto
    Z1_UM       := "PC"
    Z1_UMCLI    := "CX"
    Z1_TIPO     := "M"
    Z1_FATOR    := 1
    MsUnlock()

    dbSelectArea("SA1")
    dbSetorder(1)
    If dbSeek(xFilial()+cCliente+cLoja)
        MsgInfo("O nome do cliente é " + SA1->A1_NOME)
    Else
        MsgInfo("Cliente não encontrado")
    EndIf

    dbSelectArea("SB1")
    dbSetOrder(1)
    If dbSeek(xFilial()+cProduto)
        MsgInfo("Cliente - " + AllTrim(SA1->A1_NOME) + ", Produto - " + AllTrim(SB1->B1_DESC))
    Else
        MsgInfo("Produto não cadastrado")
    EndIf
    RESET ENVIRONMENT
Return
