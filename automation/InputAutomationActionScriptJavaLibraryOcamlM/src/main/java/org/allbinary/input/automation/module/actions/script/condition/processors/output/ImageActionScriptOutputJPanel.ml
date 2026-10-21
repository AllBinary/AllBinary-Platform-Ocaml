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
(* package org.allbinary.input.automation.module.actions.script.condition.processors.output *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.swing *)
(* import org.allbinary.input.media.image.InputImageType *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class imageActionScriptOutputJPanel (capturedImageActionScriptOutputInterface_arg) =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable capturedImageActionScriptOutputInterface : Obj.t = Obj.repr 0
    method capturedImageActionScriptOutputInterface : 'r. 'r = Obj.magic capturedImageActionScriptOutputInterface
    method set_capturedImageActionScriptOutputInterface : 'v. 'v -> unit = fun value' -> capturedImageActionScriptOutputInterface <- Obj.repr value'
    val mutable capturedImageActionJButton : Obj.t = Obj.repr 0
    method capturedImageActionJButton : 'r. 'r = Obj.magic capturedImageActionJButton
    method set_capturedImageActionJButton : 'v. 'v -> unit = fun value' -> capturedImageActionJButton <- Obj.repr value'
    val mutable capturedImageActionJDialog : Obj.t = Obj.repr 0
    method capturedImageActionJDialog : 'r. 'r = Obj.magic capturedImageActionJDialog
    method set_capturedImageActionJDialog : 'v. 'v -> unit = fun value' -> capturedImageActionJDialog <- Obj.repr value'
    val mutable displayJCheckBox : Obj.t = Obj.repr 0
    method displayJCheckBox : 'r. 'r = Obj.magic displayJCheckBox
    method set_displayJCheckBox : 'v. 'v -> unit = fun value' -> displayJCheckBox <- Obj.repr value'
    val mutable itemTypesJList : Obj.t = Obj.repr 0
    method itemTypesJList : 'r. 'r = Obj.magic itemTypesJList
    method set_itemTypesJList : 'v. 'v -> unit = fun value' -> itemTypesJList <- Obj.repr value'
    val mutable jLabel1 : Obj.t = Obj.repr 0
    method jLabel1 : 'r. 'r = Obj.magic jLabel1
    method set_jLabel1 : 'v. 'v -> unit = fun value' -> jLabel1 <- Obj.repr value'
    val mutable jScrollPane1 : Obj.t = Obj.repr 0
    method jScrollPane1 : 'r. 'r = Obj.magic jScrollPane1
    method set_jScrollPane1 : 'v. 'v -> unit = fun value' -> jScrollPane1 <- Obj.repr value'
    val mutable okJButton : Obj.t = Obj.repr 0
    method okJButton : 'r. 'r = Obj.magic okJButton
    method set_okJButton : 'v. 'v -> unit = fun value' -> okJButton <- Obj.repr value'
    val mutable saveJCheckBox : Obj.t = Obj.repr 0
    method saveJCheckBox : 'r. 'r = Obj.magic saveJCheckBox
    method set_saveJCheckBox : 'v. 'v -> unit = fun value' -> saveJCheckBox <- Obj.repr value'
    val mutable titleJLabel : Obj.t = Obj.repr 0
    method titleJLabel : 'r. 'r = Obj.magic titleJLabel
    method set_titleJLabel : 'v. 'v -> unit = fun value' -> titleJLabel <- Obj.repr value'
    
    

    method set () : unit =
        begin
        (self#setImageTypeJlistModel ());
        let imageTypes : Obj.t ref = ref ((Obj.repr ((Obj.magic capturedImageActionScriptOutputInterface)#getImageTypes ()))) in ();
        let vector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic !imageTypes)#getVector ()) :> BasicArrayList.basicArrayList)) in ();
        let selectedArray : int array ref = ref ((Array.make ((!vector#size ())) 0)) in ();
        let size : int ref = ref ((!vector#size ())) in ();
        for index = 0 to !size - 1 do
            let imageType : InputImageType.inputImageType ref = ref (((Obj.magic (!vector#get (index))) :> InputImageType.inputImageType)) in ();
            !selectedArray.((let value = index in index <- index + 1; value)) <- (!imageType#getIndex ())
        done;
        ignore ((Obj.magic itemTypesJList)#setSelectedIndices (!selectedArray));
        if ((Obj.magic capturedImageActionScriptOutputInterface)#isSaved ()) then begin
            ignore ((Obj.magic saveJCheckBox)#setSelected (true))
        end;
        if ((Obj.magic capturedImageActionScriptOutputInterface)#isSaved ()) then begin
            ignore ((Obj.magic displayJCheckBox)#setSelected (true))
        end;
        ignore ((Obj.magic capturedImageActionScriptOutputInterface)#log ())
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        let anyType : Obj.t array ref = ref (((Obj.magic itemTypesJList)#getSelectedValues ())) in ();
        let imageTypes : Obj.t ref = ref ((Obj.repr (ImageTypes.valueOf (!anyType)))) in ();
        ignore ((Obj.magic capturedImageActionScriptOutputInterface)#setImageTypes ((Obj.magic !imageTypes)));
        if ((Obj.magic saveJCheckBox)#isSelected ()) then begin
            ignore ((Obj.magic capturedImageActionScriptOutputInterface)#setSaved (true))
        end else begin
            ignore ((Obj.magic capturedImageActionScriptOutputInterface)#setSaved (false))
        end;
        if ((Obj.magic displayJCheckBox)#isSelected ()) then begin
            ignore ((Obj.magic capturedImageActionScriptOutputInterface)#setDisplay (true))
        end else begin
            ignore ((Obj.magic capturedImageActionScriptOutputInterface)#setDisplay (false))
        end;
        ignore ((Obj.magic capturedImageActionScriptOutputInterface)#log ())
        end [@@warning "-7"]
    

    method setImageTypeJlistModel () : unit =
        begin
        let defaultListModel : Obj.t ref = ref ((Obj.repr (new DefaultListModel.defaultListModel ()))) in ();
        let vector : BasicArrayList.basicArrayList ref = ref (((InputImageType.getAllAsVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!vector#size ())) in ();
        for index = 0 to !size - 1 do
            let imageType : InputImageType.inputImageType ref = ref (((Obj.magic (!vector#get (index))) :> InputImageType.inputImageType)) in ();
            ignore ((Obj.magic !defaultListModel)#addElement ((!imageType#getName ())))
        done;
        ignore ((Obj.magic itemTypesJList)#setModel ((Obj.magic !defaultListModel)))
        end [@@warning "-7"]
    

    method getCapturedImageActionJDialog : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic capturedImageActionJDialog)))
        end [@@warning "-7"]
    

    method setCapturedImageActionJDialog : 'any1. 'any1 -> unit = fun (capturedImageActionJDialog_arg) ->
        let capturedImageActionJDialog_arg = Obj.repr capturedImageActionJDialog_arg in
        begin
        capturedImageActionJDialog <- Obj.repr ((Obj.magic capturedImageActionJDialog_arg))
        end [@@warning "-7-20"]
    

    method initComponents () : unit =
        begin
        capturedImageActionJDialog <- Obj.repr ((new JDialog.jDialog ()));
        titleJLabel <- Obj.repr ((new JLabel.jLabel ()));
        okJButton <- Obj.repr ((new JButton.jButton ()));
        saveJCheckBox <- Obj.repr ((new JCheckBox.jCheckBox ()));
        displayJCheckBox <- Obj.repr ((new JCheckBox.jCheckBox ()));
        jScrollPane1 <- Obj.repr ((new JScrollPane.jScrollPane ()));
        itemTypesJList <- Obj.repr ((new JList.jList ()));
        capturedImageActionJButton <- Obj.repr ((new JButton.jButton ()));
        jLabel1 <- Obj.repr ((new JLabel.jLabel ()));
        ignore ((Obj.magic capturedImageActionJDialog)#setMinimumSize ((new Dimension.dimension (250, 250))));
        ignore ((Obj.magic titleJLabel)#setText ("Image Output Options"));
        ignore ((Obj.magic okJButton)#setText ("OK"));
        ignore ((Obj.magic okJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#okJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic saveJCheckBox)#setText ("Save To File"));
        ignore ((Obj.magic saveJCheckBox)#setBorder (((javax.get_swing ())#borderFactory#createEmptyBorder (0, 0, 0, 0))));
        ignore ((Obj.magic saveJCheckBox)#setMargin ((new Insets.insets (0, 0, 0, 0))));
        ignore ((Obj.magic displayJCheckBox)#setText ("Display"));
        ignore ((Obj.magic displayJCheckBox)#setBorder (((javax.get_swing ())#borderFactory#createEmptyBorder (0, 0, 0, 0))));
        ignore ((Obj.magic displayJCheckBox)#setMargin ((new Insets.insets (0, 0, 0, 0))));
        ignore ((Obj.magic displayJCheckBox)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#displayJCheckBoxActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic itemTypesJList)#setModel ((object (self)
            inherit AbstractListModel.abstractListModel () as super
            strings <- [| "Item 1"; "Item 2"; "Item 3"; "Item 4"; "Item 5" |]
            

            method getSize () : int =
                begin
                (Array.length !strings)
                end
            

            method getElementAt ((i : int)) : Obj.t =
                begin
                (Obj.repr (!strings.(i)))
                end
        end)));
        ignore ((Obj.magic jScrollPane1)#setViewportView ((Obj.magic itemTypesJList)));
        let capturedImageActionJDialogLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (((Obj.magic capturedImageActionJDialog)#getContentPane ()))))) in ();
        ignore (((Obj.magic capturedImageActionJDialog)#getContentPane ())#setLayout ((Obj.magic !capturedImageActionJDialogLayout)));
        ignore ((Obj.magic !capturedImageActionJDialogLayout)#setHorizontalGroup ((((Obj.magic !capturedImageActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !capturedImageActionJDialogLayout)#createSequentialGroup ())#addGroup ((((((Obj.magic !capturedImageActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !capturedImageActionJDialogLayout)#createSequentialGroup ())#addGap (61, 61, 61))#addComponent ((Obj.magic titleJLabel)))))#addGroup (((((Obj.magic !capturedImageActionJDialogLayout)#createSequentialGroup ())#addContainerGap ())#addGroup (((((Obj.magic !capturedImageActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !capturedImageActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic displayJCheckBox)))#addComponent ((Obj.magic saveJCheckBox), (javax.get_swing ())#groupLayout#alignment#tRAILING))))#addGroup (((((Obj.magic !capturedImageActionJDialogLayout)#createSequentialGroup ())#addGap (84, 84, 84))#addComponent ((Obj.magic okJButton)))))))))#addGroup (((((Obj.magic !capturedImageActionJDialogLayout)#createSequentialGroup ())#addContainerGap ())#addComponent ((Obj.magic jScrollPane1), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 216, 32767))))))#addContainerGap ())))));
        ignore ((Obj.magic !capturedImageActionJDialogLayout)#setVerticalGroup ((((Obj.magic !capturedImageActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((((((((((Obj.magic !capturedImageActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic titleJLabel)))#addGap (5, 5, 5))#addComponent ((Obj.magic jScrollPane1), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 105, 32767))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic saveJCheckBox)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic displayJCheckBox)))#addGap (9, 9, 9))#addComponent ((Obj.magic okJButton)))#addContainerGap ())))));
        ignore (self#setMinimumSize ((new Dimension.dimension (100, 0))));
        ignore ((Obj.magic capturedImageActionJButton)#setText ("Edit"));
        ignore ((Obj.magic capturedImageActionJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#capturedImageActionJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel1)#setText ("Capture Image:"));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic jLabel1)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))#addComponent ((Obj.magic capturedImageActionJButton)))))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel1)))#addComponent ((Obj.magic capturedImageActionJButton)))))))
        end [@@warning "-7"]
    

    method displayJCheckBoxActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method okJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#update ());
        ignore ((self#getCapturedImageActionJDialog ())#setVisible (false))
        end [@@warning "-7-20"]
    

    method capturedImageActionJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((self#getCapturedImageActionJDialog ())#setVisible (true))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        capturedImageActionJButton <- (Obj.repr (Obj.magic 0));
        capturedImageActionJDialog <- (Obj.repr (Obj.magic 0));
        displayJCheckBox <- (Obj.repr (Obj.magic 0));
        itemTypesJList <- (Obj.repr (Obj.magic 0));
        jLabel1 <- (Obj.repr (Obj.magic 0));
        jScrollPane1 <- (Obj.repr (Obj.magic 0));
        okJButton <- (Obj.repr (Obj.magic 0));
        saveJCheckBox <- (Obj.repr (Obj.magic 0));
        titleJLabel <- (Obj.repr (Obj.magic 0));
        ();
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
        (self#initComponents ());
        capturedImageActionScriptOutputInterface <- Obj.repr (capturedImageActionScriptOutputInterface_arg);
        (self#set ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageActionScriptOutputJPanel" (fun arguments -> Obj.repr (new imageActionScriptOutputJPanel (Obj.obj arguments)))


