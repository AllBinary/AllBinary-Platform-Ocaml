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
(* import javax.microedition.rms.RecordFilter *)

class nullRecordFilter () =
  object
    

    method matches ((_candidate : int array)) : bool =
        begin
        true
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullRecordFilter" (fun arguments -> Obj.repr (new nullRecordFilter (Obj.obj arguments)))

let nULL_RECORD_FILTER = ref ((new nullRecordFilter ()))
let get_nULL_RECORD_FILTER () = !nULL_RECORD_FILTER
let set_nULL_RECORD_FILTER value' = nULL_RECORD_FILTER := value'
let () = java_register_static "NullRecordFilter.get_nULL_RECORD_FILTER" (fun _ -> Obj.repr (get_nULL_RECORD_FILTER ()))


