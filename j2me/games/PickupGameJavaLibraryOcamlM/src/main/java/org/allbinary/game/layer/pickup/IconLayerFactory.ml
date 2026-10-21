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
(* package org.allbinary.game.layer.pickup *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.Animation *)


let getInstance : 'any1. 'any1 * int * int -> IconLayer.iconLayer = fun (animationInterface, (width : int), (height : int)) ->
        let animationInterface = Obj.repr animationInterface in
        begin
        ((new IconLayer.iconLayer ((Obj.magic animationInterface), width, height)) :> IconLayer.iconLayer)
        end [@@warning "-20"]

let () = java_register_static "IconLayerFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class iconLayerFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "IconLayerFactory" (fun arguments -> Obj.repr (new iconLayerFactory (Obj.obj arguments)))


