#include "Protheus.ch"
#include "TbiCode.ch"
#include "TbiConn.ch"

User Function Transacao()
    Local cLoja     := "01"
    Local cProduto  := "000001-TRAN"

    RpcSetType(3)
    PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT"
    
    dbSelectArea("SZ1")
    dbSetOrder(1)
    Begin Transaction
    RecLock("SZ1",.T.)
    Z1_FILIAL   := xFilial()
    Z1_CLIENTE  := GetSXENum("SA1", "A1_COD")
    Z1_LOJA     := cLoja
    Z1_PRODUT   := cProduto
    Z1_UM       := "PC"
    Z1_UMCLI    := "CX"
    Z1_TIPO     := "M"
    Z1_FATOR    := 1
    ConfirmSX8()
    MsUnlock()
    End Transaction

    cProduto  := "000002-TRAN"
    BeginTran()
        RecLock("SZ1",.T.)
        Z1_FILIAL   := xFilial()
        Z1_CLIENTE  := GetSXENum("SA1", "A1_COD")
        Z1_LOJA     := cLoja
        Z1_PRODUT   := cProduto
        Z1_UM       := "PC"
        Z1_UMCLI    := "CX"
        Z1_TIPO     := "M"
        Z1_FATOR    := 1
    ConfirmSX8()
    MsUnlock()
    DisarmTransaction()
    EndTran()
    MsUnlockAll()

    RESET ENVIRONMENT
Return
