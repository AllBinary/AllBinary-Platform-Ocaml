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
(* package org.allbinary.math *)

open Allbinary_java [@@warning "-33"]
(* import jsinterop.annotations.JsType *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)

class angle ((angle : int)) =
  object
    val mutable value : int = 0
    method value = value
    method set_value value' = value <- value'
    
    

    method getValue () : int =
        begin
        value
        end

    initializer
      begin
        ();
        ();
        value <- angle
      end
  end
let () = java_register_constructor "Angle" (fun arguments -> Obj.repr (new angle (Obj.obj arguments)))


