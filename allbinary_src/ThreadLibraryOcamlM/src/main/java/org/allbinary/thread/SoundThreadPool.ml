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
(* package org.allbinary.thread *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class soundThreadPool () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "SoundThreadPool" (fun arguments -> Obj.repr (new soundThreadPool (Obj.obj arguments)))

let instance : Obj.t = (Obj.repr (Obj.obj (java_new "ThreadPool" (Obj.repr ("Sound", 1, (Obj.magic (java_call_static "ThreadPool.get_nORMAL_PRIORITY" (Obj.repr ()))))))))
let get_instance () = Obj.magic instance
let () = java_register_static "SoundThreadPool.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic instance)))
        end
let () = java_register_static "SoundThreadPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


