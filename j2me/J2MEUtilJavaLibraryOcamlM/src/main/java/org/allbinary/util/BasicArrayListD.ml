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
(* package org.allbinary.util *)

open Allbinary_java [@@warning "-33"]
(* import jsinterop.annotations.JsType *)
(* import jsinterop.annotations.JsConstructor *)

class basicArrayListD () =
  object
    inherit BasicArrayListS.basicArrayListS (7)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "BasicArrayListD" (fun arguments -> Obj.repr (new basicArrayListD (Obj.obj arguments)))


