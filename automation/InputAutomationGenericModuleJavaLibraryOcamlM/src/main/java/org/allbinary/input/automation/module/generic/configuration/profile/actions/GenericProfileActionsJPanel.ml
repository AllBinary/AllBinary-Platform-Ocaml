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
(* import org.allbinary.input.automation.module.DefaultListModelHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class genericProfileActionsJPanel () =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable genericProfileActions : Obj.t = Obj.repr 0
    method genericProfileActions : 'r. 'r = Obj.magic genericProfileActions
    method set_genericProfileActions : 'v. 'v -> unit = fun value' -> genericProfileActions <- Obj.repr value'
    val mutable genericProfileActionJPanel : GenericProfileActionJPanel.genericProfileActionJPanel = (Obj.magic 0)
    method genericProfileActionJPanel = genericProfileActionJPanel
    method set_genericProfileActionJPanel value' = genericProfileActionJPanel <- value'
    val mutable blankGenericProfileActionJPanel : Obj.t = Obj.repr 0
    method blankGenericProfileActionJPanel : 'r. 'r = Obj.magic blankGenericProfileActionJPanel
    method set_blankGenericProfileActionJPanel : 'v. 'v -> unit = fun value' -> blankGenericProfileActionJPanel <- Obj.repr value'
    val mutable deleteActionJButton : Obj.t = Obj.repr 0
    method deleteActionJButton : 'r. 'r = Obj.magic deleteActionJButton
    method set_deleteActionJButton : 'v. 'v -> unit = fun value' -> deleteActionJButton <- Obj.repr value'
    val mutable genericProfileActionsJList : Obj.t = Obj.repr 0
    method genericProfileActionsJList : 'r. 'r = Obj.magic genericProfileActionsJList
    method set_genericProfileActionsJList : 'v. 'v -> unit = fun value' -> genericProfileActionsJList <- Obj.repr value'
    val mutable genericProfileActionsJPanel : Obj.t = Obj.repr 0
    method genericProfileActionsJPanel : 'r. 'r = Obj.magic genericProfileActionsJPanel
    method set_genericProfileActionsJPanel : 'v. 'v -> unit = fun value' -> genericProfileActionsJPanel <- Obj.repr value'
    val mutable genericProfileActionsJScrollPane : Obj.t = Obj.repr 0
    method genericProfileActionsJScrollPane : 'r. 'r = Obj.magic genericProfileActionsJScrollPane
    method set_genericProfileActionsJScrollPane : 'v. 'v -> unit = fun value' -> genericProfileActionsJScrollPane <- Obj.repr value'
    val mutable newActionJButton : Obj.t = Obj.repr 0
    method newActionJButton : 'r. 'r = Obj.magic newActionJButton
    method set_newActionJButton : 'v. 'v -> unit = fun value' -> newActionJButton <- Obj.repr value'
    val mutable newProfileActionJDialog : Obj.t = Obj.repr 0
    method newProfileActionJDialog : 'r. 'r = Obj.magic newProfileActionJDialog
    method set_newProfileActionJDialog : 'v. 'v -> unit = fun value' -> newProfileActionJDialog <- Obj.repr value'
    val mutable newProfileActionJLabel : Obj.t = Obj.repr 0
    method newProfileActionJLabel : 'r. 'r = Obj.magic newProfileActionJLabel
    method set_newProfileActionJLabel : 'v. 'v -> unit = fun value' -> newProfileActionJLabel <- Obj.repr value'
    val mutable newProfileActionJTextField : Obj.t = Obj.repr 0
    method newProfileActionJTextField : 'r. 'r = Obj.magic newProfileActionJTextField
    method set_newProfileActionJTextField : 'v. 'v -> unit = fun value' -> newProfileActionJTextField <- Obj.repr value'
    val mutable okNewProfileActionJButton : Obj.t = Obj.repr 0
    method okNewProfileActionJButton : 'r. 'r = Obj.magic okNewProfileActionJButton
    method set_okNewProfileActionJButton : 'v. 'v -> unit = fun value' -> okNewProfileActionJButton <- Obj.repr value'
    val mutable saveJButton : Obj.t = Obj.repr 0
    method saveJButton : 'r. 'r = Obj.magic saveJButton
    method set_saveJButton : 'v. 'v -> unit = fun value' -> saveJButton <- Obj.repr value'
    
    

    method initComponents () : unit =
        begin
        newProfileActionJDialog <- Obj.repr ((new JDialog.jDialog ()));
        newProfileActionJLabel <- Obj.repr ((new JLabel.jLabel ()));
        okNewProfileActionJButton <- Obj.repr ((new JButton.jButton ()));
        newProfileActionJTextField <- Obj.repr ((new JTextField.jTextField ()));
        genericProfileActionsJPanel <- Obj.repr ((new JPanel.jPanel ()));
        genericProfileActionsJScrollPane <- Obj.repr ((new JScrollPane.jScrollPane ()));
        genericProfileActionsJList <- Obj.repr ((new JList.jList ()));
        newActionJButton <- Obj.repr ((new JButton.jButton ()));
        deleteActionJButton <- Obj.repr ((new JButton.jButton ()));
        saveJButton <- Obj.repr ((new JButton.jButton ()));
        blankGenericProfileActionJPanel <- Obj.repr ((new JPanel.jPanel ()));
        ignore ((Obj.magic newProfileActionJDialog)#setMinimumSize ((new Dimension.dimension (250, 150))));
        ignore ((Obj.magic newProfileActionJDialog)#setResizable (false));
        ignore ((Obj.magic newProfileActionJLabel)#setText ("New Action Name"));
        ignore ((Obj.magic okNewProfileActionJButton)#setText ("Ok"));
        ignore ((Obj.magic okNewProfileActionJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#okNewProfileActionJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        let newProfileActionJDialogLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (((Obj.magic newProfileActionJDialog)#getContentPane ()))))) in ();
        ignore (((Obj.magic newProfileActionJDialog)#getContentPane ())#setLayout ((Obj.magic !newProfileActionJDialogLayout)));
        ignore ((Obj.magic !newProfileActionJDialogLayout)#setHorizontalGroup ((((Obj.magic !newProfileActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !newProfileActionJDialogLayout)#createSequentialGroup ())#addGroup ((((((Obj.magic !newProfileActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !newProfileActionJDialogLayout)#createSequentialGroup ())#addGap (93, 93, 93))#addComponent ((Obj.magic okNewProfileActionJButton)))))#addGroup (((((Obj.magic !newProfileActionJDialogLayout)#createSequentialGroup ())#addGap (75, 75, 75))#addComponent ((Obj.magic newProfileActionJLabel)))))#addGroup (((((Obj.magic !newProfileActionJDialogLayout)#createSequentialGroup ())#addGap (29, 29, 29))#addComponent ((Obj.magic newProfileActionJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 178, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))))#addContainerGap (34, 32767))))));
        ignore ((Obj.magic !newProfileActionJDialogLayout)#setVerticalGroup ((((Obj.magic !newProfileActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING, (((((((((Obj.magic !newProfileActionJDialogLayout)#createSequentialGroup ())#addContainerGap ())#addComponent ((Obj.magic newProfileActionJLabel)))#addGap (21, 21, 21))#addComponent ((Obj.magic newProfileActionJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, 20, 32767))#addComponent ((Obj.magic okNewProfileActionJButton)))#addContainerGap ())))));
        ignore ((Obj.magic genericProfileActionsJPanel)#setPreferredSize ((new Dimension.dimension (10000, 10000))));
        ignore ((Obj.magic genericProfileActionsJList)#addListSelectionListener ((object (self)
            inherit ListSelectionListener.listSelectionListener () as super
            

            method valueChanged : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#genericProfileActionsJListValueChanged ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic genericProfileActionsJScrollPane)#setViewportView ((Obj.magic genericProfileActionsJList)));
        ignore ((Obj.magic newActionJButton)#setText ("New"));
        ignore ((Obj.magic newActionJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#newActionJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic deleteActionJButton)#setText ("Delete"));
        ignore ((Obj.magic deleteActionJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#deleteActionJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic saveJButton)#setText ("Save"));
        ignore ((Obj.magic saveJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#saveJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic blankGenericProfileActionJPanel)#setMinimumSize ((new Dimension.dimension (500, 300))));
        let blankGenericProfileActionJPanelLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic blankGenericProfileActionJPanel))))) in ();
        ignore ((Obj.magic blankGenericProfileActionJPanel)#setLayout ((Obj.magic !blankGenericProfileActionJPanelLayout)));
        ignore ((Obj.magic !blankGenericProfileActionJPanelLayout)#setHorizontalGroup ((((Obj.magic !blankGenericProfileActionJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 500, 32767))));
        ignore ((Obj.magic !blankGenericProfileActionJPanelLayout)#setVerticalGroup ((((Obj.magic !blankGenericProfileActionJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 296, 32767))));
        let genericProfileActionsJPanelLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic genericProfileActionsJPanel))))) in ();
        ignore ((Obj.magic genericProfileActionsJPanel)#setLayout ((Obj.magic !genericProfileActionsJPanelLayout)));
        ignore ((Obj.magic !genericProfileActionsJPanelLayout)#setHorizontalGroup (((((Obj.magic !genericProfileActionsJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !genericProfileActionsJPanelLayout)#createSequentialGroup ())#addComponent ((Obj.magic genericProfileActionsJScrollPane), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 95, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic blankGenericProfileActionJPanel), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))))#addGroup (((((((((Obj.magic !genericProfileActionsJPanelLayout)#createSequentialGroup ())#addComponent ((Obj.magic newActionJButton)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic deleteActionJButton)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic saveJButton)))#addContainerGap ())))));
        ignore ((Obj.magic !genericProfileActionsJPanelLayout)#setVerticalGroup ((((Obj.magic !genericProfileActionsJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((((Obj.magic !genericProfileActionsJPanelLayout)#createSequentialGroup ())#addGroup ((((((Obj.magic !genericProfileActionsJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic newActionJButton)))#addComponent ((Obj.magic deleteActionJButton)))#addComponent ((Obj.magic saveJButton)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !genericProfileActionsJPanelLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING, false))#addComponent ((Obj.magic blankGenericProfileActionJPanel), 0, 296, 32767))#addComponent ((Obj.magic genericProfileActionsJScrollPane), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 296, 32767))))#addContainerGap ((javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))))));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic genericProfileActionsJPanel), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 596, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addContainerGap ((javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic genericProfileActionsJPanel), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 336, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))
        end [@@warning "-7"]
    

    method setModel () : unit =
        begin
        let defaultListModelHelper : DefaultListModelHelper.defaultListModelHelper ref = ref ((((self#getGenericProfileActions ())#getDefaultListModelHelper ()) :> DefaultListModelHelper.defaultListModelHelper)) in ();
        if (((!defaultListModelHelper#getListModel ())#getSize ()) > 0) then begin
            ignore ((Obj.magic genericProfileActionsJList)#setModel ((!defaultListModelHelper#getListModel ())))
        end
        end [@@warning "-7"]
    

    method saveJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((self#getGenericProfileActions ())#save ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "saveJButtonActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method updateProfileActionUI ((profileActionNameString : string)) : unit =
        begin
        ignore ((Obj.magic blankGenericProfileActionJPanel)#removeAll ());
        if (profileActionNameString <> (Obj.magic 0)) then begin
            let genericProfileAction : GenericProfileAction.genericProfileAction ref = ref ((((self#getGenericProfileActions ())#getAction (profileActionNameString)) :> GenericProfileAction.genericProfileAction)) in ();
            (self#setGenericProfileActionJPanel ((new GenericProfileActionJPanel.genericProfileActionJPanel ())));
            ignore ((self#getGenericProfileActionJPanel ())#setGenericProfileAction (!genericProfileAction));
            ignore ((self#getGenericProfileActionJPanel ())#updateProfileActionUI ());
            let layout : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic blankGenericProfileActionJPanel)#getLayout ())))) in ();
            ignore ((Obj.magic !layout)#setHorizontalGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 395, 32767))#addComponent ((self#getGenericProfileActionJPanel ()), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))));
            ignore ((Obj.magic !layout)#setVerticalGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 256, 32767))#addComponent ((self#getGenericProfileActionJPanel ()), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))));
            ignore ((Obj.magic logUtil)#putF ("Setting Configuration Profile Actions JPanel", self, "genericProfileActionsJListValueChanged"))
        end
        end [@@warning "-7"]
    

    method genericProfileActionsJListValueChanged : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            let profileActionNameString : string ref = ref ((Obj.magic ((Obj.magic genericProfileActionsJList)#getSelectedValue ()))) in ();
            (self#updateProfileActionUI (!profileActionNameString))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "genericProfileActionsJListValueChanged", e))
        end)
        end [@@warning "-7-20"]
    

    method okNewProfileActionJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            let newActionName : string ref = ref (((Obj.magic newProfileActionJTextField)#getText ())) in ();
            ignore ((self#getGenericProfileActions ())#add (!newActionName));
            (self#setModel ());
            ignore ((Obj.magic genericProfileActionsJList)#setSelectedValue (!newActionName, true));
            ignore ((Obj.magic newProfileActionJDialog)#setVisible (false));
            (self#updateProfileActionUI (!newActionName))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "okNewProfileActionJButtonActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method deleteActionJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            let anyType : Obj.t array ref = ref (((Obj.magic genericProfileActionsJList)#getSelectedValues ())) in ();
            for index = 0 to (Array.length !anyType) - 1 do
                let nextSelectedValueString : string ref = ref ((Obj.magic !anyType.(index))) in ();
                ignore ((self#getGenericProfileActions ())#remove (!nextSelectedValueString))
            done;
            (self#selectFirstElement ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "deleteActionJButtonActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method selectFirstElement () : unit =
        begin
        (self#setModel ());
        if ((((Obj.magic genericProfileActionsJList)#getModel ())#getSize ()) > 0) then begin
            ignore ((Obj.magic genericProfileActionsJList)#setSelectedValue ((((Obj.magic genericProfileActionsJList)#getModel ())#getElementAt (0)), true));
            (self#updateProfileActionUI ((Obj.magic (((Obj.magic genericProfileActionsJList)#getModel ())#getElementAt (0)))))
        end else begin
            ignore ((Obj.magic blankGenericProfileActionJPanel)#removeAll ());
            ignore ((Obj.magic blankGenericProfileActionJPanel)#repaint ())
        end
        end [@@warning "-7"]
    

    method getGenericProfileActionJPanel () : GenericProfileActionJPanel.genericProfileActionJPanel =
        begin
        (genericProfileActionJPanel :> GenericProfileActionJPanel.genericProfileActionJPanel)
        end [@@warning "-7"]
    

    method setGenericProfileActionJPanel : 'any1. 'any1 -> unit = fun (genericProfileActionJPanel_arg) ->
        let genericProfileActionJPanel_arg = Obj.repr genericProfileActionJPanel_arg in
        begin
        genericProfileActionJPanel <- (Obj.magic genericProfileActionJPanel_arg)
        end [@@warning "-7-20"]
    

    method getGenericProfileActions : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic genericProfileActions)))
        end [@@warning "-7"]
    

    method setGenericProfileActions : 'any1. 'any1 -> unit = fun (genericProfileActions_arg) ->
        let genericProfileActions_arg = Obj.repr genericProfileActions_arg in
        begin
        genericProfileActions <- Obj.repr ((Obj.magic genericProfileActions_arg))
        end [@@warning "-7-20"]
    

    method newActionJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((Obj.magic newProfileActionJDialog)#setVisible (true))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        genericProfileActions <- (Obj.repr (Obj.magic 0));
        genericProfileActionJPanel <- ((Obj.magic 0) :> GenericProfileActionJPanel.genericProfileActionJPanel);
        blankGenericProfileActionJPanel <- (Obj.repr (Obj.magic 0));
        deleteActionJButton <- (Obj.repr (Obj.magic 0));
        genericProfileActionsJList <- (Obj.repr (Obj.magic 0));
        genericProfileActionsJPanel <- (Obj.repr (Obj.magic 0));
        genericProfileActionsJScrollPane <- (Obj.repr (Obj.magic 0));
        newActionJButton <- (Obj.repr (Obj.magic 0));
        newProfileActionJDialog <- (Obj.repr (Obj.magic 0));
        newProfileActionJLabel <- (Obj.repr (Obj.magic 0));
        newProfileActionJTextField <- (Obj.repr (Obj.magic 0));
        okNewProfileActionJButton <- (Obj.repr (Obj.magic 0));
        saveJButton <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "GenericProfileActionsJPanel" (fun arguments -> Obj.repr (new genericProfileActionsJPanel (Obj.obj arguments)))


