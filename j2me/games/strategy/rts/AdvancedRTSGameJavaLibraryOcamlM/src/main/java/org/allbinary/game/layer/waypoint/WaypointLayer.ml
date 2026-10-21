(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.waypoint *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface *)
(* import org.allbinary.game.health.Health *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.input.form.NullRTSFormInputFactory *)
(* import org.allbinary.game.layer.AdvancedRTSGameLayer *)
(* import org.allbinary.game.layer.AdvancedRTSProperties *)
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.game.view.TileLayerPositionIntoViewPosition *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.game.layer.RTSPlayerLayerInterface *)
(* import org.allbinary.game.multiplayer.layer.RemoteInfo *)
(* import org.allbinary.media.audio.AttackSound *)


let getStaticType () : int =
        begin
        4
        end

let () = java_register_static "WaypointLayer.getStaticType" (fun arguments -> Obj.repr (getStaticType (Obj.obj arguments)))
class waypointLayer (remoteInfo, (parentLayer : PathFindingLayerInterface.pathFindingLayerInterface), groupInterface, (rootName : string), (name : string), (animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface.proceduralAnimationInterfaceFactoryInterface), rectangle, (x : int), (y : int)) =
  object (self)
    inherit AdvancedRTSGameLayer.advancedRTSGameLayer (remoteInfo, parentLayer, (AdvancedRTSProperties.createProperties ()), groupInterface, rootName, name, (new Health.health (1000)), (NullRTSFormInputFactory.getInstance ()), animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, (new TileLayerPositionIntoViewPosition.tileLayerPositionIntoViewPosition ())) as super
    
    

    method construct : 'any1. 'any1 -> unit = fun (rtsPlayerLayerInterface) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        begin
        percentCompleteP <- 100;
        ignore (self#initVisibility ((Obj.magic rtsPlayerLayerInterface)))
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        if (self#isVisible ()) then begin
            ignore (super#paint ((Obj.magic graphics)))
        end
        end [@@warning "-7-20"]
    

    method processTick : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        (try
            ignore (indexedButShouldBeRotationAnimationInterface#nextFrame ())
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, "processTick", e))
        end)
        end [@@warning "-7-20"]
    

    method damage ((_damage : int), (_damageType : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getDamage ((_damageType : int)) : int =
        begin
        0
        end [@@warning "-7"]
    

    method setDestroyed ((destroyed : bool)) : unit =
        begin
        ignore (super#setDestroyed (destroyed));
        if (self#isDestroyed ()) then begin
            ignore ((WaypointCellPositionHistory.getInstance ())#removeLayer (self))
        end
        end [@@warning "-7"]
    

    method getType () : int =
        begin
        (getStaticType ())
        end [@@warning "-7"]
    

    method isSelfUpgradeable () : bool =
        begin
        false
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setCollidableInferface ((new CollidableWaypointBehavior.collidableWaypointBehavior (true))));
        ignore ((self#getWaypointBehavior ())#setWaypoint ((new Waypoint.waypoint (self, (AttackSound.getInstance ())))));
        ignore (self#setAnimationInterface (indexedButShouldBeRotationAnimationInterface))
      end
  end
let () = java_register_constructor "WaypointLayer" (fun arguments -> Obj.repr (new waypointLayer (Obj.obj arguments)))


