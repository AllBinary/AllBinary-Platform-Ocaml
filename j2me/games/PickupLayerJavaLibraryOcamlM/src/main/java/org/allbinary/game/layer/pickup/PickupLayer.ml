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
(* import javax.microedition.khronos.opengles.GL *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.game.collision.CollidableAlwaysPickupNeverCollideBehaviorFactory *)
(* import org.allbinary.game.combat.destroy.DestroyedLayerProcessor *)
(* import org.allbinary.game.identification.BasicGroupFactory *)
(* import org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer *)
(* import org.allbinary.game.multiplayer.layer.RemoteInfo *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.image.opengles.OpenGLSurfaceChangedInterface *)
(* import org.allbinary.view.ViewPositionBase *)

class pickupLayer ((name : string), remoteInfo, (_total : int), (pickedUpLayerInterfaceFactoryInterface_arg : PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface), (animationInterface_arg : Animation.animation), (rectangle : Rectangle.rectangle), (viewPosition : ViewPositionBase.viewPositionBase)) =
  object (self)
    inherit MultiPlayerGameLayer.multiPlayerGameLayer (remoteInfo, (BasicGroupFactory.getInstance ())#nONE_ARRAY, name, rectangle, viewPosition)
    val mutable pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface = (Obj.magic 0)
    method pickedUpLayerInterfaceFactoryInterface = pickedUpLayerInterfaceFactoryInterface
    method set_pickedUpLayerInterfaceFactoryInterface value' = pickedUpLayerInterfaceFactoryInterface <- value'
    val mutable destroyed : bool = false
    method destroyed = destroyed
    method set_destroyed value' = destroyed <- value'
    val mutable animationInterface : Animation.animation = (Obj.magic 0)
    method animationInterface = animationInterface
    method set_animationInterface value' = animationInterface <- value'
    
    

    method init : 'any1 'any2. 'any1 * 'any2 -> unit = fun (pickedUpLayerInterfaceFactoryInterface_arg, animationInterface_arg) ->
        let pickedUpLayerInterfaceFactoryInterface_arg = Obj.repr pickedUpLayerInterfaceFactoryInterface_arg in
        let animationInterface_arg = Obj.repr animationInterface_arg in
        begin
        pickedUpLayerInterfaceFactoryInterface <- (Obj.magic pickedUpLayerInterfaceFactoryInterface_arg);
        animationInterface <- (Obj.magic animationInterface_arg);
        (self#setDestroyed (false))
        end [@@warning "-7-20"]
    

    method initXYZ ((x : int), (y : int), (z : int)) : unit =
        begin
        ignore (self#setPosition (x, y, z))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let viewPosition : ViewPositionBase.viewPositionBase ref = ref (((self#getViewPosition ()) :> ViewPositionBase.viewPositionBase)) in ();
        let viewX : int ref = ref ((!viewPosition#getX ())) in ();
        let viewY : int ref = ref ((!viewPosition#getY ())) in ();
        ignore (animationInterface#paintXY ((Obj.magic graphics), !viewX, !viewY))
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let viewPosition : ViewPositionBase.viewPositionBase ref = ref (((self#getViewPosition ()) :> ViewPositionBase.viewPositionBase)) in ();
        let viewX : int ref = ref ((!viewPosition#getX ())) in ();
        let viewY : int ref = ref ((!viewPosition#getY ())) in ();
        ignore (animationInterface#paintThreedXYZ ((Obj.magic graphics), !viewX, !viewY, 3))
        end [@@warning "-7-20"]
    

    method getPickedUpLayerInterfaceFactoryInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (pickedUpLayerInterfaceFactoryInterface))
        end [@@warning "-7"]
    

    method setPickedUp () : unit =
        begin
        (self#setDestroyed (true))
        end [@@warning "-7"]
    

    method isDestroyed () : bool =
        begin
        destroyed
        end [@@warning "-7"]
    

    method setDestroyed ((destroyed_arg : bool)) : unit =
        begin
        destroyed <- destroyed_arg;
        if (self#isDestroyed ()) then begin
            ignore ((DestroyedLayerProcessor.getInstance ())#add ((Obj.magic self)))
        end
        end [@@warning "-7"]
    

    method damage ((_damage : int), (_damageType : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getDamage ((_damageType : int)) : int =
        begin
        0
        end [@@warning "-7"]
    

    method set : 'any1. 'any1 -> unit = fun (gl) ->
        let gl = Obj.repr gl in
        begin
        let openGLSurfaceChangedInterface : OpenGLSurfaceChangedInterface.openGLSurfaceChangedInterface ref = ref (((Obj.magic animationInterface) :> OpenGLSurfaceChangedInterface.openGLSurfaceChangedInterface)) in ();
        ignore (!openGLSurfaceChangedInterface#set ((Obj.magic gl)))
        end [@@warning "-7-20"]

    initializer
      begin
        pickedUpLayerInterfaceFactoryInterface <- ((CountedPickedUpLayerInterfaceFactory.get_nULL_COUNTED_PICKUP_LAYER_FACTORY ()) :> PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface);
        destroyed <- false;
        animationInterface <- (((NullAnimationFactory.getFactoryInstance ())#getInstance (0)) :> Animation.animation);
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setCollidableInferface (((CollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance ())#createBehavior ())));
        ignore (self#setLayerWidth (10));
        ignore (self#setLayerHeight (10));
        (self#init (pickedUpLayerInterfaceFactoryInterface_arg, animationInterface_arg))
      end
  end
let () = java_register_constructor "PickupLayer" (fun arguments -> Obj.repr (new pickupLayer (Obj.obj arguments)))


