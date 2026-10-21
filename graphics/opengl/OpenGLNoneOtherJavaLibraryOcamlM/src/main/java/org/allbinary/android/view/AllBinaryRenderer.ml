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
(* package org.allbinary.android.view *)

open Allbinary_java [@@warning "-33"]

class allBinaryRenderer () =
  object
    

    method setRunnable ((_runnable : java_runnable)) : unit =
        begin
        ()
        end
    

    method clearRunnable () : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AllBinaryRenderer" (fun arguments -> Obj.repr (new allBinaryRenderer (Obj.obj arguments)))

let instance = (new allBinaryRenderer ())
let get_instance () = instance
let () = java_register_static "AllBinaryRenderer.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AllBinaryRenderer.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


