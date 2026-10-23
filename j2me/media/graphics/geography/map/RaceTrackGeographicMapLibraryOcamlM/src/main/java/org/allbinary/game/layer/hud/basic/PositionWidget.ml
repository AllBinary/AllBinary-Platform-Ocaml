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
(* import org.allbinary.graphics.color.BasicColor *)


let toString ((position_arg : int)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((string_of_int (position_arg))));
        if (position_arg = 1) then begin
            ignore (!stringBuffer#append ("st"))
        end else if (position_arg = 2) then begin
            ignore (!stringBuffer#append ("nd"))
        end else if (position_arg = 3) then begin
            ignore (!stringBuffer#append ("rd"))
        end else begin
            ignore (!stringBuffer#append ("th"))
        end;
        (java_string_of (Obj.repr !stringBuffer))
        end

let () = java_register_static "PositionWidget.toString" (fun arguments -> Obj.repr (toString (Obj.obj arguments)))
class positionWidget ((_position_arg : int), (location : int), (direction : int), (basicColor : BasicColor.basicColor)) =
  object (self)
    inherit BasicHud.basicHud (location, direction, 2, basicColor) as super
    val mutable position : int = 0
    method position = position
    method set_position value' = position <- value'
    val mutable positionString : string = ""
    method positionString = positionString
    method set_positionString value' = positionString <- value'
    
    

    method get () : int =
        begin
        position
        end [@@warning "-7"]
    

    method set ((position_arg : int)) : unit =
        begin
        position <- position_arg;
        positionString <- (toString ((self#get ())))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paintString ((Obj.magic graphics), positionString))
        end [@@warning "-7-20"]

    initializer
      begin
        position <- 0;
        positionString <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        (* super(...) is the inherit clause *) ();
        (self#set_updateMaxHeight) (10);
        (self#set_updateMaxWidth) (40)
      end
  end
let () = java_register_constructor "PositionWidget" (fun arguments -> Obj.repr (new positionWidget (Obj.obj arguments)))


