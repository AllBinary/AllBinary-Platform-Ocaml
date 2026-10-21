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
(* package org.allbinary.midlet *)

open Allbinary_java [@@warning "-33"]

class midletStrings () =
  object
    val mutable cOMMAND_ACTION : string = ""
    method cOMMAND_ACTION = cOMMAND_ACTION
    method set_cOMMAND_ACTION value' = cOMMAND_ACTION <- value'

    initializer
      begin
        cOMMAND_ACTION <- "commandAction";
        ()
      end
  end
let () = java_register_constructor "MidletStrings" (fun arguments -> Obj.repr (new midletStrings (Obj.obj arguments)))

let instance = (new midletStrings ())
let get_instance () = instance
let () = java_register_static "MidletStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MidletStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


