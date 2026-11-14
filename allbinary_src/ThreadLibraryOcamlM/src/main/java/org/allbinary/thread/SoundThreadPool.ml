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

let instance_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_instance : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !instance_cell with Lazy.Undefined -> java_null)
let set_instance value' = instance_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "SoundThreadPool.get_instance" (fun _ -> Obj.repr (get_instance ()))
let () = java_register_static "SoundThreadPool.set_instance" (fun value' -> set_instance value'; Obj.repr ())
class soundThreadPool () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "SoundThreadPool" (fun arguments -> Obj.repr (new soundThreadPool (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_instance ()))))
        end
let () = java_register_static "SoundThreadPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = instance_cell := lazy (Obj.repr ((Obj.obj (java_new "ThreadPool" (Obj.repr ("Sound", 1, (Obj.magic (java_call_static "ThreadPool.get_nORMAL_PRIORITY" (Obj.repr ())))))))))


