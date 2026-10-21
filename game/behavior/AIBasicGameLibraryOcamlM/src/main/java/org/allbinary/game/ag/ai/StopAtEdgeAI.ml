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
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.game.physics.velocity.BasicVelocityProperties *)
(* import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class stopAtEdgeAI ((ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput)
    
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        let ownerLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        let velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface.velocityInterfaceCompositeInterface ref = ref ((((Obj.magic !ownerLayerInterface)) :> VelocityInterfaceCompositeInterface.velocityInterfaceCompositeInterface)) in ();
        let velocityProperties : BasicVelocityProperties.basicVelocityProperties ref = ref (((!velocityInterfaceCompositeInterface#getVelocityProperties ()) :> BasicVelocityProperties.basicVelocityProperties)) in ();
        let x : int ref = ref ((!ownerLayerInterface#getXP ())) in ();
        let y : int ref = ref ((!ownerLayerInterface#getYP ())) in ();
        let x2 : int ref = ref ((!ownerLayerInterface#getX2 ())) in ();
        let y2 : int ref = ref ((!ownerLayerInterface#getY2 ())) in ();
        let width : int ref = ref ((!ownerLayerInterface#getWidth ())) in ();
        let height : int ref = ref ((!ownerLayerInterface#getHeight ())) in ();
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        if ((!x2 + ((!velocityProperties#getVelocityXBasicDecimalP ())#getScaled ())) > (!displayInfo#getLastWidth ())) then begin
            ignore (!ownerLayerInterface#setPosition (((!displayInfo#getLastWidth ()) - !width), !y, (!ownerLayerInterface#getZP ())));
            ignore ((!velocityProperties#getVelocityYBasicDecimalP ())#setint (0))
        end;
        if ((!y2 + ((!velocityProperties#getVelocityYBasicDecimalP ())#getScaled ())) > (!displayInfo#getLastHeight ())) then begin
            ignore (!ownerLayerInterface#setPosition (!x, ((!displayInfo#getLastHeight ()) - !height), (!ownerLayerInterface#getZP ())));
            ignore ((!velocityProperties#getVelocityXBasicDecimalP ())#setint (0))
        end;
        if ((!x + ((!velocityProperties#getVelocityXBasicDecimalP ())#getScaled ())) < 0) then begin
            ignore (!ownerLayerInterface#setPosition (0, !y, (!ownerLayerInterface#getZP ())));
            ignore ((!velocityProperties#getVelocityYBasicDecimalP ())#setint (0))
        end;
        if ((!y + ((!velocityProperties#getVelocityYBasicDecimalP ())#getScaled ())) < 0) then begin
            ignore (!ownerLayerInterface#setPosition (!x, 0, (!ownerLayerInterface#getZP ())));
            ignore ((!velocityProperties#getVelocityXBasicDecimalP ())#setint (0))
        end
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "StopAtEdgeAI" (fun arguments -> Obj.repr (new stopAtEdgeAI (Obj.obj arguments)))


