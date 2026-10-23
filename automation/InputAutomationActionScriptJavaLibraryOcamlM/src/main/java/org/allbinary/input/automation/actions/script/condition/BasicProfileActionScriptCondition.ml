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
(* package org.allbinary.input.automation.actions.script.condition *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.event.ActionEvent *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.swing *)
(* import javax.swing.tree.TreePath *)
(* import org.allbinary.input.automation.actions.script.JTreeInterfaceFactory *)
(* import org.allbinary.input.automation.actions.script.ProfileActionScriptItem *)
(* import org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface *)
(* import org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface *)
(* import org.allbinary.input.automation.actions.script.condition.processors.input.GenericProfileActionScriptInputData *)
(* import org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput *)
(* import org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInput *)
(* import org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputFactory *)
(* import org.allbinary.input.automation.module.actions.script.condition.processors.output.GenericProfileActionScriptOutputData *)
(* import org.allbinary.input.automation.module.actions.script.condition.processors.output.ImageActionScriptOutput *)
(* import org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class basicProfileActionScriptCondition ((label : string)) =
  object (self)
    inherit ProfileActionScriptItem.profileActionScriptItem (label) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable profileActionProcessorInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method profileActionProcessorInterfaceVector = profileActionProcessorInterfaceVector
    method set_profileActionProcessorInterfaceVector value' = profileActionProcessorInterfaceVector <- value'
    val mutable profileActionConditionInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method profileActionConditionInterfaceVector = profileActionConditionInterfaceVector
    method set_profileActionConditionInterfaceVector value' = profileActionConditionInterfaceVector <- value'
    
    

    method addProcessorNodes : 'any1. 'any1 -> unit = fun (node) ->
        let node = Obj.repr node in
        begin
        let nodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic node)#getChildNodes ()))) in ();
        for index = 0 to ((Obj.magic !nodeList)#getLength ()) - 1 do
            let processorActionItemNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !nodeList)#item (index)))) in ();
            if ((((Obj.magic !processorActionItemNode)#getNodeName ())#compareTo ((GenericProfileActionScriptInputData.get_nAME ()))) == 0) then begin
                (self#addProcessor ((ProfileActionScriptInputFactory.getInstance ((Obj.magic !processorActionItemNode)))))
            end else if ((((Obj.magic !processorActionItemNode)#getNodeName ())#compareTo ((GenericProfileActionScriptOutputData.get_nAME ()))) == 0) then begin
                (self#addProcessor ((ProfileActionScriptOutputFactory.getInstance ((Obj.magic !processorActionItemNode)))))
            end
        done
        end [@@warning "-7-20"]
    
    

    method init () : unit =
        begin
        (self#setProfileActionProcessorInterfaceVector ((new BasicArrayListD.basicArrayListD ())));
        (self#setProfileActionConditionInterfaceVector ((new BasicArrayListD.basicArrayListD ())));
        ignore ((self#getJPopupMenu ())#add ((self#getConditionJPopupMenu ())));
        ignore ((self#getJPopupMenu ())#add ((self#getInputJPopupMenu ())));
        ignore ((self#getJPopupMenu ())#add ((self#getOutputJPopupMenu ())))
        end [@@warning "-7"]
    

    method getConditionJPopupMenu : 'return. unit -> 'return = fun () ->
        begin
        let jMenu : Obj.t ref = ref ((Obj.repr (new JMenu.jMenu (nEW_CONDITION)))) in ();
        let jMenuItemColorAt : Obj.t ref = ref ((Obj.repr (new JMenuItem.jMenuItem (nEW_COLOR_AT)))) in ();
        let jMenuItemAlways : Obj.t ref = ref ((Obj.repr (new JMenuItem.jMenuItem (nEW_ALWAYS)))) in ();
        let jMenuItemTimeInterval : Obj.t ref = ref ((Obj.repr (new JMenuItem.jMenuItem (nEW_TIME_INTERVAL)))) in ();
        ignore ((Obj.magic !jMenuItemColorAt)#addActionListener (self));
        ignore ((Obj.magic !jMenuItemAlways)#addActionListener (self));
        ignore ((Obj.magic !jMenuItemTimeInterval)#addActionListener (self));
        ignore ((Obj.magic !jMenu)#add ((Obj.magic !jMenuItemColorAt)));
        ignore ((Obj.magic !jMenu)#add ((Obj.magic !jMenuItemAlways)));
        ignore ((Obj.magic !jMenu)#add ((Obj.magic !jMenuItemTimeInterval)));
        (Obj.magic ((Obj.magic !jMenu)))
        end [@@warning "-7"]
    

    method getInputJPopupMenu : 'return. unit -> 'return = fun () ->
        begin
        let jMenu : Obj.t ref = ref ((Obj.repr (new JMenu.jMenu (nEW_INPUT)))) in ();
        let jMenuItemKey : Obj.t ref = ref ((Obj.repr (new JMenuItem.jMenuItem (nEW_KEY_INPUT)))) in ();
        let jMenuItemMouse : Obj.t ref = ref ((Obj.repr (new JMenuItem.jMenuItem (nEW_MOUSE_INPUT)))) in ();
        let jMenuItemJoystick : Obj.t ref = ref ((Obj.repr (new JMenuItem.jMenuItem (nEW_JOYSTICK_INPUT)))) in ();
        ignore ((Obj.magic !jMenuItemKey)#addActionListener (self));
        ignore ((Obj.magic !jMenuItemMouse)#addActionListener (self));
        ignore ((Obj.magic !jMenuItemJoystick)#addActionListener (self));
        ignore ((Obj.magic !jMenu)#add ((Obj.magic !jMenuItemKey)));
        ignore ((Obj.magic !jMenu)#add ((Obj.magic !jMenuItemMouse)));
        ignore ((Obj.magic !jMenu)#add ((Obj.magic !jMenuItemJoystick)));
        (Obj.magic ((Obj.magic !jMenu)))
        end [@@warning "-7"]
    

    method getOutputJPopupMenu : 'return. unit -> 'return = fun () ->
        begin
        let jMenu : Obj.t ref = ref ((Obj.repr (new JMenu.jMenu (nEW_OUTPUT)))) in ();
        let jMenuItemImage : Obj.t ref = ref ((Obj.repr (new JMenuItem.jMenuItem (nEW_IMAGE_OUTPUT)))) in ();
        ignore ((Obj.magic !jMenuItemImage)#addActionListener (self));
        ignore ((Obj.magic !jMenu)#add ((Obj.magic !jMenuItemImage)));
        (Obj.magic ((Obj.magic !jMenu)))
        end [@@warning "-7"]
    

    method addProcessor : 'any1. 'any1 -> unit = fun (profileActionProcessorInterface) ->
        let profileActionProcessorInterface = Obj.repr profileActionProcessorInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, "addInput"));
        ignore ((self#getProfileActionProcessorInterfaceVector ())#add ((Obj.magic profileActionProcessorInterface)));
        ignore (self#add ((Obj.magic profileActionProcessorInterface)))
        end [@@warning "-7-20"]
    

    method removeProcessor : 'any1. 'any1 -> unit = fun (profileActionProcessorInterface) ->
        let profileActionProcessorInterface = Obj.repr profileActionProcessorInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, "removeInput"));
        ignore ((self#getProfileActionProcessorInterfaceVector ())#remove ((Obj.magic profileActionProcessorInterface)));
        ignore (self#remove ((Obj.magic profileActionProcessorInterface)))
        end [@@warning "-7-20"]
    

    method removeCondition : 'any1. 'any1 -> unit = fun (profileActionScriptNodeInterface) ->
        let profileActionScriptNodeInterface = Obj.repr profileActionScriptNodeInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, "removeCondition"));
        ignore ((self#getProfileActionConditionInterfaceVector ())#remove ((Obj.magic profileActionScriptNodeInterface)));
        ignore (self#remove ((Obj.magic profileActionScriptNodeInterface)))
        end [@@warning "-7-20"]
    

    method addCondition : 'any1. 'any1 -> unit = fun (profileActionScriptNodeInterface) ->
        let profileActionScriptNodeInterface = Obj.repr profileActionScriptNodeInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, "addCondition"));
        ignore ((self#getProfileActionConditionInterfaceVector ())#add ((Obj.magic profileActionScriptNodeInterface)));
        ignore (self#add ((Obj.magic profileActionScriptNodeInterface)))
        end [@@warning "-7-20"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((GenericProfileActionScriptConditionData.get_nAME ()))))) in ();
        let profileActionConditionInterfaceVector_arg : BasicArrayList.basicArrayList ref = ref (((self#getProfileActionConditionInterfaceVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!profileActionConditionInterfaceVector_arg#size ())) in ();
        for index = 0 to !size - 1 do
            let profileActionConditionInterface : Obj.t ref = ref ((Obj.repr (Obj.magic (!profileActionConditionInterfaceVector_arg#get (index))))) in ();
            ignore ((Obj.magic !node)#appendChild (((Obj.magic !profileActionConditionInterface)#toXmlNode ((Obj.magic document)))))
        done;
        let profileActionProcessorInterfaceVector_arg : BasicArrayList.basicArrayList ref = ref (((self#getProfileActionProcessorInterfaceVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size2 : int ref = ref ((!profileActionProcessorInterfaceVector_arg#size ())) in ();
        for index = 0 to !size2 - 1 do
            let profileActionProcessorInterface : ProfileActionScriptProcessorInterface.profileActionScriptProcessorInterface ref = ref (((Obj.magic (!profileActionProcessorInterfaceVector_arg#get (index))) :> ProfileActionScriptProcessorInterface.profileActionScriptProcessorInterface)) in ();
            ignore ((Obj.magic !node)#appendChild ((!profileActionProcessorInterface#toXmlNode ((Obj.magic document)))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]
    

    method getProfileActionConditionInterfaceVector () : BasicArrayList.basicArrayList =
        begin
        (profileActionConditionInterfaceVector :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method setProfileActionConditionInterfaceVector : 'any1. 'any1 -> unit = fun (profileActionConditionInterfaceVector_arg) ->
        let profileActionConditionInterfaceVector_arg = Obj.repr profileActionConditionInterfaceVector_arg in
        begin
        profileActionConditionInterfaceVector <- (Obj.magic profileActionConditionInterfaceVector_arg)
        end [@@warning "-7-20"]
    

    method actionPerformed : 'any1. 'any1 -> unit = fun (actionEvent) ->
        let actionEvent = Obj.repr actionEvent in
        begin
        (try
            ignore (super#actionPerformed ((Obj.magic actionEvent)));
            if ((((Obj.magic actionEvent)#getActionCommand ())#compareTo (dELETE)) == 0) then begin
                if (java_instanceof (Obj.repr (self#getParent ())) "ProfileActionScriptNodeInterface") then begin
                    let profileActionScriptNodeInterface : ProfileActionScriptNodeInterface.profileActionScriptNodeInterface ref = ref (((Obj.magic (self#getParent ())) :> ProfileActionScriptNodeInterface.profileActionScriptNodeInterface)) in ();
                    ignore (!profileActionScriptNodeInterface#removeCondition (self));
                    ignore (((JTreeInterfaceFactory.getInstance ())#getJTreeInterface ())#updateJTree ())
                end
            end else if ((((Obj.magic actionEvent)#getActionCommand ())#compareTo (nEW_COLOR_AT)) == 0) then begin
                (self#addCondition ((Obj.obj (java_new "ColorAtActionScriptCondition" (Obj.repr ())))));
                (self#updateTree ())
            end else if ((((Obj.magic actionEvent)#getActionCommand ())#compareTo (nEW_ALWAYS)) == 0) then begin
                (self#addCondition ((Obj.obj (java_new "AlwaysActionScriptCondition" (Obj.repr ())))));
                (self#updateTree ())
            end else if ((((Obj.magic actionEvent)#getActionCommand ())#compareTo (nEW_TIME_INTERVAL)) == 0) then begin
                (self#addCondition ((Obj.obj (java_new "TimeIntervalActionScriptCondition" (Obj.repr ())))));
                (self#updateTree ())
            end else if ((((Obj.magic actionEvent)#getActionCommand ())#compareTo (nEW_KEY_INPUT)) == 0) then begin
                (self#addProcessor ((new KeyboardActionScriptInput.keyboardActionScriptInput ())));
                (self#updateTree ())
            end else if ((((Obj.magic actionEvent)#getActionCommand ())#compareTo (nEW_MOUSE_INPUT)) == 0) then begin
                (self#addProcessor ((new MouseActionScriptInput.mouseActionScriptInput ())));
                (self#updateTree ())
            end else if ((((Obj.magic actionEvent)#getActionCommand ())#compareTo (nEW_IMAGE_OUTPUT)) == 0) then begin
                (self#addProcessor ((new ImageActionScriptOutput.imageActionScriptOutput ())));
                (self#updateTree ())
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put ("Error", self, "actionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method getProfileActionProcessorInterfaceVector () : BasicArrayList.basicArrayList =
        begin
        (profileActionProcessorInterfaceVector :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method setProfileActionProcessorInterfaceVector : 'any1. 'any1 -> unit = fun (profileActionProcessorInterfaceVector_arg) ->
        let profileActionProcessorInterfaceVector_arg = Obj.repr profileActionProcessorInterfaceVector_arg in
        begin
        profileActionProcessorInterfaceVector <- (Obj.magic profileActionProcessorInterfaceVector_arg)
        end [@@warning "-7-20"]
    

    method updateTree () : unit =
        begin
        ignore (((JTreeInterfaceFactory.getInstance ())#getJTreeInterface ())#updateJTree ());
        let treePath : Obj.t ref = ref ((Obj.repr (new TreePath.treePath (self)))) in ();
        ignore ((((JTreeInterfaceFactory.getInstance ())#getJTreeInterface ())#getActionScriptJTree ())#expandPath ((Obj.magic !treePath)))
        end [@@warning "-7"]
    

    method shouldProcess ((frame : int)) : bool =
        try
        begin
        let profileActionConditionInterfaceVector_arg : BasicArrayList.basicArrayList ref = ref (((self#getProfileActionConditionInterfaceVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!profileActionConditionInterfaceVector_arg#size ())) in ();
        for index = 0 to !size - 1 do
            let profileActionScriptConditionInterface : Obj.t ref = ref ((Obj.repr (Obj.magic (!profileActionConditionInterfaceVector_arg#get (index))))) in ();
            if (not ((Obj.magic !profileActionScriptConditionInterface)#shouldProcess (frame))) then begin
                raise (Java_return (Obj.repr (false)))
            end
        done;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method process ((frame : int)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ("Start - Processing "))#appendint (((self#getProfileActionProcessorInterfaceVector ())#size ())))#append (" inputs")))), self, (self#commonStrings)#pROCESS));
        let profileActionProcessorInterfaceVector_arg : BasicArrayList.basicArrayList ref = ref (((self#getProfileActionProcessorInterfaceVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!profileActionProcessorInterfaceVector_arg#size ())) in ();
        for index = 0 to !size - 1 do
            let profileActionScriptProcessorInterface : ProfileActionScriptProcessorInterface.profileActionScriptProcessorInterface ref = ref (((Obj.magic (!profileActionProcessorInterfaceVector_arg#get (index))) :> ProfileActionScriptProcessorInterface.profileActionScriptProcessorInterface)) in ();
            ignore (!profileActionScriptProcessorInterface#process (frame))
        done
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        profileActionProcessorInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        profileActionConditionInterfaceVector <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        ();
        (* super(...) is the inherit clause *) ();
        (self#init ())
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "BasicProfileActionScriptCondition" (fun arguments -> Obj.repr (new basicProfileActionScriptCondition (Obj.obj arguments)))


