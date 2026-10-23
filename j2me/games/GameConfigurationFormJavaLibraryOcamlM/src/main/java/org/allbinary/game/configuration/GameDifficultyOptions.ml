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
(* import javax.microedition.lcdui.Choice *)
(* import javax.microedition.lcdui.ChoiceGroup *)
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.game.configuration.persistance.GameDifficultyFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.displayable.screen.CommandForm *)
(* import org.allbinary.logic.MEUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)

class gameDifficultyOptions (commandListener, (title : string), (list_arg : BasicArrayList.basicArrayList), (backgrounBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit CommandForm.commandForm (commandListener, title, backgrounBasicColor, foregroundBasicColor) as super
    val mutable meUtil : Obj.t = Obj.repr 0
    method meUtil : 'r. 'r = Obj.magic meUtil
    method set_meUtil : 'v. 'v -> unit = fun value' -> meUtil <- Obj.repr value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method open_ () : unit =
        begin
        ignore (super#open_ ())
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        ignore (super#close ());
        (self#save ())
        end [@@warning "-7"]
    

    method save () : unit =
        begin
        let gameDifficultyFactory : GameDifficultyFactory.gameDifficultyFactory ref = ref (((GameDifficultyFactory.getInstance ()) :> GameDifficultyFactory.gameDifficultyFactory)) in ();
        ignore (!gameDifficultyFactory#setLevel ((self#getSelectedId ())))
        end [@@warning "-7"]
    

    method initCommands : 'any1. 'any1 -> unit = fun (cmdListener) ->
        let cmdListener = Obj.repr cmdListener in
        begin
        let gameCommandsFactory : GameCommandsFactory.gameCommandsFactory ref = ref (((GameCommandsFactory.getInstance ()) :> GameCommandsFactory.gameCommandsFactory)) in ();
        ignore (self#removeAllCommands ());
        ignore (self#addCommand (!gameCommandsFactory#cLOSE_AND_SHOW_GAME_CANVAS));
        ignore (self#setCommandListener ((Obj.magic cmdListener)))
        end [@@warning "-7-20"]
    

    method update () : unit =
        begin
        ignore (self#deleteAll ());
        (self#add (list, "Difficulty", (Obj.magic (java_call_static "Choice.get_eXCLUSIVE" (Obj.repr ())))));
        ignore (super#update ())
        end [@@warning "-7"]
    

    method add : 'any1. 'any1 * string * int -> unit = fun (list_arg, (name : string), (option : int)) ->
        let list_arg = Obj.repr list_arg in
        begin
        let choiceGroup : Obj.t ref = ref ((Obj.repr (self#getChoiceGroup ((Obj.magic list_arg), name, option)))) in ();
        if (((Obj.magic list_arg)#size ()) > 0) then begin
            ignore ((Obj.magic !choiceGroup)#setSelectedIndex (0, true))
        end;
        ignore ((Obj.magic meUtil)#appendItem (self, (Obj.magic !choiceGroup)))
        end [@@warning "-7-20"]
    

    method getChoiceGroup : 'any1 'return. 'any1 * string * int -> 'return = fun (list_arg, (name : string), (option : int)) ->
        let list_arg = Obj.repr list_arg in
        begin
        let mETHOD_NAME : string ref = ref ("addChoiceGroup") in ();
        let nAME : string ref = ref ("Adding Choice: ") in ();
        let choiceGroup : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "ChoiceGroup" (Obj.repr (name, option, ((StringUtil.getInstance ())#getArrayInstance ()), (NullImage.get_nULL_IMAGE_ARRAY ()))))))) in ();
        let size : int ref = ref (((Obj.magic list_arg)#size ())) in ();
        let anyType : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            anyType := (Obj.magic list_arg)#objectArray.(index);
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (!nAME))#append ((java_string_of (Obj.repr !anyType)))))), self, !mETHOD_NAME));
            ignore ((Obj.magic !choiceGroup)#append ((java_string_of (Obj.repr !anyType)), (NullImage.get_nULL_IMAGE ())))
        done;
        (Obj.magic ((Obj.magic !choiceGroup)))
        end [@@warning "-7-20"]
    

    method setSelectedId ((id : int)) : unit =
        begin
        let choiceGroup : Obj.t ref = ref ((Obj.repr (Obj.magic (self#get (0))))) in ();
        ignore ((Obj.magic !choiceGroup)#setSelectedIndex (id, true))
        end [@@warning "-7"]
    

    method getSelectedId () : int =
        begin
        let choiceGroup : Obj.t ref = ref ((Obj.repr (Obj.magic (self#get (0))))) in ();
        ((Obj.magic !choiceGroup)#getSelectedIndex ())
        end [@@warning "-7"]
    

    method getSelectedText () : int =
        begin
        let choiceGroup : Obj.t ref = ref ((Obj.repr (Obj.magic (self#get (0))))) in ();
        let value : int ref = ref (((string_of_int (((Obj.magic !choiceGroup)#getString (((Obj.magic !choiceGroup)#getSelectedIndex ())))))#intValue ())) in ();
        !value
        end [@@warning "-7"]

    initializer
      begin
        meUtil <- (Obj.repr (Obj.magic (java_call_static "MEUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#cONSTRUCTOR));
        list <- list_arg;
        (self#update ());
        (self#initCommands (commandListener));
        let gameDifficultyFactory : GameDifficultyFactory.gameDifficultyFactory ref = ref (((GameDifficultyFactory.getInstance ()) :> GameDifficultyFactory.gameDifficultyFactory)) in ();
        (self#setSelectedId ((!gameDifficultyFactory#getLevel ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameDifficultyOptions" (fun arguments -> Obj.repr (new gameDifficultyOptions (Obj.obj arguments)))


