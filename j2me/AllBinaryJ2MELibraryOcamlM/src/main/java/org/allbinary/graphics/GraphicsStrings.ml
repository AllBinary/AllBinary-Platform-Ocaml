(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]

class graphicsStrings () =
  object
    val mutable aNIMATION : string = ""
    method aNIMATION = aNIMATION
    method set_aNIMATION value' = aNIMATION <- value'
    val mutable aNGLE : string = ""
    method aNGLE = aNGLE
    method set_aNGLE value' = aNGLE <- value'
    val mutable mOVEMENT_ANGLE : string = ""
    method mOVEMENT_ANGLE = mOVEMENT_ANGLE
    method set_mOVEMENT_ANGLE value' = mOVEMENT_ANGLE <- value'
    val mutable rOTATION : string = ""
    method rOTATION = rOTATION
    method set_rOTATION value' = rOTATION <- value'
    val mutable oPACITY : string = ""
    method oPACITY = oPACITY
    method set_oPACITY value' = oPACITY <- value'
    val mutable hTML : string = ""
    method hTML = hTML
    method set_hTML value' = hTML <- value'
    val mutable wIDTH : string = ""
    method wIDTH = wIDTH
    method set_wIDTH value' = wIDTH <- value'
    val mutable hEIGHT : string = ""
    method hEIGHT = hEIGHT
    method set_hEIGHT value' = hEIGHT <- value'

    initializer
      begin
        aNIMATION <- "animation";
        aNGLE <- "angle";
        mOVEMENT_ANGLE <- "movement_angle";
        rOTATION <- "rotation";
        oPACITY <- "opacity";
        hTML <- "HTML";
        wIDTH <- "width";
        hEIGHT <- "height";
        ()
      end
  end
let () = java_register_constructor "GraphicsStrings" (fun arguments -> Obj.repr (new graphicsStrings (Obj.obj arguments)))

let instance = (new graphicsStrings ())
let get_instance () = instance
let () = java_register_static "GraphicsStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GraphicsStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


