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
(* package org.allbinary.physics.movement *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.AllBinaryGameLayer *)
(* import org.allbinary.game.physics.velocity.BasicVelocityProperties *)
(* import org.allbinary.logic.math.BasicDecimal *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)

class delayedConstantVelocityMovement ((basicDecimal : BasicDecimal.basicDecimal), (velocityProperties : BasicVelocityProperties.basicVelocityProperties)) =
  object
    inherit BasicConstantVelocityMovement.basicConstantVelocityMovement (basicDecimal, velocityProperties) as super
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    
    

    method init : 'any1. 'any1 * int * int -> unit = fun (_speedBasicDecimal, (_angle : int), (_otherAngle : int)) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method process : 'any1. 'any1 -> unit = fun (layer) ->
        let layer = Obj.repr layer in
        begin
        if (timeDelayHelper#isTime ((GameTickTimeDelayHelperFactory.getInstance ())#startTime)) then begin
            ignore (super#process ((Obj.magic layer)))
        end
        end [@@warning "-7-20"]

    initializer
      begin
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (60)) :> TimeDelayHelper.timeDelayHelper);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "DelayedConstantVelocityMovement" (fun arguments -> Obj.repr (new delayedConstantVelocityMovement (Obj.obj arguments)))


