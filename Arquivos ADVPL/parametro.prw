#include "Protheus.ch"
#include "TbiConn.ch"
#include "TbiCode.ch"

User Function Parametro()
    Local dParam

    RpcSetType(3)
    PREPARE ENVIRONMENT EMPRESA "99" FILIAL "01" MODULO "FAT" 
    
    dParam := GetMV("MV_ULMES")
    dParam += 90

    //PutMV("MV_ULMES", dParam)

    MsgInfo(DtoC(GetMV("MV_ULMES")))

    RESET ENVIRONMENT

Return
