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
(* package org.allbinary.logic.java.number *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let mAX_LONG_LENGTH_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_mAX_LONG_LENGTH : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !mAX_LONG_LENGTH_cell with Lazy.Undefined -> java_null)
let set_mAX_LONG_LENGTH value' = mAX_LONG_LENGTH_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "LongData.get_mAX_LONG_LENGTH" (fun _ -> Obj.repr (get_mAX_LONG_LENGTH ()))
let () = java_register_static "LongData.set_mAX_LONG_LENGTH" (fun value' -> set_mAX_LONG_LENGTH value'; Obj.repr ())
class longData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "LongData" (fun arguments -> Obj.repr (new longData (Obj.obj arguments)))

let () = mAX_LONG_LENGTH_cell := lazy (Obj.repr ((String.length (java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr (max_int)))))))))


