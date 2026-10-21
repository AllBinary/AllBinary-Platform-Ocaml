(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.communication.sql *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.string.CommonSeps *)

class sqlStrings () =
  object
    val mutable cREATE_DATABASE : string = ""
    method cREATE_DATABASE = cREATE_DATABASE
    method set_cREATE_DATABASE value' = cREATE_DATABASE <- value'
    val mutable dROP_TABLE : string = ""
    method dROP_TABLE = dROP_TABLE
    method set_dROP_TABLE value' = dROP_TABLE <- value'
    val mutable cREATE_TABLE : string = ""
    method cREATE_TABLE = cREATE_TABLE
    method set_cREATE_TABLE value' = cREATE_TABLE <- value'
    val mutable sTART : string = ""
    method sTART = sTART
    method set_sTART value' = sTART <- value'
    val mutable sELECT : string = ""
    method sELECT = sELECT
    method set_sELECT value' = sELECT <- value'
    val mutable fROM : string = ""
    method fROM = fROM
    method set_fROM value' = fROM <- value'
    val mutable sELECT_ALL : string = ""
    method sELECT_ALL = sELECT_ALL
    method set_sELECT_ALL value' = sELECT_ALL <- value'
    val mutable wHERE : string = ""
    method wHERE = wHERE
    method set_wHERE value' = wHERE <- value'
    val mutable aND : string = ""
    method aND = aND
    method set_aND value' = aND <- value'
    val mutable uPDATE : string = ""
    method uPDATE = uPDATE
    method set_uPDATE value' = uPDATE <- value'
    val mutable sET : string = ""
    method sET = sET
    method set_sET value' = sET <- value'
    val mutable sELECT_ALL_FROM : string = ""
    method sELECT_ALL_FROM = sELECT_ALL_FROM
    method set_sELECT_ALL_FROM value' = sELECT_ALL_FROM <- value'
    val mutable dELETE : string = ""
    method dELETE = dELETE
    method set_dELETE value' = dELETE <- value'
    val mutable lIKE_QUOTE : string = ""
    method lIKE_QUOTE = lIKE_QUOTE
    method set_lIKE_QUOTE value' = lIKE_QUOTE <- value'
    val mutable iNSERT_INTO : string = ""
    method iNSERT_INTO = iNSERT_INTO
    method set_iNSERT_INTO value' = iNSERT_INTO <- value'
    val mutable vALUES : string = ""
    method vALUES = vALUES
    method set_vALUES value' = vALUES <- value'
    val mutable oRDER_BY : string = ""
    method oRDER_BY = oRDER_BY
    method set_oRDER_BY value' = oRDER_BY <- value'
    val mutable cOUNT : string = ""
    method cOUNT = cOUNT
    method set_cOUNT value' = cOUNT <- value'
    val mutable aSC : string = ""
    method aSC = aSC
    method set_aSC value' = aSC <- value'
    val mutable dESC : string = ""
    method dESC = dESC
    method set_dESC value' = dESC <- value'
    val mutable pRIMARY_KEY : string = ""
    method pRIMARY_KEY = pRIMARY_KEY
    method set_pRIMARY_KEY value' = pRIMARY_KEY <- value'
    val mutable eND : string = ""
    method eND = eND
    method set_eND value' = eND <- value'
    val mutable eQUAL_QUOTE : string = ""
    method eQUAL_QUOTE = eQUAL_QUOTE
    method set_eQUAL_QUOTE value' = eQUAL_QUOTE <- value'
    val mutable cLOSE_QUOTE : string = ""
    method cLOSE_QUOTE = cLOSE_QUOTE
    method set_cLOSE_QUOTE value' = cLOSE_QUOTE <- value'
    val mutable eQUAL_QUOTE_NO_SPACE : string = ""
    method eQUAL_QUOTE_NO_SPACE = eQUAL_QUOTE_NO_SPACE
    method set_eQUAL_QUOTE_NO_SPACE value' = eQUAL_QUOTE_NO_SPACE <- value'
    val mutable eSCAPE : string = ""
    method eSCAPE = eSCAPE
    method set_eSCAPE value' = eSCAPE <- value'
    val mutable dOUBLE_ESCAPE : string = ""
    method dOUBLE_ESCAPE = dOUBLE_ESCAPE
    method set_dOUBLE_ESCAPE value' = dOUBLE_ESCAPE <- value'
    val mutable mORE_THAN_QUOTE : string = ""
    method mORE_THAN_QUOTE = mORE_THAN_QUOTE
    method set_mORE_THAN_QUOTE value' = mORE_THAN_QUOTE <- value'
    val mutable lESS_THAN_QUOTE : string = ""
    method lESS_THAN_QUOTE = lESS_THAN_QUOTE
    method set_lESS_THAN_QUOTE value' = lESS_THAN_QUOTE <- value'
    val mutable sINGLE_QUOTE_COMMA_SEP : string = ""
    method sINGLE_QUOTE_COMMA_SEP = sINGLE_QUOTE_COMMA_SEP
    method set_sINGLE_QUOTE_COMMA_SEP value' = sINGLE_QUOTE_COMMA_SEP <- value'
    val mutable iD : string = ""
    method iD = iD
    method set_iD value' = iD <- value'
    val mutable sQL_STATEMENT_LABEL : string = ""
    method sQL_STATEMENT_LABEL = sQL_STATEMENT_LABEL
    method set_sQL_STATEMENT_LABEL value' = sQL_STATEMENT_LABEL <- value'
    val mutable cOLUMN_VALUE : string = ""
    method cOLUMN_VALUE = cOLUMN_VALUE
    method set_cOLUMN_VALUE value' = cOLUMN_VALUE <- value'
    val mutable cREATE_RETURN : string = ""
    method cREATE_RETURN = cREATE_RETURN
    method set_cREATE_RETURN value' = cREATE_RETURN <- value'
    val mutable fIELD_VALUE : string = ""
    method fIELD_VALUE = fIELD_VALUE
    method set_fIELD_VALUE value' = fIELD_VALUE <- value'

    initializer
      begin
        cREATE_DATABASE <- "CREATE DATABASE ";
        dROP_TABLE <- "DROP TABLE ";
        cREATE_TABLE <- "CREATE TABLE ";
        sTART <- " (";
        sELECT <- "SELECT ";
        fROM <- " FROM ";
        sELECT_ALL <- "SELECT *";
        wHERE <- " WHERE ";
        aND <- " AND ";
        uPDATE <- "UPDATE ";
        sET <- " SET ";
        sELECT_ALL_FROM <- (sELECT_ALL ^ fROM);
        dELETE <- "DELETE";
        lIKE_QUOTE <- " LIKE \"";
        iNSERT_INTO <- "INSERT INTO ";
        vALUES <- " VALUES ('";
        oRDER_BY <- "ORDER BY";
        cOUNT <- "COUNT(";
        aSC <- "ASC";
        dESC <- "DESC";
        pRIMARY_KEY <- "PRIMARY KEY(";
        eND <- ") )";
        eQUAL_QUOTE <- " = \"";
        cLOSE_QUOTE <- (CommonSeps.getInstance ())#qUOTE;
        eQUAL_QUOTE_NO_SPACE <- "=\"";
        eSCAPE <- "\\";
        dOUBLE_ESCAPE <- "\\\\";
        mORE_THAN_QUOTE <- " > \"";
        lESS_THAN_QUOTE <- " < \"";
        sINGLE_QUOTE_COMMA_SEP <- "','";
        iD <- "ID";
        sQL_STATEMENT_LABEL <- "SQL Statement: ";
        cOLUMN_VALUE <- "\nColumn Value: ";
        cREATE_RETURN <- " Created Successfully";
        fIELD_VALUE <- "\nField Value: ";
        ()
      end
  end
let () = java_register_constructor "SqlStrings" (fun arguments -> Obj.repr (new sqlStrings (Obj.obj arguments)))

let instance = (new sqlStrings ())
let get_instance () = instance
let () = java_register_static "SqlStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SqlStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


