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
(* package org.allbinary.input.automation.actions.script.condition.processors.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.event.InputEvent *)
(* import javax.swing *)
(* import org.allbinary.input.automation.robot.InputRobot *)
(* import org.allbinary.input.automation.robot.InputRobotFactory *)
(* import org.allbinary.input.automation.robot.TempInputRobotNames *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonStrings *)

class mouseActionScriptInputJPanel (mouseActionScriptInputInterface_arg) =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable mouseActionScriptInputInterface : Obj.t = Obj.repr 0
    method mouseActionScriptInputInterface : 'r. 'r = Obj.magic mouseActionScriptInputInterface
    method set_mouseActionScriptInputInterface : 'v. 'v -> unit = fun value' -> mouseActionScriptInputInterface <- Obj.repr value'
    val mutable button1JCheckBox : Obj.t = Obj.repr 0
    method button1JCheckBox : 'r. 'r = Obj.magic button1JCheckBox
    method set_button1JCheckBox : 'v. 'v -> unit = fun value' -> button1JCheckBox <- Obj.repr value'
    val mutable button2JCheckBox : Obj.t = Obj.repr 0
    method button2JCheckBox : 'r. 'r = Obj.magic button2JCheckBox
    method set_button2JCheckBox : 'v. 'v -> unit = fun value' -> button2JCheckBox <- Obj.repr value'
    val mutable inputAutomationTypeJComboBox : Obj.t = Obj.repr 0
    method inputAutomationTypeJComboBox : 'r. 'r = Obj.magic inputAutomationTypeJComboBox
    method set_inputAutomationTypeJComboBox : 'v. 'v -> unit = fun value' -> inputAutomationTypeJComboBox <- Obj.repr value'
    val mutable inputTypeJLabel : Obj.t = Obj.repr 0
    method inputTypeJLabel : 'r. 'r = Obj.magic inputTypeJLabel
    method set_inputTypeJLabel : 'v. 'v -> unit = fun value' -> inputTypeJLabel <- Obj.repr value'
    val mutable jLabel1 : Obj.t = Obj.repr 0
    method jLabel1 : 'r. 'r = Obj.magic jLabel1
    method set_jLabel1 : 'v. 'v -> unit = fun value' -> jLabel1 <- Obj.repr value'
    val mutable jLabel2 : Obj.t = Obj.repr 0
    method jLabel2 : 'r. 'r = Obj.magic jLabel2
    method set_jLabel2 : 'v. 'v -> unit = fun value' -> jLabel2 <- Obj.repr value'
    val mutable jLabel3 : Obj.t = Obj.repr 0
    method jLabel3 : 'r. 'r = Obj.magic jLabel3
    method set_jLabel3 : 'v. 'v -> unit = fun value' -> jLabel3 <- Obj.repr value'
    val mutable jLabel4 : Obj.t = Obj.repr 0
    method jLabel4 : 'r. 'r = Obj.magic jLabel4
    method set_jLabel4 : 'v. 'v -> unit = fun value' -> jLabel4 <- Obj.repr value'
    val mutable jLabel5 : Obj.t = Obj.repr 0
    method jLabel5 : 'r. 'r = Obj.magic jLabel5
    method set_jLabel5 : 'v. 'v -> unit = fun value' -> jLabel5 <- Obj.repr value'
    val mutable jLabel6 : Obj.t = Obj.repr 0
    method jLabel6 : 'r. 'r = Obj.magic jLabel6
    method set_jLabel6 : 'v. 'v -> unit = fun value' -> jLabel6 <- Obj.repr value'
    val mutable mouseActionJButton : Obj.t = Obj.repr 0
    method mouseActionJButton : 'r. 'r = Obj.magic mouseActionJButton
    method set_mouseActionJButton : 'v. 'v -> unit = fun value' -> mouseActionJButton <- Obj.repr value'
    val mutable mouseActionJDialog : Obj.t = Obj.repr 0
    method mouseActionJDialog : 'r. 'r = Obj.magic mouseActionJDialog
    method set_mouseActionJDialog : 'v. 'v -> unit = fun value' -> mouseActionJDialog <- Obj.repr value'
    val mutable mouseDelayJTextField : Obj.t = Obj.repr 0
    method mouseDelayJTextField : 'r. 'r = Obj.magic mouseDelayJTextField
    method set_mouseDelayJTextField : 'v. 'v -> unit = fun value' -> mouseDelayJTextField <- Obj.repr value'
    val mutable mouseXJTextField : Obj.t = Obj.repr 0
    method mouseXJTextField : 'r. 'r = Obj.magic mouseXJTextField
    method set_mouseXJTextField : 'v. 'v -> unit = fun value' -> mouseXJTextField <- Obj.repr value'
    val mutable mouseYJTextField : Obj.t = Obj.repr 0
    method mouseYJTextField : 'r. 'r = Obj.magic mouseYJTextField
    method set_mouseYJTextField : 'v. 'v -> unit = fun value' -> mouseYJTextField <- Obj.repr value'
    val mutable okJButton : Obj.t = Obj.repr 0
    method okJButton : 'r. 'r = Obj.magic okJButton
    method set_okJButton : 'v. 'v -> unit = fun value' -> okJButton <- Obj.repr value'
    val mutable titleJLabel : Obj.t = Obj.repr 0
    method titleJLabel : 'r. 'r = Obj.magic titleJLabel
    method set_titleJLabel : 'v. 'v -> unit = fun value' -> titleJLabel <- Obj.repr value'
    
    

    method set () : unit =
        begin
        let inputTypeComboBoxModel : Obj.t ref = ref ((Obj.repr ((Obj.magic inputAutomationTypeJComboBox)#getModel ()))) in ();
        ignore ((Obj.magic !inputTypeComboBoxModel)#setSelectedItem ((((Obj.magic mouseActionScriptInputInterface)#getInputRobotInterface ())#getName ())));
        if (((((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ()) land (InputEvent.get_bUTTON1_MASK ()))) != 0) then begin
            ignore ((Obj.magic button1JCheckBox)#setSelected (true))
        end else begin
            ignore ((Obj.magic button1JCheckBox)#setSelected (false))
        end;
        if (((((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ()) land (InputEvent.get_bUTTON2_MASK ()))) != 0) then begin
            ignore ((Obj.magic button2JCheckBox)#setSelected (true))
        end else begin
            ignore ((Obj.magic button2JCheckBox)#setSelected (false))
        end;
        ignore ((Obj.magic mouseDelayJTextField)#setText ((string_of_int (((Obj.magic mouseActionScriptInputInterface)#getTime ())))));
        ignore ((Obj.magic mouseXJTextField)#setText ((string_of_int (((Obj.magic mouseActionScriptInputInterface)#getPoint ())#x))));
        ignore ((Obj.magic mouseYJTextField)#setText ((string_of_int (((Obj.magic mouseActionScriptInputInterface)#getPoint ())#y))));
        ignore ((Obj.magic mouseActionScriptInputInterface)#log ())
        end [@@warning "-7"]
    

    method updateInputType () : unit =
        begin
        let comboBoxModel : Obj.t ref = ref ((Obj.repr ((Obj.magic inputAutomationTypeJComboBox)#getModel ()))) in ();
        let selectedItem : string ref = ref ((Obj.magic ((Obj.magic !comboBoxModel)#getSelectedItem ()))) in ();
        if (not ((StringValidationUtil.getInstance ())#isEmpty (!selectedItem))) then begin
            ignore ((Obj.magic mouseActionScriptInputInterface)#setInputRobotInterface (((InputRobotFactory.getInstance ())#get (!selectedItem))))
        end
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        (self#updateInputType ());
        ignore ((Obj.magic mouseActionScriptInputInterface)#setTime ((string_of_int (((Obj.magic mouseDelayJTextField)#getText ())))));
        ignore ((Obj.magic logUtil)#putF (("Button State: " ^ java_string_of (Obj.repr (((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ())))), self, "update"));
        if ((Obj.magic button1JCheckBox)#isSelected ()) then begin
            if (((((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ()) land (InputEvent.get_bUTTON1_MASK ()))) == 0) then begin
                ignore ((Obj.magic mouseActionScriptInputInterface)#setButtonClicks ((((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ()) lor (InputEvent.get_bUTTON1_MASK ()))));
                ignore ((Obj.magic logUtil)#putF (("Button 1 Selected: " ^ java_string_of (Obj.repr (((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ())))), self, "update"))
            end
        end else begin
            if (((((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ()) land (InputEvent.get_bUTTON1_MASK ()))) != 0) then begin
                ignore ((Obj.magic mouseActionScriptInputInterface)#setButtonClicks ((((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ()) lxor (InputEvent.get_bUTTON1_MASK ()))));
                ignore ((Obj.magic logUtil)#putF (("Button 1 Deselected: " ^ java_string_of (Obj.repr (((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ())))), self, "update"))
            end
        end;
        if ((Obj.magic button2JCheckBox)#isSelected ()) then begin
            if (((((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ()) land (InputEvent.get_bUTTON2_MASK ()))) == 0) then begin
                ignore ((Obj.magic mouseActionScriptInputInterface)#setButtonClicks ((((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ()) lor (InputEvent.get_bUTTON2_MASK ()))));
                ignore ((Obj.magic logUtil)#putF (("Button 2 Selected: " ^ java_string_of (Obj.repr (((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ())))), self, "update"))
            end
        end else begin
            if (((((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ()) land (InputEvent.get_bUTTON2_MASK ()))) != 0) then begin
                ignore ((Obj.magic mouseActionScriptInputInterface)#setButtonClicks ((((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ()) lxor (InputEvent.get_bUTTON2_MASK ()))));
                ignore ((Obj.magic logUtil)#putF (("Button 2 Deselected: " ^ java_string_of (Obj.repr (((Obj.magic mouseActionScriptInputInterface)#getButtonClicks ())))), self, "update"))
            end
        end;
        let mouseXString : string ref = ref (((Obj.magic mouseXJTextField)#getText ())) in ();
        if ((not ((StringValidationUtil.getInstance ())#isEmpty (!mouseXString))) && ((StringValidationUtil.getInstance ())#isNumber (!mouseXString))) then begin
            ((Obj.magic mouseActionScriptInputInterface)#getPoint ())#set_x ((int_of_string (!mouseXString)))
        end;
        let mouseYString : string ref = ref (((Obj.magic mouseYJTextField)#getText ())) in ();
        if ((not ((StringValidationUtil.getInstance ())#isEmpty (!mouseYString))) && ((StringValidationUtil.getInstance ())#isNumber (!mouseYString))) then begin
            ((Obj.magic mouseActionScriptInputInterface)#getPoint ())#set_y ((int_of_string (!mouseYString)))
        end;
        ignore ((Obj.magic mouseActionScriptInputInterface)#log ())
        end [@@warning "-7"]
    

    method getMouseActionJDialog : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic mouseActionJDialog)))
        end [@@warning "-7"]
    

    method setMouseActionJDialog : 'any1. 'any1 -> unit = fun (mouseActionJDialog_arg) ->
        let mouseActionJDialog_arg = Obj.repr mouseActionJDialog_arg in
        begin
        mouseActionJDialog <- Obj.repr ((Obj.magic mouseActionJDialog_arg))
        end [@@warning "-7-20"]
    

    method initComponents () : unit =
        begin
        mouseActionJDialog <- Obj.repr ((new JDialog.jDialog ()));
        titleJLabel <- Obj.repr ((new JLabel.jLabel ()));
        okJButton <- Obj.repr ((new JButton.jButton ()));
        jLabel2 <- Obj.repr ((new JLabel.jLabel ()));
        jLabel3 <- Obj.repr ((new JLabel.jLabel ()));
        button1JCheckBox <- Obj.repr ((new JCheckBox.jCheckBox ()));
        button2JCheckBox <- Obj.repr ((new JCheckBox.jCheckBox ()));
        jLabel4 <- Obj.repr ((new JLabel.jLabel ()));
        mouseXJTextField <- Obj.repr ((new JTextField.jTextField ()));
        jLabel5 <- Obj.repr ((new JLabel.jLabel ()));
        mouseYJTextField <- Obj.repr ((new JTextField.jTextField ()));
        inputTypeJLabel <- Obj.repr ((new JLabel.jLabel ()));
        inputAutomationTypeJComboBox <- Obj.repr ((new JComboBox.jComboBox ()));
        jLabel6 <- Obj.repr ((new JLabel.jLabel ()));
        mouseDelayJTextField <- Obj.repr ((new JTextField.jTextField ()));
        mouseActionJButton <- Obj.repr ((new JButton.jButton ()));
        jLabel1 <- Obj.repr ((new JLabel.jLabel ()));
        ignore ((Obj.magic mouseActionJDialog)#setMinimumSize ((new Dimension.dimension (275, 185))));
        ignore ((Obj.magic titleJLabel)#setText ("Mouse Input Options"));
        ignore ((Obj.magic okJButton)#setText ("OK"));
        ignore ((Obj.magic okJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#okJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel2)#setText ("Buttons:"));
        ignore ((Obj.magic jLabel3)#setText ("Move To:"));
        ignore ((Obj.magic button1JCheckBox)#setText ((CommonPhoneStrings.getInstance ())#oNE));
        ignore ((Obj.magic button1JCheckBox)#setBorder (((javax.get_swing ())#borderFactory#createEmptyBorder (0, 0, 0, 0))));
        ignore ((Obj.magic button1JCheckBox)#setMargin ((new Insets.insets (0, 0, 0, 0))));
        ignore ((Obj.magic button2JCheckBox)#setText ((CommonPhoneStrings.getInstance ())#tWO));
        ignore ((Obj.magic button2JCheckBox)#setBorder (((javax.get_swing ())#borderFactory#createEmptyBorder (0, 0, 0, 0))));
        ignore ((Obj.magic button2JCheckBox)#setMargin ((new Insets.insets (0, 0, 0, 0))));
        ignore ((Obj.magic button2JCheckBox)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#button2JCheckBoxActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel4)#setText ("x:"));
        ignore ((Obj.magic mouseXJTextField)#setText ((CommonPhoneStrings.getInstance ())#zERO));
        ignore ((Obj.magic jLabel5)#setText ("y:"));
        ignore ((Obj.magic mouseYJTextField)#setText ((CommonPhoneStrings.getInstance ())#zERO));
        ignore ((Obj.magic inputTypeJLabel)#setText ("Input Type:"));
        ignore ((Obj.magic jLabel6)#setText ("Delay:"));
        ignore ((Obj.magic mouseDelayJTextField)#setText ("100"));
        let mouseActionJDialogLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (((Obj.magic mouseActionJDialog)#getContentPane ()))))) in ();
        ignore (((Obj.magic mouseActionJDialog)#getContentPane ())#setLayout ((Obj.magic !mouseActionJDialogLayout)));
        ignore ((Obj.magic !mouseActionJDialogLayout)#setHorizontalGroup ((((Obj.magic !mouseActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !mouseActionJDialogLayout)#createSequentialGroup ())#addContainerGap ())#addGroup (((((Obj.magic !mouseActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic inputTypeJLabel)))#addGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING, ((((Obj.magic !mouseActionJDialogLayout)#createSequentialGroup ())#addGroup (((((Obj.magic !mouseActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING, ((((Obj.magic !mouseActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic jLabel2)))#addGap (25, 25, 25))))#addGroup (((((Obj.magic !mouseActionJDialogLayout)#createSequentialGroup ())#addGroup (((((Obj.magic !mouseActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic jLabel3)))#addComponent ((Obj.magic jLabel6)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))))))#addGroup ((((((((Obj.magic !mouseActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic mouseDelayJTextField), (javax.get_swing ())#groupLayout#alignment#tRAILING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 154, 32767))#addGroup (((((Obj.magic !mouseActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic titleJLabel)))#addGap (45, 45, 45))))#addGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING, ((((Obj.magic !mouseActionJDialogLayout)#createSequentialGroup ())#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic inputAutomationTypeJComboBox), 0, 154, 32767))))#addGroup ((((((Obj.magic !mouseActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic button1JCheckBox)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic button2JCheckBox)))))#addGroup ((((((((Obj.magic !mouseActionJDialogLayout)#createSequentialGroup ())#addGroup (((((Obj.magic !mouseActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING))#addGroup (((((Obj.magic !mouseActionJDialogLayout)#createSequentialGroup ())#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic okJButton)))))#addGroup ((((((Obj.magic !mouseActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic jLabel4)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, 5, 32767))#addComponent ((Obj.magic mouseXJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 59, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jLabel5)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic mouseYJTextField), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 62, 32767))))))))))#addContainerGap ())))));
        ignore ((Obj.magic !mouseActionJDialogLayout)#setVerticalGroup ((((Obj.magic !mouseActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((((((((((((Obj.magic !mouseActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic titleJLabel)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !mouseActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic inputTypeJLabel)))#addComponent ((Obj.magic inputAutomationTypeJComboBox), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !mouseActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic jLabel2), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 15, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addGroup (((((Obj.magic !mouseActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic button1JCheckBox)))#addComponent ((Obj.magic button2JCheckBox)))))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !mouseActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel6)))#addComponent ((Obj.magic mouseDelayJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup ((((((((Obj.magic !mouseActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel3)))#addComponent ((Obj.magic jLabel4)))#addComponent ((Obj.magic jLabel5)))#addComponent ((Obj.magic mouseYJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addComponent ((Obj.magic mouseXJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))#addComponent ((Obj.magic okJButton)))#addContainerGap ())))));
        ignore (self#setMinimumSize ((new Dimension.dimension (100, 0))));
        ignore ((Obj.magic mouseActionJButton)#setText ("Edit"));
        ignore ((Obj.magic mouseActionJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#mouseActionJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel1)#setText ("Mouse:"));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic jLabel1)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, 36, 32767))#addComponent ((Obj.magic mouseActionJButton)))))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel1)))#addComponent ((Obj.magic mouseActionJButton)))))))
        end [@@warning "-7"]
    

    method button2JCheckBoxActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method okJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            (self#update ());
            ignore ((self#getMouseActionJDialog ())#setVisible (false))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "okButtonActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method mouseActionJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((self#getMouseActionJDialog ())#setVisible (true))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        button1JCheckBox <- (Obj.repr (Obj.magic 0));
        button2JCheckBox <- (Obj.repr (Obj.magic 0));
        inputAutomationTypeJComboBox <- (Obj.repr (Obj.magic 0));
        inputTypeJLabel <- (Obj.repr (Obj.magic 0));
        jLabel1 <- (Obj.repr (Obj.magic 0));
        jLabel2 <- (Obj.repr (Obj.magic 0));
        jLabel3 <- (Obj.repr (Obj.magic 0));
        jLabel4 <- (Obj.repr (Obj.magic 0));
        jLabel5 <- (Obj.repr (Obj.magic 0));
        jLabel6 <- (Obj.repr (Obj.magic 0));
        mouseActionJButton <- (Obj.repr (Obj.magic 0));
        mouseActionJDialog <- (Obj.repr (Obj.magic 0));
        mouseDelayJTextField <- (Obj.repr (Obj.magic 0));
        mouseXJTextField <- (Obj.repr (Obj.magic 0));
        mouseYJTextField <- (Obj.repr (Obj.magic 0));
        okJButton <- (Obj.repr (Obj.magic 0));
        titleJLabel <- (Obj.repr (Obj.magic 0));
        ();
        ignore ((Obj.magic logUtil)#putF (((CommonLabels.getInstance ())#sTART + mouseActionScriptInputInterface_arg), self, commonStrings#cONSTRUCTOR));
        (self#initComponents ());
        mouseActionScriptInputInterface <- Obj.repr (mouseActionScriptInputInterface_arg);
        let defaultComboBoxModel : Obj.t ref = ref ((Obj.repr (new DefaultComboBoxModel.defaultComboBoxModel ()))) in ();
        ignore ((Obj.magic !defaultComboBoxModel)#addElement ((TempInputRobotNames.get_lOW_NAME ())));
        ignore ((Obj.magic !defaultComboBoxModel)#addElement ((TempInputRobotNames.get_sYS_NAME ())));
        ignore ((Obj.magic !defaultComboBoxModel)#addElement ((InputRobot.get_nAME ())));
        ignore ((Obj.magic inputAutomationTypeJComboBox)#setModel ((Obj.magic !defaultComboBoxModel)));
        (self#set ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "MouseActionScriptInputJPanel" (fun arguments -> Obj.repr (new mouseActionScriptInputJPanel (Obj.obj arguments)))


