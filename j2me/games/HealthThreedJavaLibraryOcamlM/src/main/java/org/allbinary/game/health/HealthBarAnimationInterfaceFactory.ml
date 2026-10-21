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
(* package org.allbinary.game.health *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.media.ScaleProperties *)

class healthBarAnimationInterfaceFactory () =
  object
    
    

    method getInstanceByLocation : 'any1. 'any1 * int -> HealthBarAnimation.healthBarAnimation = fun (layerInterface, (location : int)) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        ((new HealthBarThreedAnimation.healthBarThreedAnimation ((Obj.magic layerInterface), location)) :> HealthBarAnimation.healthBarAnimation)
        end [@@warning "-20"]
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method getInstanceAnimation : 'any1 'return. 'any1 -> 'return = fun (_animationInterface) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-20"]
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (_scaleProperties) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "HealthBarAnimationInterfaceFactory" (fun arguments -> Obj.repr (new healthBarAnimationInterfaceFactory (Obj.obj arguments)))


