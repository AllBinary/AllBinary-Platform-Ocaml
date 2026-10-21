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
(* package org.allbinary.android.input.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.time.TimeDelayHelper *)

class analogControllerHelper ((reduceTimeFactor_arg : int)) =
  object
    val mutable reduceTimeFactor : int = 0
    method reduceTimeFactor = reduceTimeFactor
    method set_reduceTimeFactor value' = reduceTimeFactor <- value'
    val mutable sCALE_VALUE : int = 0
    method sCALE_VALUE = sCALE_VALUE
    method set_sCALE_VALUE value' = sCALE_VALUE <- value'
    val mutable rightTimeElapsedHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method rightTimeElapsedHelper = rightTimeElapsedHelper
    method set_rightTimeElapsedHelper value' = rightTimeElapsedHelper <- value'
    val mutable leftTimeElapsedHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method leftTimeElapsedHelper = leftTimeElapsedHelper
    method set_leftTimeElapsedHelper value' = leftTimeElapsedHelper <- value'
    val mutable downTimeElapsedHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method downTimeElapsedHelper = downTimeElapsedHelper
    method set_downTimeElapsedHelper value' = downTimeElapsedHelper <- value'
    val mutable upTimeElapsedHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method upTimeElapsedHelper = upTimeElapsedHelper
    method set_upTimeElapsedHelper value' = upTimeElapsedHelper <- value'
    
    

    method right : 'any1. 'any1 * int -> unit = fun (collidableDestroyableDamageableLayer, (xAnalogValue : int)) ->
        let collidableDestroyableDamageableLayer = Obj.repr collidableDestroyableDamageableLayer in
        begin
        rightTimeElapsedHelper#set_delay (((((sCALE_VALUE - xAnalogValue)) asr reduceTimeFactor)));
        if (rightTimeElapsedHelper#isTimeTNT ()) then begin
            ignore ((Obj.magic collidableDestroyableDamageableLayer)#right ())
        end
        end [@@warning "-20"]
    

    method left : 'any1. 'any1 * int -> unit = fun (collidableDestroyableDamageableLayer, (xAnalogValue : int)) ->
        let collidableDestroyableDamageableLayer = Obj.repr collidableDestroyableDamageableLayer in
        begin
        leftTimeElapsedHelper#set_delay (((((sCALE_VALUE + xAnalogValue)) asr reduceTimeFactor)));
        if (leftTimeElapsedHelper#isTimeTNT ()) then begin
            ignore ((Obj.magic collidableDestroyableDamageableLayer)#left ())
        end
        end [@@warning "-20"]
    

    method up : 'any1. 'any1 * int -> unit = fun (collidableDestroyableDamageableLayer, (xAnalogValue : int)) ->
        let collidableDestroyableDamageableLayer = Obj.repr collidableDestroyableDamageableLayer in
        begin
        upTimeElapsedHelper#set_delay (((((sCALE_VALUE - xAnalogValue)) asr reduceTimeFactor)));
        if (upTimeElapsedHelper#isTimeTNT ()) then begin
            ignore ((Obj.magic collidableDestroyableDamageableLayer)#up ())
        end
        end [@@warning "-20"]
    

    method down : 'any1. 'any1 * int -> unit = fun (collidableDestroyableDamageableLayer, (xAnalogValue : int)) ->
        let collidableDestroyableDamageableLayer = Obj.repr collidableDestroyableDamageableLayer in
        begin
        downTimeElapsedHelper#set_delay (((((sCALE_VALUE + xAnalogValue)) asr reduceTimeFactor)));
        if (downTimeElapsedHelper#isTimeTNT ()) then begin
            ignore ((Obj.magic collidableDestroyableDamageableLayer)#down ())
        end
        end [@@warning "-20"]

    initializer
      begin
        ();
        sCALE_VALUE <- (AnalogControllerConfigurationFactory.getInstance ())#sCALE_VALUE;
        rightTimeElapsedHelper <- ((new TimeDelayHelper.timeDelayHelper (0)) :> TimeDelayHelper.timeDelayHelper);
        leftTimeElapsedHelper <- ((new TimeDelayHelper.timeDelayHelper (0)) :> TimeDelayHelper.timeDelayHelper);
        downTimeElapsedHelper <- ((new TimeDelayHelper.timeDelayHelper (0)) :> TimeDelayHelper.timeDelayHelper);
        upTimeElapsedHelper <- ((new TimeDelayHelper.timeDelayHelper (0)) :> TimeDelayHelper.timeDelayHelper);
        ();
        reduceTimeFactor <- reduceTimeFactor_arg
      end
  end
let () = java_register_constructor "AnalogControllerHelper" (fun arguments -> Obj.repr (new analogControllerHelper (Obj.obj arguments)))


