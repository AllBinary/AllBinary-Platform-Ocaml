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
(* package org.allbinary.input.automation.module.generic.configuration.profile.actions *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.input.automation.actions.script.JTreeInterfaceFactory *)
(* import org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition *)
(* import org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptCondition *)
(* import org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface *)
(* import org.allbinary.input.automation.actions.script.condition.TimeIntervalActionScriptCondition *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.script.GenericProfileActionScriptJPanel *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class genericProfileActionJPanel () =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable genericProfileAction : Obj.t = Obj.repr 0
    method genericProfileAction : 'r. 'r = Obj.magic genericProfileAction
    method set_genericProfileAction : 'v. 'v -> unit = fun value' -> genericProfileAction <- Obj.repr value'
    val mutable genericProfileActionScriptJPanel : Obj.t = Obj.repr 0
    method genericProfileActionScriptJPanel : 'r. 'r = Obj.magic genericProfileActionScriptJPanel
    method set_genericProfileActionScriptJPanel : 'v. 'v -> unit = fun value' -> genericProfileActionScriptJPanel <- Obj.repr value'
    val mutable blankProfileActionScriptJPanel : Obj.t = Obj.repr 0
    method blankProfileActionScriptJPanel : 'r. 'r = Obj.magic blankProfileActionScriptJPanel
    method set_blankProfileActionScriptJPanel : 'v. 'v -> unit = fun value' -> blankProfileActionScriptJPanel <- Obj.repr value'
    val mutable genericProfileActionScriptJScrollPane : Obj.t = Obj.repr 0
    method genericProfileActionScriptJScrollPane : 'r. 'r = Obj.magic genericProfileActionScriptJScrollPane
    method set_genericProfileActionScriptJScrollPane : 'v. 'v -> unit = fun value' -> genericProfileActionScriptJScrollPane <- Obj.repr value'
    val mutable ifJLabel : Obj.t = Obj.repr 0
    method ifJLabel : 'r. 'r = Obj.magic ifJLabel
    method set_ifJLabel : 'v. 'v -> unit = fun value' -> ifJLabel <- Obj.repr value'
    val mutable newAlwaysJButton : Obj.t = Obj.repr 0
    method newAlwaysJButton : 'r. 'r = Obj.magic newAlwaysJButton
    method set_newAlwaysJButton : 'v. 'v -> unit = fun value' -> newAlwaysJButton <- Obj.repr value'
    val mutable newColorAtJButton : Obj.t = Obj.repr 0
    method newColorAtJButton : 'r. 'r = Obj.magic newColorAtJButton
    method set_newColorAtJButton : 'v. 'v -> unit = fun value' -> newColorAtJButton <- Obj.repr value'
    val mutable newTimeIntervalJButton : Obj.t = Obj.repr 0
    method newTimeIntervalJButton : 'r. 'r = Obj.magic newTimeIntervalJButton
    method set_newTimeIntervalJButton : 'v. 'v -> unit = fun value' -> newTimeIntervalJButton <- Obj.repr value'
    
    

    method updateProfileActionUI () : unit =
        begin
        ignore ((Obj.magic blankProfileActionScriptJPanel)#removeAll ());
        let genericProfileActionScriptJPanel_arg : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "GenericProfileActionScriptJPanel" (Obj.repr ()))))) in ();
        ignore ((JTreeInterfaceFactory.getInstance ())#set ((Obj.magic !genericProfileActionScriptJPanel_arg)));
        (self#setGenericProfileActionScriptJPanel ((Obj.magic !genericProfileActionScriptJPanel_arg)));
        ignore ((self#getGenericProfileActionScriptJPanel ())#setGenericProfileActionScript (((self#getGenericProfileAction ())#getGenericProfileActionScript ())));
        ignore ((self#getGenericProfileActionScriptJPanel ())#updateJTree ());
        let layout : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic blankProfileActionScriptJPanel)#getLayout ())))) in ();
        ignore ((Obj.magic !layout)#setHorizontalGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 395, 32767))#addComponent ((self#getGenericProfileActionScriptJPanel ()), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))));
        ignore ((Obj.magic !layout)#setVerticalGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 256, 32767))#addComponent ((self#getGenericProfileActionScriptJPanel ()), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))));
        ignore ((Obj.magic logUtil)#putF ("Updated UI", self, "updateUI"))
        end [@@warning "-7"]
    

    method getGenericProfileAction : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic genericProfileAction)))
        end [@@warning "-7"]
    

    method setGenericProfileAction : 'any1. 'any1 -> unit = fun (genericProfileAction_arg) ->
        let genericProfileAction_arg = Obj.repr genericProfileAction_arg in
        begin
        genericProfileAction <- Obj.repr ((Obj.magic genericProfileAction_arg))
        end [@@warning "-7-20"]
    

    method getGenericProfileActionScriptJPanel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic genericProfileActionScriptJPanel)))
        end [@@warning "-7"]
    

    method setGenericProfileActionScriptJPanel : 'any1. 'any1 -> unit = fun (genericProfileActionScriptJPanel_arg) ->
        let genericProfileActionScriptJPanel_arg = Obj.repr genericProfileActionScriptJPanel_arg in
        begin
        genericProfileActionScriptJPanel <- Obj.repr ((Obj.magic genericProfileActionScriptJPanel_arg))
        end [@@warning "-7-20"]
    

    method initComponents () : unit =
        begin
        genericProfileActionScriptJScrollPane <- Obj.repr ((new JScrollPane.jScrollPane ()));
        blankProfileActionScriptJPanel <- Obj.repr ((new JPanel.jPanel ()));
        ifJLabel <- Obj.repr ((new JLabel.jLabel ()));
        newColorAtJButton <- Obj.repr ((new JButton.jButton ()));
        newTimeIntervalJButton <- Obj.repr ((new JButton.jButton ()));
        newAlwaysJButton <- Obj.repr ((new JButton.jButton ()));
        ignore (self#setMinimumSize ((new Dimension.dimension (440, 275))));
        ignore (self#setPreferredSize ((new Dimension.dimension (440, 275))));
        ignore ((Obj.magic genericProfileActionScriptJScrollPane)#setPreferredSize ((new Dimension.dimension (474, 270))));
        ignore ((Obj.magic blankProfileActionScriptJPanel)#setMinimumSize ((new Dimension.dimension (400, 200))));
        let blankProfileActionScriptJPanelLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic blankProfileActionScriptJPanel))))) in ();
        ignore ((Obj.magic blankProfileActionScriptJPanel)#setLayout ((Obj.magic !blankProfileActionScriptJPanelLayout)));
        ignore ((Obj.magic !blankProfileActionScriptJPanelLayout)#setHorizontalGroup ((((Obj.magic !blankProfileActionScriptJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 9996, 32767))));
        ignore ((Obj.magic !blankProfileActionScriptJPanelLayout)#setVerticalGroup ((((Obj.magic !blankProfileActionScriptJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 9967, 32767))));
        ignore ((Obj.magic genericProfileActionScriptJScrollPane)#setViewportView ((Obj.magic blankProfileActionScriptJPanel)));
        ignore ((Obj.magic ifJLabel)#setText ("Conditions:"));
        ignore ((Obj.magic newColorAtJButton)#setText ("Color Range At"));
        ignore ((Obj.magic newColorAtJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#newColorAtJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic newTimeIntervalJButton)#setText ("Time Interval"));
        ignore ((Obj.magic newTimeIntervalJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#newTimeIntervalJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic newAlwaysJButton)#setText ("Always On/Off"));
        ignore ((Obj.magic newAlwaysJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#newAlwaysJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((((((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic ifJLabel)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic newColorAtJButton)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic newTimeIntervalJButton)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic newAlwaysJButton)))#addContainerGap (61, 32767))))#addComponent ((Obj.magic genericProfileActionScriptJScrollPane), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 440, 32767))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !layout)#createSequentialGroup ())#addGroup (((((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic ifJLabel), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 14, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addComponent ((Obj.magic newColorAtJButton)))#addComponent ((Obj.magic newTimeIntervalJButton)))#addComponent ((Obj.magic newAlwaysJButton)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic genericProfileActionScriptJScrollPane), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 246, 32767))))))
        end [@@warning "-7"]
    

    method newTimeIntervalJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic logUtil)#putF ("New Time Interval Action Condition", self, "newTimeIntervalJButtonActionPerformed"));
        ignore (((self#getGenericProfileAction ())#getGenericProfileActionScript ())#addCondition ((Obj.magic (new TimeIntervalActionScriptCondition.timeIntervalActionScriptCondition ()))));
        (self#updateProfileActionUI ())
        end [@@warning "-7-20"]
    

    method newAlwaysJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic logUtil)#putF ("New EveryTime Action Condition", self, "newEveryTimeJButtonActionPerformed"));
        ignore (((self#getGenericProfileAction ())#getGenericProfileActionScript ())#addCondition ((Obj.magic (new AlwaysActionScriptCondition.alwaysActionScriptCondition ()))));
        (self#updateProfileActionUI ())
        end [@@warning "-7-20"]
    

    method newColorAtJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic logUtil)#putF ("New Color At Action Condition", self, "newColorAtJButtonActionPerformed"));
        ignore (((self#getGenericProfileAction ())#getGenericProfileActionScript ())#addCondition ((Obj.magic (new ColorAtActionScriptCondition.colorAtActionScriptCondition ()))));
        (self#updateProfileActionUI ())
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        genericProfileAction <- (Obj.repr (Obj.magic 0));
        genericProfileActionScriptJPanel <- (Obj.repr (Obj.magic 0));
        blankProfileActionScriptJPanel <- (Obj.repr (Obj.magic 0));
        genericProfileActionScriptJScrollPane <- (Obj.repr (Obj.magic 0));
        ifJLabel <- (Obj.repr (Obj.magic 0));
        newAlwaysJButton <- (Obj.repr (Obj.magic 0));
        newColorAtJButton <- (Obj.repr (Obj.magic 0));
        newTimeIntervalJButton <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "GenericProfileActionJPanel" (fun arguments -> Obj.repr (new genericProfileActionJPanel (Obj.obj arguments)))


