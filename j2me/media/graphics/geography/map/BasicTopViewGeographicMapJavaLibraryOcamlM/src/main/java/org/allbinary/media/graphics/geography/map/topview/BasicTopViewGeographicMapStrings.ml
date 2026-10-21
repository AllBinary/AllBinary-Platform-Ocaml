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
(* package org.allbinary.media.graphics.geography.map.topview *)

open Allbinary_java [@@warning "-33"]

class basicTopViewGeographicMapStrings () =
  object
    val mutable dEFAULT : string = ""
    method dEFAULT = dEFAULT
    method set_dEFAULT value' = dEFAULT <- value'
    val mutable oTHER : string = ""
    method oTHER = oTHER
    method set_oTHER value' = oTHER <- value'
    val mutable wALL : string = ""
    method wALL = wALL
    method set_wALL value' = wALL <- value'
    val mutable oFF_MAP : string = ""
    method oFF_MAP = oFF_MAP
    method set_oFF_MAP value' = oFF_MAP <- value'
    val mutable fLOOR : string = ""
    method fLOOR = fLOOR
    method set_fLOOR value' = fLOOR <- value'
    val mutable dOOR : string = ""
    method dOOR = dOOR
    method set_dOOR value' = dOOR <- value'
    val mutable sTAIRS_UP : string = ""
    method sTAIRS_UP = sTAIRS_UP
    method set_sTAIRS_UP value' = sTAIRS_UP <- value'
    val mutable sTAIRS_DOWN : string = ""
    method sTAIRS_DOWN = sTAIRS_DOWN
    method set_sTAIRS_DOWN value' = sTAIRS_DOWN <- value'

    initializer
      begin
        dEFAULT <- "Default";
        oTHER <- "Other";
        wALL <- "Wall";
        oFF_MAP <- "OffMap";
        fLOOR <- "Floor";
        dOOR <- "Door";
        sTAIRS_UP <- "StairsUp";
        sTAIRS_DOWN <- "StairsDown";
        ()
      end
  end
let () = java_register_constructor "BasicTopViewGeographicMapStrings" (fun arguments -> Obj.repr (new basicTopViewGeographicMapStrings (Obj.obj arguments)))

let instance = (new basicTopViewGeographicMapStrings ())
let get_instance () = instance
let () = java_register_static "BasicTopViewGeographicMapStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BasicTopViewGeographicMapStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


