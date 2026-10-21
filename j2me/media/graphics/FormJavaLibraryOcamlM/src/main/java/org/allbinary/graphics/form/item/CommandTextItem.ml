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
(* package org.allbinary.graphics.form.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Command *)
(* import org.allbinary.graphics.color.BasicColor *)

class commandTextItem (command_arg, (layout : int), (altText : string), (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object
    inherit ABTextItem.aBTextItem ((command_arg#getLabel ()), layout, altText, backgroundBasicColor, foregroundBasicColor)
    val mutable command : Obj.t = Obj.repr 0
    method command : 'r. 'r = Obj.magic command
    method set_command : 'v. 'v -> unit = fun value' -> command <- Obj.repr value'
    
    

    method isFocusable () : bool =
        begin
        true
        end [@@warning "-7"]
    

    method getCommand : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic command)))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        command <- Obj.repr (command_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "CommandTextItem" (fun arguments -> Obj.repr (new commandTextItem (Obj.obj arguments)))


