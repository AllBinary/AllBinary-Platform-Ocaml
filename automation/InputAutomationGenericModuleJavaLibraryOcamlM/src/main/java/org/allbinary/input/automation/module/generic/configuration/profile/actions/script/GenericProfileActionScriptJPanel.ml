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
(* package org.allbinary.input.automation.module.generic.configuration.profile.actions.script *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.event.MouseEvent *)
(* import javax.swing *)
(* import javax.swing.tree.DefaultMutableTreeNode *)
(* import javax.swing.tree.DefaultTreeModel *)
(* import javax.swing.tree.TreePath *)
(* import org.allbinary.input.automation.actions.script.JTreeInterface *)
(* import org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class genericProfileActionScriptJPanel () =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable defaultMutableTreeNode : Obj.t = Obj.repr 0
    method defaultMutableTreeNode : 'r. 'r = Obj.magic defaultMutableTreeNode
    method set_defaultMutableTreeNode : 'v. 'v -> unit = fun value' -> defaultMutableTreeNode <- Obj.repr value'
    val mutable genericProfileActionScript : Obj.t = Obj.repr 0
    method genericProfileActionScript : 'r. 'r = Obj.magic genericProfileActionScript
    method set_genericProfileActionScript : 'v. 'v -> unit = fun value' -> genericProfileActionScript <- Obj.repr value'
    val mutable actionScriptJTree : Obj.t = Obj.repr 0
    method actionScriptJTree : 'r. 'r = Obj.magic actionScriptJTree
    method set_actionScriptJTree : 'v. 'v -> unit = fun value' -> actionScriptJTree <- Obj.repr value'
    val mutable jScrollPane1 : Obj.t = Obj.repr 0
    method jScrollPane1 : 'r. 'r = Obj.magic jScrollPane1
    method set_jScrollPane1 : 'v. 'v -> unit = fun value' -> jScrollPane1 <- Obj.repr value'
    
    

    method updateJTree () : unit =
        begin
        let defaultTreeModel : Obj.t ref = ref ((Obj.repr (new DefaultTreeModel.defaultTreeModel ((self#getGenericProfileActionScript ()))))) in ();
        ignore ((self#getActionScriptJTree ())#setModel ((Obj.magic !defaultTreeModel)));
        ignore (self#repaint ());
        ignore ((Obj.magic logUtil)#putF ("Updated UI", self, "updateJTree"))
        end [@@warning "-7"]
    

    method getGenericProfileActionScript : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic genericProfileActionScript)))
        end [@@warning "-7"]
    

    method setGenericProfileActionScript : 'any1. 'any1 -> unit = fun (genericProfileActionScript_arg) ->
        let genericProfileActionScript_arg = Obj.repr genericProfileActionScript_arg in
        begin
        genericProfileActionScript <- Obj.repr ((Obj.magic genericProfileActionScript_arg))
        end [@@warning "-7-20"]
    

    method getActionScriptJTree : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic actionScriptJTree)))
        end [@@warning "-7"]
    

    method setActionScriptJTree : 'any1. 'any1 -> unit = fun (actionScriptJTree_arg) ->
        let actionScriptJTree_arg = Obj.repr actionScriptJTree_arg in
        begin
        actionScriptJTree <- Obj.repr ((Obj.magic actionScriptJTree_arg))
        end [@@warning "-7-20"]
    

    method initComponents () : unit =
        begin
        jScrollPane1 <- Obj.repr ((new JScrollPane.jScrollPane ()));
        actionScriptJTree <- Obj.repr ((new JTree.jTree ()));
        ignore (self#setLayout ((new GridLayout.gridLayout (1, 0))));
        ignore ((Obj.magic actionScriptJTree)#setPreferredSize ((new Dimension.dimension (500, 500))));
        ignore ((Obj.magic actionScriptJTree)#addMouseListener ((object (self)
            inherit MouseAdapter.mouseAdapter () as super
            

            method mouseClicked : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#actionScriptJTreeMouseClicked ((Obj.magic evt)))
                end [@@warning "-20"]
            

            method mouseReleased : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#actionScriptJTreeMouseReleased ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jScrollPane1)#setViewportView ((Obj.magic actionScriptJTree)));
        ignore (self#add ((Obj.magic jScrollPane1)))
        end [@@warning "-7"]
    

    method actionScriptJTreeMouseReleased : 'any1. 'any1 -> unit = fun (evt) ->
        let evt = Obj.repr evt in
        begin
        let button : int ref = ref (((Obj.magic evt)#getButton ())) in ();
        if (!button = (MouseEvent.get_bUTTON3 ())) then begin
            let treePath : Obj.t ref = ref ((Obj.repr ((self#getActionScriptJTree ())#getSelectionPath ()))) in ();
            if ((Obj.magic !treePath) != (Obj.magic 0)) then begin
                let anyType : Obj.t ref = ref ((Obj.repr ((Obj.magic !treePath)#getLastPathComponent ()))) in ();
                if (java_instanceof (Obj.repr !anyType) "CustomTreeNodeInterface") then begin
                    let customTreeNodeInterface : CustomTreeNodeInterface.customTreeNodeInterface ref = ref (((Obj.magic !anyType) :> CustomTreeNodeInterface.customTreeNodeInterface)) in ();
                    let jPopupMenu : Obj.t ref = ref ((Obj.repr (!customTreeNodeInterface#getJPopupMenu ()))) in ();
                    ignore ((Obj.magic !jPopupMenu)#show ((Obj.magic ((Obj.magic evt)#getSource ())), ((Obj.magic evt)#getX ()), ((Obj.magic evt)#getY ())))
                end
            end
        end
        end [@@warning "-7-20"]
    

    method actionScriptJTreeMouseClicked : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        defaultMutableTreeNode <- (Obj.repr (new DefaultMutableTreeNode.defaultMutableTreeNode ("Root")));
        genericProfileActionScript <- (Obj.repr (Obj.magic 0));
        actionScriptJTree <- (Obj.repr (Obj.magic 0));
        jScrollPane1 <- (Obj.repr (Obj.magic 0));
        ();
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
        (self#initComponents ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "GenericProfileActionScriptJPanel" (fun arguments -> Obj.repr (new genericProfileActionScriptJPanel (Obj.obj arguments)))


