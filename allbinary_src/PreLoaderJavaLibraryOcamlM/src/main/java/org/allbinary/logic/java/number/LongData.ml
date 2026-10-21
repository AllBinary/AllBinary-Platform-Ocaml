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

class longData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "LongData" (fun arguments -> Obj.repr (new longData (Obj.obj arguments)))

let mAX_LONG_LENGTH : int ref = ref ((String.length (java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr (max_int))))))))
let get_mAX_LONG_LENGTH () = !mAX_LONG_LENGTH
let set_mAX_LONG_LENGTH value' = mAX_LONG_LENGTH := value'
let () = java_register_static "LongData.get_mAX_LONG_LENGTH" (fun _ -> Obj.repr (get_mAX_LONG_LENGTH ()))


