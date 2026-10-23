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
(* import javax.microedition.lcdui.Item *)
(* import javax.microedition.lcdui.NullImage *)
(* import javax.microedition.lcdui.StringItem *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.game.configuration.persistance.GamePersistanceSingleton *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.displayable.screen.CommandForm *)
(* import org.allbinary.logic.MEUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)

class loadGameForm (commandListener, (title : string), (backgrounBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit CommandForm.commandForm (commandListener, title, backgrounBasicColor, foregroundBasicColor) as super
    val mutable meUtil : Obj.t = Obj.repr 0
    method meUtil : 'r. 'r = Obj.magic meUtil
    method set_meUtil : 'v. 'v -> unit = fun value' -> meUtil <- Obj.repr value'
    val mutable areChoices : bool = false
    method areChoices = areChoices
    method set_areChoices value' = areChoices <- value'
    
    

    method initCommands : 'any1. 'any1 -> unit = fun (cmdListener) ->
        let cmdListener = Obj.repr cmdListener in
        begin
        let gameCommandsFactory : GameCommandsFactory.gameCommandsFactory ref = ref (((GameCommandsFactory.getInstance ()) :> GameCommandsFactory.gameCommandsFactory)) in ();
        ignore (self#removeAllCommands ());
        ignore (self#addCommand (!gameCommandsFactory#lOAD_FILE));
        ignore (self#addCommand (!gameCommandsFactory#dELETE_FILE));
        ignore (self#addCommand (!gameCommandsFactory#cLOSE_AND_SHOW_GAME_CANVAS));
        ignore (self#setCommandListener ((Obj.magic cmdListener)))
        end [@@warning "-7-20"]
    

    method update () : unit =
        begin
        let list : BasicArrayList.basicArrayList ref = ref ((((GamePersistanceSingleton.getInstance ())#getIds ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (self#deleteAll ());
        if ((!list#size ()) > 0) then begin
            (self#add (!list, "Select A Saved Game", (Obj.magic (java_call_static "Choice.get_eXCLUSIVE" (Obj.repr ())))));
            areChoices <- true
        end else begin
            ignore ((Obj.magic meUtil)#appendItem (self, (Obj.obj (java_new "StringItem" (Obj.repr ("No Saved Games", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Item.get_pLAIN" (Obj.repr ())))))))));
            areChoices <- false
        end;
        ignore (super#update ())
        end [@@warning "-7"]
    

    method add : 'any1. 'any1 * string * int -> unit = fun (list, (name : string), (option : int)) ->
        let list = Obj.repr list in
        begin
        let choiceGroup : Obj.t ref = ref ((Obj.repr (self#getChoiceGroup ((Obj.magic list), name, option)))) in ();
        if (((Obj.magic list)#size ()) > 0) then begin
            ignore ((Obj.magic !choiceGroup)#setSelectedIndex (0, true))
        end;
        ignore ((Obj.magic meUtil)#appendItem (self, (Obj.magic !choiceGroup)))
        end [@@warning "-7-20"]
    

    method getChoiceGroup : 'any1 'return. 'any1 * string * int -> 'return = fun (list, (name : string), (option : int)) ->
        let list = Obj.repr list in
        begin
        let mETHOD_NAME : string ref = ref ("getChoiceGroup") in ();
        let aDDING_CHOICE : string ref = ref ("Adding Choice: ") in ();
        let choiceGroup : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "ChoiceGroup" (Obj.repr (name, option, ((StringUtil.getInstance ())#getArrayInstance ()), (NullImage.get_nULL_IMAGE_ARRAY ()))))))) in ();
        let size : int ref = ref (((Obj.magic list)#size ())) in ();
        for index = 0 to !size - 1 do
            let anyType : Obj.t ref = ref ((Obj.repr (Obj.magic list)#objectArray.(index))) in ();
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (!aDDING_CHOICE))#append ((java_string_of (Obj.repr !anyType)))))), self, !mETHOD_NAME));
            ignore ((Obj.magic !choiceGroup)#append ((java_string_of (Obj.repr !anyType)), (NullImage.get_nULL_IMAGE ())))
        done;
        (Obj.magic ((Obj.magic !choiceGroup)))
        end [@@warning "-7-20"]
    

    method getSelectedId () : int =
        try
        begin
        if areChoices then begin
            let choiceGroup : Obj.t ref = ref ((Obj.repr (Obj.magic (self#get (0))))) in ();
            raise (Java_return (Obj.repr (((Obj.magic !choiceGroup)#getSelectedIndex ()))))
        end else begin
            raise (Java_return (Obj.repr ((-1))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getSelectedText () : int =
        try
        begin
        if areChoices then begin
            let choiceGroup : Obj.t ref = ref ((Obj.repr (Obj.magic (self#get (0))))) in ();
            let value : int ref = ref (((string_of_int (((Obj.magic !choiceGroup)#getString (((Obj.magic !choiceGroup)#getSelectedIndex ())))))#intValue ())) in ();
            raise (Java_return (Obj.repr (!value)))
        end else begin
            raise (Java_return (Obj.repr ((-1))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        meUtil <- (Obj.repr (Obj.magic (java_call_static "MEUtil.getInstance" (Obj.repr ()))));
        areChoices <- false;
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#cONSTRUCTOR));
        (self#update ());
        (self#initCommands (commandListener))
      end
  end [@@warning "-20"]
let () = java_register_constructor "LoadGameForm" (fun arguments -> Obj.repr (new loadGameForm (Obj.obj arguments)))


