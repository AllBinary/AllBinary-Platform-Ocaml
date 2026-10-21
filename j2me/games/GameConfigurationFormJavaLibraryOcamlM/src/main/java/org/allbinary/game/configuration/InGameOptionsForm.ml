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
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.game.configuration.feature.GameFeatureFormUtil *)
(* import org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.displayable.screen.CommandForm *)
(* import org.allbinary.logic.string.StringUtil *)

class inGameOptionsForm (commandListener, (title : string), (backgrounBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit CommandForm.commandForm (commandListener, title, backgrounBasicColor, foregroundBasicColor)
    
    

    method initCommands : 'any1. 'any1 -> unit = fun (cmdListener) ->
        let cmdListener = Obj.repr cmdListener in
        begin
        ignore (self#removeAllCommands ());
        ignore (self#addCommand ((GameCommandsFactory.getInstance ())#cLOSE_AND_SHOW_GAME_CANVAS));
        ignore (self#addCommand ((Obj.magic dEFAULT)));
        ignore (self#setCommandListener ((Obj.magic cmdListener)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        ignore (logUtil#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
        let gameFeatureFormUtil : GameFeatureFormUtil.gameFeatureFormUtil ref = ref (((GameFeatureFormUtil.getInstance ()) :> GameFeatureFormUtil.gameFeatureFormUtil)) in ();
        ignore (!gameFeatureFormUtil#addChoiceGroup (self, ((InGameFeatureChoiceGroups.getExclusiveInstance ())#get ()), (Obj.magic (java_call_static "Choice.get_eXCLUSIVE" (Obj.repr ())))));
        ignore (!gameFeatureFormUtil#addChoiceGroup (self, ((InGameFeatureChoiceGroups.getMultipleInstance ())#get ()), (Obj.magic (java_call_static "Choice.get_mULTIPLE" (Obj.repr ())))));
        (self#initCommands (commandListener))
      end
  end
let () = java_register_constructor "InGameOptionsForm" (fun arguments -> Obj.repr (new inGameOptionsForm (Obj.obj arguments)))

let dISPLAY : Obj.t = (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Options In Game", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))))
let get_dISPLAY () = Obj.magic dISPLAY
let () = java_register_static "InGameOptionsForm.get_dISPLAY" (fun _ -> Obj.repr (get_dISPLAY ()))

let sAVE : Obj.t = (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Save", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))))
let get_sAVE () = Obj.magic sAVE
let () = java_register_static "InGameOptionsForm.get_sAVE" (fun _ -> Obj.repr (get_sAVE ()))

let dEFAULT : Obj.t = (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Default", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))))
let get_dEFAULT () = Obj.magic dEFAULT
let () = java_register_static "InGameOptionsForm.get_dEFAULT" (fun _ -> Obj.repr (get_dEFAULT ()))


