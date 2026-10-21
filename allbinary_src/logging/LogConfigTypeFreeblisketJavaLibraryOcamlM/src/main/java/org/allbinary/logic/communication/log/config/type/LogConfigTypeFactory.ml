(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.communication.log.config.type *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.string.CommonStrings *)

class logConfigTypeFactory () =
  object (self)
    val mutable nO_DESCRIPTION : string = ""
    method nO_DESCRIPTION = nO_DESCRIPTION
    method set_nO_DESCRIPTION value' = nO_DESCRIPTION <- value'
    val mutable aUTHENTICATION : Obj.t = Obj.repr 0
    method aUTHENTICATION : 'r. 'r = Obj.magic aUTHENTICATION
    method set_aUTHENTICATION : 'v. 'v -> unit = fun value' -> aUTHENTICATION <- Obj.repr value'
    val mutable aUTHENTICATIONERROR : Obj.t = Obj.repr 0
    method aUTHENTICATIONERROR : 'r. 'r = Obj.magic aUTHENTICATIONERROR
    method set_aUTHENTICATIONERROR : 'v. 'v -> unit = fun value' -> aUTHENTICATIONERROR <- Obj.repr value'
    val mutable cATEGORY : Obj.t = Obj.repr 0
    method cATEGORY : 'r. 'r = Obj.magic cATEGORY
    method set_cATEGORY : 'v. 'v -> unit = fun value' -> cATEGORY <- Obj.repr value'
    val mutable cATEGORYERROR : Obj.t = Obj.repr 0
    method cATEGORYERROR : 'r. 'r = Obj.magic cATEGORYERROR
    method set_cATEGORYERROR : 'v. 'v -> unit = fun value' -> cATEGORYERROR <- Obj.repr value'
    val mutable cRYPT : Obj.t = Obj.repr 0
    method cRYPT : 'r. 'r = Obj.magic cRYPT
    method set_cRYPT : 'v. 'v -> unit = fun value' -> cRYPT <- Obj.repr value'
    val mutable cRYPTERROR : Obj.t = Obj.repr 0
    method cRYPTERROR : 'r. 'r = Obj.magic cRYPTERROR
    method set_cRYPTERROR : 'v. 'v -> unit = fun value' -> cRYPTERROR <- Obj.repr value'
    val mutable eMAILLOGGING : Obj.t = Obj.repr 0
    method eMAILLOGGING : 'r. 'r = Obj.magic eMAILLOGGING
    method set_eMAILLOGGING : 'v. 'v -> unit = fun value' -> eMAILLOGGING <- Obj.repr value'
    val mutable eMAILLOGGINGERROR : Obj.t = Obj.repr 0
    method eMAILLOGGINGERROR : 'r. 'r = Obj.magic eMAILLOGGINGERROR
    method set_eMAILLOGGINGERROR : 'v. 'v -> unit = fun value' -> eMAILLOGGINGERROR <- Obj.repr value'
    val mutable eNTITYFACTORYERROR : Obj.t = Obj.repr 0
    method eNTITYFACTORYERROR : 'r. 'r = Obj.magic eNTITYFACTORYERROR
    method set_eNTITYFACTORYERROR : 'v. 'v -> unit = fun value' -> eNTITYFACTORYERROR <- Obj.repr value'
    val mutable nETBEANS_MODULE : Obj.t = Obj.repr 0
    method nETBEANS_MODULE : 'r. 'r = Obj.magic nETBEANS_MODULE
    method set_nETBEANS_MODULE : 'v. 'v -> unit = fun value' -> nETBEANS_MODULE <- Obj.repr value'
    val mutable nETBEANS_MODULE_ERROR : Obj.t = Obj.repr 0
    method nETBEANS_MODULE_ERROR : 'r. 'r = Obj.magic nETBEANS_MODULE_ERROR
    method set_nETBEANS_MODULE_ERROR : 'v. 'v -> unit = fun value' -> nETBEANS_MODULE_ERROR <- Obj.repr value'
    val mutable fACTORYERROR : Obj.t = Obj.repr 0
    method fACTORYERROR : 'r. 'r = Obj.magic fACTORYERROR
    method set_fACTORYERROR : 'v. 'v -> unit = fun value' -> fACTORYERROR <- Obj.repr value'
    val mutable fILE : Obj.t = Obj.repr 0
    method fILE : 'r. 'r = Obj.magic fILE
    method set_fILE : 'v. 'v -> unit = fun value' -> fILE <- Obj.repr value'
    val mutable fILEERROR : Obj.t = Obj.repr 0
    method fILEERROR : 'r. 'r = Obj.magic fILEERROR
    method set_fILEERROR : 'v. 'v -> unit = fun value' -> fILEERROR <- Obj.repr value'
    val mutable hTTP : Obj.t = Obj.repr 0
    method hTTP : 'r. 'r = Obj.magic hTTP
    method set_hTTP : 'v. 'v -> unit = fun value' -> hTTP <- Obj.repr value'
    val mutable hTTPERROR : Obj.t = Obj.repr 0
    method hTTPERROR : 'r. 'r = Obj.magic hTTPERROR
    method set_hTTPERROR : 'v. 'v -> unit = fun value' -> hTTPERROR <- Obj.repr value'
    val mutable hTTPREQUEST : Obj.t = Obj.repr 0
    method hTTPREQUEST : 'r. 'r = Obj.magic hTTPREQUEST
    method set_hTTPREQUEST : 'v. 'v -> unit = fun value' -> hTTPREQUEST <- Obj.repr value'
    val mutable hTTPREQUESTERROR : Obj.t = Obj.repr 0
    method hTTPREQUESTERROR : 'r. 'r = Obj.magic hTTPREQUESTERROR
    method set_hTTPREQUESTERROR : 'v. 'v -> unit = fun value' -> hTTPREQUESTERROR <- Obj.repr value'
    val mutable iDLOGGING : Obj.t = Obj.repr 0
    method iDLOGGING : 'r. 'r = Obj.magic iDLOGGING
    method set_iDLOGGING : 'v. 'v -> unit = fun value' -> iDLOGGING <- Obj.repr value'
    val mutable jSPEXTRAOUTPUT : Obj.t = Obj.repr 0
    method jSPEXTRAOUTPUT : 'r. 'r = Obj.magic jSPEXTRAOUTPUT
    method set_jSPEXTRAOUTPUT : 'v. 'v -> unit = fun value' -> jSPEXTRAOUTPUT <- Obj.repr value'
    val mutable jSPTAGEXTRAOUTPUT : Obj.t = Obj.repr 0
    method jSPTAGEXTRAOUTPUT : 'r. 'r = Obj.magic jSPTAGEXTRAOUTPUT
    method set_jSPTAGEXTRAOUTPUT : 'v. 'v -> unit = fun value' -> jSPTAGEXTRAOUTPUT <- Obj.repr value'
    val mutable jSPTAG : Obj.t = Obj.repr 0
    method jSPTAG : 'r. 'r = Obj.magic jSPTAG
    method set_jSPTAG : 'v. 'v -> unit = fun value' -> jSPTAG <- Obj.repr value'
    val mutable jSPTAGERROR : Obj.t = Obj.repr 0
    method jSPTAGERROR : 'r. 'r = Obj.magic jSPTAGERROR
    method set_jSPTAGERROR : 'v. 'v -> unit = fun value' -> jSPTAGERROR <- Obj.repr value'
    val mutable lICENSING : Obj.t = Obj.repr 0
    method lICENSING : 'r. 'r = Obj.magic lICENSING
    method set_lICENSING : 'v. 'v -> unit = fun value' -> lICENSING <- Obj.repr value'
    val mutable lICENSINGERROR : Obj.t = Obj.repr 0
    method lICENSINGERROR : 'r. 'r = Obj.magic lICENSINGERROR
    method set_lICENSINGERROR : 'v. 'v -> unit = fun value' -> lICENSINGERROR <- Obj.repr value'
    val mutable lOADER : Obj.t = Obj.repr 0
    method lOADER : 'r. 'r = Obj.magic lOADER
    method set_lOADER : 'v. 'v -> unit = fun value' -> lOADER <- Obj.repr value'
    val mutable lOADERERROR : Obj.t = Obj.repr 0
    method lOADERERROR : 'r. 'r = Obj.magic lOADERERROR
    method set_lOADERERROR : 'v. 'v -> unit = fun value' -> lOADERERROR <- Obj.repr value'
    val mutable oS : Obj.t = Obj.repr 0
    method oS : 'r. 'r = Obj.magic oS
    method set_oS : 'v. 'v -> unit = fun value' -> oS <- Obj.repr value'
    val mutable oSERROR : Obj.t = Obj.repr 0
    method oSERROR : 'r. 'r = Obj.magic oSERROR
    method set_oSERROR : 'v. 'v -> unit = fun value' -> oSERROR <- Obj.repr value'
    val mutable pAYMENT : Obj.t = Obj.repr 0
    method pAYMENT : 'r. 'r = Obj.magic pAYMENT
    method set_pAYMENT : 'v. 'v -> unit = fun value' -> pAYMENT <- Obj.repr value'
    val mutable pAYMENTERROR : Obj.t = Obj.repr 0
    method pAYMENTERROR : 'r. 'r = Obj.magic pAYMENTERROR
    method set_pAYMENTERROR : 'v. 'v -> unit = fun value' -> pAYMENTERROR <- Obj.repr value'
    val mutable pRELOADER : Obj.t = Obj.repr 0
    method pRELOADER : 'r. 'r = Obj.magic pRELOADER
    method set_pRELOADER : 'v. 'v -> unit = fun value' -> pRELOADER <- Obj.repr value'
    val mutable pRELOADERERROR : Obj.t = Obj.repr 0
    method pRELOADERERROR : 'r. 'r = Obj.magic pRELOADERERROR
    method set_pRELOADERERROR : 'v. 'v -> unit = fun value' -> pRELOADERERROR <- Obj.repr value'
    val mutable pRODUCTSEARCHLOGGING : Obj.t = Obj.repr 0
    method pRODUCTSEARCHLOGGING : 'r. 'r = Obj.magic pRODUCTSEARCHLOGGING
    method set_pRODUCTSEARCHLOGGING : 'v. 'v -> unit = fun value' -> pRODUCTSEARCHLOGGING <- Obj.repr value'
    val mutable pRODUCTSEARCHLOGGINGERROR : Obj.t = Obj.repr 0
    method pRODUCTSEARCHLOGGINGERROR : 'r. 'r = Obj.magic pRODUCTSEARCHLOGGINGERROR
    method set_pRODUCTSEARCHLOGGINGERROR : 'v. 'v -> unit = fun value' -> pRODUCTSEARCHLOGGINGERROR <- Obj.repr value'
    val mutable sERVLET : Obj.t = Obj.repr 0
    method sERVLET : 'r. 'r = Obj.magic sERVLET
    method set_sERVLET : 'v. 'v -> unit = fun value' -> sERVLET <- Obj.repr value'
    val mutable sERVLETERROR : Obj.t = Obj.repr 0
    method sERVLETERROR : 'r. 'r = Obj.magic sERVLETERROR
    method set_sERVLETERROR : 'v. 'v -> unit = fun value' -> sERVLETERROR <- Obj.repr value'
    val mutable sHIPPINGERROR : Obj.t = Obj.repr 0
    method sHIPPINGERROR : 'r. 'r = Obj.magic sHIPPINGERROR
    method set_sHIPPINGERROR : 'v. 'v -> unit = fun value' -> sHIPPINGERROR <- Obj.repr value'
    val mutable sQLLOGGINGERROR : Obj.t = Obj.repr 0
    method sQLLOGGINGERROR : 'r. 'r = Obj.magic sQLLOGGINGERROR
    method set_sQLLOGGINGERROR : 'v. 'v -> unit = fun value' -> sQLLOGGINGERROR <- Obj.repr value'
    val mutable sQLLOGGING : Obj.t = Obj.repr 0
    method sQLLOGGING : 'r. 'r = Obj.magic sQLLOGGING
    method set_sQLLOGGING : 'v. 'v -> unit = fun value' -> sQLLOGGING <- Obj.repr value'
    val mutable sQLTAGS : Obj.t = Obj.repr 0
    method sQLTAGS : 'r. 'r = Obj.magic sQLTAGS
    method set_sQLTAGS : 'v. 'v -> unit = fun value' -> sQLTAGS <- Obj.repr value'
    val mutable sQLTAGSERROR : Obj.t = Obj.repr 0
    method sQLTAGSERROR : 'r. 'r = Obj.magic sQLTAGSERROR
    method set_sQLTAGSERROR : 'v. 'v -> unit = fun value' -> sQLTAGSERROR <- Obj.repr value'
    val mutable sTYLE : Obj.t = Obj.repr 0
    method sTYLE : 'r. 'r = Obj.magic sTYLE
    method set_sTYLE : 'v. 'v -> unit = fun value' -> sTYLE <- Obj.repr value'
    val mutable sTYLEERROR : Obj.t = Obj.repr 0
    method sTYLEERROR : 'r. 'r = Obj.magic sTYLEERROR
    method set_sTYLEERROR : 'v. 'v -> unit = fun value' -> sTYLEERROR <- Obj.repr value'
    val mutable tAGHELPER : Obj.t = Obj.repr 0
    method tAGHELPER : 'r. 'r = Obj.magic tAGHELPER
    method set_tAGHELPER : 'v. 'v -> unit = fun value' -> tAGHELPER <- Obj.repr value'
    val mutable tAGHELPERERROR : Obj.t = Obj.repr 0
    method tAGHELPERERROR : 'r. 'r = Obj.magic tAGHELPERERROR
    method set_tAGHELPERERROR : 'v. 'v -> unit = fun value' -> tAGHELPERERROR <- Obj.repr value'
    val mutable tAGHELPERFACTORY : Obj.t = Obj.repr 0
    method tAGHELPERFACTORY : 'r. 'r = Obj.magic tAGHELPERFACTORY
    method set_tAGHELPERFACTORY : 'v. 'v -> unit = fun value' -> tAGHELPERFACTORY <- Obj.repr value'
    val mutable tAGHELPERFACTORYERROR : Obj.t = Obj.repr 0
    method tAGHELPERFACTORYERROR : 'r. 'r = Obj.magic tAGHELPERFACTORYERROR
    method set_tAGHELPERFACTORYERROR : 'v. 'v -> unit = fun value' -> tAGHELPERFACTORYERROR <- Obj.repr value'
    val mutable tAX : Obj.t = Obj.repr 0
    method tAX : 'r. 'r = Obj.magic tAX
    method set_tAX : 'v. 'v -> unit = fun value' -> tAX <- Obj.repr value'
    val mutable tAXERROR : Obj.t = Obj.repr 0
    method tAXERROR : 'r. 'r = Obj.magic tAXERROR
    method set_tAXERROR : 'v. 'v -> unit = fun value' -> tAXERROR <- Obj.repr value'
    val mutable vALIDATION : Obj.t = Obj.repr 0
    method vALIDATION : 'r. 'r = Obj.magic vALIDATION
    method set_vALIDATION : 'v. 'v -> unit = fun value' -> vALIDATION <- Obj.repr value'
    val mutable vALIDATIONERROR : Obj.t = Obj.repr 0
    method vALIDATIONERROR : 'r. 'r = Obj.magic vALIDATIONERROR
    method set_vALIDATIONERROR : 'v. 'v -> unit = fun value' -> vALIDATIONERROR <- Obj.repr value'
    val mutable vIEW : Obj.t = Obj.repr 0
    method vIEW : 'r. 'r = Obj.magic vIEW
    method set_vIEW : 'v. 'v -> unit = fun value' -> vIEW <- Obj.repr value'
    val mutable vIEWERROR : Obj.t = Obj.repr 0
    method vIEWERROR : 'r. 'r = Obj.magic vIEWERROR
    method set_vIEWERROR : 'v. 'v -> unit = fun value' -> vIEWERROR <- Obj.repr value'
    val mutable vIEWFACTORYERROR : Obj.t = Obj.repr 0
    method vIEWFACTORYERROR : 'r. 'r = Obj.magic vIEWFACTORYERROR
    method set_vIEWFACTORYERROR : 'v. 'v -> unit = fun value' -> vIEWFACTORYERROR <- Obj.repr value'
    val mutable wORKFLOW : Obj.t = Obj.repr 0
    method wORKFLOW : 'r. 'r = Obj.magic wORKFLOW
    method set_wORKFLOW : 'v. 'v -> unit = fun value' -> wORKFLOW <- Obj.repr value'
    val mutable wORKFLOWERROR : Obj.t = Obj.repr 0
    method wORKFLOWERROR : 'r. 'r = Obj.magic wORKFLOWERROR
    method set_wORKFLOWERROR : 'v. 'v -> unit = fun value' -> wORKFLOWERROR <- Obj.repr value'
    val mutable xMLLOGGING : Obj.t = Obj.repr 0
    method xMLLOGGING : 'r. 'r = Obj.magic xMLLOGGING
    method set_xMLLOGGING : 'v. 'v -> unit = fun value' -> xMLLOGGING <- Obj.repr value'
    val mutable xMLLOGGINGERROR : Obj.t = Obj.repr 0
    method xMLLOGGINGERROR : 'r. 'r = Obj.magic xMLLOGGINGERROR
    method set_xMLLOGGINGERROR : 'v. 'v -> unit = fun value' -> xMLLOGGINGERROR <- Obj.repr value'
    val mutable xSLLOGGING : Obj.t = Obj.repr 0
    method xSLLOGGING : 'r. 'r = Obj.magic xSLLOGGING
    method set_xSLLOGGING : 'v. 'v -> unit = fun value' -> xSLLOGGING <- Obj.repr value'
    val mutable xSLLOGGINGERROR : Obj.t = Obj.repr 0
    method xSLLOGGINGERROR : 'r. 'r = Obj.magic xSLLOGGINGERROR
    method set_xSLLOGGINGERROR : 'v. 'v -> unit = fun value' -> xSLLOGGINGERROR <- Obj.repr value'
    val mutable rEPLACE : Obj.t = Obj.repr 0
    method rEPLACE : 'r. 'r = Obj.magic rEPLACE
    method set_rEPLACE : 'v. 'v -> unit = fun value' -> rEPLACE <- Obj.repr value'
    val mutable rEPLACE_INFO : Obj.t = Obj.repr 0
    method rEPLACE_INFO : 'r. 'r = Obj.magic rEPLACE_INFO
    method set_rEPLACE_INFO : 'v. 'v -> unit = fun value' -> rEPLACE_INFO <- Obj.repr value'
    val mutable rEPLACEERROR : Obj.t = Obj.repr 0
    method rEPLACEERROR : 'r. 'r = Obj.magic rEPLACEERROR
    method set_rEPLACEERROR : 'v. 'v -> unit = fun value' -> rEPLACEERROR <- Obj.repr value'
    val mutable sQLLOGGINGPOOL : Obj.t = Obj.repr 0
    method sQLLOGGINGPOOL : 'r. 'r = Obj.magic sQLLOGGINGPOOL
    method set_sQLLOGGINGPOOL : 'v. 'v -> unit = fun value' -> sQLLOGGINGPOOL <- Obj.repr value'
    val mutable sQLLOGGINGPOOLERROR : Obj.t = Obj.repr 0
    method sQLLOGGINGPOOLERROR : 'r. 'r = Obj.magic sQLLOGGINGPOOLERROR
    method set_sQLLOGGINGPOOLERROR : 'v. 'v -> unit = fun value' -> sQLLOGGINGPOOLERROR <- Obj.repr value'
    val mutable sTATICPAGEGENERATIONLOGGING : Obj.t = Obj.repr 0
    method sTATICPAGEGENERATIONLOGGING : 'r. 'r = Obj.magic sTATICPAGEGENERATIONLOGGING
    method set_sTATICPAGEGENERATIONLOGGING : 'v. 'v -> unit = fun value' -> sTATICPAGEGENERATIONLOGGING <- Obj.repr value'
    val mutable sTATICPAGEGENERATIONLOGGINGERROR : Obj.t = Obj.repr 0
    method sTATICPAGEGENERATIONLOGGINGERROR : 'r. 'r = Obj.magic sTATICPAGEGENERATIONLOGGINGERROR
    method set_sTATICPAGEGENERATIONLOGGINGERROR : 'v. 'v -> unit = fun value' -> sTATICPAGEGENERATIONLOGGINGERROR <- Obj.repr value'
    

    initializer
      begin
        nO_DESCRIPTION <- "No Description";
        aUTHENTICATION <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Authentication", nO_DESCRIPTION)))));
        aUTHENTICATIONERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Authentication Error", nO_DESCRIPTION)))));
        cATEGORY <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Category", nO_DESCRIPTION)))));
        cATEGORYERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Category Error", nO_DESCRIPTION)))));
        cRYPT <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Crypt", nO_DESCRIPTION)))));
        cRYPTERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Crypt Error", nO_DESCRIPTION)))));
        eMAILLOGGING <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Email", nO_DESCRIPTION)))));
        eMAILLOGGINGERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Email Error", nO_DESCRIPTION)))));
        eNTITYFACTORYERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Entity Factory Error", nO_DESCRIPTION)))));
        nETBEANS_MODULE <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("NetBeans Module", nO_DESCRIPTION)))));
        nETBEANS_MODULE_ERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("NetBeans Module Error", nO_DESCRIPTION)))));
        fACTORYERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("General Factory Error", nO_DESCRIPTION)))));
        fILE <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("File", nO_DESCRIPTION)))));
        fILEERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("File Error", nO_DESCRIPTION)))));
        hTTP <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("HTTP", nO_DESCRIPTION)))));
        hTTPERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("HTTP Error", nO_DESCRIPTION)))));
        hTTPREQUEST <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Http Request", nO_DESCRIPTION)))));
        hTTPREQUESTERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Http Request Error", nO_DESCRIPTION)))));
        iDLOGGING <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("ID Logging", nO_DESCRIPTION)))));
        jSPEXTRAOUTPUT <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("JSP Extra Output", nO_DESCRIPTION)))));
        jSPTAGEXTRAOUTPUT <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("JSP Tag Extra Output", nO_DESCRIPTION)))));
        jSPTAG <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("JSP Tag", nO_DESCRIPTION)))));
        jSPTAGERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("JSP Tag Error", nO_DESCRIPTION)))));
        lICENSING <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Licensing", nO_DESCRIPTION)))));
        lICENSINGERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Licensing Error", nO_DESCRIPTION)))));
        lOADER <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Loader", nO_DESCRIPTION)))));
        lOADERERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Loader Error", nO_DESCRIPTION)))));
        oS <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("OS", nO_DESCRIPTION)))));
        oSERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("OS Error", nO_DESCRIPTION)))));
        pAYMENT <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Payment", nO_DESCRIPTION)))));
        pAYMENTERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Payment Error", nO_DESCRIPTION)))));
        pRELOADER <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("PreLoader", nO_DESCRIPTION)))));
        pRELOADERERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("PreLoader Error", nO_DESCRIPTION)))));
        pRODUCTSEARCHLOGGING <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Product Search Logging", nO_DESCRIPTION)))));
        pRODUCTSEARCHLOGGINGERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Product Search Logging Error", nO_DESCRIPTION)))));
        sERVLET <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Servlet", nO_DESCRIPTION)))));
        sERVLETERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Servlet Error", nO_DESCRIPTION)))));
        sHIPPINGERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Shipping Error", nO_DESCRIPTION)))));
        sQLLOGGINGERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("SQL Error", nO_DESCRIPTION)))));
        sQLLOGGING <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("SQL Logging", nO_DESCRIPTION)))));
        sQLTAGS <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("SQL Tag Logging", nO_DESCRIPTION)))));
        sQLTAGSERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("SQL Tag Error", nO_DESCRIPTION)))));
        sTYLE <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Style", nO_DESCRIPTION)))));
        sTYLEERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Style Error", nO_DESCRIPTION)))));
        tAGHELPER <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Tag Helper", nO_DESCRIPTION)))));
        tAGHELPERERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Tag Helper Error", nO_DESCRIPTION)))));
        tAGHELPERFACTORY <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Tag Helper Factory", nO_DESCRIPTION)))));
        tAGHELPERFACTORYERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Tag Helper Factory Error", nO_DESCRIPTION)))));
        tAX <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Tax", nO_DESCRIPTION)))));
        tAXERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Tax Error", nO_DESCRIPTION)))));
        vALIDATION <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Validation", nO_DESCRIPTION)))));
        vALIDATIONERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Validation Error", nO_DESCRIPTION)))));
        vIEW <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("View", nO_DESCRIPTION)))));
        vIEWERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("View Error", nO_DESCRIPTION)))));
        vIEWFACTORYERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("View Factory Error", nO_DESCRIPTION)))));
        wORKFLOW <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Workflow", nO_DESCRIPTION)))));
        wORKFLOWERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Workflow Error", nO_DESCRIPTION)))));
        xMLLOGGING <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("XML Logging", nO_DESCRIPTION)))));
        xMLLOGGINGERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("XML Logging Error", nO_DESCRIPTION)))));
        xSLLOGGING <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("XSL Logging", nO_DESCRIPTION)))));
        xSLLOGGINGERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("XSL Logging Error", nO_DESCRIPTION)))));
        rEPLACE <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Replace", nO_DESCRIPTION)))));
        rEPLACE_INFO <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Replace Info", nO_DESCRIPTION)))));
        rEPLACEERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Replace Error", nO_DESCRIPTION)))));
        sQLLOGGINGPOOL <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("SQL Pool", nO_DESCRIPTION)))));
        sQLLOGGINGPOOLERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("SQL Pool Error", nO_DESCRIPTION)))));
        sTATICPAGEGENERATIONLOGGING <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Static Page Generation Logging", nO_DESCRIPTION)))));
        sTATICPAGEGENERATIONLOGGINGERROR <- (Obj.repr (Obj.obj (java_new "LogConfigType" (Obj.repr ("Static Page Generation Logging Error", nO_DESCRIPTION)))));
        ();
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("FreeBlisket", self, (CommonStrings.getInstance ())#cONSTRUCTOR))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "LogConfigTypeFactory" (fun arguments -> Obj.repr (new logConfigTypeFactory (Obj.obj arguments)))

let instance = (new logConfigTypeFactory ())
let get_instance () = instance
let () = java_register_static "LogConfigTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LogConfigTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


