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
(* package org.allbinary.graphics.j2me.dialog *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.thread.ARunnable *)
(* import java.util.HashMap *)
(* import org.allbinary.gui.dialog.HashMapJDialogListenerInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class rotateJDialog (parent, (modal : bool)) =
  object (self)
    inherit JDialog.jDialog (parent, modal)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable hashMap : java_hash_map = (Obj.magic 0)
    method hashMap = hashMap
    method set_hashMap value' = hashMap <- value'
    val mutable angleIncrementJTextField : Obj.t = Obj.repr 0
    method angleIncrementJTextField : 'r. 'r = Obj.magic angleIncrementJTextField
    method set_angleIncrementJTextField : 'v. 'v -> unit = fun value' -> angleIncrementJTextField <- Obj.repr value'
    val mutable jButton1 : Obj.t = Obj.repr 0
    method jButton1 : 'r. 'r = Obj.magic jButton1
    method set_jButton1 : 'v. 'v -> unit = fun value' -> jButton1 <- Obj.repr value'
    val mutable jLabel1 : Obj.t = Obj.repr 0
    method jLabel1 : 'r. 'r = Obj.magic jLabel1
    method set_jLabel1 : 'v. 'v -> unit = fun value' -> jLabel1 <- Obj.repr value'
    val mutable jLabel2 : Obj.t = Obj.repr 0
    method jLabel2 : 'r. 'r = Obj.magic jLabel2
    method set_jLabel2 : 'v. 'v -> unit = fun value' -> jLabel2 <- Obj.repr value'
    val mutable jPanel1 : Obj.t = Obj.repr 0
    method jPanel1 : 'r. 'r = Obj.magic jPanel1
    method set_jPanel1 : 'v. 'v -> unit = fun value' -> jPanel1 <- Obj.repr value'
    val mutable totalRotationJTextField : Obj.t = Obj.repr 0
    method totalRotationJTextField : 'r. 'r = Obj.magic totalRotationJTextField
    method set_totalRotationJTextField : 'v. 'v -> unit = fun value' -> totalRotationJTextField <- Obj.repr value'
    
    

    method initComponents () : unit =
        begin
        angleIncrementJTextField <- Obj.repr ((new JTextField.jTextField ()));
        jLabel1 <- Obj.repr ((new JLabel.jLabel ()));
        totalRotationJTextField <- Obj.repr ((new JTextField.jTextField ()));
        jLabel2 <- Obj.repr ((new JLabel.jLabel ()));
        jPanel1 <- Obj.repr ((new JPanel.jPanel ()));
        jButton1 <- Obj.repr ((new JButton.jButton ()));
        ignore (self#setDefaultCloseOperation ((javax.get_swing ())#windowConstants#dISPOSE_ON_CLOSE));
        ignore ((Obj.magic angleIncrementJTextField)#setText ("36"));
        ignore ((Obj.magic jLabel1)#setText ("Angle Increment:"));
        ignore ((Obj.magic totalRotationJTextField)#setText ("360"));
        ignore ((Obj.magic jLabel2)#setText ("Total Angular Rotation:"));
        ignore ((Obj.magic jButton1)#setText ("OK"));
        ignore ((Obj.magic jButton1)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#jButton1ActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        let jPanel1Layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic jPanel1))))) in ();
        ignore ((Obj.magic jPanel1)#setLayout ((Obj.magic !jPanel1Layout)));
        ignore ((Obj.magic !jPanel1Layout)#setHorizontalGroup ((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !jPanel1Layout)#createSequentialGroup ())#addGap (62, 62, 62))#addComponent ((Obj.magic jButton1)))#addContainerGap (62, 32767))))));
        ignore ((Obj.magic !jPanel1Layout)#setVerticalGroup ((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic jButton1)))));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((self#getContentPane ()))))) in ();
        ignore ((self#getContentPane ())#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((((Obj.magic !layout)#createSequentialGroup ())#addContainerGap ())#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING))#addComponent ((Obj.magic jLabel1)))#addComponent ((Obj.magic jLabel2)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#uNRELATED))#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic totalRotationJTextField), (javax.get_swing ())#groupLayout#alignment#tRAILING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 31, 32767))#addComponent ((Obj.magic angleIncrementJTextField), (javax.get_swing ())#groupLayout#alignment#tRAILING, (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 31, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addContainerGap ())))#addComponent ((Obj.magic jPanel1), (javax.get_swing ())#groupLayout#alignment#tRAILING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((((((Obj.magic !layout)#createSequentialGroup ())#addContainerGap ())#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic angleIncrementJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addComponent ((Obj.magic jLabel1)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic totalRotationJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addComponent ((Obj.magic jLabel2)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, 16, 32767))#addComponent ((Obj.magic jPanel1), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addContainerGap ())))));
        ignore (self#pack ())
        end [@@warning "-7"]
    

    method jButton1ActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore (hashMap#put ((string_of_int (0)), (string_of_int (((Obj.magic angleIncrementJTextField)#getText ())))));
            ignore (hashMap#put ((string_of_int (1)), (string_of_int (((Obj.magic totalRotationJTextField)#getText ())))));
            ignore (((Obj.magic (self#getParent ())))#onHashMap (hashMap));
            ignore (self#setVisible (false))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF (!commonStrings#eXCEPTION, self, "jButton1ActionPerformed"))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        hashMap <- (((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map);
        angleIncrementJTextField <- (Obj.repr (Obj.magic 0));
        jButton1 <- (Obj.repr (Obj.magic 0));
        jLabel1 <- (Obj.repr (Obj.magic 0));
        jLabel2 <- (Obj.repr (Obj.magic 0));
        jPanel1 <- (Obj.repr (Obj.magic 0));
        totalRotationJTextField <- (Obj.repr (Obj.magic 0));
        ();
        (* super(...) is the inherit clause *) ();
        (self#initComponents ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "RotateJDialog" (fun arguments -> Obj.repr (new rotateJDialog (Obj.obj arguments)))

let main ((_args : string array)) : unit =
        begin
        ignore ((java.get_awt ())#eventQueue#invokeLater ((object (self)
            inherit ARunnable.aRunnable () as super
            

            method run () : unit =
                begin
                let dialog : Obj.t ref = ref ((Obj.repr (new rotateJDialog ((new JFrame.jFrame ()), true)))) in ();
                ignore ((Obj.magic !dialog)#addWindowListener ((object (self)
                    inherit WindowAdapter.windowAdapter () as super
                    

                    method windowClosing : 'any1. 'any1 -> unit = fun (_e) ->
                        begin
                        ignore (exit (0))
                        end [@@warning "-20"]
                end)));
                ignore ((Obj.magic !dialog)#setVisible (true))
                end
        end)))
        end
let () = java_register_static "RotateJDialog.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


