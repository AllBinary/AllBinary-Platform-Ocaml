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
(* import org.allbinary.ai.ArtificialIntelligence *)
(* import org.allbinary.ai.ArtificialIntelligenceTransitionInterface *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.animation.RotationAnimationInterface *)
(* import org.allbinary.animation.RotationAnimationInterfaceCompositeInterface *)
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.game.physics.velocity.BasicVelocityProperties *)
(* import org.allbinary.game.physics.velocity.VelocityInterface *)
(* import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.math.AngleIncrementInfo *)
(* import org.allbinary.util.CircularIndexUtil *)

class horizontaRotationManeuverAI ((ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput) as super
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    val mutable currentSpeedDivisor : int = 0
    method currentSpeedDivisor = currentSpeedDivisor
    method set_currentSpeedDivisor value' = currentSpeedDivisor <- value'
    val mutable rotationAnimationInterface : IndexedAnimation.indexedAnimation = (Obj.magic 0)
    method rotationAnimationInterface = rotationAnimationInterface
    method set_rotationAnimationInterface value' = rotationAnimationInterface <- value'
    val mutable baseVelocityInterface : BasicVelocityProperties.basicVelocityProperties = (Obj.magic 0)
    method baseVelocityInterface = baseVelocityInterface
    method set_baseVelocityInterface value' = baseVelocityInterface <- value'
    val mutable velocityInterface : VelocityInterface.velocityInterface = (Obj.magic 0)
    method velocityInterface = velocityInterface
    method set_velocityInterface value' = velocityInterface <- value'
    
    

    method transition () : unit =
        begin
        let rotationAnimationInterface_arg : RotationAnimationInterface.rotationAnimationInterface ref = ref (((Obj.magic rotationAnimationInterface) :> RotationAnimationInterface.rotationAnimationInterface)) in ();
        let angleIncrementInfo : AngleIncrementInfo.angleIncrementInfo ref = ref ((((!rotationAnimationInterface_arg#getAngleInfoP ())#getAngleIncrementInfo ()) :> AngleIncrementInfo.angleIncrementInfo)) in ();
        let rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface.rotationAnimationInterfaceCompositeInterface ref = ref (((Obj.magic (self#getOwnerLayerInterface ())) :> RotationAnimationInterfaceCompositeInterface.rotationAnimationInterfaceCompositeInterface)) in ();
        ignore (!rotationAnimationInterfaceCompositeInterface#setFrame ((!angleIncrementInfo#rIGHT_FRAME#intValue ())));
        let allbinaryLayer : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        ignore (!allbinaryLayer#setPosition ((!allbinaryLayer#getXP ()), 1, (!allbinaryLayer#getZP ())))
        end [@@warning "-7"]
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        let rotationAnimationInterface_arg : RotationAnimationInterface.rotationAnimationInterface ref = ref ((((Obj.magic rotationAnimationInterface)) :> RotationAnimationInterface.rotationAnimationInterface)) in ();
        let angleIncrementInfo : AngleIncrementInfo.angleIncrementInfo ref = ref ((((!rotationAnimationInterface_arg#getAngleInfoP ())#getAngleIncrementInfo ()) :> AngleIncrementInfo.angleIncrementInfo)) in ();
        let frame : int ref = ref ((rotationAnimationInterface#getFrame ())) in ();
        let ownerLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        if ((((!ownerLayerInterface#getXP ()) - (!ownerLayerInterface#getWidth ())) <= 0) && (!frame = (!angleIncrementInfo#lEFT_FRAME#intValue ()))) then begin
            (self#reverse ());
            (self#drop ())
        end;
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        if ((((!ownerLayerInterface#getX2 ()) + (!ownerLayerInterface#getWidth ())) > (!displayInfo#getLastWidth ())) && (!frame = (!angleIncrementInfo#rIGHT_FRAME#intValue ()))) then begin
            (self#reverse ());
            (self#accelerate ());
            (self#drop ())
        end;
        let index : int ref = ref ((circularIndexUtil#getIndex ())) in ();
        if (((!index mod currentSpeedDivisor) = 0) && ((!index mod 2) = 0)) then begin
            ignore (super#processKeyAI ((Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))));
            ignore (velocityInterface#limitMaxXYVelocity (((velocityInterface#getMaxForwardVelocity ()) / currentSpeedDivisor)))
        end;
        ignore (circularIndexUtil#next ());
        if (!frame = (!angleIncrementInfo#lEFT_FRAME#intValue ())) then begin
            ignore (super#processKeyAI ((Obj.magic (java_call_static "Canvas.get_kEY_NUM0" (Obj.repr ())))))
        end else if (!frame = (!angleIncrementInfo#rIGHT_FRAME#intValue ())) then begin
            ignore (super#processKeyAI ((Obj.magic (java_call_static "Canvas.get_kEY_POUND" (Obj.repr ())))))
        end
        end [@@warning "-7-20"]
    

    method reverse () : unit =
        begin
        let rotationAnimationInterface_arg : RotationAnimationInterface.rotationAnimationInterface ref = ref (((Obj.magic rotationAnimationInterface) :> RotationAnimationInterface.rotationAnimationInterface)) in ();
        let angleIncrementInfo : AngleIncrementInfo.angleIncrementInfo ref = ref ((((!rotationAnimationInterface_arg#getAngleInfoP ())#getAngleIncrementInfo ()) :> AngleIncrementInfo.angleIncrementInfo)) in ();
        let frame : int ref = ref ((rotationAnimationInterface#getFrame ())) in ();
        if (!frame = (!angleIncrementInfo#lEFT_FRAME#intValue ())) then begin
            let rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface.rotationAnimationInterfaceCompositeInterface ref = ref (((Obj.magic (self#getOwnerLayerInterface ())) :> RotationAnimationInterfaceCompositeInterface.rotationAnimationInterfaceCompositeInterface)) in ();
            ignore (!rotationAnimationInterfaceCompositeInterface#setFrame ((!angleIncrementInfo#rIGHT_FRAME#intValue ())));
            ignore (baseVelocityInterface#zero ())
        end else if (!frame = (!angleIncrementInfo#rIGHT_FRAME#intValue ())) then begin
            let rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface.rotationAnimationInterfaceCompositeInterface ref = ref (((Obj.magic (self#getOwnerLayerInterface ())) :> RotationAnimationInterfaceCompositeInterface.rotationAnimationInterfaceCompositeInterface)) in ();
            ignore (!rotationAnimationInterfaceCompositeInterface#setFrame ((!angleIncrementInfo#lEFT_FRAME#intValue ())));
            ignore (baseVelocityInterface#zero ())
        end
        end [@@warning "-7"]
    

    method accelerate () : unit =
        begin
        if (currentSpeedDivisor > 1) then begin
            currentSpeedDivisor <- currentSpeedDivisor - 1
        end
        end [@@warning "-7"]
    

    method drop () : unit =
        begin
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        let ownerLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        let y : int ref = ref ((!ownerLayerInterface#getYP ())) in ();
        if (((!ownerLayerInterface#getY2 ()) + (!ownerLayerInterface#getHeight ())) > (!displayInfo#getLastHeight ())) then begin
            y := 0
        end else begin
            y := (!y + ((!ownerLayerInterface#getHeight ()) + 1))
        end;
        ignore (!ownerLayerInterface#setPosition ((!ownerLayerInterface#getXP ()), !y, (!ownerLayerInterface#getZP ())))
        end [@@warning "-7"]
    

    method getId () : int =
        begin
        (ArtificialIntelligence.get_aI_ID ())
        end [@@warning "-7"]

    initializer
      begin
        circularIndexUtil <- ((CircularIndexUtil.createInstanceAt (10, 2147483647)) :> CircularIndexUtil.circularIndexUtil);
        currentSpeedDivisor <- 5;
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        let rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface.rotationAnimationInterfaceCompositeInterface ref = ref (((Obj.magic (self#getOwnerLayerInterface ())) :> RotationAnimationInterfaceCompositeInterface.rotationAnimationInterfaceCompositeInterface)) in ();
        rotationAnimationInterface <- (!rotationAnimationInterfaceCompositeInterface#getRotationAnimationInterface ());
        let velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface.velocityInterfaceCompositeInterface ref = ref (((Obj.magic (self#getOwnerLayerInterface ())) :> VelocityInterfaceCompositeInterface.velocityInterfaceCompositeInterface)) in ();
        baseVelocityInterface <- (!velocityInterfaceCompositeInterface#getVelocityProperties ());
        velocityInterface <- (Obj.magic baseVelocityInterface);
        let rotationAnimationInterface_arg : RotationAnimationInterface.rotationAnimationInterface ref = ref (((Obj.magic rotationAnimationInterface) :> RotationAnimationInterface.rotationAnimationInterface)) in ();
        let angleIncrementInfo : AngleIncrementInfo.angleIncrementInfo ref = ref ((((!rotationAnimationInterface_arg#getAngleInfoP ())#getAngleIncrementInfo ()) :> AngleIncrementInfo.angleIncrementInfo)) in ();
        ignore (!rotationAnimationInterfaceCompositeInterface#setFrame ((!angleIncrementInfo#rIGHT_FRAME#intValue ())))
      end
  end
let () = java_register_constructor "HorizontaRotationManeuverAI" (fun arguments -> Obj.repr (new horizontaRotationManeuverAI (Obj.obj arguments)))


