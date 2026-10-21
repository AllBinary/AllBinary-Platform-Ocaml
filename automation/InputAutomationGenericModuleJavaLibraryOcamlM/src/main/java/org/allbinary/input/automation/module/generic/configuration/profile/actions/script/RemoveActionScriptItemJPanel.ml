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
(* import org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileAction *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActionJPanel *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class removeActionScriptItemJPanel ((genericProfileActionJPanel_arg : GenericProfileActionJPanel.genericProfileActionJPanel), (profileActionScriptConditionInterface_arg : ProfileActionScriptConditionInterface.profileActionScriptConditionInterface)) =
  object (self)
    inherit Panel.panel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable genericProfileActionJPanel : GenericProfileActionJPanel.genericProfileActionJPanel = (Obj.magic 0)
    method genericProfileActionJPanel = genericProfileActionJPanel
    method set_genericProfileActionJPanel value' = genericProfileActionJPanel <- value'
    val mutable profileActionScriptConditionInterface : ProfileActionScriptConditionInterface.profileActionScriptConditionInterface = (Obj.magic 0)
    method profileActionScriptConditionInterface = profileActionScriptConditionInterface
    method set_profileActionScriptConditionInterface value' = profileActionScriptConditionInterface <- value'
    val mutable removeJButton : Obj.t = Obj.repr 0
    method removeJButton : 'r. 'r = Obj.magic removeJButton
    method set_removeJButton : 'v. 'v -> unit = fun value' -> removeJButton <- Obj.repr value'
    
    

    method initComponents () : unit =
        begin
        removeJButton <- Obj.repr ((new JButton.jButton ()));
        ignore (self#setLayout ((new GridLayout.gridLayout ())));
        ignore ((Obj.magic removeJButton)#setText ("Remove"));
        ignore ((Obj.magic removeJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#removeJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#add ((Obj.magic removeJButton)))
        end [@@warning "-7"]
    

    method removeJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        try
        begin
        let genericProfileAction : GenericProfileAction.genericProfileAction ref = ref (((genericProfileActionJPanel#getGenericProfileAction ()) :> GenericProfileAction.genericProfileAction)) in ();
        if (!genericProfileAction == (Obj.magic 0)) then begin
            ignore ((Obj.magic logUtil)#putF ("GenericProfileAction was null", self, "removeJButtonActionPerformed"));
            raise (Java_return (Obj.repr (())))
        end;
        ignore ((!genericProfileAction#getGenericProfileActionScript ())#removeCondition (profileActionScriptConditionInterface));
        ignore (genericProfileActionJPanel#updateProfileActionUI ())
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        removeJButton <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ());
        genericProfileActionJPanel <- genericProfileActionJPanel_arg;
        profileActionScriptConditionInterface <- profileActionScriptConditionInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "RemoveActionScriptItemJPanel" (fun arguments -> Obj.repr (new removeActionScriptItemJPanel (Obj.obj arguments)))


