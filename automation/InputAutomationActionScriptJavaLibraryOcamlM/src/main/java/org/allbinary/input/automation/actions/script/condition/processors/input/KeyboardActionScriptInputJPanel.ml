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
(* import javax.swing *)
(* import org.allbinary.input.KeySingletonFactory *)
(* import org.allbinary.input.automation.robot.InputRobot *)
(* import org.allbinary.input.automation.robot.InputRobotFactory *)
(* import org.allbinary.input.automation.robot.TempInputRobotNames *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonStrings *)

class keyboardActionScriptInputJPanel (keyActionScriptInputInterface_arg) =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable keyActionScriptInputInterface : Obj.t = Obj.repr 0
    method keyActionScriptInputInterface : 'r. 'r = Obj.magic keyActionScriptInputInterface
    method set_keyActionScriptInputInterface : 'v. 'v -> unit = fun value' -> keyActionScriptInputInterface <- Obj.repr value'
    val mutable addKeyJLabel : Obj.t = Obj.repr 0
    method addKeyJLabel : 'r. 'r = Obj.magic addKeyJLabel
    method set_addKeyJLabel : 'v. 'v -> unit = fun value' -> addKeyJLabel <- Obj.repr value'
    val mutable delayBetweenJLabel : Obj.t = Obj.repr 0
    method delayBetweenJLabel : 'r. 'r = Obj.magic delayBetweenJLabel
    method set_delayBetweenJLabel : 'v. 'v -> unit = fun value' -> delayBetweenJLabel <- Obj.repr value'
    val mutable delayJTextField : Obj.t = Obj.repr 0
    method delayJTextField : 'r. 'r = Obj.magic delayJTextField
    method set_delayJTextField : 'v. 'v -> unit = fun value' -> delayJTextField <- Obj.repr value'
    val mutable holdTimeJLabel : Obj.t = Obj.repr 0
    method holdTimeJLabel : 'r. 'r = Obj.magic holdTimeJLabel
    method set_holdTimeJLabel : 'v. 'v -> unit = fun value' -> holdTimeJLabel <- Obj.repr value'
    val mutable inputAutomationTypeJComboBox : Obj.t = Obj.repr 0
    method inputAutomationTypeJComboBox : 'r. 'r = Obj.magic inputAutomationTypeJComboBox
    method set_inputAutomationTypeJComboBox : 'v. 'v -> unit = fun value' -> inputAutomationTypeJComboBox <- Obj.repr value'
    val mutable inputTypeJLabel : Obj.t = Obj.repr 0
    method inputTypeJLabel : 'r. 'r = Obj.magic inputTypeJLabel
    method set_inputTypeJLabel : 'v. 'v -> unit = fun value' -> inputTypeJLabel <- Obj.repr value'
    val mutable jLabel1 : Obj.t = Obj.repr 0
    method jLabel1 : 'r. 'r = Obj.magic jLabel1
    method set_jLabel1 : 'v. 'v -> unit = fun value' -> jLabel1 <- Obj.repr value'
    val mutable jPanel1 : Obj.t = Obj.repr 0
    method jPanel1 : 'r. 'r = Obj.magic jPanel1
    method set_jPanel1 : 'v. 'v -> unit = fun value' -> jPanel1 <- Obj.repr value'
    val mutable keyActionJButton : Obj.t = Obj.repr 0
    method keyActionJButton : 'r. 'r = Obj.magic keyActionJButton
    method set_keyActionJButton : 'v. 'v -> unit = fun value' -> keyActionJButton <- Obj.repr value'
    val mutable keyActionJDialog : Obj.t = Obj.repr 0
    method keyActionJDialog : 'r. 'r = Obj.magic keyActionJDialog
    method set_keyActionJDialog : 'v. 'v -> unit = fun value' -> keyActionJDialog <- Obj.repr value'
    val mutable keyIntegerJComboBox : Obj.t = Obj.repr 0
    method keyIntegerJComboBox : 'r. 'r = Obj.magic keyIntegerJComboBox
    method set_keyIntegerJComboBox : 'v. 'v -> unit = fun value' -> keyIntegerJComboBox <- Obj.repr value'
    val mutable keyNameJComboBox : Obj.t = Obj.repr 0
    method keyNameJComboBox : 'r. 'r = Obj.magic keyNameJComboBox
    method set_keyNameJComboBox : 'v. 'v -> unit = fun value' -> keyNameJComboBox <- Obj.repr value'
    val mutable normalJRadioButton : Obj.t = Obj.repr 0
    method normalJRadioButton : 'r. 'r = Obj.magic normalJRadioButton
    method set_normalJRadioButton : 'v. 'v -> unit = fun value' -> normalJRadioButton <- Obj.repr value'
    val mutable okJButton : Obj.t = Obj.repr 0
    method okJButton : 'r. 'r = Obj.magic okJButton
    method set_okJButton : 'v. 'v -> unit = fun value' -> okJButton <- Obj.repr value'
    val mutable pressJRadioButton : Obj.t = Obj.repr 0
    method pressJRadioButton : 'r. 'r = Obj.magic pressJRadioButton
    method set_pressJRadioButton : 'v. 'v -> unit = fun value' -> pressJRadioButton <- Obj.repr value'
    val mutable releaseJRadioButton : Obj.t = Obj.repr 0
    method releaseJRadioButton : 'r. 'r = Obj.magic releaseJRadioButton
    method set_releaseJRadioButton : 'v. 'v -> unit = fun value' -> releaseJRadioButton <- Obj.repr value'
    val mutable sequenceJRadioButton : Obj.t = Obj.repr 0
    method sequenceJRadioButton : 'r. 'r = Obj.magic sequenceJRadioButton
    method set_sequenceJRadioButton : 'v. 'v -> unit = fun value' -> sequenceJRadioButton <- Obj.repr value'
    val mutable simultaneousJRadioButton : Obj.t = Obj.repr 0
    method simultaneousJRadioButton : 'r. 'r = Obj.magic simultaneousJRadioButton
    method set_simultaneousJRadioButton : 'v. 'v -> unit = fun value' -> simultaneousJRadioButton <- Obj.repr value'
    val mutable testJLabel : Obj.t = Obj.repr 0
    method testJLabel : 'r. 'r = Obj.magic testJLabel
    method set_testJLabel : 'v. 'v -> unit = fun value' -> testJLabel <- Obj.repr value'
    val mutable textJTextField : Obj.t = Obj.repr 0
    method textJTextField : 'r. 'r = Obj.magic textJTextField
    method set_textJTextField : 'v. 'v -> unit = fun value' -> textJTextField <- Obj.repr value'
    val mutable timeJTextField : Obj.t = Obj.repr 0
    method timeJTextField : 'r. 'r = Obj.magic timeJTextField
    method set_timeJTextField : 'v. 'v -> unit = fun value' -> timeJTextField <- Obj.repr value'
    val mutable titleJLabel : Obj.t = Obj.repr 0
    method titleJLabel : 'r. 'r = Obj.magic titleJLabel
    method set_titleJLabel : 'v. 'v -> unit = fun value' -> titleJLabel <- Obj.repr value'
    
    

    method set () : unit =
        begin
        let inputTypeComboBoxModel : Obj.t ref = ref ((Obj.repr ((Obj.magic inputAutomationTypeJComboBox)#getModel ()))) in ();
        ignore ((Obj.magic !inputTypeComboBoxModel)#setSelectedItem ((((Obj.magic keyActionScriptInputInterface)#getInputRobotInterface ())#getName ())));
        ignore ((Obj.magic textJTextField)#setText (((Obj.magic keyActionScriptInputInterface)#getText ())));
        ignore ((Obj.magic delayJTextField)#setText ((string_of_int (((Obj.magic keyActionScriptInputInterface)#getDelayBetweenKeys ())))));
        ignore ((Obj.magic timeJTextField)#setText ((string_of_int (((Obj.magic keyActionScriptInputInterface)#getTime ())))));
        ignore ((Obj.magic keyActionScriptInputInterface)#log ())
        end [@@warning "-7"]
    

    method updateInputType () : unit =
        begin
        let comboBoxModel : Obj.t ref = ref ((Obj.repr ((Obj.magic inputAutomationTypeJComboBox)#getModel ()))) in ();
        let selectedItem : string ref = ref ((Obj.magic ((Obj.magic !comboBoxModel)#getSelectedItem ()))) in ();
        if (not ((StringValidationUtil.getInstance ())#isEmpty (!selectedItem))) then begin
            ignore ((Obj.magic keyActionScriptInputInterface)#setInputRobotInterface (((InputRobotFactory.getInstance ())#get (!selectedItem))))
        end
        end [@@warning "-7"]
    

    method getSelectedKey () : int =
        try
        begin
        let comboBoxModel : Obj.t ref = ref ((Obj.repr ((Obj.magic keyNameJComboBox)#getModel ()))) in ();
        let selectedItem : string ref = ref ((Obj.magic ((Obj.magic !comboBoxModel)#getSelectedItem ()))) in ();
        if (not ((StringValidationUtil.getInstance ())#isEmpty (!selectedItem))) then begin
            raise (Java_return (Obj.repr ((Obj.magic ((KeySingletonFactory.getHashtable ())#get (!selectedItem))))))
        end;
        (Obj.magic 0)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method updateKeys () : unit =
        begin
        let text : string ref = ref (((Obj.magic textJTextField)#getText ())) in ();
        ignore ((Obj.magic keyActionScriptInputInterface)#setText (!text))
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        (self#updateInputType ());
        (self#updateKeys ());
        ignore ((Obj.magic keyActionScriptInputInterface)#setTime (((string_of_int (((Obj.magic timeJTextField)#getText ())))#intValue ())));
        ignore ((Obj.magic keyActionScriptInputInterface)#log ())
        end [@@warning "-7"]
    

    method getKeyActionJDialog : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic keyActionJDialog)))
        end [@@warning "-7"]
    

    method setKeyActionJDialog : 'any1. 'any1 -> unit = fun (keyActionJDialog_arg) ->
        let keyActionJDialog_arg = Obj.repr keyActionJDialog_arg in
        begin
        keyActionJDialog <- Obj.repr ((Obj.magic keyActionJDialog_arg))
        end [@@warning "-7-20"]
    

    method initComponents () : unit =
        begin
        keyActionJDialog <- Obj.repr ((new JDialog.jDialog ()));
        titleJLabel <- Obj.repr ((new JLabel.jLabel ()));
        addKeyJLabel <- Obj.repr ((new JLabel.jLabel ()));
        keyNameJComboBox <- Obj.repr ((new JComboBox.jComboBox ()));
        timeJTextField <- Obj.repr ((new JTextField.jTextField ()));
        holdTimeJLabel <- Obj.repr ((new JLabel.jLabel ()));
        inputAutomationTypeJComboBox <- Obj.repr ((new JComboBox.jComboBox ()));
        inputTypeJLabel <- Obj.repr ((new JLabel.jLabel ()));
        delayJTextField <- Obj.repr ((new JTextField.jTextField ()));
        delayBetweenJLabel <- Obj.repr ((new JLabel.jLabel ()));
        testJLabel <- Obj.repr ((new JLabel.jLabel ()));
        textJTextField <- Obj.repr ((new JTextField.jTextField ()));
        pressJRadioButton <- Obj.repr ((new JRadioButton.jRadioButton ()));
        releaseJRadioButton <- Obj.repr ((new JRadioButton.jRadioButton ()));
        normalJRadioButton <- Obj.repr ((new JRadioButton.jRadioButton ()));
        simultaneousJRadioButton <- Obj.repr ((new JRadioButton.jRadioButton ()));
        sequenceJRadioButton <- Obj.repr ((new JRadioButton.jRadioButton ()));
        jPanel1 <- Obj.repr ((new JPanel.jPanel ()));
        okJButton <- Obj.repr ((new JButton.jButton ()));
        keyIntegerJComboBox <- Obj.repr ((new JComboBox.jComboBox ()));
        keyActionJButton <- Obj.repr ((new JButton.jButton ()));
        jLabel1 <- Obj.repr ((new JLabel.jLabel ()));
        ignore ((Obj.magic keyActionJDialog)#setMinimumSize ((new Dimension.dimension (255, 280))));
        ignore ((Obj.magic titleJLabel)#setHorizontalAlignment ((javax.get_swing ())#swingConstants#cENTER));
        ignore ((Obj.magic titleJLabel)#setText ("Keyboard Input Options"));
        ignore ((Obj.magic addKeyJLabel)#setText ("Add Key:"));
        ignore ((Obj.magic keyNameJComboBox)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#keyNameJComboBoxActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic timeJTextField)#setText ((CommonPhoneStrings.getInstance ())#zERO));
        ignore ((Obj.magic holdTimeJLabel)#setText ("Hold Time (ms):"));
        ignore ((Obj.magic inputTypeJLabel)#setText ("Input Type:"));
        ignore ((Obj.magic delayJTextField)#setText ((CommonPhoneStrings.getInstance ())#zERO));
        ignore ((Obj.magic delayBetweenJLabel)#setText ("Delay Between Keys (ms):"));
        ignore ((Obj.magic testJLabel)#setText ("Text:"));
        ignore ((Obj.magic textJTextField)#setText ((CommonPhoneStrings.getInstance ())#zERO));
        ignore ((Obj.magic pressJRadioButton)#setText ("Press"));
        ignore ((Obj.magic pressJRadioButton)#setBorder (((javax.get_swing ())#borderFactory#createEmptyBorder (0, 0, 0, 0))));
        ignore ((Obj.magic pressJRadioButton)#setMargin ((new Insets.insets (0, 0, 0, 0))));
        ignore ((Obj.magic pressJRadioButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#pressJRadioButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic releaseJRadioButton)#setText ("Release"));
        ignore ((Obj.magic releaseJRadioButton)#setBorder (((javax.get_swing ())#borderFactory#createEmptyBorder (0, 0, 0, 0))));
        ignore ((Obj.magic releaseJRadioButton)#setMargin ((new Insets.insets (0, 0, 0, 0))));
        ignore ((Obj.magic releaseJRadioButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#releaseJRadioButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic normalJRadioButton)#setSelected (true));
        ignore ((Obj.magic normalJRadioButton)#setText ("Normal"));
        ignore ((Obj.magic normalJRadioButton)#setBorder (((javax.get_swing ())#borderFactory#createEmptyBorder (0, 0, 0, 0))));
        ignore ((Obj.magic normalJRadioButton)#setMargin ((new Insets.insets (0, 0, 0, 0))));
        ignore ((Obj.magic normalJRadioButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#normalJRadioButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic simultaneousJRadioButton)#setSelected (true));
        ignore ((Obj.magic simultaneousJRadioButton)#setText ("Simultaneous"));
        ignore ((Obj.magic simultaneousJRadioButton)#setBorder (((javax.get_swing ())#borderFactory#createEmptyBorder (0, 0, 0, 0))));
        ignore ((Obj.magic simultaneousJRadioButton)#setMargin ((new Insets.insets (0, 0, 0, 0))));
        ignore ((Obj.magic simultaneousJRadioButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#simultaneousJRadioButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic sequenceJRadioButton)#setText ("Sequence"));
        ignore ((Obj.magic sequenceJRadioButton)#setBorder (((javax.get_swing ())#borderFactory#createEmptyBorder (0, 0, 0, 0))));
        ignore ((Obj.magic sequenceJRadioButton)#setMargin ((new Insets.insets (0, 0, 0, 0))));
        ignore ((Obj.magic sequenceJRadioButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#sequenceJRadioButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic okJButton)#setText ("OK"));
        ignore ((Obj.magic okJButton)#setHorizontalTextPosition ((javax.get_swing ())#swingConstants#cENTER));
        ignore ((Obj.magic okJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#okJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jPanel1)#add ((Obj.magic okJButton)));
        ignore ((Obj.magic keyIntegerJComboBox)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#keyIntegerJComboBoxActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        let keyActionJDialogLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (((Obj.magic keyActionJDialog)#getContentPane ()))))) in ();
        ignore (((Obj.magic keyActionJDialog)#getContentPane ())#setLayout ((Obj.magic !keyActionJDialogLayout)));
        ignore ((Obj.magic !keyActionJDialogLayout)#setHorizontalGroup ((((((Obj.magic !keyActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !keyActionJDialogLayout)#createSequentialGroup ())#addContainerGap ())#addGroup (((((((((Obj.magic !keyActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !keyActionJDialogLayout)#createSequentialGroup ())#addGroup (((((Obj.magic !keyActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING, false))#addComponent ((Obj.magic addKeyJLabel), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))#addComponent ((Obj.magic inputTypeJLabel), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup ((((((Obj.magic !keyActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING))#addComponent ((Obj.magic inputAutomationTypeJComboBox), 0, 148, 32767))#addComponent ((Obj.magic textJTextField), (javax.get_swing ())#groupLayout#alignment#lEADING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 148, 32767))#addGroup ((((((Obj.magic !keyActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic keyNameJComboBox), 0, 101, 32767))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic keyIntegerJComboBox), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 41, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))))))#addComponent ((Obj.magic testJLabel), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 60, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addGroup (((((((((Obj.magic !keyActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic normalJRadioButton)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic pressJRadioButton)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic releaseJRadioButton)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, 48, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING, (((((Obj.magic !keyActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic holdTimeJLabel)))#addGap (22, 22, 22))#addComponent ((Obj.magic timeJTextField), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 113, 32767))))#addGroup ((((((Obj.magic !keyActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic delayBetweenJLabel)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, 15, 32767))#addComponent ((Obj.magic delayJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 68, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addGroup ((((((Obj.magic !keyActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic simultaneousJRadioButton)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic sequenceJRadioButton)))))))#addContainerGap ())))#addComponent ((Obj.magic titleJLabel), (javax.get_swing ())#groupLayout#alignment#tRAILING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 229, 32767))#addComponent ((Obj.magic jPanel1), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 229, 32767))));
        ignore ((Obj.magic !keyActionJDialogLayout)#setVerticalGroup ((((Obj.magic !keyActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((((((((((((((((((Obj.magic !keyActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic titleJLabel)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !keyActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic inputTypeJLabel)))#addComponent ((Obj.magic inputAutomationTypeJComboBox), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup ((((((Obj.magic !keyActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic addKeyJLabel)))#addComponent ((Obj.magic keyIntegerJComboBox), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addComponent ((Obj.magic keyNameJComboBox), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !keyActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic testJLabel)))#addComponent ((Obj.magic textJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup ((((((Obj.magic !keyActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic pressJRadioButton)))#addComponent ((Obj.magic normalJRadioButton)))#addComponent ((Obj.magic releaseJRadioButton)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !keyActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic holdTimeJLabel)))#addComponent ((Obj.magic timeJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !keyActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic delayBetweenJLabel)))#addComponent ((Obj.magic delayJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !keyActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic simultaneousJRadioButton)))#addComponent ((Obj.magic sequenceJRadioButton)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jPanel1), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addContainerGap ())))));
        ignore (self#setMinimumSize ((new Dimension.dimension (100, 0))));
        ignore ((Obj.magic keyActionJButton)#setText ("Edit"));
        ignore ((Obj.magic keyActionJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#keyActionJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel1)#setText ("Key:"));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic jLabel1)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, 49, 32767))#addComponent ((Obj.magic keyActionJButton)))))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel1)))#addComponent ((Obj.magic keyActionJButton)))))))
        end [@@warning "-7"]
    

    method prependText ((integer : int)) : unit =
        begin
        if (integer != (Obj.magic 0)) then begin
            let newKey : string ref = ref ((("&#" ^ (string_of_int integer)) ^ ";")) in ();
            ignore ((Obj.magic textJTextField)#setText ((!newKey ^ java_string_of (Obj.repr (((Obj.magic textJTextField)#getText ()))))))
        end
        end [@@warning "-7"]
    

    method keyIntegerJComboBoxActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic keyIntegerJComboBox)#getSelectedIndex ());
        ignore ((Obj.magic keyNameJComboBox)#setSelectedIndex (((Obj.magic keyIntegerJComboBox)#getSelectedIndex ())))
        end [@@warning "-7-20"]
    

    method sequenceJRadioButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        if ((Obj.magic sequenceJRadioButton)#isSelected ()) then begin
            ignore ((Obj.magic delayJTextField)#setText ((CommonPhoneStrings.getInstance ())#oNE));
            ignore ((Obj.magic simultaneousJRadioButton)#setSelected (false))
        end
        end [@@warning "-7-20"]
    

    method simultaneousJRadioButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        if ((Obj.magic simultaneousJRadioButton)#isSelected ()) then begin
            ignore ((Obj.magic delayJTextField)#setText ((CommonPhoneStrings.getInstance ())#zERO));
            ignore ((Obj.magic sequenceJRadioButton)#setSelected (false))
        end
        end [@@warning "-7-20"]
    

    method keyNameJComboBoxActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        let integer : int ref = ref ((self#getSelectedKey ())) in ();
        (self#prependText (!integer));
        ignore ((Obj.magic keyIntegerJComboBox)#setSelectedIndex (((Obj.magic keyNameJComboBox)#getSelectedIndex ())))
        end [@@warning "-7-20"]
    

    method okJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            (self#update ());
            ignore ((self#getKeyActionJDialog ())#setVisible (false))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "okButtonActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method keyActionJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((self#getKeyActionJDialog ())#setVisible (true))
        end [@@warning "-7-20"]
    

    method normalJRadioButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        if ((Obj.magic normalJRadioButton)#isSelected ()) then begin
            ignore ((Obj.magic keyActionScriptInputInterface)#setNormal ());
            ignore ((Obj.magic pressJRadioButton)#setSelected (false));
            ignore ((Obj.magic releaseJRadioButton)#setSelected (false))
        end
        end [@@warning "-7-20"]
    

    method releaseJRadioButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        if ((Obj.magic releaseJRadioButton)#isSelected ()) then begin
            ignore ((Obj.magic keyActionScriptInputInterface)#setRelease (true));
            ignore ((Obj.magic keyActionScriptInputInterface)#setPress (false));
            ignore ((Obj.magic pressJRadioButton)#setSelected (false));
            ignore ((Obj.magic normalJRadioButton)#setSelected (false))
        end
        end [@@warning "-7-20"]
    

    method pressJRadioButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        if ((Obj.magic pressJRadioButton)#isSelected ()) then begin
            ignore ((Obj.magic keyActionScriptInputInterface)#setPress (true));
            ignore ((Obj.magic keyActionScriptInputInterface)#setRelease (false));
            ignore ((Obj.magic releaseJRadioButton)#setSelected (false));
            ignore ((Obj.magic normalJRadioButton)#setSelected (false))
        end
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        addKeyJLabel <- (Obj.repr (Obj.magic 0));
        delayBetweenJLabel <- (Obj.repr (Obj.magic 0));
        delayJTextField <- (Obj.repr (Obj.magic 0));
        holdTimeJLabel <- (Obj.repr (Obj.magic 0));
        inputAutomationTypeJComboBox <- (Obj.repr (Obj.magic 0));
        inputTypeJLabel <- (Obj.repr (Obj.magic 0));
        jLabel1 <- (Obj.repr (Obj.magic 0));
        jPanel1 <- (Obj.repr (Obj.magic 0));
        keyActionJButton <- (Obj.repr (Obj.magic 0));
        keyActionJDialog <- (Obj.repr (Obj.magic 0));
        keyIntegerJComboBox <- (Obj.repr (Obj.magic 0));
        keyNameJComboBox <- (Obj.repr (Obj.magic 0));
        normalJRadioButton <- (Obj.repr (Obj.magic 0));
        okJButton <- (Obj.repr (Obj.magic 0));
        pressJRadioButton <- (Obj.repr (Obj.magic 0));
        releaseJRadioButton <- (Obj.repr (Obj.magic 0));
        sequenceJRadioButton <- (Obj.repr (Obj.magic 0));
        simultaneousJRadioButton <- (Obj.repr (Obj.magic 0));
        testJLabel <- (Obj.repr (Obj.magic 0));
        textJTextField <- (Obj.repr (Obj.magic 0));
        timeJTextField <- (Obj.repr (Obj.magic 0));
        titleJLabel <- (Obj.repr (Obj.magic 0));
        ();
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
        (self#initComponents ());
        keyActionScriptInputInterface <- Obj.repr (keyActionScriptInputInterface_arg);
        let defaultComboBoxModel : Obj.t ref = ref ((Obj.repr (new DefaultComboBoxModel.defaultComboBoxModel ()))) in ();
        ignore ((Obj.magic !defaultComboBoxModel)#addElement ((TempInputRobotNames.get_dX_NAME ())));
        ignore ((Obj.magic !defaultComboBoxModel)#addElement ((InputRobot.get_nAME ())));
        ignore ((Obj.magic inputAutomationTypeJComboBox)#setModel ((Obj.magic !defaultComboBoxModel)));
        ignore ((Obj.magic keyNameJComboBox)#setModel ((KeyNameDefaultComboBoxModelFactory.getInstance ())));
        ignore ((Obj.magic keyIntegerJComboBox)#setModel ((KeyCharDefaultComboBoxModelFactory.getInstance ())));
        if ((Obj.magic keyActionScriptInputInterface)#isNormal ()) then begin
            ignore ((Obj.magic normalJRadioButton)#setSelected (true));
            ignore ((Obj.magic pressJRadioButton)#setSelected (false));
            ignore ((Obj.magic releaseJRadioButton)#setSelected (false))
        end else if ((Obj.magic keyActionScriptInputInterface)#isPress ()) then begin
            ignore ((Obj.magic normalJRadioButton)#setSelected (false));
            ignore ((Obj.magic pressJRadioButton)#setSelected (true));
            ignore ((Obj.magic releaseJRadioButton)#setSelected (false))
        end else if ((Obj.magic keyActionScriptInputInterface)#isRelease ()) then begin
            ignore ((Obj.magic normalJRadioButton)#setSelected (false));
            ignore ((Obj.magic pressJRadioButton)#setSelected (false));
            ignore ((Obj.magic releaseJRadioButton)#setSelected (true))
        end;
        (self#set ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "KeyboardActionScriptInputJPanel" (fun arguments -> Obj.repr (new keyboardActionScriptInputJPanel (Obj.obj arguments)))


