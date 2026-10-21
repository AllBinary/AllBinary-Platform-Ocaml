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
(* package org.allbinary.animation.transition.shake *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class shakeEventFactory () =
  object
    val mutable mICRO : ShakeEvent.shakeEvent = (Obj.magic 0)
    method mICRO = mICRO
    method set_mICRO value' = mICRO <- value'
    val mutable sMALL : ShakeEvent.shakeEvent = (Obj.magic 0)
    method sMALL = sMALL
    method set_sMALL value' = sMALL <- value'
    val mutable mEDIUM : ShakeEvent.shakeEvent = (Obj.magic 0)
    method mEDIUM = mEDIUM
    method set_mEDIUM value' = mEDIUM <- value'
    val mutable lARGE : ShakeEvent.shakeEvent = (Obj.magic 0)
    method lARGE = lARGE
    method set_lARGE value' = lARGE <- value'
    

    method init () : unit =
        begin
        ()
        end

    initializer
      begin
        mICRO <- ((new ShakeEvent.shakeEvent ()) :> ShakeEvent.shakeEvent);
        sMALL <- ((new ShakeEvent.shakeEvent ()) :> ShakeEvent.shakeEvent);
        mEDIUM <- ((new ShakeEvent.shakeEvent ()) :> ShakeEvent.shakeEvent);
        lARGE <- ((new ShakeEvent.shakeEvent ()) :> ShakeEvent.shakeEvent);
        ()
      end
  end
let () = java_register_constructor "ShakeEventFactory" (fun arguments -> Obj.repr (new shakeEventFactory (Obj.obj arguments)))

let instance = (new shakeEventFactory ())
let get_instance () = instance
let () = java_register_static "ShakeEventFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ShakeEventFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


