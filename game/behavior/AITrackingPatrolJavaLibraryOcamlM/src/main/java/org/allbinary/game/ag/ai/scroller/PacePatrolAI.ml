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
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.direction.DirectionCompositeInterface *)
(* import org.allbinary.direction.DirectionFactory *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.game.tracking.TrackingEvent *)
(* import org.allbinary.game.tracking.TrackingEventHandler *)
(* import org.allbinary.game.tracking.TrackingEventListenerInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.layer.LayerInterface *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class pacePatrolAI (hashtable, (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit BasePatrolAI.basePatrolAI (hashtable, ownerLayerInterface, gameInput) as super
    val mutable trackingList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method trackingList = trackingList
    method set_trackingList value' = trackingList <- value'
    val mutable firingDistance : int = 0
    method firingDistance = firingDistance
    method set_firingDistance value' = firingDistance <- value'
    val mutable isFollowLimitedByTerrain : bool = false
    method isFollowLimitedByTerrain = isFollowLimitedByTerrain
    method set_isFollowLimitedByTerrain value' = isFollowLimitedByTerrain <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        ignore (self#update ());
        let direction : Direction.direction ref = ref (((self#setFiringDirectionForTargetIfInRange ()) :> Direction.direction)) in ();
        let directionFactory : DirectionFactory.directionFactory ref = ref (((DirectionFactory.getInstance ()) :> DirectionFactory.directionFactory)) in ();
        if ((Obj.repr !direction) == (Obj.repr !directionFactory#lEFT)) then begin
            if (((Obj.repr lastKeyDirection) != (Obj.repr keyDirection)) || (not isFollowLimitedByTerrain)) then begin
                ignore (super#processKeyAI ((Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))))
            end;
            keyDirection <- (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())));
            lastKeyDirection <- keyDirection;
            xTotalDistance <- 0;
            ignore (super#processKeyAI ((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))))
        end else if ((Obj.repr !direction) == (Obj.repr !directionFactory#rIGHT)) then begin
            if (((Obj.repr lastKeyDirection) != (Obj.repr keyDirection)) || (not isFollowLimitedByTerrain)) then begin
                ignore (super#processKeyAI ((Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))))
            end;
            keyDirection <- (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())));
            lastKeyDirection <- keyDirection;
            xTotalDistance <- 0;
            ignore (super#processKeyAI ((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))))
        end else begin
            ignore (super#processKeyAI (keyDirection))
        end
        end [@@warning "-7-20"]
    

    method setFiringDirectionForTargetIfInRange () : Direction.direction =
        begin
        let directionFactory : DirectionFactory.directionFactory ref = ref (((DirectionFactory.getInstance ()) :> DirectionFactory.directionFactory)) in ();
        let ownerLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        let direction : Direction.direction ref = ref ((!directionFactory#nOT_BORDERED_WITH :> Direction.direction)) in ();
        let lastTrackingEvent : TrackingEvent.trackingEvent ref = ref (((Obj.magic 0) :> TrackingEvent.trackingEvent)) in ();
        let lastTrackingLayerInterface : LayerInterface.layerInterface ref = ref (((Obj.magic 0) :> LayerInterface.layerInterface)) in ();
        let directionCompositeInterface : DirectionCompositeInterface.directionCompositeInterface ref = ref (((Obj.magic 0) :> DirectionCompositeInterface.directionCompositeInterface)) in ();
        let size : int ref = ref ((trackingList#size ())) in ();
        for _index = 0 to !size - 1 do
            lastTrackingEvent := (Obj.magic (trackingList#get (0)));
            lastTrackingLayerInterface := (!lastTrackingEvent#getLayerInterface ());
            let x : int ref = ref ((!lastTrackingLayerInterface#getXP ())) in ();
            let y : int ref = ref ((!lastTrackingLayerInterface#getYP ())) in ();
            let yDistance : int ref = ref ((((!ownerLayerInterface#getYP ()) - !y) - (!ownerLayerInterface#getHeight ()))) in ();
            let xDistance : int ref = ref ((((!ownerLayerInterface#getXP ()) - !x) - (!ownerLayerInterface#getWidth ()))) in ();
            let absXDistance : int ref = ref ((abs (!xDistance))) in ();
            let absYDistance : int ref = ref ((abs (!yDistance))) in ();
            if (!absYDistance <= 100) then begin
                if (!absXDistance < ((self#getFiringDistance ()) / 2)) then begin
                    directionCompositeInterface := (Obj.magic (self#getOwnerLayerInterface ()));
                    if ((!xDistance < 0) && ((Obj.repr (!directionCompositeInterface#getDirection ())) == (Obj.repr !directionFactory#rIGHT))) then begin
                        direction := !directionFactory#rIGHT
                    end else if ((!xDistance > 0) && ((Obj.repr (!directionCompositeInterface#getDirection ())) == (Obj.repr !directionFactory#lEFT))) then begin
                        direction := !directionFactory#lEFT
                    end
                end
            end
        done;
        (!direction :> Direction.direction)
        end [@@warning "-7"]
    

    method disable () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method onMovement : 'any1. 'any1 -> unit = fun (trackingEvent) ->
        let trackingEvent = Obj.repr trackingEvent in
        begin
        ignore (trackingList#clear ());
        ignore (trackingList#add ((Obj.magic trackingEvent)))
        end [@@warning "-7-20"]
    

    method getFiringDistance () : int =
        begin
        firingDistance
        end [@@warning "-7"]
    

    method setFiringDistance ((firingDistance_arg : int)) : unit =
        begin
        firingDistance <- firingDistance_arg
        end [@@warning "-7"]

    initializer
      begin
        ();
        firingDistance <- 0;
        isFollowLimitedByTerrain <- false;
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((TrackingEventHandler.getInstance ())#addListenerInterface (self));
        trackingList <- (new BasicArrayListD.basicArrayListD ())
      end
  end
let () = java_register_constructor "PacePatrolAI" (fun arguments -> Obj.repr (new pacePatrolAI (Obj.obj arguments)))


