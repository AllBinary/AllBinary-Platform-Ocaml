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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class alwaysActionScriptConditionJPanel ((alwaysActionScriptConditionInterface_arg : AlwaysActionScriptConditionInterface.alwaysActionScriptConditionInterface)) =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable alwaysActionScriptConditionInterface : AlwaysActionScriptConditionInterface.alwaysActionScriptConditionInterface = (Obj.magic 0)
    method alwaysActionScriptConditionInterface = alwaysActionScriptConditionInterface
    method set_alwaysActionScriptConditionInterface value' = alwaysActionScriptConditionInterface <- value'
    val mutable alwaysActionJButton : Obj.t = Obj.repr 0
    method alwaysActionJButton : 'r. 'r = Obj.magic alwaysActionJButton
    method set_alwaysActionJButton : 'v. 'v -> unit = fun value' -> alwaysActionJButton <- Obj.repr value'
    val mutable alwaysActionJDialog : Obj.t = Obj.repr 0
    method alwaysActionJDialog : 'r. 'r = Obj.magic alwaysActionJDialog
    method set_alwaysActionJDialog : 'v. 'v -> unit = fun value' -> alwaysActionJDialog <- Obj.repr value'
    val mutable alwaysJComboBox : Obj.t = Obj.repr 0
    method alwaysJComboBox : 'r. 'r = Obj.magic alwaysJComboBox
    method set_alwaysJComboBox : 'v. 'v -> unit = fun value' -> alwaysJComboBox <- Obj.repr value'
    val mutable jLabel1 : Obj.t = Obj.repr 0
    method jLabel1 : 'r. 'r = Obj.magic jLabel1
    method set_jLabel1 : 'v. 'v -> unit = fun value' -> jLabel1 <- Obj.repr value'
    val mutable jLabel2 : Obj.t = Obj.repr 0
    method jLabel2 : 'r. 'r = Obj.magic jLabel2
    method set_jLabel2 : 'v. 'v -> unit = fun value' -> jLabel2 <- Obj.repr value'
    val mutable okJButton : Obj.t = Obj.repr 0
    method okJButton : 'r. 'r = Obj.magic okJButton
    method set_okJButton : 'v. 'v -> unit = fun value' -> okJButton <- Obj.repr value'
    val mutable titleJLabel : Obj.t = Obj.repr 0
    method titleJLabel : 'r. 'r = Obj.magic titleJLabel
    method set_titleJLabel : 'v. 'v -> unit = fun value' -> titleJLabel <- Obj.repr value'
    
    

    method set () : unit =
        begin
        if (alwaysActionScriptConditionInterface#isIsOn ()) then begin
            ignore ((Obj.magic alwaysJComboBox)#setSelectedIndex (0))
        end else begin
            ignore ((Obj.magic alwaysJComboBox)#setSelectedIndex (1))
        end;
        ignore (alwaysActionScriptConditionInterface#log ())
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        if (((Obj.magic alwaysJComboBox)#getSelectedIndex ()) == 0) then begin
            ignore (alwaysActionScriptConditionInterface#setIsOn (true))
        end else begin
            ignore (alwaysActionScriptConditionInterface#setIsOn (false))
        end;
        ignore (alwaysActionScriptConditionInterface#log ())
        end [@@warning "-7"]
    

    method getAlwaysActionJDialog : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic alwaysActionJDialog)))
        end [@@warning "-7"]
    

    method setAlwaysActionJDialog : 'any1. 'any1 -> unit = fun (alwaysActionJDialog_arg) ->
        let alwaysActionJDialog_arg = Obj.repr alwaysActionJDialog_arg in
        begin
        alwaysActionJDialog <- Obj.repr ((Obj.magic alwaysActionJDialog_arg))
        end [@@warning "-7-20"]
    

    method initComponents () : unit =
        begin
        alwaysActionJDialog <- Obj.repr ((new JDialog.jDialog ()));
        titleJLabel <- Obj.repr ((new JLabel.jLabel ()));
        okJButton <- Obj.repr ((new JButton.jButton ()));
        jLabel2 <- Obj.repr ((new JLabel.jLabel ()));
        alwaysJComboBox <- Obj.repr ((new JComboBox.jComboBox ()));
        alwaysActionJButton <- Obj.repr ((new JButton.jButton ()));
        jLabel1 <- Obj.repr ((new JLabel.jLabel ()));
        ignore ((Obj.magic alwaysActionJDialog)#setMinimumSize ((new Dimension.dimension (250, 150))));
        ignore ((Obj.magic titleJLabel)#setText ("Always Condition Options"));
        ignore ((Obj.magic okJButton)#setText ("OK"));
        ignore ((Obj.magic okJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#okJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel2)#setText ("On:"));
        ignore ((Obj.magic alwaysJComboBox)#setModel ((new DefaultComboBoxModel.defaultComboBoxModel ([| "true"; "false" |]))));
        let alwaysActionJDialogLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (((Obj.magic alwaysActionJDialog)#getContentPane ()))))) in ();
        ignore (((Obj.magic alwaysActionJDialog)#getContentPane ())#setLayout ((Obj.magic !alwaysActionJDialogLayout)));
        ignore ((Obj.magic !alwaysActionJDialogLayout)#setHorizontalGroup ((((Obj.magic !alwaysActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !alwaysActionJDialogLayout)#createSequentialGroup ())#addGroup (((((Obj.magic !alwaysActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !alwaysActionJDialogLayout)#createSequentialGroup ())#addGap (47, 47, 47))#addGroup (((((Obj.magic !alwaysActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING, false))#addGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING, (((((Obj.magic !alwaysActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic jLabel2)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))#addComponent ((Obj.magic alwaysJComboBox), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addComponent ((Obj.magic titleJLabel)))))))#addGroup (((((Obj.magic !alwaysActionJDialogLayout)#createSequentialGroup ())#addGap (79, 79, 79))#addComponent ((Obj.magic okJButton)))))))#addContainerGap (45, 32767))))));
        ignore ((Obj.magic !alwaysActionJDialogLayout)#setVerticalGroup ((((Obj.magic !alwaysActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((((((Obj.magic !alwaysActionJDialogLayout)#createSequentialGroup ())#addContainerGap ())#addComponent ((Obj.magic titleJLabel)))#addGap (20, 20, 20))#addGroup (((((Obj.magic !alwaysActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic alwaysJComboBox), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addComponent ((Obj.magic jLabel2)))))#addGap (15, 15, 15))#addComponent ((Obj.magic okJButton)))#addContainerGap ())))));
        ignore (self#setMinimumSize ((new Dimension.dimension (100, 0))));
        ignore ((Obj.magic alwaysActionJButton)#setText ("Edit"));
        ignore ((Obj.magic alwaysActionJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#alwaysActionJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel1)#setText ("Always:"));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic jLabel1)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, 33, 32767))#addComponent ((Obj.magic alwaysActionJButton)))))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel1)))#addComponent ((Obj.magic alwaysActionJButton)))))))
        end [@@warning "-7"]
    

    method okJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#update ());
        ignore ((self#getAlwaysActionJDialog ())#setVisible (false))
        end [@@warning "-7-20"]
    

    method alwaysActionJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((self#getAlwaysActionJDialog ())#setVisible (true))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        alwaysActionJButton <- (Obj.repr (Obj.magic 0));
        alwaysActionJDialog <- (Obj.repr (Obj.magic 0));
        alwaysJComboBox <- (Obj.repr (Obj.magic 0));
        jLabel1 <- (Obj.repr (Obj.magic 0));
        jLabel2 <- (Obj.repr (Obj.magic 0));
        okJButton <- (Obj.repr (Obj.magic 0));
        titleJLabel <- (Obj.repr (Obj.magic 0));
        ();
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
        (self#initComponents ());
        alwaysActionScriptConditionInterface <- alwaysActionScriptConditionInterface_arg;
        (self#set ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "AlwaysActionScriptConditionJPanel" (fun arguments -> Obj.repr (new alwaysActionScriptConditionJPanel (Obj.obj arguments)))


