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
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.game.physics.velocity.BasicVelocityProperties *)
(* import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.math.MathUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.util.ABHashtable *)

let mAX_DISTANCE : int = ((SmallIntegerSingletonFactory.getInstance ())#getAt (2))
let get_mAX_DISTANCE () = mAX_DISTANCE
let () = java_register_static "BasePatrolAI.get_mAX_DISTANCE" (fun _ -> Obj.repr (get_mAX_DISTANCE ()))
let dIRECTION_ARRAY : int = ((SmallIntegerSingletonFactory.getInstance ())#getAt (3))
let get_dIRECTION_ARRAY () = dIRECTION_ARRAY
let () = java_register_static "BasePatrolAI.get_dIRECTION_ARRAY" (fun _ -> Obj.repr (get_dIRECTION_ARRAY ()))
let fIRING_DISTANCE : int = ((SmallIntegerSingletonFactory.getInstance ())#getAt (4))
let get_fIRING_DISTANCE () = fIRING_DISTANCE
let () = java_register_static "BasePatrolAI.get_fIRING_DISTANCE" (fun _ -> Obj.repr (get_fIRING_DISTANCE ()))
let sPEED : int ref = ref (((SmallIntegerSingletonFactory.getInstance ())#getAt (5)))
let get_sPEED () = !sPEED
let set_sPEED value' = sPEED := value'
let () = java_register_static "BasePatrolAI.get_sPEED" (fun _ -> Obj.repr (get_sPEED ()))
class basePatrolAI (hashtable, (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput)
    val mutable maxDistance : int = (Obj.magic 0)
    method maxDistance = maxDistance
    method set_maxDistance value' = maxDistance <- value'
    val mutable currentDistance : int = 0
    method currentDistance = currentDistance
    method set_currentDistance value' = currentDistance <- value'
    val mutable xTotalDistance : int = 0
    method xTotalDistance = xTotalDistance
    method set_xTotalDistance value' = xTotalDistance <- value'
    val mutable lastKeyDirection : int = 0
    method lastKeyDirection = lastKeyDirection
    method set_lastKeyDirection value' = lastKeyDirection <- value'
    val mutable keyDirection : int = 0
    method keyDirection = keyDirection
    method set_keyDirection value' = keyDirection <- value'
    
    

    method update () : unit =
        begin
        (self#updateTotalDistance ());
        (self#changeDirectionIfReachedPacingAreaMax ())
        end [@@warning "-7"]
    

    method updateTotalDistance () : unit =
        begin
        let velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface.velocityInterfaceCompositeInterface ref = ref (((Obj.magic (self#getOwnerLayerInterface ())) :> VelocityInterfaceCompositeInterface.velocityInterfaceCompositeInterface)) in ();
        let velocityProperties : BasicVelocityProperties.basicVelocityProperties ref = ref (((!velocityInterfaceCompositeInterface#getVelocityProperties ()) :> BasicVelocityProperties.basicVelocityProperties)) in ();
        xTotalDistance <- (xTotalDistance + ((!velocityProperties#getVelocityXBasicDecimalP ())#getScaled ()))
        end [@@warning "-7"]
    

    method changeDirectionIfReachedPacingAreaMax () : unit =
        begin
        let mathUtil : MathUtil.mathUtil ref = ref (((MathUtil.getInstance ()) :> MathUtil.mathUtil)) in ();
        let totalDistance : int ref = ref ((!mathUtil#abs (xTotalDistance))) in ();
        if (!totalDistance > currentDistance) then begin
            (self#nextDirection ())
        end
        end [@@warning "-7"]
    

    method nextDirection () : unit =
        begin
        if (lastKeyDirection = (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))) then begin
            keyDirection <- (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())));
            lastKeyDirection <- keyDirection;
            xTotalDistance <- 0
        end else if (lastKeyDirection = (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))) then begin
            keyDirection <- (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())));
            lastKeyDirection <- keyDirection;
            xTotalDistance <- 0
        end
        end [@@warning "-7"]
    

    method disable () : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        xTotalDistance <- 0;
        lastKeyDirection <- (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())));
        keyDirection <- (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())));
        ();
        (* super(...) is the inherit clause *) ();
        maxDistance <- (Obj.magic (hashtable#get (mAX_DISTANCE)));
        currentDistance <- maxDistance
      end
  end
let () = java_register_constructor "BasePatrolAI" (fun arguments -> Obj.repr (new basePatrolAI (Obj.obj arguments)))


