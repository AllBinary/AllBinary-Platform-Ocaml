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
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.graphics.hud.BasicHud *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.logic.math.PrimitiveLongSingleton *)

class timeHudWidget ((location : int), (direction : int), (bufferZone : int), (basicColor : BasicColor.basicColor), (timer_arg : HudTimer.hudTimer)) =
  object (self)
    inherit BasicHud.basicHud (location, direction, bufferZone, basicColor) as super
    val mutable tIME_STRING : string = ""
    method tIME_STRING = tIME_STRING
    method set_tIME_STRING value' = tIME_STRING <- value'
    val mutable tIME_CHAR_ARRAY : char array = (Obj.magic 0)
    method tIME_CHAR_ARRAY = tIME_CHAR_ARRAY
    method set_tIME_CHAR_ARRAY value' = tIME_CHAR_ARRAY <- value'
    val mutable offset : int = 0
    method offset = offset
    method set_offset value' = offset <- value'
    val mutable string : char array = (Obj.magic 0)
    method string = string
    method set_string value' = string <- value'
    val mutable totalDigits : int = 0
    method totalDigits = totalDigits
    method set_totalDigits value' = totalDigits <- value'
    val mutable timer : HudTimer.hudTimer = (Obj.magic 0)
    method timer = timer
    method set_timer value' = timer <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        (self#set_updateMaxWidth) ((((Obj.magic !font)#getSize ()) * 5));
        offset <- (((Obj.magic !font)#stringWidth (tIME_STRING)) + (MyFontProcessor.defaultStringWidth ((Obj.magic !font), 3)));
        ignore (super#updateMeasurement ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method update () : unit =
        begin
        ignore (timer#update ());
        (self#set ())
        end [@@warning "-7"]
    

    method set () : unit =
        begin
        string <- (timer#getTimeChars ());
        totalDigits <- (timer#getCurrentTotalDigits ())
        end [@@warning "-7"]
    

    method getTimer : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (timer))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paintDX ((Obj.magic graphics), tIME_CHAR_ARRAY, 0, (Array.length tIME_CHAR_ARRAY), string, 0, totalDigits, offset))
        end [@@warning "-7-20"]

    initializer
      begin
        tIME_STRING <- "Time ";
        tIME_CHAR_ARRAY <- [| 'T'; 'i'; 'm'; 'e'; ' ' |];
        offset <- 0;
        string <- (PrimitiveLongSingleton.getInstance ())#zERO;
        totalDigits <- 1;
        ();
        ();
        (* super(...) is the inherit clause *) ();
        timer <- timer_arg;
        (self#set ());
        (self#set_updateMaxHeight) (14)
      end
  end
let () = java_register_constructor "TimeHudWidget" (fun arguments -> Obj.repr (new timeHudWidget (Obj.obj arguments)))

let getInstance : 'any3 'any4 'return. int * int * 'any3 * 'any4 -> 'return = fun ((location : int), (direction : int), basicColor, timer_arg) ->
        let basicColor = Obj.repr basicColor in
        let timer_arg = Obj.repr timer_arg in
        begin
        (Obj.magic ((new timeHudWidget (location, direction, 2, (Obj.magic basicColor), (Obj.magic timer_arg)))))
        end [@@warning "-20"]
let () = java_register_static "TimeHudWidget.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


