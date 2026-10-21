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
(* package org.allbinary.business.user.group *)

open Allbinary_java [@@warning "-33"]

let nAME : string = "GROUP_NAME"
let get_nAME () = nAME
let () = java_register_static "GroupData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class groupData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GroupData" (fun arguments -> Obj.repr (new groupData (Obj.obj arguments)))


