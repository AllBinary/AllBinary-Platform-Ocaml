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
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.game.graphics.hud.BasicHud *)
(* import org.allbinary.game.layer.hud.LapInfo *)
(* import org.allbinary.graphics.color.BasicColor *)

class lapWidget ((location : int), (direction : int), (basicColor : BasicColor.basicColor)) =
  object
    inherit BasicHud.basicHud (location, direction, 2, basicColor) as super
    val mutable lAP_STR : string = ""
    method lAP_STR = lAP_STR
    method set_lAP_STR value' = lAP_STR <- value'
    val mutable oF_STR : string = ""
    method oF_STR = oF_STR
    method set_oF_STR value' = oF_STR <- value'
    val mutable string : string = ""
    method string = string
    method set_string value' = string <- value'
    
    

    method update : 'any1. 'any1 -> unit = fun (lapInfo) ->
        let lapInfo = Obj.repr lapInfo in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (lAP_STR));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((Obj.magic lapInfo)#getCurrentLap ()))))));
        ignore (!stringBuffer#append (oF_STR));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((Obj.magic lapInfo)#getTotalLaps ()))))));
        string <- (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paintString ((Obj.magic graphics), string))
        end [@@warning "-7-20"]

    initializer
      begin
        lAP_STR <- "Lap ";
        oF_STR <- " of ";
        string <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        (* super(...) is the inherit clause *) ();
        updateMaxHeight <- 15;
        updateMaxWidth <- 40
      end
  end
let () = java_register_constructor "LapWidget" (fun arguments -> Obj.repr (new lapWidget (Obj.obj arguments)))


