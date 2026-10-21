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
(* package org.allbinary.game.commands *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Command *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "GameCommandsFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class gameCommandsFactory () =
  object
    val mutable tOGGLE_FULLSCREEN : Obj.t = Obj.repr 0
    method tOGGLE_FULLSCREEN : 'r. 'r = Obj.magic tOGGLE_FULLSCREEN
    method set_tOGGLE_FULLSCREEN : 'v. 'v -> unit = fun value' -> tOGGLE_FULLSCREEN <- Obj.repr value'
    val mutable tOGGLE_KEYBOARD : Obj.t = Obj.repr 0
    method tOGGLE_KEYBOARD : 'r. 'r = Obj.magic tOGGLE_KEYBOARD
    method set_tOGGLE_KEYBOARD : 'v. 'v -> unit = fun value' -> tOGGLE_KEYBOARD <- Obj.repr value'
    val mutable sET_MENU_DISPLAYABLE : Obj.t = Obj.repr 0
    method sET_MENU_DISPLAYABLE : 'r. 'r = Obj.magic sET_MENU_DISPLAYABLE
    method set_sET_MENU_DISPLAYABLE : 'v. 'v -> unit = fun value' -> sET_MENU_DISPLAYABLE <- Obj.repr value'
    val mutable aPPLICATION_UPDATE : Obj.t = Obj.repr 0
    method aPPLICATION_UPDATE : 'r. 'r = Obj.magic aPPLICATION_UPDATE
    method set_aPPLICATION_UPDATE : 'v. 'v -> unit = fun value' -> aPPLICATION_UPDATE <- Obj.repr value'
    val mutable dISPLAY_ABOUT : Obj.t = Obj.repr 0
    method dISPLAY_ABOUT : 'r. 'r = Obj.magic dISPLAY_ABOUT
    method set_dISPLAY_ABOUT : 'v. 'v -> unit = fun value' -> dISPLAY_ABOUT <- Obj.repr value'
    val mutable oPEN_WEB_URL : Obj.t = Obj.repr 0
    method oPEN_WEB_URL : 'r. 'r = Obj.magic oPEN_WEB_URL
    method set_oPEN_WEB_URL : 'v. 'v -> unit = fun value' -> oPEN_WEB_URL <- Obj.repr value'
    val mutable cLOSE_OPTIONS : Obj.t = Obj.repr 0
    method cLOSE_OPTIONS : 'r. 'r = Obj.magic cLOSE_OPTIONS
    method set_cLOSE_OPTIONS : 'v. 'v -> unit = fun value' -> cLOSE_OPTIONS <- Obj.repr value'
    val mutable dISPLAY_OPTIONS : Obj.t = Obj.repr 0
    method dISPLAY_OPTIONS : 'r. 'r = Obj.magic dISPLAY_OPTIONS
    method set_dISPLAY_OPTIONS : 'v. 'v -> unit = fun value' -> dISPLAY_OPTIONS <- Obj.repr value'
    val mutable sTART_TRACE : Obj.t = Obj.repr 0
    method sTART_TRACE : 'r. 'r = Obj.magic sTART_TRACE
    method set_sTART_TRACE : 'v. 'v -> unit = fun value' -> sTART_TRACE <- Obj.repr value'
    val mutable sTOP_TRACE : Obj.t = Obj.repr 0
    method sTOP_TRACE : 'r. 'r = Obj.magic sTOP_TRACE
    method set_sTOP_TRACE : 'v. 'v -> unit = fun value' -> sTOP_TRACE <- Obj.repr value'
    val mutable dEFAULT_OPTIONS : Obj.t = Obj.repr 0
    method dEFAULT_OPTIONS : 'r. 'r = Obj.magic dEFAULT_OPTIONS
    method set_dEFAULT_OPTIONS : 'v. 'v -> unit = fun value' -> dEFAULT_OPTIONS <- Obj.repr value'
    val mutable sHOW_GAME_CANVAS : Obj.t = Obj.repr 0
    method sHOW_GAME_CANVAS : 'r. 'r = Obj.magic sHOW_GAME_CANVAS
    method set_sHOW_GAME_CANVAS : 'v. 'v -> unit = fun value' -> sHOW_GAME_CANVAS <- Obj.repr value'
    val mutable cLOSE_AND_SHOW_GAME_CANVAS : Obj.t = Obj.repr 0
    method cLOSE_AND_SHOW_GAME_CANVAS : 'r. 'r = Obj.magic cLOSE_AND_SHOW_GAME_CANVAS
    method set_cLOSE_AND_SHOW_GAME_CANVAS : 'v. 'v -> unit = fun value' -> cLOSE_AND_SHOW_GAME_CANVAS <- Obj.repr value'
    val mutable qUIT_COMMAND : Obj.t = Obj.repr 0
    method qUIT_COMMAND : 'r. 'r = Obj.magic qUIT_COMMAND
    method set_qUIT_COMMAND : 'v. 'v -> unit = fun value' -> qUIT_COMMAND <- Obj.repr value'
    val mutable rESTART_COMMAND : Obj.t = Obj.repr 0
    method rESTART_COMMAND : 'r. 'r = Obj.magic rESTART_COMMAND
    method set_rESTART_COMMAND : 'v. 'v -> unit = fun value' -> rESTART_COMMAND <- Obj.repr value'
    val mutable dISPLAY_SAVE_FORM : Obj.t = Obj.repr 0
    method dISPLAY_SAVE_FORM : 'r. 'r = Obj.magic dISPLAY_SAVE_FORM
    method set_dISPLAY_SAVE_FORM : 'v. 'v -> unit = fun value' -> dISPLAY_SAVE_FORM <- Obj.repr value'
    val mutable sAVE : Obj.t = Obj.repr 0
    method sAVE : 'r. 'r = Obj.magic sAVE
    method set_sAVE : 'v. 'v -> unit = fun value' -> sAVE <- Obj.repr value'
    val mutable dISPLAY_LOAD_FORM : Obj.t = Obj.repr 0
    method dISPLAY_LOAD_FORM : 'r. 'r = Obj.magic dISPLAY_LOAD_FORM
    method set_dISPLAY_LOAD_FORM : 'v. 'v -> unit = fun value' -> dISPLAY_LOAD_FORM <- Obj.repr value'
    val mutable lOAD_FILE : Obj.t = Obj.repr 0
    method lOAD_FILE : 'r. 'r = Obj.magic lOAD_FILE
    method set_lOAD_FILE : 'v. 'v -> unit = fun value' -> lOAD_FILE <- Obj.repr value'
    val mutable dELETE_FILE : Obj.t = Obj.repr 0
    method dELETE_FILE : 'r. 'r = Obj.magic dELETE_FILE
    method set_dELETE_FILE : 'v. 'v -> unit = fun value' -> dELETE_FILE <- Obj.repr value'
    val mutable eXIT_COMMAND : Obj.t = Obj.repr 0
    method eXIT_COMMAND : 'r. 'r = Obj.magic eXIT_COMMAND
    method set_eXIT_COMMAND : 'v. 'v -> unit = fun value' -> eXIT_COMMAND <- Obj.repr value'
    val mutable eXIT_WITHOUT_PROGRESS_COMMAND : Obj.t = Obj.repr 0
    method eXIT_WITHOUT_PROGRESS_COMMAND : 'r. 'r = Obj.magic eXIT_WITHOUT_PROGRESS_COMMAND
    method set_eXIT_WITHOUT_PROGRESS_COMMAND : 'v. 'v -> unit = fun value' -> eXIT_WITHOUT_PROGRESS_COMMAND <- Obj.repr value'
    val mutable sTART_COMMAND : Obj.t = Obj.repr 0
    method sTART_COMMAND : 'r. 'r = Obj.magic sTART_COMMAND
    method set_sTART_COMMAND : 'v. 'v -> unit = fun value' -> sTART_COMMAND <- Obj.repr value'
    val mutable cONTINUE_COMMAND : Obj.t = Obj.repr 0
    method cONTINUE_COMMAND : 'r. 'r = Obj.magic cONTINUE_COMMAND
    method set_cONTINUE_COMMAND : 'v. 'v -> unit = fun value' -> cONTINUE_COMMAND <- Obj.repr value'
    val mutable sELECT_COMMAND : Obj.t = Obj.repr 0
    method sELECT_COMMAND : 'r. 'r = Obj.magic sELECT_COMMAND
    method set_sELECT_COMMAND : 'v. 'v -> unit = fun value' -> sELECT_COMMAND <- Obj.repr value'
    val mutable fEATURE_UPDATE : Obj.t = Obj.repr 0
    method fEATURE_UPDATE : 'r. 'r = Obj.magic fEATURE_UPDATE
    method set_fEATURE_UPDATE : 'v. 'v -> unit = fun value' -> fEATURE_UPDATE <- Obj.repr value'
    val mutable bUY_COMMAND : Obj.t = Obj.repr 0
    method bUY_COMMAND : 'r. 'r = Obj.magic bUY_COMMAND
    method set_bUY_COMMAND : 'v. 'v -> unit = fun value' -> bUY_COMMAND <- Obj.repr value'
    

    initializer
      begin
        tOGGLE_FULLSCREEN <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Toggle FullScreen", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        tOGGLE_KEYBOARD <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Keyboard", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        sET_MENU_DISPLAYABLE <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Set Menu Displayable", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        aPPLICATION_UPDATE <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ((CommonStrings.getInstance ())#uPDATE, (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        dISPLAY_ABOUT <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ((CanvasStrings.getInstance ())#aBOUT, (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 2)))));
        oPEN_WEB_URL <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Open Web URL", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 2)))));
        cLOSE_OPTIONS <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Back", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        dISPLAY_OPTIONS <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ((CanvasStrings.getInstance ())#oPTIONS, (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 2)))));
        sTART_TRACE <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Start Trace", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        sTOP_TRACE <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Stop Trace", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        dEFAULT_OPTIONS <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Default", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        sHOW_GAME_CANVAS <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Back to Game", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        cLOSE_AND_SHOW_GAME_CANVAS <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Back", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        qUIT_COMMAND <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Quit", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sTOP" (Obj.repr ()))), 1)))));
        rESTART_COMMAND <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Restart", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 0)))));
        dISPLAY_SAVE_FORM <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Save To", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 3)))));
        sAVE <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Save", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 3)))));
        dISPLAY_LOAD_FORM <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Load", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 3)))));
        lOAD_FILE <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Load File", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 3)))));
        dELETE_FILE <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Delete File", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        eXIT_COMMAND <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Exit", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_eXIT" (Obj.repr ()))), 2)))));
        eXIT_WITHOUT_PROGRESS_COMMAND <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Exit Without Progress", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_eXIT" (Obj.repr ()))), 2)))));
        sTART_COMMAND <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ((CommonStrings.getInstance ())#sTART, (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        cONTINUE_COMMAND <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Continue", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        sELECT_COMMAND <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Select", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        fEATURE_UPDATE <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Feature Update", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        bUY_COMMAND <- (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("BUY", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameCommandsFactory" (fun arguments -> Obj.repr (new gameCommandsFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new gameCommandsFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "GameCommandsFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


