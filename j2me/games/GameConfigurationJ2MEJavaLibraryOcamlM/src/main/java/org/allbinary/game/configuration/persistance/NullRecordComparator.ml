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
(* import javax.microedition.rms.RecordComparator *)

class nullRecordComparator () =
  object
    

    method compare ((_rec1 : int array), (_rec2 : int array)) : int =
        begin
        0
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullRecordComparator" (fun arguments -> Obj.repr (new nullRecordComparator (Obj.obj arguments)))

let nULL_RECORD_COMPARATOR = (new nullRecordComparator ())
let get_nULL_RECORD_COMPARATOR () = nULL_RECORD_COMPARATOR
let () = java_register_static "NullRecordComparator.get_nULL_RECORD_COMPARATOR" (fun _ -> Obj.repr (get_nULL_RECORD_COMPARATOR ()))


