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
(* package org.allbinary.game.ag.layer.hud.basic.time *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.math.PrimitiveLongSingleton *)
(* import org.allbinary.logic.math.PrimitiveLongUtil *)
(* import org.allbinary.time.GameTickTimeDelayHelper *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)

class timer ((maxTime_arg : int)) =
  object
    val mutable startTime : int = 0
    method startTime = startTime
    method set_startTime value' = startTime <- value'
    val mutable hundredthTime : int = 0
    method hundredthTime = hundredthTime
    method set_hundredthTime value' = hundredthTime <- value'
    val mutable maxTime : int = 0
    method maxTime = maxTime
    method set_maxTime value' = maxTime <- value'
    val mutable modifier : int = 0
    method modifier = modifier
    method set_modifier value' = modifier <- value'
    val mutable hundrethsString : char array = (Obj.magic 0)
    method hundrethsString = hundrethsString
    method set_hundrethsString value' = hundrethsString <- value'
    val mutable totalDigits : int = 0
    method totalDigits = totalDigits
    method set_totalDigits value' = totalDigits <- value'
    val mutable primitiveLongUtil : PrimitiveLongUtil.primitiveLongUtil = (Obj.magic 0)
    method primitiveLongUtil = primitiveLongUtil
    method set_primitiveLongUtil value' = primitiveLongUtil <- value'
    val mutable mAX : char array = (Obj.magic 0)
    method mAX = mAX
    method set_mAX value' = mAX <- value'
    val mutable gameTickTimeDelayHelper : GameTickTimeDelayHelper.gameTickTimeDelayHelper = (Obj.magic 0)
    method gameTickTimeDelayHelper = gameTickTimeDelayHelper
    method set_gameTickTimeDelayHelper value' = gameTickTimeDelayHelper <- value'
    
    

    method start () : unit =
        begin
        hundredthTime <- 0;
        startTime <- gameTickTimeDelayHelper#startTime
        end
    

    method get () : int =
        begin
        hundredthTime
        end
    

    method update () : unit =
        begin
        let lastLowerTime : int ref = ref (hundredthTime) in ();
        let currentTime : int ref = ref (((((modifier + gameTickTimeDelayHelper#startTime)) - startTime))) in ();
        if (!currentTime < 0) then begin
            currentTime := 0
        end;
        hundredthTime <- (!currentTime / 100);
        if (hundredthTime >= maxTime) then begin
            if (startTime > 0) then begin
                hundrethsString <- mAX
            end
        end else if (!lastLowerTime <> hundredthTime) then begin
            hundrethsString <- (primitiveLongUtil#getCharArray (hundredthTime));
            totalDigits <- (primitiveLongUtil#getCurrentTotalDigits ())
        end
        end
    

    method reduce ((value : int)) : unit =
        begin
        modifier <- (modifier - value)
        end
    

    method add ((value : int)) : unit =
        begin
        modifier <- (modifier + value)
        end
    

    method getTimeChars () : char array =
        begin
        hundrethsString
        end
    

    method getCurrentTotalDigits () : int =
        begin
        totalDigits
        end

    initializer
      begin
        startTime <- (-1);
        hundredthTime <- 0;
        ();
        modifier <- 0;
        hundrethsString <- (PrimitiveLongSingleton.getInstance ())#zERO;
        totalDigits <- 1;
        ();
        mAX <- [| 'L'; 'O'; 'L' |];
        gameTickTimeDelayHelper <- ((GameTickTimeDelayHelperFactory.getInstance ()) :> GameTickTimeDelayHelper.gameTickTimeDelayHelper);
        ();
        primitiveLongUtil <- (PrimitiveLongUtil.createPowerOfTen (maxTime_arg));
        maxTime <- maxTime_arg
      end
  end
let () = java_register_constructor "Timer" (fun arguments -> Obj.repr (new timer (Obj.obj arguments)))


