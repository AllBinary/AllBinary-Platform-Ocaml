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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.form.AssignWaypointsUtil *)
(* import org.allbinary.game.layer.AdvancedRTSGameLayer *)
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.game.layer.building.BuildingLayer *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.game.layer.unit.UnitLayer *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.logic.util.visitor.Visitor *)

class selectAdvancedRTSLayerVisitor ((selectedRTSLayersPlayerGameInput_arg : SelectedRTSLayersPlayerGameInput.selectedRTSLayersPlayerGameInput)) =
  object
    inherit Visitor.visitor ()
    val mutable selectedRTSLayersPlayerGameInput : SelectedRTSLayersPlayerGameInput.selectedRTSLayersPlayerGameInput = (Obj.magic 0)
    method selectedRTSLayersPlayerGameInput = selectedRTSLayersPlayerGameInput
    method set_selectedRTSLayersPlayerGameInput value' = selectedRTSLayersPlayerGameInput <- value'
    
    

    method visit : 'any1. 'any1 -> Obj.t = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        let selectedLayer : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer ref = ref (((Obj.magic anyType) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)) in ();
        if (((Obj.repr !selectedLayer) != (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) && ((Obj.repr (!selectedLayer#getType ())) == (Obj.repr (BuildingLayer.getStaticType ())))) then begin
            let rtsGameLayer : AdvancedRTSGameLayer.advancedRTSGameLayer ref = ref (((Obj.magic !selectedLayer) :> AdvancedRTSGameLayer.advancedRTSGameLayer)) in ();
            let assignWaypointsUtil : AssignWaypointsUtil.assignWaypointsUtil ref = ref (((AssignWaypointsUtil.getInstance ()) :> AssignWaypointsUtil.assignWaypointsUtil)) in ();
            let list : BasicArrayList.basicArrayList ref = ref (((selectedRTSLayersPlayerGameInput#getSelectedBasicArrayList ()) :> BasicArrayList.basicArrayList)) in ();
            let currentRTSLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic 0) :> RTSLayer.rTSLayer)) in ();
            let unitLayer : UnitLayer.unitLayer ref = ref (((Obj.magic 0) :> UnitLayer.unitLayer)) in ();
            for index = ((!list#size ()) - 1) downto 0 do
                currentRTSLayer := (Obj.magic (!list#get (index)));
                if ((Obj.repr (!currentRTSLayer#getType ())) == (Obj.repr (UnitLayer.getStaticType ()))) then begin
                    unitLayer := (Obj.magic !currentRTSLayer);
                    ignore (!unitLayer#setParentLayer (!rtsGameLayer));
                    ignore (!assignWaypointsUtil#set (!unitLayer, !rtsGameLayer))
                end
            done
        end;
        (Obj.repr ((NullUtil.getInstance ())#nULL_OBJECT))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        selectedRTSLayersPlayerGameInput <- selectedRTSLayersPlayerGameInput_arg
      end
  end
let () = java_register_constructor "SelectAdvancedRTSLayerVisitor" (fun arguments -> Obj.repr (new selectAdvancedRTSLayerVisitor (Obj.obj arguments)))


