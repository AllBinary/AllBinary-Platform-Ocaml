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
(* package org.allbinary.game.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.TextField *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.displayable.screen.CommandForm *)
(* import org.allbinary.logic.ABSystemWrapper *)
(* import org.allbinary.logic.MEUtil *)

let fORM : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "CommandForm.getNullCommandForm" (Obj.repr ())))))
let get_fORM () = Obj.magic !fORM
let set_fORM value' = fORM := Obj.repr value'
let () = java_register_static "SaveGameForm.get_fORM" (fun _ -> Obj.repr (get_fORM ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic !fORM)))
        end

let () = java_register_static "SaveGameForm.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class saveGameForm (commandListener, (title : string), (backgrounBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit CommandForm.commandForm (commandListener, title, backgrounBasicColor, foregroundBasicColor)
    val mutable meUtil : Obj.t = Obj.repr 0
    method meUtil : 'r. 'r = Obj.magic meUtil
    method set_meUtil : 'v. 'v -> unit = fun value' -> meUtil <- Obj.repr value'
    
    

    method initCommands : 'any1. 'any1 -> unit = fun (cmdListener) ->
        let cmdListener = Obj.repr cmdListener in
        begin
        let gameCommandsFactory : GameCommandsFactory.gameCommandsFactory ref = ref (((GameCommandsFactory.getInstance ()) :> GameCommandsFactory.gameCommandsFactory)) in ();
        ignore (self#removeAllCommands ());
        ignore (self#addCommand (!gameCommandsFactory#sAVE));
        ignore (self#addCommand (!gameCommandsFactory#cLOSE_AND_SHOW_GAME_CANVAS));
        ignore (self#setCommandListener ((Obj.magic cmdListener)))
        end [@@warning "-7-20"]

    initializer
      begin
        meUtil <- (Obj.repr (Obj.magic (java_call_static "MEUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#cONSTRUCTOR));
        let timeString : string ref = ref ((string_of_int (((ABSystemWrapper.getInstance ())#currentTimeMillis ())))) in ();
        ignore ((Obj.magic meUtil)#appendItem (self, (Obj.obj (java_new "TextField" (Obj.repr ("Name: ", !timeString, 30, (Obj.magic (java_call_static "TextField.get_aNY" (Obj.repr ())))))))));
        (self#initCommands (commandListener))
      end
  end [@@warning "-20"]
let () = java_register_constructor "SaveGameForm" (fun arguments -> Obj.repr (new saveGameForm (Obj.obj arguments)))

let createForm : 'any1 'any3 'any4 'return. 'any1 * string * 'any3 * 'any4 -> 'return = fun (commandListener, (title : string), backgrounBasicColor, foregroundBasicColor) ->
        let commandListener = Obj.repr commandListener in
        let backgrounBasicColor = Obj.repr backgrounBasicColor in
        let foregroundBasicColor = Obj.repr foregroundBasicColor in
        begin
        fORM := Obj.repr ((new saveGameForm ((Obj.magic commandListener), title, (Obj.magic backgrounBasicColor), (Obj.magic foregroundBasicColor))));
        (Obj.magic ((Obj.magic !fORM)))
        end [@@warning "-20"]
let () = java_register_static "SaveGameForm.createForm" (fun arguments -> Obj.repr (createForm (Obj.obj arguments)))


