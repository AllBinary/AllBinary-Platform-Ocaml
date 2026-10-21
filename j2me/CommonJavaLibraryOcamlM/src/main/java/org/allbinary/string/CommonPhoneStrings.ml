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

class commonPhoneStrings () =
  object
    val mutable uP : string = ""
    method uP = uP
    method set_uP value' = uP <- value'
    val mutable dOWN : string = ""
    method dOWN = dOWN
    method set_dOWN value' = dOWN <- value'
    val mutable lEFT : string = ""
    method lEFT = lEFT
    method set_lEFT value' = lEFT <- value'
    val mutable rIGHT : string = ""
    method rIGHT = rIGHT
    method set_rIGHT value' = rIGHT <- value'
    val mutable zERO : string = ""
    method zERO = zERO
    method set_zERO value' = zERO <- value'
    val mutable oNE : string = ""
    method oNE = oNE
    method set_oNE value' = oNE <- value'
    val mutable tWO : string = ""
    method tWO = tWO
    method set_tWO value' = tWO <- value'
    val mutable tHREE : string = ""
    method tHREE = tHREE
    method set_tHREE value' = tHREE <- value'
    val mutable fOUR : string = ""
    method fOUR = fOUR
    method set_fOUR value' = fOUR <- value'
    val mutable fIVE : string = ""
    method fIVE = fIVE
    method set_fIVE value' = fIVE <- value'
    val mutable sIX : string = ""
    method sIX = sIX
    method set_sIX value' = sIX <- value'
    val mutable sEVEN : string = ""
    method sEVEN = sEVEN
    method set_sEVEN value' = sEVEN <- value'
    val mutable eIGHT : string = ""
    method eIGHT = eIGHT
    method set_eIGHT value' = eIGHT <- value'
    val mutable nINE : string = ""
    method nINE = nINE
    method set_nINE value' = nINE <- value'
    val mutable pOUND : string = ""
    method pOUND = pOUND
    method set_pOUND value' = pOUND <- value'
    val mutable sTAR : string = ""
    method sTAR = sTAR
    method set_sTAR value' = sTAR <- value'
    val mutable fIRE : string = ""
    method fIRE = fIRE
    method set_fIRE value' = fIRE <- value'

    initializer
      begin
        uP <- "UP";
        dOWN <- "DOWN";
        lEFT <- "LEFT";
        rIGHT <- "RIGHT";
        zERO <- "0";
        oNE <- "1";
        tWO <- "2";
        tHREE <- "3";
        fOUR <- "4";
        fIVE <- "5";
        sIX <- "6";
        sEVEN <- "7";
        eIGHT <- "8";
        nINE <- "9";
        pOUND <- "#";
        sTAR <- "*";
        fIRE <- "FIRE";
        ()
      end
  end
let () = java_register_constructor "CommonPhoneStrings" (fun arguments -> Obj.repr (new commonPhoneStrings (Obj.obj arguments)))

let instance = (new commonPhoneStrings ())
let get_instance () = instance
let () = java_register_static "CommonPhoneStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CommonPhoneStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


