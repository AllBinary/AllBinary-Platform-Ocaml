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

class inputAutomationTypeJPanel () =
  object (self)
    inherit JPanel.jPanel ()
    val mutable inputAutomationTypeJComboBox : Obj.t = Obj.repr 0
    method inputAutomationTypeJComboBox : 'r. 'r = Obj.magic inputAutomationTypeJComboBox
    method set_inputAutomationTypeJComboBox : 'v. 'v -> unit = fun value' -> inputAutomationTypeJComboBox <- Obj.repr value'
    val mutable jLabel1 : Obj.t = Obj.repr 0
    method jLabel1 : 'r. 'r = Obj.magic jLabel1
    method set_jLabel1 : 'v. 'v -> unit = fun value' -> jLabel1 <- Obj.repr value'
    
    

    method getInputAutomationTypeJComboBox : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic inputAutomationTypeJComboBox)))
        end [@@warning "-7"]
    

    method setInputAutomationTypeJComboBox : 'any1. 'any1 -> unit = fun (inputAutomationTypeJComboBox_arg) ->
        let inputAutomationTypeJComboBox_arg = Obj.repr inputAutomationTypeJComboBox_arg in
        begin
        inputAutomationTypeJComboBox <- Obj.repr ((Obj.magic inputAutomationTypeJComboBox_arg))
        end [@@warning "-7-20"]
    

    method initComponents () : unit =
        begin
        inputAutomationTypeJComboBox <- Obj.repr ((new JComboBox.jComboBox ()));
        jLabel1 <- Obj.repr ((new JLabel.jLabel ()));
        ignore ((Obj.magic inputAutomationTypeJComboBox)#setModel ((new DefaultComboBoxModel.defaultComboBoxModel ([| "DirectX"; "DirectX 8"; "Low Level"; "Java Robot" |]))));
        ignore ((Obj.magic jLabel1)#setText ("Input Type:"));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic jLabel1)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic inputAutomationTypeJComboBox), 0, 98, 32767))))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel1)))#addComponent ((Obj.magic inputAutomationTypeJComboBox), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))))
        end [@@warning "-7"]

    initializer
      begin
        inputAutomationTypeJComboBox <- (Obj.repr (Obj.magic 0));
        jLabel1 <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputAutomationTypeJPanel" (fun arguments -> Obj.repr (new inputAutomationTypeJPanel (Obj.obj arguments)))


