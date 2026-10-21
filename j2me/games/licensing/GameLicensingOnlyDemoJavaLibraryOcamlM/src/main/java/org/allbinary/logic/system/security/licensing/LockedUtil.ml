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
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]

class lockedUtil () =
  object
    

    method isLocked () : bool =
        begin
        true
        end
    

    method isLockedFeature : 'any1. 'any1 -> bool = fun (_lockableFeatrue) ->
        begin
        true
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LockedUtil" (fun arguments -> Obj.repr (new lockedUtil (Obj.obj arguments)))

let instance = (new lockedUtil ())
let get_instance () = instance
let () = java_register_static "LockedUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LockedUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


