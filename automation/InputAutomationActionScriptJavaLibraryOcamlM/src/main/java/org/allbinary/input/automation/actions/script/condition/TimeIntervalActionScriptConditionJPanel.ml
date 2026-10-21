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

class timeIntervalActionScriptConditionJPanel ((timeIntervalActionScriptConditionInterface_arg : TimeIntervalActionScriptConditionInterface.timeIntervalActionScriptConditionInterface)) =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable timeIntervalActionScriptConditionInterface : TimeIntervalActionScriptConditionInterface.timeIntervalActionScriptConditionInterface = (Obj.magic 0)
    method timeIntervalActionScriptConditionInterface = timeIntervalActionScriptConditionInterface
    method set_timeIntervalActionScriptConditionInterface value' = timeIntervalActionScriptConditionInterface <- value'
    val mutable jLabel1 : Obj.t = Obj.repr 0
    method jLabel1 : 'r. 'r = Obj.magic jLabel1
    method set_jLabel1 : 'v. 'v -> unit = fun value' -> jLabel1 <- Obj.repr value'
    val mutable jLabel2 : Obj.t = Obj.repr 0
    method jLabel2 : 'r. 'r = Obj.magic jLabel2
    method set_jLabel2 : 'v. 'v -> unit = fun value' -> jLabel2 <- Obj.repr value'
    val mutable okJButton : Obj.t = Obj.repr 0
    method okJButton : 'r. 'r = Obj.magic okJButton
    method set_okJButton : 'v. 'v -> unit = fun value' -> okJButton <- Obj.repr value'
    val mutable timeIntervalActionJButton : Obj.t = Obj.repr 0
    method timeIntervalActionJButton : 'r. 'r = Obj.magic timeIntervalActionJButton
    method set_timeIntervalActionJButton : 'v. 'v -> unit = fun value' -> timeIntervalActionJButton <- Obj.repr value'
    val mutable timeIntervalActionJDialog : Obj.t = Obj.repr 0
    method timeIntervalActionJDialog : 'r. 'r = Obj.magic timeIntervalActionJDialog
    method set_timeIntervalActionJDialog : 'v. 'v -> unit = fun value' -> timeIntervalActionJDialog <- Obj.repr value'
    val mutable timeIntervalJTextField : Obj.t = Obj.repr 0
    method timeIntervalJTextField : 'r. 'r = Obj.magic timeIntervalJTextField
    method set_timeIntervalJTextField : 'v. 'v -> unit = fun value' -> timeIntervalJTextField <- Obj.repr value'
    val mutable titleJLabel : Obj.t = Obj.repr 0
    method titleJLabel : 'r. 'r = Obj.magic titleJLabel
    method set_titleJLabel : 'v. 'v -> unit = fun value' -> titleJLabel <- Obj.repr value'
    
    

    method set () : unit =
        begin
        ignore ((self#getTimeIntervalJTextField ())#setText ((string_of_int ((timeIntervalActionScriptConditionInterface#getTimeDelayHelper ())#delay))));
        ignore (timeIntervalActionScriptConditionInterface#log ())
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        (timeIntervalActionScriptConditionInterface#getTimeDelayHelper ())#set_delay ((string_of_int (((self#getTimeIntervalJTextField ())#getText ()))));
        ignore (timeIntervalActionScriptConditionInterface#log ())
        end [@@warning "-7"]
    

    method getTimeIntervalJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic timeIntervalJTextField)))
        end [@@warning "-7"]
    

    method setTimeIntervalJTextField : 'any1. 'any1 -> unit = fun (timeIntervalJTextField_arg) ->
        let timeIntervalJTextField_arg = Obj.repr timeIntervalJTextField_arg in
        begin
        timeIntervalJTextField <- Obj.repr ((Obj.magic timeIntervalJTextField_arg))
        end [@@warning "-7-20"]
    

    method getTimeIntervalActionJDialog : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic timeIntervalActionJDialog)))
        end [@@warning "-7"]
    

    method setTimeIntervalActionJDialog : 'any1. 'any1 -> unit = fun (timeIntervalActionJDialog_arg) ->
        let timeIntervalActionJDialog_arg = Obj.repr timeIntervalActionJDialog_arg in
        begin
        timeIntervalActionJDialog <- Obj.repr ((Obj.magic timeIntervalActionJDialog_arg))
        end [@@warning "-7-20"]
    

    method initComponents () : unit =
        begin
        timeIntervalActionJDialog <- Obj.repr ((new JDialog.jDialog ()));
        titleJLabel <- Obj.repr ((new JLabel.jLabel ()));
        okJButton <- Obj.repr ((new JButton.jButton ()));
        jLabel2 <- Obj.repr ((new JLabel.jLabel ()));
        timeIntervalJTextField <- Obj.repr ((new JTextField.jTextField ()));
        timeIntervalActionJButton <- Obj.repr ((new JButton.jButton ()));
        jLabel1 <- Obj.repr ((new JLabel.jLabel ()));
        ignore ((Obj.magic timeIntervalActionJDialog)#setMinimumSize ((new Dimension.dimension (250, 150))));
        ignore ((Obj.magic titleJLabel)#setText ("Time Interval Condition Options"));
        ignore ((Obj.magic okJButton)#setText ("OK"));
        ignore ((Obj.magic okJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#okJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel2)#setText ("Time (ms):"));
        let timeIntervalActionJDialogLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (((Obj.magic timeIntervalActionJDialog)#getContentPane ()))))) in ();
        ignore (((Obj.magic timeIntervalActionJDialog)#getContentPane ())#setLayout ((Obj.magic !timeIntervalActionJDialogLayout)));
        ignore ((Obj.magic !timeIntervalActionJDialogLayout)#setHorizontalGroup ((((Obj.magic !timeIntervalActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !timeIntervalActionJDialogLayout)#createSequentialGroup ())#addGroup (((((Obj.magic !timeIntervalActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING))#addGroup ((javax.get_swing ())#groupLayout#alignment#lEADING, ((((Obj.magic !timeIntervalActionJDialogLayout)#createSequentialGroup ())#addGap (82, 82, 82))#addComponent ((Obj.magic okJButton)))))#addGroup ((javax.get_swing ())#groupLayout#alignment#lEADING, ((((Obj.magic !timeIntervalActionJDialogLayout)#createSequentialGroup ())#addGap (32, 32, 32))#addGroup (((((Obj.magic !timeIntervalActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !timeIntervalActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic jLabel2)))#addGap (16, 16, 16))#addComponent ((Obj.magic timeIntervalJTextField), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 85, 32767))))#addComponent ((Obj.magic titleJLabel)))))))))#addContainerGap (36, 32767))))));
        ignore ((Obj.magic !timeIntervalActionJDialogLayout)#setVerticalGroup ((((Obj.magic !timeIntervalActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((((((Obj.magic !timeIntervalActionJDialogLayout)#createSequentialGroup ())#addContainerGap ())#addComponent ((Obj.magic titleJLabel)))#addGap (20, 20, 20))#addGroup (((((Obj.magic !timeIntervalActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel2)))#addComponent ((Obj.magic timeIntervalJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addGap (15, 15, 15))#addComponent ((Obj.magic okJButton)))#addContainerGap ())))));
        ignore (self#setMinimumSize ((new Dimension.dimension (100, 0))));
        ignore ((Obj.magic timeIntervalActionJButton)#setText ("Edit"));
        ignore ((Obj.magic timeIntervalActionJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#timeIntervalActionJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel1)#setText ("Time Interval:"));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic jLabel1)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))#addComponent ((Obj.magic timeIntervalActionJButton)))))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel1)))#addComponent ((Obj.magic timeIntervalActionJButton)))))))
        end [@@warning "-7"]
    

    method okJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#update ());
        ignore ((self#getTimeIntervalActionJDialog ())#setVisible (false))
        end [@@warning "-7-20"]
    

    method timeIntervalActionJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((self#getTimeIntervalActionJDialog ())#setVisible (true))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        jLabel1 <- (Obj.repr (Obj.magic 0));
        jLabel2 <- (Obj.repr (Obj.magic 0));
        okJButton <- (Obj.repr (Obj.magic 0));
        timeIntervalActionJButton <- (Obj.repr (Obj.magic 0));
        timeIntervalActionJDialog <- (Obj.repr (Obj.magic 0));
        timeIntervalJTextField <- (Obj.repr (Obj.magic 0));
        titleJLabel <- (Obj.repr (Obj.magic 0));
        ();
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
        (self#initComponents ());
        timeIntervalActionScriptConditionInterface <- timeIntervalActionScriptConditionInterface_arg;
        (self#set ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "TimeIntervalActionScriptConditionJPanel" (fun arguments -> Obj.repr (new timeIntervalActionScriptConditionJPanel (Obj.obj arguments)))


