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
(* package org.allbinary.input.automation.actions.script *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.event.ActionEvent *)
(* import java.awt.event.ActionListener *)
(* import javax.swing *)
(* import javax.swing.tree.DefaultMutableTreeNode *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Node *)

let eDIT : string = "Edit"
let get_eDIT () = eDIT
let () = java_register_static "ProfileActionScriptItem.get_eDIT" (fun _ -> Obj.repr (get_eDIT ()))
let dELETE : string = "Delete"
let get_dELETE () = dELETE
let () = java_register_static "ProfileActionScriptItem.get_dELETE" (fun _ -> Obj.repr (get_dELETE ()))
let nEW_CONDITION : string = "New Condition"
let get_nEW_CONDITION () = nEW_CONDITION
let () = java_register_static "ProfileActionScriptItem.get_nEW_CONDITION" (fun _ -> Obj.repr (get_nEW_CONDITION ()))
let nEW_INPUT : string = "New Input"
let get_nEW_INPUT () = nEW_INPUT
let () = java_register_static "ProfileActionScriptItem.get_nEW_INPUT" (fun _ -> Obj.repr (get_nEW_INPUT ()))
let nEW_OUTPUT : string = "New Output"
let get_nEW_OUTPUT () = nEW_OUTPUT
let () = java_register_static "ProfileActionScriptItem.get_nEW_OUTPUT" (fun _ -> Obj.repr (get_nEW_OUTPUT ()))
let nEW_COLOR_AT : string = "Color At"
let get_nEW_COLOR_AT () = nEW_COLOR_AT
let () = java_register_static "ProfileActionScriptItem.get_nEW_COLOR_AT" (fun _ -> Obj.repr (get_nEW_COLOR_AT ()))
let nEW_TIME_INTERVAL : string = "Time Interval"
let get_nEW_TIME_INTERVAL () = nEW_TIME_INTERVAL
let () = java_register_static "ProfileActionScriptItem.get_nEW_TIME_INTERVAL" (fun _ -> Obj.repr (get_nEW_TIME_INTERVAL ()))
let nEW_ALWAYS : string = "Always On/Off"
let get_nEW_ALWAYS () = nEW_ALWAYS
let () = java_register_static "ProfileActionScriptItem.get_nEW_ALWAYS" (fun _ -> Obj.repr (get_nEW_ALWAYS ()))
let nEW_KEY_INPUT : string = "Key"
let get_nEW_KEY_INPUT () = nEW_KEY_INPUT
let () = java_register_static "ProfileActionScriptItem.get_nEW_KEY_INPUT" (fun _ -> Obj.repr (get_nEW_KEY_INPUT ()))
let nEW_MOUSE_INPUT : string = "Mouse"
let get_nEW_MOUSE_INPUT () = nEW_MOUSE_INPUT
let () = java_register_static "ProfileActionScriptItem.get_nEW_MOUSE_INPUT" (fun _ -> Obj.repr (get_nEW_MOUSE_INPUT ()))
let nEW_JOYSTICK_INPUT : string = "Joystick"
let get_nEW_JOYSTICK_INPUT () = nEW_JOYSTICK_INPUT
let () = java_register_static "ProfileActionScriptItem.get_nEW_JOYSTICK_INPUT" (fun _ -> Obj.repr (get_nEW_JOYSTICK_INPUT ()))
let nEW_IMAGE_OUTPUT : string = "Image"
let get_nEW_IMAGE_OUTPUT () = nEW_IMAGE_OUTPUT
let () = java_register_static "ProfileActionScriptItem.get_nEW_IMAGE_OUTPUT" (fun _ -> Obj.repr (get_nEW_IMAGE_OUTPUT ()))
class profileActionScriptItem ((label : string)) =
  object (self)
    inherit DefaultMutableTreeNode.defaultMutableTreeNode (label)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable jPopupMenu : Obj.t = Obj.repr 0
    method jPopupMenu : 'r. 'r = Obj.magic jPopupMenu
    method set_jPopupMenu : 'v. 'v -> unit = fun value' -> jPopupMenu <- Obj.repr value'
    
    
    

    method init () : unit =
        begin
        (self#setJPopupMenu ((new JPopupMenu.jPopupMenu ())));
        let jMenuItemEdit : Obj.t ref = ref ((Obj.repr (new JMenuItem.jMenuItem (eDIT)))) in ();
        let jMenuItemDelete : Obj.t ref = ref ((Obj.repr (new JMenuItem.jMenuItem (dELETE)))) in ();
        ignore ((Obj.magic !jMenuItemEdit)#addActionListener (self));
        ignore ((Obj.magic !jMenuItemDelete)#addActionListener (self));
        ignore ((self#getJPopupMenu ())#add ((Obj.magic !jMenuItemEdit)));
        ignore ((self#getJPopupMenu ())#add ((Obj.magic !jMenuItemDelete)))
        end [@@warning "-7"]
    

    method process ((_frame : int)) : unit =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method getJPopupMenu : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic jPopupMenu)))
        end [@@warning "-7"]
    

    method showDialog () : unit =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method actionPerformed : 'any1. 'any1 -> unit = fun (actionEvent) ->
        let actionEvent = Obj.repr actionEvent in
        begin
        if ((((Obj.magic actionEvent)#getActionCommand ())#compareTo (eDIT)) == 0) then begin
            (self#showDialog ())
        end
        end [@@warning "-7-20"]
    

    method setJPopupMenu : 'any1. 'any1 -> unit = fun (jPopupMenu_arg) ->
        let jPopupMenu_arg = Obj.repr jPopupMenu_arg in
        begin
        jPopupMenu <- Obj.repr ((Obj.magic jPopupMenu_arg))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        jPopupMenu <- (Obj.repr (Obj.magic 0));
        ();
        (* super(...) is the inherit clause *) ();
        (self#init ());
        ignore ((Obj.magic logUtil)#putF (("Label: " ^ label), self, commonStrings#cONSTRUCTOR))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "ProfileActionScriptItem" (fun arguments -> Obj.repr (new profileActionScriptItem (Obj.obj arguments)))


