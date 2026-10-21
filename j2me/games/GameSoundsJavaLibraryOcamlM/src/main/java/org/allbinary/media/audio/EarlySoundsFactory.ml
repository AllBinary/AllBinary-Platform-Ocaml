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
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class earlySoundsFactory () =
  object
    inherit BaseSoundsFactory.baseSoundsFactory ()
    

    method getSoundInterfaceArray : 'return. unit -> 'return = fun () ->
        begin
        let soundInterfaceArray : Obj.t ref = ref ((Obj.repr (Array.make (2) (Obj.magic 0)))) in ();
        let index : int ref = ref (0) in ();
        (Obj.magic !soundInterfaceArray).((let value = !index in index := !index + 1; value)) <- (SelectSound.getInstance ());
        (Obj.magic !soundInterfaceArray).((let value = !index in index := !index + 1; value)) <- (ErrorSound.getInstance ());
        (Obj.magic ((Obj.magic !soundInterfaceArray)))
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "EarlySoundsFactory" (fun arguments -> Obj.repr (new earlySoundsFactory (Obj.obj arguments)))

let instance = (new earlySoundsFactory ())
let get_instance () = instance
let () = java_register_static "EarlySoundsFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "EarlySoundsFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


