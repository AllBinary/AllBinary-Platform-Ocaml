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
(* package org.allbinary.logic.math *)

open Allbinary_java [@@warning "-33"]


let getArrayInstance () : float array =
        begin
        (Array.make (0) 0.0)
        end

let () = java_register_static "PrimitiveFloatUtil.getArrayInstance" (fun arguments -> Obj.repr (getArrayInstance (Obj.obj arguments)))
class primitiveFloatUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "PrimitiveFloatUtil" (fun arguments -> Obj.repr (new primitiveFloatUtil (Obj.obj arguments)))


