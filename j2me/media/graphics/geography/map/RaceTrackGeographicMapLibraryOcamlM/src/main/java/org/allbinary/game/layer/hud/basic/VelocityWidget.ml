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
(* package org.allbinary.game.layer.hud.basic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureUtil *)
(* import org.allbinary.game.graphics.hud.BasicHud *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.logic.math.MathUtil *)
(* import org.allbinary.logic.math.PrimitiveLongSingleton *)
(* import org.allbinary.logic.math.PrimitiveLongUtil *)

class velocityWidget ((powerOfTenVelocity_arg : int), (location : int), (direction : int), (basicColor : BasicColor.basicColor)) =
  object (self)
    inherit BasicHud.basicHud (location, direction, 2, basicColor) as super
    val mutable kILOMETERS_PER_HOUR_STR : char array = (Obj.magic 0)
    method kILOMETERS_PER_HOUR_STR = kILOMETERS_PER_HOUR_STR
    method set_kILOMETERS_PER_HOUR_STR value' = kILOMETERS_PER_HOUR_STR <- value'
    val mutable totalChars : int = 0
    method totalChars = totalChars
    method set_totalChars value' = totalChars <- value'
    val mutable velocity : int = 0
    method velocity = velocity
    method set_velocity value' = velocity <- value'
    val mutable maxVelocity : int = 0
    method maxVelocity = maxVelocity
    method set_maxVelocity value' = maxVelocity <- value'
    val mutable string : char array = (Obj.magic 0)
    method string = string
    method set_string value' = string <- value'
    val mutable totalDigits : int = 0
    method totalDigits = totalDigits
    method set_totalDigits value' = totalDigits <- value'
    val mutable powerOfTenVelocity : int = 0
    method powerOfTenVelocity = powerOfTenVelocity
    method set_powerOfTenVelocity value' = powerOfTenVelocity <- value'
    val mutable primitiveLongUtil : PrimitiveLongUtil.primitiveLongUtil = (Obj.magic 0)
    method primitiveLongUtil = primitiveLongUtil
    method set_primitiveLongUtil value' = primitiveLongUtil <- value'
    val mutable offset : int = 0
    method offset = offset
    method set_offset value' = offset <- value'
    val mutable offset2 : int = 0
    method offset2 = offset2
    method set_offset2 value' = offset2 <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        updateMaxWidth <- (((Obj.magic !font)#getSize ()) * (((5 + ((MathUtil.getInstance ())#getTotalDigits (powerOfTenVelocity))) + 1)));
        ignore (super#updateMeasurement ((Obj.magic graphics)));
        offset <- ((MyFontProcessor.defaultStringWidth ((Obj.magic !font), (primitiveLongUtil#getMaxDigits ()))) + (MyFontProcessor.defaultStringWidth ((Obj.magic !font), 2)));
        offset2 <- ((offset - (MyFontProcessor.defaultStringWidth ((Obj.magic !font), totalDigits))) - (MyFontProcessor.defaultStringWidth ((Obj.magic !font), 2)))
        end [@@warning "-7-20"]
    

    method get () : int =
        begin
        velocity
        end [@@warning "-7"]
    

    method add ((value : int)) : unit =
        begin
        (self#set ((velocity + value)))
        end [@@warning "-7"]
    

    method set ((value : int)) : unit =
        begin
        let lastVelocity : int ref = ref (velocity) in ();
        velocity <- value;
        if (velocity > maxVelocity) then begin
            velocity <- 0
        end;
        if (!lastVelocity <> velocity) then begin
            string <- (primitiveLongUtil#getCharArray ((velocity * 18)));
            if ((Obj.magic (java_call_static "OpenGLFeatureUtil.getInstance" (Obj.repr ())))#isAnyThreed ()) then begin
                totalDigits <- ((primitiveLongUtil#getCurrentTotalDigits ()) + 1)
            end else begin
                totalDigits <- (primitiveLongUtil#getCurrentTotalDigits ())
            end;
            myFontProcessor <- updateMyFontProcessor
        end
        end [@@warning "-7"]
    

    method reduce ((value : int)) : unit =
        begin
        (self#set ((velocity - value)))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paintDXY ((Obj.magic graphics), string, 0, totalDigits, kILOMETERS_PER_HOUR_STR, 0, totalChars, offset2, offset))
        end [@@warning "-7-20"]

    initializer
      begin
        kILOMETERS_PER_HOUR_STR <- [| ' '; 'k'; 'm'; '/'; 'h' |];
        totalChars <- (Array.length kILOMETERS_PER_HOUR_STR);
        ();
        ();
        string <- (PrimitiveLongSingleton.getInstance ())#zERO;
        totalDigits <- 1;
        ();
        ();
        offset <- 0;
        offset2 <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        powerOfTenVelocity <- powerOfTenVelocity_arg;
        maxVelocity <- powerOfTenVelocity_arg;
        velocity <- 0;
        primitiveLongUtil <- (PrimitiveLongUtil.createPowerOfTen (powerOfTenVelocity_arg));
        updateMaxHeight <- 14
      end
  end
let () = java_register_constructor "VelocityWidget" (fun arguments -> Obj.repr (new velocityWidget (Obj.obj arguments)))


