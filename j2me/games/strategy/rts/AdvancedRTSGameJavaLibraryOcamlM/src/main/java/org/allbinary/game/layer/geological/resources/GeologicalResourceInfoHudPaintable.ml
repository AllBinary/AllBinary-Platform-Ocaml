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
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.game.layer.waypoint.WaypointInfoHudPaintable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.graphics.draw.KeyValueDrawCharArray *)

let rESOURCES : string = "Resources: "
let get_rESOURCES () = rESOURCES
let () = java_register_static "GeologicalResourceInfoHudPaintable.get_rESOURCES" (fun _ -> Obj.repr (get_rESOURCES ()))
class geologicalResourceInfoHudPaintable () =
  object (self)
    inherit WaypointInfoHudPaintable.waypointInfoHudPaintable () as super
    val mutable keyvalueDrawString : KeyValueDrawCharArray.keyValueDrawCharArray = (Obj.magic 0)
    method keyvalueDrawString = keyvalueDrawString
    method set_keyvalueDrawString value' = keyvalueDrawString <- value'
    val mutable fontHeight : int = 0
    method fontHeight = fontHeight
    method set_fontHeight value' = fontHeight <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#updateMeasurement ((Obj.magic graphics)));
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        fontHeight <- ((2 * ((Obj.magic !font)#getHeight ())))
        end [@@warning "-7-20"]
    

    method updateSelectionInfo () : unit =
        begin
        ignore (super#updateSelectionInfo ());
        let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic (self#rtsLayerP)) :> RTSLayer.rTSLayer)) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((!rtsLayer#geographicMapCellPositionAreaBase#getOccupyingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        let total : int ref = ref (0) in ();
        let index : int ref = ref ((!list#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            let geographicMapCellPosition : GeologicalGeographicMapCellPosition.geologicalGeographicMapCellPosition ref = ref (((Obj.magic (!list#get (!index))) :> GeologicalGeographicMapCellPosition.geologicalGeographicMapCellPosition)) in ();
            total := (!total + ((!geographicMapCellPosition#getGeologicalResource ())#getTotal ()))
        done;
        ignore (keyvalueDrawString#update (((self#getPrimitiveLongUtil ())#getCharArray (!total)), ((self#getPrimitiveLongUtil ())#getCurrentTotalDigits ())))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paint ((Obj.magic graphics)));
        ignore (keyvalueDrawString#paint ((Obj.magic graphics), (((self#y) + fontHeight))))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        fontHeight <- 0;
        ();
        keyvalueDrawString <- (new KeyValueDrawCharArray.keyValueDrawCharArray (rESOURCES, (self#textX)))
      end
  end
let () = java_register_constructor "GeologicalResourceInfoHudPaintable" (fun arguments -> Obj.repr (new geologicalResourceInfoHudPaintable (Obj.obj arguments)))


