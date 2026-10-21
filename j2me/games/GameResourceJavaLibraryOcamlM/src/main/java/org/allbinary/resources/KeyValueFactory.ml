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
(* package org.allbinary.resources *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)

class keyValueFactory () =
  object
    val mutable mAP : Obj.t = Obj.repr 0
    method mAP : 'r. 'r = Obj.magic mAP
    method set_mAP : 'v. 'v -> unit = fun value' -> mAP <- Obj.repr value'
    

    method get ((key : string)) : string =
        try
        begin
        let value : string ref = ref ((Obj.magic ((Obj.magic mAP)#get ((Obj.magic key))))) in ();
        if (!value = (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (key)))
        end;
        !value
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        mAP <- (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "KeyValueFactory" (fun arguments -> Obj.repr (new keyValueFactory (Obj.obj arguments)))

let instance = (new keyValueFactory ())
let get_instance () = instance
let () = java_register_static "KeyValueFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "KeyValueFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


