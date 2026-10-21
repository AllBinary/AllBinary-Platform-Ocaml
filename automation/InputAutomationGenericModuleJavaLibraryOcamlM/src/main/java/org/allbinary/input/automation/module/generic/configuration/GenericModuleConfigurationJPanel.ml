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
(* package org.allbinary.input.automation.module.generic.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.GenericProfile *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.GenericProfileDataWorkerType *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.GenericProfiles *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActions *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActionsJPanel *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

class genericModuleConfigurationJPanel () =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable genericProfiles : GenericProfiles.genericProfiles = (Obj.magic 0)
    method genericProfiles = genericProfiles
    method set_genericProfiles value' = genericProfiles <- value'
    val mutable selectedGenericProfile : GenericProfile.genericProfile = (Obj.magic 0)
    method selectedGenericProfile = selectedGenericProfile
    method set_selectedGenericProfile value' = selectedGenericProfile <- value'
    val mutable blankGenericProfileActionsJPanel : Obj.t = Obj.repr 0
    method blankGenericProfileActionsJPanel : 'r. 'r = Obj.magic blankGenericProfileActionsJPanel
    method set_blankGenericProfileActionsJPanel : 'v. 'v -> unit = fun value' -> blankGenericProfileActionsJPanel <- Obj.repr value'
    val mutable buttonGroup2 : Obj.t = Obj.repr 0
    method buttonGroup2 : 'r. 'r = Obj.magic buttonGroup2
    method set_buttonGroup2 : 'v. 'v -> unit = fun value' -> buttonGroup2 <- Obj.repr value'
    val mutable captureComparisonJCheckBox : Obj.t = Obj.repr 0
    method captureComparisonJCheckBox : 'r. 'r = Obj.magic captureComparisonJCheckBox
    method set_captureComparisonJCheckBox : 'v. 'v -> unit = fun value' -> captureComparisonJCheckBox <- Obj.repr value'
    val mutable captureMotionAnalysisJCheckBox : Obj.t = Obj.repr 0
    method captureMotionAnalysisJCheckBox : 'r. 'r = Obj.magic captureMotionAnalysisJCheckBox
    method set_captureMotionAnalysisJCheckBox : 'v. 'v -> unit = fun value' -> captureMotionAnalysisJCheckBox <- Obj.repr value'
    val mutable deleteProfileJButton : Obj.t = Obj.repr 0
    method deleteProfileJButton : 'r. 'r = Obj.magic deleteProfileJButton
    method set_deleteProfileJButton : 'v. 'v -> unit = fun value' -> deleteProfileJButton <- Obj.repr value'
    val mutable genericJTabbedPane : Obj.t = Obj.repr 0
    method genericJTabbedPane : 'r. 'r = Obj.magic genericJTabbedPane
    method set_genericJTabbedPane : 'v. 'v -> unit = fun value' -> genericJTabbedPane <- Obj.repr value'
    val mutable genericProfilesJList : Obj.t = Obj.repr 0
    method genericProfilesJList : 'r. 'r = Obj.magic genericProfilesJList
    method set_genericProfilesJList : 'v. 'v -> unit = fun value' -> genericProfilesJList <- Obj.repr value'
    val mutable genericProfilesJPanel : Obj.t = Obj.repr 0
    method genericProfilesJPanel : 'r. 'r = Obj.magic genericProfilesJPanel
    method set_genericProfilesJPanel : 'v. 'v -> unit = fun value' -> genericProfilesJPanel <- Obj.repr value'
    val mutable genericProfilesJScrollPane : Obj.t = Obj.repr 0
    method genericProfilesJScrollPane : 'r. 'r = Obj.magic genericProfilesJScrollPane
    method set_genericProfilesJScrollPane : 'v. 'v -> unit = fun value' -> genericProfilesJScrollPane <- Obj.repr value'
    val mutable jLabel1 : Obj.t = Obj.repr 0
    method jLabel1 : 'r. 'r = Obj.magic jLabel1
    method set_jLabel1 : 'v. 'v -> unit = fun value' -> jLabel1 <- Obj.repr value'
    val mutable jLabel2 : Obj.t = Obj.repr 0
    method jLabel2 : 'r. 'r = Obj.magic jLabel2
    method set_jLabel2 : 'v. 'v -> unit = fun value' -> jLabel2 <- Obj.repr value'
    val mutable jLabel3 : Obj.t = Obj.repr 0
    method jLabel3 : 'r. 'r = Obj.magic jLabel3
    method set_jLabel3 : 'v. 'v -> unit = fun value' -> jLabel3 <- Obj.repr value'
    val mutable jPanel1 : Obj.t = Obj.repr 0
    method jPanel1 : 'r. 'r = Obj.magic jPanel1
    method set_jPanel1 : 'v. 'v -> unit = fun value' -> jPanel1 <- Obj.repr value'
    val mutable newProfileJButton : Obj.t = Obj.repr 0
    method newProfileJButton : 'r. 'r = Obj.magic newProfileJButton
    method set_newProfileJButton : 'v. 'v -> unit = fun value' -> newProfileJButton <- Obj.repr value'
    val mutable newProfileJDialog : Obj.t = Obj.repr 0
    method newProfileJDialog : 'r. 'r = Obj.magic newProfileJDialog
    method set_newProfileJDialog : 'v. 'v -> unit = fun value' -> newProfileJDialog <- Obj.repr value'
    val mutable newProfileNameJLabel : Obj.t = Obj.repr 0
    method newProfileNameJLabel : 'r. 'r = Obj.magic newProfileNameJLabel
    method set_newProfileNameJLabel : 'v. 'v -> unit = fun value' -> newProfileNameJLabel <- Obj.repr value'
    val mutable newProfileNameJTextField : Obj.t = Obj.repr 0
    method newProfileNameJTextField : 'r. 'r = Obj.magic newProfileNameJTextField
    method set_newProfileNameJTextField : 'v. 'v -> unit = fun value' -> newProfileNameJTextField <- Obj.repr value'
    val mutable okNewProfileJButton : Obj.t = Obj.repr 0
    method okNewProfileJButton : 'r. 'r = Obj.magic okNewProfileJButton
    method set_okNewProfileJButton : 'v. 'v -> unit = fun value' -> okNewProfileJButton <- Obj.repr value'
    val mutable savedCaptureJRadioButton : Obj.t = Obj.repr 0
    method savedCaptureJRadioButton : 'r. 'r = Obj.magic savedCaptureJRadioButton
    method set_savedCaptureJRadioButton : 'v. 'v -> unit = fun value' -> savedCaptureJRadioButton <- Obj.repr value'
    val mutable screenCaptureJRadioButton : Obj.t = Obj.repr 0
    method screenCaptureJRadioButton : 'r. 'r = Obj.magic screenCaptureJRadioButton
    method set_screenCaptureJRadioButton : 'v. 'v -> unit = fun value' -> screenCaptureJRadioButton <- Obj.repr value'
    
    

    method initComponents () : unit =
        begin
        newProfileJDialog <- Obj.repr ((new JDialog.jDialog ()));
        okNewProfileJButton <- Obj.repr ((new JButton.jButton ()));
        newProfileNameJLabel <- Obj.repr ((new JLabel.jLabel ()));
        newProfileNameJTextField <- Obj.repr ((new JTextField.jTextField ()));
        buttonGroup2 <- Obj.repr ((new ButtonGroup.buttonGroup ()));
        genericJTabbedPane <- Obj.repr ((new JTabbedPane.jTabbedPane ()));
        genericProfilesJPanel <- Obj.repr ((new JPanel.jPanel ()));
        genericProfilesJScrollPane <- Obj.repr ((new JScrollPane.jScrollPane ()));
        genericProfilesJList <- Obj.repr ((new JList.jList ()));
        newProfileJButton <- Obj.repr ((new JButton.jButton ()));
        deleteProfileJButton <- Obj.repr ((new JButton.jButton ()));
        jPanel1 <- Obj.repr ((new JPanel.jPanel ()));
        screenCaptureJRadioButton <- Obj.repr ((new JRadioButton.jRadioButton ()));
        jLabel1 <- Obj.repr ((new JLabel.jLabel ()));
        jLabel2 <- Obj.repr ((new JLabel.jLabel ()));
        savedCaptureJRadioButton <- Obj.repr ((new JRadioButton.jRadioButton ()));
        captureMotionAnalysisJCheckBox <- Obj.repr ((new JCheckBox.jCheckBox ()));
        captureComparisonJCheckBox <- Obj.repr ((new JCheckBox.jCheckBox ()));
        jLabel3 <- Obj.repr ((new JLabel.jLabel ()));
        blankGenericProfileActionsJPanel <- Obj.repr ((new JPanel.jPanel ()));
        ignore ((Obj.magic newProfileJDialog)#setMinimumSize ((new Dimension.dimension (250, 150))));
        ignore ((Obj.magic newProfileJDialog)#setResizable (false));
        ignore ((Obj.magic okNewProfileJButton)#setText ("Ok"));
        ignore ((Obj.magic okNewProfileJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#okNewProfileJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic newProfileNameJLabel)#setText ("New Profile Name"));
        let newProfileJDialogLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (((Obj.magic newProfileJDialog)#getContentPane ()))))) in ();
        ignore (((Obj.magic newProfileJDialog)#getContentPane ())#setLayout ((Obj.magic !newProfileJDialogLayout)));
        ignore ((Obj.magic !newProfileJDialogLayout)#setHorizontalGroup ((((Obj.magic !newProfileJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !newProfileJDialogLayout)#createSequentialGroup ())#addGroup ((((((Obj.magic !newProfileJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !newProfileJDialogLayout)#createSequentialGroup ())#addGap (80, 80, 80))#addComponent ((Obj.magic newProfileNameJLabel)))))#addGroup (((((Obj.magic !newProfileJDialogLayout)#createSequentialGroup ())#addGap (30, 30, 30))#addComponent ((Obj.magic newProfileNameJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 180, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addGroup (((((Obj.magic !newProfileJDialogLayout)#createSequentialGroup ())#addGap (100, 100, 100))#addComponent ((Obj.magic okNewProfileJButton)))))))#addContainerGap (35, 32767))))));
        ignore ((Obj.magic !newProfileJDialogLayout)#setVerticalGroup ((((Obj.magic !newProfileJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((((((Obj.magic !newProfileJDialogLayout)#createSequentialGroup ())#addGap (10, 10, 10))#addComponent ((Obj.magic newProfileNameJLabel)))#addGap (16, 16, 16))#addComponent ((Obj.magic newProfileNameJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addGap (20, 20, 20))#addComponent ((Obj.magic okNewProfileJButton)))))));
        ignore (self#setLayout ((new GridLayout.gridLayout (1, 0))));
        ignore (self#setMinimumSize ((new Dimension.dimension (400, 300))));
        ignore (self#setPreferredSize ((new Dimension.dimension (700, 700))));
        ignore ((Obj.magic genericJTabbedPane)#setToolTipText (stringUtil#eMPTY_STRING));
        ignore ((Obj.magic genericJTabbedPane)#setMinimumSize ((new Dimension.dimension (800, 600))));
        ignore ((Obj.magic genericProfilesJPanel)#setMinimumSize ((new Dimension.dimension (400, 300))));
        ignore ((Obj.magic genericProfilesJPanel)#setPreferredSize ((new Dimension.dimension (0, 0))));
        ignore ((Obj.magic genericProfilesJList)#addListSelectionListener ((object (self)
            inherit ListSelectionListener.listSelectionListener () as super
            

            method valueChanged : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#genericProfilesJListValueChanged ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic genericProfilesJScrollPane)#setViewportView ((Obj.magic genericProfilesJList)));
        ignore ((Obj.magic newProfileJButton)#setText ("New"));
        ignore ((Obj.magic newProfileJButton)#setToolTipText ("Creates a new profile"));
        ignore ((Obj.magic newProfileJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#newProfileJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic deleteProfileJButton)#setText ("Delete"));
        ignore ((Obj.magic deleteProfileJButton)#setToolTipText ("Deletes the selected profile"));
        ignore ((Obj.magic deleteProfileJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#deleteProfileJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jPanel1)#setPreferredSize ((new Dimension.dimension (1000, 100))));
        ignore ((Obj.magic screenCaptureJRadioButton)#setText ("Screen Captures"));
        ignore ((Obj.magic screenCaptureJRadioButton)#setToolTipText ("Records the screen into memory for logical processing"));
        ignore ((Obj.magic screenCaptureJRadioButton)#setBorder (((javax.get_swing ())#borderFactory#createEmptyBorder (0, 0, 0, 0))));
        ignore ((Obj.magic screenCaptureJRadioButton)#setMargin ((new Insets.insets (0, 0, 0, 0))));
        ignore ((Obj.magic screenCaptureJRadioButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#screenCaptureJRadioButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel1)#setText ("Profile Options"));
        ignore ((Obj.magic jLabel2)#setText ("Process From:"));
        ignore ((Obj.magic savedCaptureJRadioButton)#setText ("Saved Images"));
        ignore ((Obj.magic savedCaptureJRadioButton)#setToolTipText ("Loads images from files for logical processing.  Usually for debugging your profile actions"));
        ignore ((Obj.magic savedCaptureJRadioButton)#setBorder (((javax.get_swing ())#borderFactory#createEmptyBorder (0, 0, 0, 0))));
        ignore ((Obj.magic savedCaptureJRadioButton)#setMargin ((new Insets.insets (0, 0, 0, 0))));
        ignore ((Obj.magic savedCaptureJRadioButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#savedCaptureJRadioButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic captureMotionAnalysisJCheckBox)#setText ("Motion Analysis"));
        ignore ((Obj.magic captureMotionAnalysisJCheckBox)#setToolTipText ("Uses image comparison and contraints to locate moving objects"));
        ignore ((Obj.magic captureMotionAnalysisJCheckBox)#setBorder (((javax.get_swing ())#borderFactory#createEmptyBorder (0, 0, 0, 0))));
        ignore ((Obj.magic captureMotionAnalysisJCheckBox)#setMargin ((new Insets.insets (0, 0, 0, 0))));
        ignore ((Obj.magic captureMotionAnalysisJCheckBox)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#captureMotionAnalysisJCheckBoxActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic captureComparisonJCheckBox)#setText ("Comparison"));
        ignore ((Obj.magic captureComparisonJCheckBox)#setToolTipText ("Compares the last two input images for multi image logic"));
        ignore ((Obj.magic captureComparisonJCheckBox)#setBorder (((javax.get_swing ())#borderFactory#createEmptyBorder (0, 0, 0, 0))));
        ignore ((Obj.magic captureComparisonJCheckBox)#setMargin ((new Insets.insets (0, 0, 0, 0))));
        ignore ((Obj.magic captureComparisonJCheckBox)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#captureComparisonJCheckBoxActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel3)#setText ("Image Processing:"));
        ignore ((Obj.magic jLabel3)#setToolTipText ("Turns on/off various extended image processing"));
        let jPanel1Layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic jPanel1))))) in ();
        ignore ((Obj.magic jPanel1)#setLayout ((Obj.magic !jPanel1Layout)));
        ignore ((Obj.magic !jPanel1Layout)#setHorizontalGroup ((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !jPanel1Layout)#createSequentialGroup ())#addGroup ((((((((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic screenCaptureJRadioButton)))#addComponent ((Obj.magic jLabel1)))#addComponent ((Obj.magic jLabel2)))#addComponent ((Obj.magic savedCaptureJRadioButton)))#addComponent ((Obj.magic captureMotionAnalysisJCheckBox)))#addComponent ((Obj.magic captureComparisonJCheckBox)))#addComponent ((Obj.magic jLabel3)))))#addContainerGap (22, 32767))))));
        ignore ((Obj.magic !jPanel1Layout)#setVerticalGroup ((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((((((((((((((Obj.magic !jPanel1Layout)#createSequentialGroup ())#addComponent ((Obj.magic jLabel1)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jLabel2)))#addGap (7, 7, 7))#addComponent ((Obj.magic screenCaptureJRadioButton)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic savedCaptureJRadioButton)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jLabel3)))#addGap (7, 7, 7))#addComponent ((Obj.magic captureComparisonJCheckBox)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic captureMotionAnalysisJCheckBox)))#addContainerGap (106, 32767))))));
        let genericProfilesJPanelLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic genericProfilesJPanel))))) in ();
        ignore ((Obj.magic genericProfilesJPanel)#setLayout ((Obj.magic !genericProfilesJPanelLayout)));
        ignore ((Obj.magic !genericProfilesJPanelLayout)#setHorizontalGroup ((((Obj.magic !genericProfilesJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !genericProfilesJPanelLayout)#createSequentialGroup ())#addGroup (((((Obj.magic !genericProfilesJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !genericProfilesJPanelLayout)#createSequentialGroup ())#addComponent ((Obj.magic newProfileJButton)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic deleteProfileJButton)))))#addGroup ((((((Obj.magic !genericProfilesJPanelLayout)#createSequentialGroup ())#addComponent ((Obj.magic genericProfilesJScrollPane), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jPanel1), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 119, 32767))))))#addContainerGap ())))));
        ignore ((Obj.magic !genericProfilesJPanelLayout)#setVerticalGroup ((((Obj.magic !genericProfilesJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !genericProfilesJPanelLayout)#createSequentialGroup ())#addGroup (((((Obj.magic !genericProfilesJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic newProfileJButton)))#addComponent ((Obj.magic deleteProfileJButton)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !genericProfilesJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic jPanel1), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 246, 32767))#addComponent ((Obj.magic genericProfilesJScrollPane), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 246, 32767))))))));
        ignore ((Obj.magic genericJTabbedPane)#addTab ("Profiles", (Obj.magic genericProfilesJPanel)));
        let blankGenericProfileActionsJPanelLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic blankGenericProfileActionsJPanel))))) in ();
        ignore ((Obj.magic blankGenericProfileActionsJPanel)#setLayout ((Obj.magic !blankGenericProfileActionsJPanelLayout)));
        ignore ((Obj.magic !blankGenericProfileActionsJPanelLayout)#setHorizontalGroup ((((Obj.magic !blankGenericProfileActionsJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 395, 32767))));
        ignore ((Obj.magic !blankGenericProfileActionsJPanelLayout)#setVerticalGroup ((((Obj.magic !blankGenericProfileActionsJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 275, 32767))));
        ignore ((Obj.magic genericJTabbedPane)#addTab ("Actions", (Obj.magic blankGenericProfileActionsJPanel)));
        ignore (self#add ((Obj.magic genericJTabbedPane)))
        end [@@warning "-7"]
    

    method savedCaptureJRadioButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            if ((Obj.magic savedCaptureJRadioButton)#isSelected ()) then begin
                ignore ((Obj.magic logUtil)#putF ("Selected", self, "savedCaptureJRadioButtonActionPerformed"));
                ignore ((self#getSelectedGenericProfile ())#add ((GenericProfileDataWorkerType.get_sAVED_CAPTURE ())));
                ignore ((self#getSelectedGenericProfile ())#remove ((GenericProfileDataWorkerType.get_sCREEN_CAPTURE ())));
                ignore ((Obj.magic screenCaptureJRadioButton)#setSelected (false));
                ignore ((self#getGenericProfiles ())#save ())
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "savedCaptureJRadioButtonActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method screenCaptureJRadioButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            if ((Obj.magic screenCaptureJRadioButton)#isSelected ()) then begin
                ignore ((Obj.magic logUtil)#putF ("Selected", self, "screenCaptureJRadioButtonActionPerformed"));
                ignore ((self#getSelectedGenericProfile ())#add ((GenericProfileDataWorkerType.get_sCREEN_CAPTURE ())));
                ignore ((self#getSelectedGenericProfile ())#remove ((GenericProfileDataWorkerType.get_sAVED_CAPTURE ())));
                ignore ((Obj.magic savedCaptureJRadioButton)#setSelected (false));
                ignore ((self#getGenericProfiles ())#save ())
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "screenCaptureJRadioButtonActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method captureMotionAnalysisJCheckBoxActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            if ((Obj.magic captureMotionAnalysisJCheckBox)#isSelected ()) then begin
                ignore ((self#getSelectedGenericProfile ())#add ((GenericProfileDataWorkerType.get_mOTION ())))
            end else begin
                ignore ((self#getSelectedGenericProfile ())#remove ((GenericProfileDataWorkerType.get_mOTION ())))
            end;
            ignore ((self#getGenericProfiles ())#save ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "captureComparisonJCheckBoxActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method captureComparisonJCheckBoxActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            if ((Obj.magic captureComparisonJCheckBox)#isSelected ()) then begin
                ignore ((self#getSelectedGenericProfile ())#add ((GenericProfileDataWorkerType.get_cOMPARISON ())))
            end else begin
                ignore ((self#getSelectedGenericProfile ())#remove ((GenericProfileDataWorkerType.get_cOMPARISON ())))
            end;
            ignore ((self#getGenericProfiles ())#save ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "captureComparisonJCheckBoxActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method updateProfileUI ((profileNameString : string)) : unit =
        begin
        ignore ((self#getBlankGenericProfileActionsJPanel ())#removeAll ());
        if (profileNameString <> (Obj.magic 0)) then begin
            let genericProfileActionsJPanel : GenericProfileActionsJPanel.genericProfileActionsJPanel ref = ref (((new GenericProfileActionsJPanel.genericProfileActionsJPanel ()) :> GenericProfileActionsJPanel.genericProfileActionsJPanel)) in ();
            (self#setSelectedGenericProfile (((self#getGenericProfiles ())#get (profileNameString))));
            ignore ((self#getSelectedGenericProfile ())#setGenericProfileActions ((new GenericProfileActions.genericProfileActions (!genericProfileActionsJPanel, profileNameString))));
            ignore (!genericProfileActionsJPanel#setGenericProfileActions (((self#getSelectedGenericProfile ())#getGenericProfileActions ())));
            ignore (!genericProfileActionsJPanel#selectFirstElement ());
            let layout : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#getBlankGenericProfileActionsJPanel ())#getLayout ())))) in ();
            ignore ((Obj.magic !layout)#setHorizontalGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 395, 32767))#addComponent (!genericProfileActionsJPanel, (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))));
            ignore ((Obj.magic !layout)#setVerticalGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 256, 32767))#addComponent (!genericProfileActionsJPanel, (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))));
            (self#updateProfileOptions ());
            ignore ((Obj.magic logUtil)#putF ("Setting Configuration Profile JPanel", self, "updateProfileUI"))
        end else begin
            ignore ((Obj.magic logUtil)#putF ("Null Configuration Profile", self, "updateProfileUI"))
        end
        end [@@warning "-7"]
    

    method selectFirstElement () : unit =
        begin
        ignore ((Obj.magic genericProfilesJList)#setModel ((((self#getGenericProfiles ())#getDefaultListModelHelper ())#getListModel ())));
        if ((((Obj.magic genericProfilesJList)#getModel ())#getSize ()) > 0) then begin
            ignore ((Obj.magic genericProfilesJList)#setSelectedValue ((((Obj.magic genericProfilesJList)#getModel ())#getElementAt (0)), true));
            (self#updateProfileUI ((Obj.magic (((Obj.magic genericProfilesJList)#getModel ())#getElementAt (0)))))
        end
        end [@@warning "-7"]
    

    method updateProfileOptions () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "updateProfileOptions"));
        let genericProfile : GenericProfile.genericProfile ref = ref (((self#getSelectedGenericProfile ()) :> GenericProfile.genericProfile)) in ();
        let vector : BasicArrayList.basicArrayList ref = ref (((!genericProfile#getGenericProfileDataWorkerTypeVector ()) :> BasicArrayList.basicArrayList)) in ();
        ignore ((Obj.magic screenCaptureJRadioButton)#setSelected (false));
        ignore ((Obj.magic savedCaptureJRadioButton)#setSelected (false));
        ignore ((Obj.magic captureComparisonJCheckBox)#setSelected (false));
        ignore ((Obj.magic captureMotionAnalysisJCheckBox)#setSelected (false));
        let size : int ref = ref ((!vector#size ())) in ();
        for index = 0 to !size - 1 do
            let genericProfileDataWorkerType : GenericProfileDataWorkerType.genericProfileDataWorkerType ref = ref (((Obj.magic (!vector#get (index))) :> GenericProfileDataWorkerType.genericProfileDataWorkerType)) in ();
            ignore ((Obj.magic logUtil)#putF ((((!genericProfile#getName ()) ^ " has GenericProfileDataWorkerType: ") ^ (java_string_of (Obj.repr !genericProfileDataWorkerType))), self, "updateProfileOptions"));
            if ((Obj.repr !genericProfileDataWorkerType) == (Obj.repr (GenericProfileDataWorkerType.get_sCREEN_CAPTURE ()))) then begin
                ignore ((Obj.magic logUtil)#putF ("Screen Capture Selected", self, "updateProfileOptions"));
                ignore ((Obj.magic screenCaptureJRadioButton)#setSelected (true))
            end else if ((Obj.repr !genericProfileDataWorkerType) == (Obj.repr (GenericProfileDataWorkerType.get_sAVED_CAPTURE ()))) then begin
                ignore ((Obj.magic logUtil)#putF ("Saved Capture Selected", self, "updateProfileOptions"));
                ignore ((Obj.magic savedCaptureJRadioButton)#setSelected (true))
            end else if ((Obj.repr !genericProfileDataWorkerType) == (Obj.repr (GenericProfileDataWorkerType.get_cOMPARISON ()))) then begin
                ignore ((Obj.magic logUtil)#putF ("Checking Comparison Box", self, "updateProfileOptions"));
                ignore ((Obj.magic captureComparisonJCheckBox)#setSelected (true))
            end else if ((Obj.repr !genericProfileDataWorkerType) == (Obj.repr (GenericProfileDataWorkerType.get_mOTION ()))) then begin
                ignore ((Obj.magic logUtil)#putF ("Checking Motion Box", self, "updateProfileOptions"));
                ignore ((Obj.magic captureMotionAnalysisJCheckBox)#setSelected (true))
            end
        done;
        if ((not ((Obj.magic screenCaptureJRadioButton)#isSelected ())) && (not ((Obj.magic savedCaptureJRadioButton)#isSelected ()))) then begin
            ignore ((Obj.magic screenCaptureJRadioButton)#setSelected (true));
            ignore ((self#getSelectedGenericProfile ())#add ((GenericProfileDataWorkerType.get_sCREEN_CAPTURE ())))
        end;
        ignore ((Obj.magic logUtil)#putF (commonStrings#eND, self, "updateProfileOptions"))
        end [@@warning "-7"]
    

    method getBlankGenericProfileActionsJPanel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic blankGenericProfileActionsJPanel)))
        end [@@warning "-7"]
    

    method setBlankGenericProfileActionsJPanel : 'any1. 'any1 -> unit = fun (blankGenericProfileActionsJPanel_arg) ->
        let blankGenericProfileActionsJPanel_arg = Obj.repr blankGenericProfileActionsJPanel_arg in
        begin
        blankGenericProfileActionsJPanel <- Obj.repr ((Obj.magic blankGenericProfileActionsJPanel_arg))
        end [@@warning "-7-20"]
    

    method getGenericProfiles () : GenericProfiles.genericProfiles =
        begin
        (genericProfiles :> GenericProfiles.genericProfiles)
        end [@@warning "-7"]
    

    method setGenericProfiles : 'any1. 'any1 -> unit = fun (genericProfiles_arg) ->
        let genericProfiles_arg = Obj.repr genericProfiles_arg in
        begin
        genericProfiles <- (Obj.magic genericProfiles_arg)
        end [@@warning "-7-20"]
    

    method getSelectedGenericProfile () : GenericProfile.genericProfile =
        begin
        (selectedGenericProfile :> GenericProfile.genericProfile)
        end [@@warning "-7"]
    

    method setSelectedGenericProfile : 'any1. 'any1 -> unit = fun (selectedGenericProfile_arg) ->
        let selectedGenericProfile_arg = Obj.repr selectedGenericProfile_arg in
        begin
        selectedGenericProfile <- (Obj.magic selectedGenericProfile_arg)
        end [@@warning "-7-20"]
    

    method genericProfilesJListValueChanged : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            let profileNameString : string ref = ref ((Obj.magic ((Obj.magic genericProfilesJList)#getSelectedValue ()))) in ();
            (self#updateProfileUI (!profileNameString))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "genericProfilesJListValueChanged", e))
        end)
        end [@@warning "-7-20"]
    

    method deleteProfileJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            let anyType : Obj.t array ref = ref (((Obj.magic genericProfilesJList)#getSelectedValues ())) in ();
            for index = 0 to (Array.length !anyType) - 1 do
                let nextSelectedValueString : string ref = ref ((Obj.magic !anyType.(index))) in ();
                ignore ((self#getGenericProfiles ())#remove (!nextSelectedValueString))
            done;
            (self#selectFirstElement ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "deleteProfileJButtonActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method okNewProfileJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            let newProfileName : string ref = ref (((Obj.magic newProfileNameJTextField)#getText ())) in ();
            ignore ((self#getGenericProfiles ())#add (!newProfileName));
            ignore ((Obj.magic genericProfilesJList)#setModel ((((self#getGenericProfiles ())#getDefaultListModelHelper ())#getListModel ())));
            ignore ((Obj.magic genericProfilesJList)#setSelectedValue (!newProfileName, true));
            ignore ((Obj.magic newProfileJDialog)#setVisible (false));
            (self#updateProfileUI (!newProfileName))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "okNewProfileJButtonActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method newProfileJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic newProfileJDialog)#setVisible (true))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        genericProfiles <- ((Obj.magic 0) :> GenericProfiles.genericProfiles);
        selectedGenericProfile <- ((Obj.magic 0) :> GenericProfile.genericProfile);
        blankGenericProfileActionsJPanel <- (Obj.repr (Obj.magic 0));
        buttonGroup2 <- (Obj.repr (Obj.magic 0));
        captureComparisonJCheckBox <- (Obj.repr (Obj.magic 0));
        captureMotionAnalysisJCheckBox <- (Obj.repr (Obj.magic 0));
        deleteProfileJButton <- (Obj.repr (Obj.magic 0));
        genericJTabbedPane <- (Obj.repr (Obj.magic 0));
        genericProfilesJList <- (Obj.repr (Obj.magic 0));
        genericProfilesJPanel <- (Obj.repr (Obj.magic 0));
        genericProfilesJScrollPane <- (Obj.repr (Obj.magic 0));
        jLabel1 <- (Obj.repr (Obj.magic 0));
        jLabel2 <- (Obj.repr (Obj.magic 0));
        jLabel3 <- (Obj.repr (Obj.magic 0));
        jPanel1 <- (Obj.repr (Obj.magic 0));
        newProfileJButton <- (Obj.repr (Obj.magic 0));
        newProfileJDialog <- (Obj.repr (Obj.magic 0));
        newProfileNameJLabel <- (Obj.repr (Obj.magic 0));
        newProfileNameJTextField <- (Obj.repr (Obj.magic 0));
        okNewProfileJButton <- (Obj.repr (Obj.magic 0));
        savedCaptureJRadioButton <- (Obj.repr (Obj.magic 0));
        screenCaptureJRadioButton <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ());
        (self#setGenericProfiles ((new GenericProfiles.genericProfiles ((GenericProfiles.get_dEFAULT_FILE ())))));
        (self#selectFirstElement ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "GenericModuleConfigurationJPanel" (fun arguments -> Obj.repr (new genericModuleConfigurationJPanel (Obj.obj arguments)))


