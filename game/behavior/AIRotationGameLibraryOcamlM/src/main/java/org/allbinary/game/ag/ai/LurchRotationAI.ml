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
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.animation.RotationAnimationInterface *)
(* import org.allbinary.animation.RotationAnimationInterfaceCompositeInterface *)
(* import org.allbinary.game.ag.ai.tactical.LurchAI *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.math.AngleIncrementInfo *)

class lurchRotationAI ((ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit LurchAI.lurchAI (ownerLayerInterface, gameInput) as super
    val mutable rotationAnimationInterface : IndexedAnimation.indexedAnimation = (Obj.magic 0)
    method rotationAnimationInterface = rotationAnimationInterface
    method set_rotationAnimationInterface value' = rotationAnimationInterface <- value'
    
    

    method reverse () : unit =
        begin
        ignore (super#reverse ());
        (self#update ())
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        if (currentRelativeAngle == 0) then begin
            let rotationAnimationInterface_arg : RotationAnimationInterface.rotationAnimationInterface ref = ref (((Obj.magic rotationAnimationInterface) :> RotationAnimationInterface.rotationAnimationInterface)) in ();
            let angleIncrementInfo : AngleIncrementInfo.angleIncrementInfo ref = ref ((((!rotationAnimationInterface_arg#getAngleInfoP ())#getAngleIncrementInfo ()) :> AngleIncrementInfo.angleIncrementInfo)) in ();
            let rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface.rotationAnimationInterfaceCompositeInterface ref = ref (((Obj.magic (self#getOwnerLayerInterface ())) :> RotationAnimationInterfaceCompositeInterface.rotationAnimationInterfaceCompositeInterface)) in ();
            ignore (!rotationAnimationInterfaceCompositeInterface#setFrame ((!angleIncrementInfo#rIGHT_FRAME#intValue ())))
        end else if (currentRelativeAngle == 180) then begin
            let rotationAnimationInterface_arg : RotationAnimationInterface.rotationAnimationInterface ref = ref (((Obj.magic rotationAnimationInterface) :> RotationAnimationInterface.rotationAnimationInterface)) in ();
            let angleIncrementInfo : AngleIncrementInfo.angleIncrementInfo ref = ref ((((!rotationAnimationInterface_arg#getAngleInfoP ())#getAngleIncrementInfo ()) :> AngleIncrementInfo.angleIncrementInfo)) in ();
            let rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface.rotationAnimationInterfaceCompositeInterface ref = ref (((Obj.magic (self#getOwnerLayerInterface ())) :> RotationAnimationInterfaceCompositeInterface.rotationAnimationInterfaceCompositeInterface)) in ();
            ignore (!rotationAnimationInterfaceCompositeInterface#setFrame ((!angleIncrementInfo#lEFT_FRAME#intValue ())))
        end
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        let rotationAnimationInterfaceCompositeInterface : RotationAnimationInterfaceCompositeInterface.rotationAnimationInterfaceCompositeInterface ref = ref (((Obj.magic (self#getOwnerLayerInterface ())) :> RotationAnimationInterfaceCompositeInterface.rotationAnimationInterfaceCompositeInterface)) in ();
        rotationAnimationInterface <- (!rotationAnimationInterfaceCompositeInterface#getRotationAnimationInterface ());
        (self#update ())
      end
  end
let () = java_register_constructor "LurchRotationAI" (fun arguments -> Obj.repr (new lurchRotationAI (Obj.obj arguments)))


