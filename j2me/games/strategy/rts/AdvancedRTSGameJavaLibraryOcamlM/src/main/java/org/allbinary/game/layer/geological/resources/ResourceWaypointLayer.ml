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
(* package org.allbinary.game.layer.geological.resources *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.layer.SelectionHudPaintable *)
(* import org.allbinary.game.layer.waypoint.WaypointLayer *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.game.multiplayer.layer.RemoteInfo *)

class resourceWaypointLayer (remoteInfo, (parentLayer : PathFindingLayerInterface.pathFindingLayerInterface), groupInterface, (rootName : string), (name : string), (animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface.proceduralAnimationInterfaceFactoryInterface), rectangle, (x : int), (y : int)) =
  object (self)
    inherit WaypointLayer.waypointLayer (remoteInfo, parentLayer, groupInterface, rootName, name, animationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y)
    
    

    method createHudPaintable () : SelectionHudPaintable.selectionHudPaintable =
        begin
        let rtsLayerHudPaintable : GeologicalResourceInfoHudPaintable.geologicalResourceInfoHudPaintable ref = ref (((GeologicalResourceInfoHudPaintableSingleton.getInstance ()) :> GeologicalResourceInfoHudPaintable.geologicalResourceInfoHudPaintable)) in ();
        ignore (!rtsLayerHudPaintable#setBasicColorP (((self#allBinaryGameLayerManagerP)#getForegroundBasicColor ())));
        ignore (!rtsLayerHudPaintable#setRtsLayer (self));
        (!rtsLayerHudPaintable :> SelectionHudPaintable.selectionHudPaintable)
        end [@@warning "-7"]
    

    method getHudPaintable () : SelectionHudPaintable.selectionHudPaintable =
        begin
        let rtsLayerHudPaintable : GeologicalResourceInfoHudPaintable.geologicalResourceInfoHudPaintable ref = ref (((GeologicalResourceInfoHudPaintableSingleton.getInstance ()) :> GeologicalResourceInfoHudPaintable.geologicalResourceInfoHudPaintable)) in ();
        (!rtsLayerHudPaintable :> SelectionHudPaintable.selectionHudPaintable)
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ResourceWaypointLayer" (fun arguments -> Obj.repr (new resourceWaypointLayer (Obj.obj arguments)))


