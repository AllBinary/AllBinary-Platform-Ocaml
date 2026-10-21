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
(* package org.allbinary.graphics.paint *)

open Allbinary_java [@@warning "-33"]

let instance : StatePaintable.statePaintable = ((new StatePaintable.statePaintable ()) :> StatePaintable.statePaintable)
let get_instance () = instance
let () = java_register_static "StatePaintableFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : StatePaintable.statePaintable =
        begin
        (instance :> StatePaintable.statePaintable)
        end

let () = java_register_static "StatePaintableFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class statePaintableFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "StatePaintableFactory" (fun arguments -> Obj.repr (new statePaintableFactory (Obj.obj arguments)))


