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
(* package org.allbinary.gui.dialog *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.thread.ARunnable *)

class basicTextJDialog ((text : string)) =
  object (self)
    inherit JDialog.jDialog ()
    val mutable closeListenerInterface : CloseJDialogListenerInterface.closeJDialogListenerInterface = (Obj.magic 0)
    method closeListenerInterface = closeListenerInterface
    method set_closeListenerInterface value' = closeListenerInterface <- value'
    val mutable jButton1 : Obj.t = Obj.repr 0
    method jButton1 : 'r. 'r = Obj.magic jButton1
    method set_jButton1 : 'v. 'v -> unit = fun value' -> jButton1 <- Obj.repr value'
    val mutable textJLabel : Obj.t = Obj.repr 0
    method textJLabel : 'r. 'r = Obj.magic textJLabel
    method set_textJLabel : 'v. 'v -> unit = fun value' -> textJLabel <- Obj.repr value'
    
    

    method setText ((text : string)) : unit =
        begin
        ignore ((Obj.magic textJLabel)#setText (text))
        end [@@warning "-7"]
    

    method addCloseListener : 'any1. 'any1 -> unit = fun (closeListenerInterface_arg) ->
        let closeListenerInterface_arg = Obj.repr closeListenerInterface_arg in
        begin
        closeListenerInterface <- (Obj.magic closeListenerInterface_arg)
        end [@@warning "-7-20"]
    
    

    method initComponents () : unit =
        begin
        jButton1 <- Obj.repr ((new JButton.jButton ()));
        textJLabel <- Obj.repr ((new JLabel.jLabel ()));
        ignore (self#setDefaultCloseOperation ((javax.get_swing ())#windowConstants#dISPOSE_ON_CLOSE));
        ignore ((Obj.magic jButton1)#setText ("OK"));
        ignore ((Obj.magic jButton1)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#jButton1ActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic textJLabel)#setText ("No Text Set"));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((self#getContentPane ()))))) in ();
        ignore ((self#getContentPane ())#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !layout)#createSequentialGroup ())#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !layout)#createSequentialGroup ())#addGap (80, 80, 80))#addComponent ((Obj.magic jButton1)))))#addGroup (((((Obj.magic !layout)#createSequentialGroup ())#addContainerGap ())#addComponent ((Obj.magic textJLabel), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 184, 32767))))))#addContainerGap ())))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((((Obj.magic !layout)#createSequentialGroup ())#addGap (20, 20, 20))#addComponent ((Obj.magic textJLabel), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 20, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addGap (30, 30, 30))#addComponent ((Obj.magic jButton1)))))));
        ignore (self#pack ())
        end [@@warning "-7"]
    

    method jButton1ActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore (self#setVisible (false));
        if (closeListenerInterface != (Obj.magic 0)) then begin
            ignore (closeListenerInterface#onClose ())
        end
        end [@@warning "-7-20"]

    initializer
      begin
        closeListenerInterface <- ((Obj.magic 0) :> CloseJDialogListenerInterface.closeJDialogListenerInterface);
        jButton1 <- (Obj.repr (Obj.magic 0));
        textJLabel <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ());
        ignore ((Obj.magic textJLabel)#setText (text))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "BasicTextJDialog" (fun arguments -> Obj.repr (new basicTextJDialog (Obj.obj arguments)))

let main ((_args : string array)) : unit =
        begin
        ignore ((java.get_awt ())#eventQueue#invokeLater ((object (self)
            inherit ARunnable.aRunnable () as super
            

            method run () : unit =
                begin
                ignore ((new basicTextJDialog ((new JFrame.jFrame ()), true, "Test"))#setVisible (true))
                end
        end)))
        end
let () = java_register_static "BasicTextJDialog.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


