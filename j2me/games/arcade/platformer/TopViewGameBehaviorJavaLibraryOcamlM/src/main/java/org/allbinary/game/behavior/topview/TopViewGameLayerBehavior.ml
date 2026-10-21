(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.behavior.topview *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.behavior.GameLayerBehavior *)
(* import org.allbinary.game.physics.acceleration.BasicAccelerationProperties *)
(* import org.allbinary.game.physics.velocity.VelocityProperties *)

class topViewGameLayerBehavior ((maxGravityActionIndex_arg : int)) =
  object (self)
    inherit GameLayerBehavior.gameLayerBehavior ()
    val mutable maxGravityActionIndex : int = 0
    method maxGravityActionIndex = maxGravityActionIndex
    method set_maxGravityActionIndex value' = maxGravityActionIndex <- value'
    val mutable isJumpAction : bool = false
    method isJumpAction = isJumpAction
    method set_isJumpAction value' = isJumpAction <- value'
    val mutable isJumpOver : bool = false
    method isJumpOver = isJumpOver
    method set_isJumpOver value' = isJumpOver <- value'
    val mutable isFallingWithoutJumpAttempt : bool = false
    method isFallingWithoutJumpAttempt = isFallingWithoutJumpAttempt
    method set_isFallingWithoutJumpAttempt value' = isFallingWithoutJumpAttempt <- value'
    val mutable gravityActionIndex : int = 0
    method gravityActionIndex = gravityActionIndex
    method set_gravityActionIndex value' = gravityActionIndex <- value'
    
    

    method gravity () : unit =
        begin
        if (gravityActionIndex = 0) then begin
            gravityActionIndex <- gravityActionIndex + 1;
            isFallingWithoutJumpAttempt <- true
        end
        end [@@warning "-7"]
    

    method land_ : 'any1. 'any1 -> unit = fun (velocityProperties) ->
        let velocityProperties = Obj.repr velocityProperties in
        begin
        ignore (((Obj.magic velocityProperties)#getVelocityYBasicDecimalP ())#setint (0));
        (self#landReset ())
        end [@@warning "-7-20"]
    

    method landReset () : unit =
        begin
        gravityActionIndex <- 0;
        isFallingWithoutJumpAttempt <- false;
        isJumpAction <- true;
        isJumpOver <- false
        end [@@warning "-7"]
    

    method up : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> unit = fun (velocityProperties, acceleration, jumpBehavior, (accelerationMultiplier : int)) ->
        let velocityProperties = Obj.repr velocityProperties in
        let acceleration = Obj.repr acceleration in
        let jumpBehavior = Obj.repr jumpBehavior in
        begin
        if (not isJumpOver) then begin
            if (gravityActionIndex < maxGravityActionIndex) then begin
                let acceleration2 : int ref = ref (((-((Obj.magic acceleration)#getForward ())) * accelerationMultiplier)) in ();
                ignore (((Obj.magic velocityProperties)#getVelocityYBasicDecimalP ())#addint (!acceleration2));
                ignore ((Obj.magic velocityProperties)#limitXYToForwardAndReverseMaxVelocity ());
                gravityActionIndex <- gravityActionIndex + 1
            end else begin
                ()
            end
        end else begin
            ()
        end;
        if isJumpAction then begin
            ignore ((Obj.magic jumpBehavior)#process ());
            isJumpAction <- false
        end
        end [@@warning "-7-20"]
    

    method inputFrames : 'any1. 'any1 -> unit = fun (velocityProperties) ->
        let velocityProperties = Obj.repr velocityProperties in
        begin
        if ((gravityActionIndex > 0) && ((((Obj.magic velocityProperties)#getVelocityYBasicDecimalP ())#getUnscaled ()) > 0)) then begin
            isJumpOver <- true
        end
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        isJumpAction <- true;
        isJumpOver <- false;
        isFallingWithoutJumpAttempt <- false;
        gravityActionIndex <- 0;
        ();
        maxGravityActionIndex <- maxGravityActionIndex_arg
      end
  end
let () = java_register_constructor "TopViewGameLayerBehavior" (fun arguments -> Obj.repr (new topViewGameLayerBehavior (Obj.obj arguments)))


