(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2011 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.string *)

open Allbinary_java [@@warning "-33"]
(* import jsinterop.annotations.JsType *)
(* import org.allbinary.logic.string.StringMaker *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsProperty *)

class commonSeps () =
  object
    val mutable nEW_LINE : string = ""
    method nEW_LINE = nEW_LINE
    method set_nEW_LINE value' = nEW_LINE <- value'
    val mutable sEMICOLON : string = ""
    method sEMICOLON = sEMICOLON
    method set_sEMICOLON value' = sEMICOLON <- value'
    val mutable eQUALS : string = ""
    method eQUALS = eQUALS
    method set_eQUALS value' = eQUALS <- value'
    val mutable sPACE : string = ""
    method sPACE = sPACE
    method set_sPACE value' = sPACE <- value'
    val mutable cOMMA : string = ""
    method cOMMA = cOMMA
    method set_cOMMA value' = cOMMA <- value'
    val mutable cOLON : string = ""
    method cOLON = cOLON
    method set_cOLON value' = cOLON <- value'
    val mutable pERIOD : string = ""
    method pERIOD = pERIOD
    method set_pERIOD value' = pERIOD <- value'
    val mutable uNDERSCORE : string = ""
    method uNDERSCORE = uNDERSCORE
    method set_uNDERSCORE value' = uNDERSCORE <- value'
    val mutable cOLON_SEP : string = ""
    method cOLON_SEP = cOLON_SEP
    method set_cOLON_SEP value' = cOLON_SEP <- value'
    val mutable cOMMA_SEP : string = ""
    method cOMMA_SEP = cOMMA_SEP
    method set_cOMMA_SEP value' = cOMMA_SEP <- value'
    val mutable pARENTHESIS_OPEN : string = ""
    method pARENTHESIS_OPEN = pARENTHESIS_OPEN
    method set_pARENTHESIS_OPEN value' = pARENTHESIS_OPEN <- value'
    val mutable pARENTHESIS_CLOSE : string = ""
    method pARENTHESIS_CLOSE = pARENTHESIS_CLOSE
    method set_pARENTHESIS_CLOSE value' = pARENTHESIS_CLOSE <- value'
    val mutable bRACE_OPEN : string = ""
    method bRACE_OPEN = bRACE_OPEN
    method set_bRACE_OPEN value' = bRACE_OPEN <- value'
    val mutable bRACE_CLOSE : string = ""
    method bRACE_CLOSE = bRACE_CLOSE
    method set_bRACE_CLOSE value' = bRACE_CLOSE <- value'
    val mutable bRACKET_OPEN : string = ""
    method bRACKET_OPEN = bRACKET_OPEN
    method set_bRACKET_OPEN value' = bRACKET_OPEN <- value'
    val mutable bRACKET_CLOSE : string = ""
    method bRACKET_CLOSE = bRACKET_CLOSE
    method set_bRACKET_CLOSE value' = bRACKET_CLOSE <- value'
    val mutable dASH : string = ""
    method dASH = dASH
    method set_dASH value' = dASH <- value'
    val mutable pERCENT : string = ""
    method pERCENT = pERCENT
    method set_pERCENT value' = pERCENT <- value'
    val mutable aMPERSAND : string = ""
    method aMPERSAND = aMPERSAND
    method set_aMPERSAND value' = aMPERSAND <- value'
    val mutable fORWARD_SLASH : string = ""
    method fORWARD_SLASH = fORWARD_SLASH
    method set_fORWARD_SLASH value' = fORWARD_SLASH <- value'
    val mutable bACK_SLASH : string = ""
    method bACK_SLASH = bACK_SLASH
    method set_bACK_SLASH value' = bACK_SLASH <- value'
    val mutable qUESTION : string = ""
    method qUESTION = qUESTION
    method set_qUESTION value' = qUESTION <- value'
    val mutable qUOTE : string = ""
    method qUOTE = qUOTE
    method set_qUOTE value' = qUOTE <- value'
    val mutable qUOTE_END : string = ""
    method qUOTE_END = qUOTE_END
    method set_qUOTE_END value' = qUOTE_END <- value'
    val mutable cOMMENT : string = ""
    method cOMMENT = cOMMENT
    method set_cOMMENT value' = cOMMENT <- value'
    val mutable iNDENT : string = ""
    method iNDENT = iNDENT
    method set_iNDENT value' = iNDENT <- value'

    initializer
      begin
        nEW_LINE <- "\n";
        sEMICOLON <- ";";
        eQUALS <- "=";
        sPACE <- " ";
        cOMMA <- ",";
        cOLON <- ":";
        pERIOD <- ".";
        uNDERSCORE <- "_";
        cOLON_SEP <- (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (cOLON))#append (sPACE))));
        cOMMA_SEP <- (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (cOMMA))#append (sPACE))));
        pARENTHESIS_OPEN <- "(";
        pARENTHESIS_CLOSE <- ")";
        bRACE_OPEN <- "{";
        bRACE_CLOSE <- "}";
        bRACKET_OPEN <- "[";
        bRACKET_CLOSE <- "]";
        dASH <- "-";
        pERCENT <- "%";
        aMPERSAND <- "&";
        fORWARD_SLASH <- "/";
        bACK_SLASH <- "\\";
        qUESTION <- "?";
        qUOTE <- "\"";
        qUOTE_END <- "\",";
        cOMMENT <- "//";
        iNDENT <- "    ";
        ()
      end
  end
let () = java_register_constructor "CommonSeps" (fun arguments -> Obj.repr (new commonSeps (Obj.obj arguments)))

let instance = (new commonSeps ())
let get_instance () = instance
let () = java_register_static "CommonSeps.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CommonSeps.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


