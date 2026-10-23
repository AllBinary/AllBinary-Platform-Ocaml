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
(* package org.allbinary.game.ag.ai *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.ai.ArtificialIntelligenceInterface *)
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.direction.DirectionFactory *)
(* import org.allbinary.direction.DirectionalCompositeInterface *)
(* import org.allbinary.direction.DirectionalInterface *)
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.game.combat.destroy.event.DestroyedEvent *)
(* import org.allbinary.game.combat.destroy.event.DestroyedEventHandler *)
(* import org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.game.physics.velocity.BasicVelocityProperties *)
(* import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface *)
(* import org.allbinary.game.tracking.TrackingEvent *)
(* import org.allbinary.game.tracking.TrackingEventHandler *)
(* import org.allbinary.game.tracking.TrackingEventListenerInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.math.MathUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.logic.util.visitor.Visitor *)
(* import org.allbinary.time.GameTickTimeDelayHelper *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class diveAndDirectionalTrackingAI ((ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (artificialIntelligenceInterface_arg : ArtificialIntelligenceInterface.artificialIntelligenceInterface), (gameInput : GameInput.gameInput), (visitor : Visitor.visitor)) =
  object (self)
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput) as super
    val mutable mathUtil : MathUtil.mathUtil = (Obj.magic 0)
    method mathUtil = mathUtil
    method set_mathUtil value' = mathUtil <- value'
    val mutable directionFactory : DirectionFactory.directionFactory = (Obj.magic 0)
    method directionFactory = directionFactory
    method set_directionFactory value' = directionFactory <- value'
    val mutable gameTickTimeDelayHelper : GameTickTimeDelayHelper.gameTickTimeDelayHelper = (Obj.magic 0)
    method gameTickTimeDelayHelper = gameTickTimeDelayHelper
    method set_gameTickTimeDelayHelper value' = gameTickTimeDelayHelper <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable directionalInterface : DirectionalInterface.directionalInterface = (Obj.magic 0)
    method directionalInterface = directionalInterface
    method set_directionalInterface value' = directionalInterface <- value'
    val mutable velocityInterface : BasicVelocityProperties.basicVelocityProperties = (Obj.magic 0)
    method velocityInterface = velocityInterface
    method set_velocityInterface value' = velocityInterface <- value'
    val mutable directionToKeyMap : int array = (Obj.magic 0)
    method directionToKeyMap = directionToKeyMap
    method set_directionToKeyMap value' = directionToKeyMap <- value'
    val mutable initialDropped : bool = false
    method initialDropped = initialDropped
    method set_initialDropped value' = initialDropped <- value'
    val mutable diveP : bool = false
    method diveP = diveP
    method set_diveP value' = diveP <- value'
    val mutable directionOfTarget : Direction.direction = (Obj.magic 0)
    method directionOfTarget = directionOfTarget
    method set_directionOfTarget value' = directionOfTarget <- value'
    val mutable mIN_DISTANCE : int = 0
    method mIN_DISTANCE = mIN_DISTANCE
    method set_mIN_DISTANCE value' = mIN_DISTANCE <- value'
    val mutable lastTrackingLayerInterface : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method lastTrackingLayerInterface = lastTrackingLayerInterface
    method set_lastTrackingLayerInterface value' = lastTrackingLayerInterface <- value'
    val mutable artificialIntelligenceInterface : ArtificialIntelligenceInterface.artificialIntelligenceInterface = (Obj.magic 0)
    method artificialIntelligenceInterface = artificialIntelligenceInterface
    method set_artificialIntelligenceInterface value' = artificialIntelligenceInterface <- value'
    val mutable aiVistor : Visitor.visitor = (Obj.magic 0)
    method aiVistor = aiVistor
    method set_aiVistor value' = aiVistor <- value'
    val mutable lastDirection : Direction.direction = (Obj.magic 0)
    method lastDirection = lastDirection
    method set_lastDirection value' = lastDirection <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        if (self#isBeyondTarget ()) then begin
            (self#init ());
            ignore (velocityInterface#zero ())
        end;
        if (not diveP) then begin
            (self#target ((Obj.magic allBinaryLayerManager)))
        end else begin
            (self#dive ());
            (self#attack ())
        end;
        ignore (list#clear ())
        end [@@warning "-7-20"]
    

    method init () : unit =
        begin
        diveP <- false;
        directionOfTarget <- (DirectionFactory.getInstance ())#nOT_BORDERED_WITH;
        ignore ((TrackingEventHandler.getInstance ())#addListenerInterface (self))
        end [@@warning "-7"]
    

    method target : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        try
        begin
        if ((list#size ()) = 0) then begin
            raise (Java_return (Obj.repr (())))
        end;
        let lastTrackingEvent : TrackingEvent.trackingEvent ref = ref (((Obj.magic (list#removeAt (0))) :> TrackingEvent.trackingEvent)) in ();
        lastTrackingLayerInterface <- (!lastTrackingEvent#getLayerInterface ());
        let layerInterface : AllBinaryLayer.allBinaryLayer ref = ref ((lastTrackingLayerInterface :> AllBinaryLayer.allBinaryLayer)) in ();
        let ownerLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        if ((Obj.repr (!layerInterface#getGroupInterface ())) == (Obj.repr (!ownerLayerInterface#getGroupInterface ()))) then begin
            raise (Java_return (Obj.repr (())))
        end;
        let x : int ref = ref ((lastTrackingLayerInterface#getXP ())) in ();
        let y : int ref = ref ((lastTrackingLayerInterface#getYP ())) in ();
        let yDistance : int ref = ref ((((!ownerLayerInterface#getYP ()) - !y) - (!ownerLayerInterface#getHeight ()))) in ();
        let xDistance : int ref = ref ((((!ownerLayerInterface#getXP ()) - !x) - (!ownerLayerInterface#getWidth ()))) in ();
        let directionFactory_arg : DirectionFactory.directionFactory ref = ref (((DirectionFactory.getInstance ()) :> DirectionFactory.directionFactory)) in ();
        if ((mathUtil#abs (!yDistance)) > (mathUtil#abs (!xDistance))) then begin
            if (!yDistance > mIN_DISTANCE) then begin
                directionOfTarget <- !directionFactory_arg#uP
            end else if (!yDistance < (-mIN_DISTANCE)) then begin
                directionOfTarget <- !directionFactory_arg#dOWN
            end
        end else begin
            if (!xDistance > mIN_DISTANCE) then begin
                directionOfTarget <- !directionFactory_arg#lEFT
            end else if (!xDistance < (-mIN_DISTANCE)) then begin
                directionOfTarget <- !directionFactory_arg#rIGHT
            end
        end;
        if ((not initialDropped) && ((Obj.repr directionOfTarget) != (Obj.repr !directionFactory_arg#nOT_BORDERED_WITH))) then begin
            (self#drop ())
        end;
        if initialDropped then begin
            if (((Obj.repr directionOfTarget) == (Obj.repr !directionFactory_arg#uP)) || ((Obj.repr directionOfTarget) == (Obj.repr !directionFactory_arg#dOWN))) then begin
                (self#verticalTargeting (!x))
            end else if (((Obj.repr directionOfTarget) == (Obj.repr !directionFactory_arg#lEFT)) || ((Obj.repr directionOfTarget) == (Obj.repr !directionFactory_arg#rIGHT))) then begin
                (self#horizontalTargeting (!y))
            end else begin
                ignore (artificialIntelligenceInterface#processAI ((Obj.magic allBinaryLayerManager)))
            end
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method verticalTargeting ((x : int)) : unit =
        begin
        let ownerLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        if ((!ownerLayerInterface#getXP ()) < x) then begin
            (self#moveRight ())
        end;
        if ((!ownerLayerInterface#getXP ()) > x) then begin
            (self#moveLeft ())
        end;
        if (((!ownerLayerInterface#getXP ()) > (x - 3)) && ((!ownerLayerInterface#getXP ()) < (x + 3))) then begin
            (self#setDive ())
        end
        end [@@warning "-7"]
    

    method horizontalTargeting ((y : int)) : unit =
        begin
        let ownerLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        if ((!ownerLayerInterface#getYP ()) < y) then begin
            (self#moveDown ())
        end;
        if ((!ownerLayerInterface#getYP ()) > y) then begin
            (self#moveUp ())
        end;
        if (((!ownerLayerInterface#getYP ()) > (y - 3)) && ((!ownerLayerInterface#getYP ()) < (y + 3))) then begin
            (self#setDive ())
        end
        end [@@warning "-7"]
    

    method setDive () : unit =
        begin
        diveP <- true;
        ignore (velocityInterface#zero ());
        ignore ((TrackingEventHandler.getInstance ())#removeListener (self))
        end [@@warning "-7"]
    

    method moveRight () : unit =
        begin
        (self#setLastDirection (directionFactory#rIGHT));
        ignore (directionalInterface#setFrameByDirection (lastDirection));
        ignore (aiVistor#visit (self))
        end [@@warning "-7"]
    

    method moveLeft () : unit =
        begin
        (self#setLastDirection (directionFactory#lEFT));
        ignore (directionalInterface#setFrameByDirection (lastDirection));
        ignore (aiVistor#visit (self))
        end [@@warning "-7"]
    

    method moveDown () : unit =
        begin
        (self#setLastDirection (directionFactory#dOWN));
        ignore (directionalInterface#setFrameByDirection (lastDirection));
        ignore (aiVistor#visit (self))
        end [@@warning "-7"]
    

    method moveUp () : unit =
        begin
        (self#setLastDirection (directionFactory#uP));
        ignore (directionalInterface#setFrameByDirection (lastDirection));
        ignore (aiVistor#visit (self))
        end [@@warning "-7"]
    

    method dive () : unit =
        begin
        ignore (directionalInterface#setFrameByDirection (directionOfTarget));
        ignore (aiVistor#visit (self))
        end [@@warning "-7"]
    

    method attack () : unit =
        begin
        ignore (super#processKeyAI ((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))))
        end [@@warning "-7"]
    

    method drop () : unit =
        begin
        if (timeDelayHelper#isTime (gameTickTimeDelayHelper#startTime)) then begin
            initialDropped <- true;
            ignore (aiVistor#visit (self))
        end
        end [@@warning "-7"]
    

    method isBeyondTarget () : bool =
        try
        begin
        if ((Obj.repr directionOfTarget) == (Obj.repr directionFactory#dOWN)) then begin
            if (((self#getOwnerLayerInterface ())#getYP ()) > ((lastTrackingLayerInterface#getYP ()) + mIN_DISTANCE)) then begin
                raise (Java_return (Obj.repr (true)))
            end else begin
                raise (Java_return (Obj.repr (false)))
            end
        end else if ((Obj.repr directionOfTarget) == (Obj.repr directionFactory#uP)) then begin
            if (((self#getOwnerLayerInterface ())#getYP ()) < ((lastTrackingLayerInterface#getYP ()) + mIN_DISTANCE)) then begin
                raise (Java_return (Obj.repr (true)))
            end else begin
                raise (Java_return (Obj.repr (false)))
            end
        end else if ((Obj.repr directionOfTarget) == (Obj.repr directionFactory#rIGHT)) then begin
            if (((self#getOwnerLayerInterface ())#getXP ()) > ((lastTrackingLayerInterface#getXP ()) + mIN_DISTANCE)) then begin
                raise (Java_return (Obj.repr (true)))
            end else begin
                raise (Java_return (Obj.repr (false)))
            end
        end else if ((Obj.repr directionOfTarget) == (Obj.repr directionFactory#lEFT)) then begin
            if (((self#getOwnerLayerInterface ())#getXP ()) < ((lastTrackingLayerInterface#getXP ()) + mIN_DISTANCE)) then begin
                raise (Java_return (Obj.repr (true)))
            end else begin
                raise (Java_return (Obj.repr (false)))
            end
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method onMovement : 'any1. 'any1 -> unit = fun (trackingEvent) ->
        let trackingEvent = Obj.repr trackingEvent in
        begin
        ignore (list#add ((Obj.magic trackingEvent)))
        end [@@warning "-7-20"]
    

    method onDestroyed : 'any1. 'any1 -> unit = fun (destroyedEvent) ->
        let destroyedEvent = Obj.repr destroyedEvent in
        begin
        if ((Obj.repr (self#getOwnerLayerInterface ())) == (Obj.repr ((Obj.magic destroyedEvent)#getLayerInterface ()))) then begin
            ignore ((TrackingEventHandler.getInstance ())#removeListener (self));
            ignore ((DestroyedEventHandler.getInstance ())#removeListener (self))
        end
        end [@@warning "-7-20"]
    

    method setLastDirection : 'any1. 'any1 -> unit = fun (lastDirection_arg) ->
        let lastDirection_arg = Obj.repr lastDirection_arg in
        begin
        lastDirection <- (Obj.magic lastDirection_arg);
        let value : int ref = ref (((self#getLastDirection ())#getValue ())) in ();
        if (!value < 4) then begin
            ignore (super#setLastKey (directionToKeyMap.(!value)))
        end
        end [@@warning "-7-20"]
    

    method setLastKey ((lastKey : int)) : unit =
        begin
        ignore (super#setLastKey (lastKey));
        if ((Obj.repr (self#getLastKey ())) == (Obj.repr (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ()))))) then begin
            lastDirection <- (DirectionFactory.getInstance ())#lEFT
        end else if ((Obj.repr (self#getLastKey ())) == (Obj.repr (Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ()))))) then begin
            lastDirection <- (DirectionFactory.getInstance ())#dOWN
        end else if ((Obj.repr (self#getLastKey ())) == (Obj.repr (Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ()))))) then begin
            lastDirection <- (DirectionFactory.getInstance ())#uP
        end else if ((Obj.repr (self#getLastKey ())) == (Obj.repr (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ()))))) then begin
            lastDirection <- (DirectionFactory.getInstance ())#rIGHT
        end
        end [@@warning "-7"]
    

    method getLastDirection () : Direction.direction =
        begin
        (lastDirection :> Direction.direction)
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((super#toString ())));
        ignore (!stringBuffer#append (" LastDirection: "));
        ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString ((self#getLastDirection ())))));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        mathUtil <- ((MathUtil.getInstance ()) :> MathUtil.mathUtil);
        directionFactory <- ((DirectionFactory.getInstance ()) :> DirectionFactory.directionFactory);
        gameTickTimeDelayHelper <- ((GameTickTimeDelayHelperFactory.getInstance ()) :> GameTickTimeDelayHelper.gameTickTimeDelayHelper);
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (500)) :> TimeDelayHelper.timeDelayHelper);
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ();
        directionToKeyMap <- [| (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ()))); (Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ()))); (Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ()))); (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ()))) |];
        initialDropped <- false;
        diveP <- false;
        directionOfTarget <- ((Direction.getInstance (0)) :> Direction.direction);
        mIN_DISTANCE <- 40;
        lastTrackingLayerInterface <- ((AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()) :> AllBinaryLayer.allBinaryLayer);
        ();
        ();
        lastDirection <- ((DirectionFactory.getInstance ())#nO_DIRECTION :> Direction.direction);
        ();
        (* super(...) is the inherit clause *) ();
        aiVistor <- visitor;
        artificialIntelligenceInterface <- artificialIntelligenceInterface_arg;
        let directionalCompositeInterface : DirectionalCompositeInterface.directionalCompositeInterface ref = ref (((Obj.magic (self#getOwnerLayerInterface ())) :> DirectionalCompositeInterface.directionalCompositeInterface)) in ();
        directionalInterface <- (!directionalCompositeInterface#getDirectionalInterface ());
        let velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface.velocityInterfaceCompositeInterface ref = ref (((Obj.magic (self#getOwnerLayerInterface ())) :> VelocityInterfaceCompositeInterface.velocityInterfaceCompositeInterface)) in ();
        velocityInterface <- (!velocityInterfaceCompositeInterface#getVelocityProperties ());
        ignore ((DestroyedEventHandler.getInstance ())#addListenerInterface (self));
        (self#init ())
      end
  end
let () = java_register_constructor "DiveAndDirectionalTrackingAI" (fun arguments -> Obj.repr (new diveAndDirectionalTrackingAI (Obj.obj arguments)))


