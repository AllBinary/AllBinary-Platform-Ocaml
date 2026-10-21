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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class touchScreenTypeFactory () =
  object
    

    method touchScreenTypeFactory () : unit =
        begin
        let touchScreenFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TouchScreenFactory.getInstance" (Obj.repr ()))))) in ();
        ignore ((Obj.magic !touchScreenFactory)#setTouch (false))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TouchScreenTypeFactory" (fun arguments -> Obj.repr (new touchScreenTypeFactory (Obj.obj arguments)))

let instance = (new touchScreenTypeFactory ())
let get_instance () = instance
let () = java_register_static "TouchScreenTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TouchScreenTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


