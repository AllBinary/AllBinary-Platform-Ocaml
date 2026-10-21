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
(* package org.allbinary.game.ag.ai.scroller *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.game.identification.BasicGroupFactory *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.game.layer.identification.GroupLayerManagerListener *)
(* import org.allbinary.game.layer.weapon.WeaponLayer *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.math.MathUtil *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)

class flockingAI (hashtable, (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput)
    val mutable allowedDistance : int = 0
    method allowedDistance = allowedDistance
    method set_allowedDistance value' = allowedDistance <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        let maxDistance : int ref = ref (0) in ();
        let farAllbinaryLayer : AllBinaryLayer.allBinaryLayer ref = ref (((AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        let groupLayerManagerListener : GroupLayerManagerListener.groupLayerManagerListener ref = ref (((GroupLayerManagerListener.getInstance ()) :> GroupLayerManagerListener.groupLayerManagerListener)) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((!groupLayerManagerListener#getList ((BasicGroupFactory.getInstance ())#eNEMY)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!list#size ())) in ();
        let allBinaryLayer : AllBinaryLayer.allBinaryLayer ref = ref (((Obj.magic 0) :> AllBinaryLayer.allBinaryLayer)) in ();
        let ownerLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((Obj.magic 0) :> AllBinaryLayer.allBinaryLayer)) in ();
        for index = 0 to !size - 1 do
            allBinaryLayer := (Obj.magic (!list#get (index)));
            if ((Obj.repr (!allBinaryLayer#getType ())) != (Obj.repr (WeaponLayer.getStaticType ()))) then begin
                let distance : int ref = ref ((self#getXYDistance (!allBinaryLayer))) in ();
                if (!distance > !maxDistance) then begin
                    maxDistance := !distance;
                    farAllbinaryLayer := !allBinaryLayer;
                    if (!distance > allowedDistance) then begin
                        raise Java_break
                    end
                end
            end
        done;
        if (!maxDistance > allowedDistance) then begin
            if ((Obj.repr !farAllbinaryLayer) != (Obj.repr (AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()))) then begin
                ownerLayerInterface := (self#getOwnerLayerInterface ());
                if ((!farAllbinaryLayer#getXP ()) < (!ownerLayerInterface#getXP ())) then begin
                    ignore (self#processKeyAI ((Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))))
                end else if ((!farAllbinaryLayer#getXP ()) > (!ownerLayerInterface#getXP ())) then begin
                    ignore (self#processKeyAI ((Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))))
                end else if ((!farAllbinaryLayer#getYP ()) > (!ownerLayerInterface#getYP ())) then begin
                    ignore (self#processKeyAI ((Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))))
                end else if ((!farAllbinaryLayer#getYP ()) < (!ownerLayerInterface#getYP ())) then begin
                    ignore (self#processKeyAI ((Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ())))))
                end
            end
        end
        end [@@warning "-7-20"]
    

    method getXYDistance : 'any1. 'any1 -> int = fun (allBinaryLayer) ->
        let allBinaryLayer = Obj.repr allBinaryLayer in
        begin
        let ownerLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        let xTotalDistance : int ref = ref ((((((Obj.magic allBinaryLayer)#getXP ()) + ((Obj.magic allBinaryLayer)#getHalfWidth ()))) - (((!ownerLayerInterface#getXP ()) + (!ownerLayerInterface#getHalfWidth ()))))) in ();
        let yTotalDistance : int ref = ref ((((((Obj.magic allBinaryLayer)#getYP ()) + ((Obj.magic allBinaryLayer)#getHalfHeight ()))) - (((!ownerLayerInterface#getYP ()) + (!ownerLayerInterface#getHalfHeight ()))))) in ();
        let mathUtil : MathUtil.mathUtil ref = ref (((MathUtil.getInstance ()) :> MathUtil.mathUtil)) in ();
        let totalDistance : int ref = ref (((!mathUtil#abs (!xTotalDistance)) + (!mathUtil#abs (!yTotalDistance)))) in ();
        !totalDistance
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        let allowedDistance_arg : int ref = ref ((Obj.magic (hashtable#get ((BasePatrolAI.get_mAX_DISTANCE ()))))) in ();
        allowedDistance <- (!allowedDistance_arg#intValue ())
      end
  end
let () = java_register_constructor "FlockingAI" (fun arguments -> Obj.repr (new flockingAI (Obj.obj arguments)))


