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
(* package org.allbinary.logic.system.os *)

open Allbinary_java [@@warning "-33"]

class operatingSystems () =
  object
    val mutable lINUX : string = ""
    method lINUX = lINUX
    method set_lINUX value' = lINUX <- value'
    val mutable wINDOWS : string = ""
    method wINDOWS = wINDOWS
    method set_wINDOWS value' = wINDOWS <- value'
    val mutable sOLARIS : string = ""
    method sOLARIS = sOLARIS
    method set_sOLARIS value' = sOLARIS <- value'
    val mutable wINDOWS2000 : string = ""
    method wINDOWS2000 = wINDOWS2000
    method set_wINDOWS2000 value' = wINDOWS2000 <- value'
    val mutable wINDOWS_NT : string = ""
    method wINDOWS_NT = wINDOWS_NT
    method set_wINDOWS_NT value' = wINDOWS_NT <- value'
    val mutable wINDOWS_10 : string = ""
    method wINDOWS_10 = wINDOWS_10
    method set_wINDOWS_10 value' = wINDOWS_10 <- value'
    val mutable wINDOWS_11 : string = ""
    method wINDOWS_11 = wINDOWS_11
    method set_wINDOWS_11 value' = wINDOWS_11 <- value'
    val mutable wINDOWS_VISTA : string = ""
    method wINDOWS_VISTA = wINDOWS_VISTA
    method set_wINDOWS_VISTA value' = wINDOWS_VISTA <- value'
    val mutable wINDOWS_XP : string = ""
    method wINDOWS_XP = wINDOWS_XP
    method set_wINDOWS_XP value' = wINDOWS_XP <- value'
    val mutable aNDROID : string = ""
    method aNDROID = aNDROID
    method set_aNDROID value' = aNDROID <- value'
    val mutable hARMONY : string = ""
    method hARMONY = hARMONY
    method set_hARMONY value' = hARMONY <- value'
    val mutable unknownSpecificOSAllowed : bool = false
    method unknownSpecificOSAllowed = unknownSpecificOSAllowed
    method set_unknownSpecificOSAllowed value' = unknownSpecificOSAllowed <- value'
    
    

    method isUnknownSpecificOSAllowed () : bool =
        begin
        unknownSpecificOSAllowed
        end
    

    method setUnknownSpecificOSAllowed ((aUnknownSpecificOSAllowed : bool)) : unit =
        begin
        unknownSpecificOSAllowed <- aUnknownSpecificOSAllowed
        end

    initializer
      begin
        lINUX <- "Linux";
        wINDOWS <- "Windows";
        sOLARIS <- "Solaris";
        wINDOWS2000 <- "Windows 2000";
        wINDOWS_NT <- "Windows NT";
        wINDOWS_10 <- "Windows 10";
        wINDOWS_11 <- "Windows 11";
        wINDOWS_VISTA <- "Windows Vista";
        wINDOWS_XP <- "Windows XP";
        aNDROID <- lINUX;
        hARMONY <- "HarmonyOS";
        unknownSpecificOSAllowed <- true;
        ();
        ()
      end
  end
let () = java_register_constructor "OperatingSystems" (fun arguments -> Obj.repr (new operatingSystems (Obj.obj arguments)))

let instance = (new operatingSystems ())
let get_instance () = instance
let () = java_register_static "OperatingSystems.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OperatingSystems.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


