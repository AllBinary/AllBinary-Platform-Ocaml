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
(* package org.allbinary.game.ag.layer.hud.basic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.graphics.hud.BasicHud *)
(* import org.allbinary.game.graphics.hud.BasicHudFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.paint.PaintableInterface *)
(* import org.allbinary.logic.math.PrimitiveLongSingleton *)
(* import org.allbinary.logic.math.PrimitiveLongUtil *)

class numberStringHud ((prependString_arg : string), (max_arg : int), (location : int), (direction : int), (bufferZone : int), (basicColor : BasicColor.basicColor)) =
  object (self)
    inherit BasicHud.basicHud (location, direction, bufferZone, basicColor) as super
    val mutable primitiveLongUtil : PrimitiveLongUtil.primitiveLongUtil = (Obj.magic 0)
    method primitiveLongUtil = primitiveLongUtil
    method set_primitiveLongUtil value' = primitiveLongUtil <- value'
    val mutable prependString : string = ""
    method prependString = prependString
    method set_prependString value' = prependString <- value'
    val mutable pREPEND_STRING : char array = (Obj.magic 0)
    method pREPEND_STRING = pREPEND_STRING
    method set_pREPEND_STRING value' = pREPEND_STRING <- value'
    val mutable value : int = 0
    method value = value
    method set_value value' = value <- value'
    val mutable max : int = 0
    method max = max
    method set_max value' = max <- value'
    val mutable offset : int = 0
    method offset = offset
    method set_offset value' = offset <- value'
    val mutable valueString : char array = (Obj.magic 0)
    method valueString = valueString
    method set_valueString value' = valueString <- value'
    val mutable valueTotalDigits : int = 0
    method valueTotalDigits = valueTotalDigits
    method set_valueTotalDigits value' = valueTotalDigits <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        offset <- (((Obj.magic !font)#stringWidth (prependString)) + (MyFontProcessor.defaultCharWidth ((Obj.magic !font))));
        ignore (super#updateMeasurement ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method get () : int =
        begin
        value
        end [@@warning "-7"]
    

    method add ((value_arg : int)) : unit =
        begin
        (self#set ((value + value_arg)))
        end [@@warning "-7"]
    

    method set ((value_arg : int)) : unit =
        begin
        value <- value_arg;
        if (value > max) then begin
            value <- 0
        end;
        valueString <- (primitiveLongUtil#getCharArray (value));
        valueTotalDigits <- (primitiveLongUtil#getCurrentTotalDigits ())
        end [@@warning "-7"]
    

    method reduce ((value_arg : int)) : unit =
        begin
        (self#set ((value - value_arg)))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paintDX ((Obj.magic graphics), pREPEND_STRING, 0, (Array.length pREPEND_STRING), valueString, 0, valueTotalDigits, offset))
        end [@@warning "-7-20"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        let charArray : char array ref = ref (pREPEND_STRING) in ();
        let len : int ref = ref ((Array.length pREPEND_STRING)) in ();
        let charArray2 : char array ref = ref (valueString) in ();
        let len2 : int ref = ref (valueTotalDigits) in ();
        ignore (basicSetColorUtil#setBasicColorP ((Obj.magic graphics), (self#getBasicColorP ())));
        ignore ((Obj.magic graphics)#drawChars (!charArray, 0, !len, x, y, 0));
        ignore ((Obj.magic graphics)#drawChars (!charArray2, 0, !len2, (x - offset), y, 0))
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        offset <- 0;
        ();
        valueTotalDigits <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        prependString <- prependString_arg;
        pREPEND_STRING <- (Array.init (String.length prependString_arg) (String.get prependString_arg));
        valueString <- (PrimitiveLongSingleton.getInstance ())#nUMBER_CHAR_ARRAYS.(0);
        primitiveLongUtil <- (PrimitiveLongUtil.createPowerOfTen ((max_arg + 1)));
        max <- max_arg;
        value <- 0;
        if (direction = 0) then begin
            raise (Failure ((BasicHudFactory.getInstance ())#dIRECTION_EXCEPTION))
        end
      end
  end
let () = java_register_constructor "NumberStringHud" (fun arguments -> Obj.repr (new numberStringHud (Obj.obj arguments)))


