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
(* package org.allbinary.game.configuration.persistance *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.rms.RecordStore *)

class nullRecordStore () =
  object
    inherit RecordStore.recordStore ()

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullRecordStore" (fun arguments -> Obj.repr (new nullRecordStore (Obj.obj arguments)))

let nULL_RECORD_STORE = ref ((new nullRecordStore ()))
let get_nULL_RECORD_STORE () = !nULL_RECORD_STORE
let set_nULL_RECORD_STORE value' = nULL_RECORD_STORE := value'
let () = java_register_static "NullRecordStore.get_nULL_RECORD_STORE" (fun _ -> Obj.repr (get_nULL_RECORD_STORE ()))


