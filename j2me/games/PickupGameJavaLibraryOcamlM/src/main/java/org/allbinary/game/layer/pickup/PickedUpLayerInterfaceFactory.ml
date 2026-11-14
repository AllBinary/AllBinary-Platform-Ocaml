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
(* import org.allbinary.layer.AllBinaryLayer *)

class pickedUpLayerInterfaceFactory ((pickeUpLayerType : PickedUpLayerType.pickedUpLayerType), (iconLayer_arg : IconLayer.iconLayer), (animationInterface_arg : Animation.animation)) =
  object
    inherit PickedUpLayerInterfaceFactoryBase.pickedUpLayerInterfaceFactoryBase ()
    val mutable pickedUpLayerType : PickedUpLayerType.pickedUpLayerType = (Obj.magic 0)
    method pickedUpLayerType = pickedUpLayerType
    method set_pickedUpLayerType value' = pickedUpLayerType <- value'
    val mutable iconLayer : IconLayer.iconLayer = (Obj.magic 0)
    method iconLayer = iconLayer
    method set_iconLayer value' = iconLayer <- value'
    val mutable animationInterface : Animation.animation = (Obj.magic 0)
    method animationInterface = animationInterface
    method set_animationInterface value' = animationInterface <- value'
    
    

    method getIconLayer : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (iconLayer))
        end [@@warning "-7"]
    

    method getAnimationInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (animationInterface))
        end [@@warning "-7"]
    

    method getPickedUpLayerType : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (pickedUpLayerType))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        pickedUpLayerType <- pickeUpLayerType;
        animationInterface <- animationInterface_arg;
        iconLayer <- iconLayer_arg
      end
  end
let () = java_register_constructor "PickedUpLayerInterfaceFactory" (fun arguments -> Obj.repr (new pickedUpLayerInterfaceFactory (Obj.obj arguments)))


