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
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.math.BasicDecimal *)

class upDownVectorAI ((ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput)
    val mutable velocityInterface : BasicVelocityProperties.basicVelocityProperties = (Obj.magic 0)
    method velocityInterface = velocityInterface
    method set_velocityInterface value' = velocityInterface <- value'
    val mutable index : int = 0
    method index = index
    method set_index value' = index <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        let y : int ref = ref ((((self#getOwnerLayerInterface ())#getHeight ()) * 270)) in ();
        if (index < 5) then begin
            let basicDecimal : BasicDecimal.basicDecimal ref = ref (((velocityInterface#getVelocityYBasicDecimalP ()) :> BasicDecimal.basicDecimal)) in ();
            ignore (!basicDecimal#setint (0));
            ignore (!basicDecimal#addint (!y));
            index <- index + 1
        end else if (index < 10) then begin
            let basicDecimal : BasicDecimal.basicDecimal ref = ref (((velocityInterface#getVelocityYBasicDecimalP ()) :> BasicDecimal.basicDecimal)) in ();
            ignore (!basicDecimal#setint (0));
            ignore (!basicDecimal#subtractint (!y));
            index <- index + 1
        end else begin
            index <- 0;
            (self#processAI ((Obj.magic allBinaryLayerManager)))
        end
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        index <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        let velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface.velocityInterfaceCompositeInterface ref = ref (((Obj.magic (self#getOwnerLayerInterface ())) :> VelocityInterfaceCompositeInterface.velocityInterfaceCompositeInterface)) in ();
        velocityInterface <- (!velocityInterfaceCompositeInterface#getVelocityProperties ());
        ignore ((velocityInterface#getVelocityYBasicDecimalP ())#setint (0))
      end
  end
let () = java_register_constructor "UpDownVectorAI" (fun arguments -> Obj.repr (new upDownVectorAI (Obj.obj arguments)))


