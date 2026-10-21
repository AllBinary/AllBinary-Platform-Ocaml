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

class pickedUpLayerInterfaceFactory ((pickeUpLayerType : PickedUpLayerType.pickedUpLayerType), (iconLayer_arg : IconLayer.iconLayer), animationInterface_arg) =
  object
    inherit PickedUpLayerInterfaceFactoryBase.pickedUpLayerInterfaceFactoryBase ()
    val mutable pickedUpLayerType : PickedUpLayerType.pickedUpLayerType = (Obj.magic 0)
    method pickedUpLayerType = pickedUpLayerType
    method set_pickedUpLayerType value' = pickedUpLayerType <- value'
    val mutable iconLayer : IconLayer.iconLayer = (Obj.magic 0)
    method iconLayer = iconLayer
    method set_iconLayer value' = iconLayer <- value'
    val mutable animationInterface : Obj.t = Obj.repr 0
    method animationInterface : 'r. 'r = Obj.magic animationInterface
    method set_animationInterface : 'v. 'v -> unit = fun value' -> animationInterface <- Obj.repr value'
    
    

    method getIconLayer () : AllBinaryLayer.allBinaryLayer =
        begin
        (iconLayer :> AllBinaryLayer.allBinaryLayer)
        end [@@warning "-7"]
    

    method getAnimationInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic animationInterface)))
        end [@@warning "-7"]
    

    method getPickedUpLayerType () : PickedUpLayerType.pickedUpLayerType =
        begin
        (pickedUpLayerType :> PickedUpLayerType.pickedUpLayerType)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        pickedUpLayerType <- pickeUpLayerType;
        animationInterface <- Obj.repr (animationInterface_arg);
        iconLayer <- iconLayer_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "PickedUpLayerInterfaceFactory" (fun arguments -> Obj.repr (new pickedUpLayerInterfaceFactory (Obj.obj arguments)))


