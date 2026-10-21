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
(* import org.allbinary.bounds.BoundsVisitorInterface *)
(* import org.allbinary.game.physics.velocity.VelocityInterface *)
(* import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface *)
(* import org.allbinary.layer.LayerInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class reverseVelocityBoundsVisitor ((layerInterface_arg : LayerInterface.layerInterface)) =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable velocityInterface : VelocityInterface.velocityInterface = (Obj.magic 0)
    method velocityInterface = velocityInterface
    method set_velocityInterface value' = velocityInterface <- value'
    val mutable layerInterface : LayerInterface.layerInterface = (Obj.magic 0)
    method layerInterface = layerInterface
    method set_layerInterface value' = layerInterface <- value'
    
    

    method getX () : int =
        begin
        (layerInterface#getXP ())
        end
    

    method getY () : int =
        begin
        (layerInterface#getYP ())
        end
    

    method minX () : unit =
        begin
        if (((velocityInterface#getVelocityXBasicDecimalP ())#getUnscaled ()) < 0) then begin
            ignore ((velocityInterface#getVelocityXBasicDecimalP ())#multiplyint ((-1)))
        end
        end
    

    method maxX () : unit =
        begin
        if (((velocityInterface#getVelocityXBasicDecimalP ())#getUnscaled ()) > 0) then begin
            ignore ((velocityInterface#getVelocityXBasicDecimalP ())#multiplyint ((-1)))
        end
        end
    

    method minY () : unit =
        begin
        if (((velocityInterface#getVelocityYBasicDecimalP ())#getUnscaled ()) < 0) then begin
            ignore ((velocityInterface#getVelocityYBasicDecimalP ())#multiplyint ((-1)))
        end
        end
    

    method maxY () : unit =
        begin
        if (((velocityInterface#getVelocityYBasicDecimalP ())#getUnscaled ()) > 0) then begin
            ignore ((velocityInterface#getVelocityYBasicDecimalP ())#multiplyint ((-1)))
        end
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        layerInterface <- layerInterface_arg;
        let velocityInterfaceCompositeInterface : VelocityInterfaceCompositeInterface.velocityInterfaceCompositeInterface ref = ref (((Obj.magic layerInterface_arg) :> VelocityInterfaceCompositeInterface.velocityInterfaceCompositeInterface)) in ();
        velocityInterface <- (Obj.magic (!velocityInterfaceCompositeInterface#getVelocityProperties ()))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ReverseVelocityBoundsVisitor" (fun arguments -> Obj.repr (new reverseVelocityBoundsVisitor (Obj.obj arguments)))


