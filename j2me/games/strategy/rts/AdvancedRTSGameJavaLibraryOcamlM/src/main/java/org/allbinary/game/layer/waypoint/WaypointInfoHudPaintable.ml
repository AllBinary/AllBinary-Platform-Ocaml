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
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.layer.NullPathFindingLayer *)
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.game.layer.SelectionHudPaintable *)
(* import org.allbinary.graphics.draw.KeyValueDrawString *)

class waypointInfoHudPaintable () =
  object (self)
    inherit SelectionHudPaintable.selectionHudPaintable () as super
    val mutable keyvalueDrawString : KeyValueDrawString.keyValueDrawString = (Obj.magic 0)
    method keyvalueDrawString = keyvalueDrawString
    method set_keyvalueDrawString value' = keyvalueDrawString <- value'
    val mutable rtsLayerP : PathFindingLayerInterface.pathFindingLayerInterface = (Obj.magic 0)
    method rtsLayerP = rtsLayerP
    method set_rtsLayerP value' = rtsLayerP <- value'
    val mutable textLine2Y : int = 0
    method textLine2Y = textLine2Y
    method set_textLine2Y value' = textLine2Y <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#updateMeasurement ((Obj.magic graphics)));
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        textLine2Y <- (((self#y) + ((Obj.magic !font)#getHeight ())))
        end [@@warning "-7-20"]
    

    method updateSelectionInfo () : unit =
        begin
        let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic rtsLayerP) :> RTSLayer.rTSLayer)) in ();
        ignore (self#setName ((!rtsLayer#getName ())));
        ignore (self#setAnimationInterface ((!rtsLayer#getVerticleBuildAnimationInterface ())));
        ignore (keyvalueDrawString#update (((!rtsLayer#getParentLayer ())#getName ())))
        end [@@warning "-7"]
    

    method setRtsLayer : 'any1. 'any1 -> unit = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        rtsLayerP <- (Obj.magic rtsLayer)
        end [@@warning "-7-20"]
    

    method getRtsLayer () : PathFindingLayerInterface.pathFindingLayerInterface =
        begin
        (rtsLayerP :> PathFindingLayerInterface.pathFindingLayerInterface)
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paint ((Obj.magic graphics)));
        ignore (keyvalueDrawString#paint ((Obj.magic graphics), textLine2Y));
        ignore ((self#getAnimationInterface ())#paintXY ((Obj.magic graphics), (self#imageX), (self#y)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        rtsLayerP <- ((NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER ()) :> PathFindingLayerInterface.pathFindingLayerInterface);
        textLine2Y <- 0;
        ();
        keyvalueDrawString <- (new KeyValueDrawString.keyValueDrawString ("Owner: ", (self#textX)))
      end
  end
let () = java_register_constructor "WaypointInfoHudPaintable" (fun arguments -> Obj.repr (new waypointInfoHudPaintable (Obj.obj arguments)))


