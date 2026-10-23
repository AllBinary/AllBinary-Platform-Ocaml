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
(* package org.allbinary.game.ag.layer.weapon.mine *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.ag.weapon.media.audio.DropWeaponSound *)
(* import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.game.layer.weapon.SimpleWeaponLayer *)
(* import org.allbinary.game.multiplayer.layer.RemoteInfo *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.media.audio.SecondaryPlayerQueueFactory *)
(* import org.allbinary.physics.movement.NoMovementFactory *)
(* import org.allbinary.view.ViewPositionBase *)
(* import org.allbinary.view.event.ViewPositionEventHandler *)

let nAME : string = "MineLayer"
let get_nAME () = nAME
let () = java_register_static "MineLayer.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class mineLayer ((viewPosition : ViewPositionBase.viewPositionBase)) =
  object (self)
    inherit SimpleWeaponLayer.simpleWeaponLayer (nAME, (Obj.magic (java_call_static "RemoteInfo.get_rEMOTE_INFO" (Obj.repr ()))), (-1), ((NoMovementFactory.getInstance ())#getMovmentInstance ()), (((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#get ((MineWeaponResources.getInstance ())#rESOURCE))#getInstance (0)), (SimpleWeaponLayer.createDestroyed ()), (Obj.obj (java_new "Rectangle" (Obj.repr ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO, 10, 10)))), viewPosition) as super
    val mutable viewPositionEventHandler : ViewPositionEventHandler.viewPositionEventHandler = (Obj.magic 0)
    method viewPositionEventHandler = viewPositionEventHandler
    method set_viewPositionEventHandler value' = viewPositionEventHandler <- value'
    
    

    method initXYZ ((x : int), (y : int), (z : int)) : unit =
        begin
        ignore (self#setPosition ((x + 5), (y + 5), z));
        ignore (viewPositionEventHandler#addListener ((Obj.magic self)));
        ignore ((SecondaryPlayerQueueFactory.getInstance ())#add ((DropWeaponSound.getInstance ())))
        end [@@warning "-7"]
    

    method damage ((_damage : int), (_damageType : int)) : unit =
        begin
        (self#set_totalDamage) (((self#getInitDamage ()) + 1))
        end [@@warning "-7"]
    

    method getDamage ((damageType : int)) : int =
        begin
        ignore (super#getDamage (damageType));
        (self#getInitDamage ())
        end [@@warning "-7"]
    

    method setDestroyed ((destroyed : bool)) : unit =
        begin
        ignore (super#setDestroyed (destroyed));
        if (self#isDestroyed ()) then begin
            ignore (viewPositionEventHandler#removeListener (self))
        end
        end [@@warning "-7"]

    initializer
      begin
        viewPositionEventHandler <- ((ViewPositionEventHandler.getInstance ()) :> ViewPositionEventHandler.viewPositionEventHandler);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "MineLayer" (fun arguments -> Obj.repr (new mineLayer (Obj.obj arguments)))


