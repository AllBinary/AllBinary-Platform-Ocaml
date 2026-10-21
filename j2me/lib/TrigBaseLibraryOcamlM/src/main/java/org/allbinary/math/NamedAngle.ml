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
(* package org.allbinary.math *)

open Allbinary_java [@@warning "-33"]
(* import jsinterop.annotations.JsType *)
(* import jsinterop.annotations.JsProperty *)
(* import jsinterop.annotations.JsConstructor *)

class namedAngle ((angle : int), (name_arg : string)) =
  object
    inherit Angle.angle (angle)
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        name <- name_arg
      end
  end
let () = java_register_constructor "NamedAngle" (fun arguments -> Obj.repr (new namedAngle (Obj.obj arguments)))


