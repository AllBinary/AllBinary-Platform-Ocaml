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
(* package org.allbinary.game.layer.hud.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class gameNotificationEvent ((anyType : Obj.t), (string_arg : string), (seconds_arg : int), (basicColor_arg : BasicColor.basicColor), (permanent : bool)) =
  object (self)
    inherit AllBinaryEventObject.allBinaryEventObject (anyType)
    val mutable string : string = ""
    method string = string
    method set_string value' = string <- value'
    val mutable seconds : int = (Obj.magic 0)
    method seconds = seconds
    method set_seconds value' = seconds <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable removeable : bool = (Obj.magic 0)
    method removeable = removeable
    method set_removeable value' = removeable <- value'
    
    

    method getString () : string =
        begin
        string
        end [@@warning "-7"]
    

    method getSeconds () : int =
        begin
        seconds
        end [@@warning "-7"]
    

    method getBasicColorP () : BasicColor.basicColor =
        begin
        (basicColor :> BasicColor.basicColor)
        end [@@warning "-7"]
    

    method getPermanent () : bool =
        begin
        removeable
        end [@@warning "-7"]
    

    method setString ((string_arg : string)) : unit =
        begin
        string <- string_arg
        end [@@warning "-7"]
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor_arg) ->
        let basicColor_arg = Obj.repr basicColor_arg in
        begin
        basicColor <- (Obj.magic basicColor_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        string <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        basicColor <- ((BasicColorFactory.getInstance ())#bLACK :> BasicColor.basicColor);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        (self#setString (string_arg));
        seconds <- seconds_arg;
        (self#setBasicColorP (basicColor_arg));
        removeable <- permanent
      end
  end
let () = java_register_constructor "GameNotificationEvent" (fun arguments -> Obj.repr (new gameNotificationEvent (Obj.obj arguments)))


