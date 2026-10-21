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
(* import java.io.File *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class fileJDialog () =
  object (self)
    inherit JDialog.jDialog ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable finishedListenerInterface : FileJDialogListenerInterface.fileJDialogListenerInterface = (Obj.magic 0)
    method finishedListenerInterface = finishedListenerInterface
    method set_finishedListenerInterface value' = finishedListenerInterface <- value'
    val mutable jFileChooser1 : Obj.t = Obj.repr 0
    method jFileChooser1 : 'r. 'r = Obj.magic jFileChooser1
    method set_jFileChooser1 : 'v. 'v -> unit = fun value' -> jFileChooser1 <- Obj.repr value'
    
    
    

    method addFinishedListener : 'any1. 'any1 -> unit = fun (finishedListenerInterface_arg) ->
        let finishedListenerInterface_arg = Obj.repr finishedListenerInterface_arg in
        begin
        finishedListenerInterface <- (Obj.magic finishedListenerInterface_arg)
        end [@@warning "-7-20"]
    

    method initComponents () : unit =
        begin
        jFileChooser1 <- Obj.repr ((new JFileChooser.jFileChooser ()));
        ignore (self#setDefaultCloseOperation ((javax.get_swing ())#windowConstants#dISPOSE_ON_CLOSE));
        ignore ((Obj.magic jFileChooser1)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#jFileChooser1ActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((self#getContentPane ()))))) in ();
        ignore ((self#getContentPane ())#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add ((org.get_jdesktop ())#layout#groupLayout#tRAILING, (((((Obj.magic !layout)#createSequentialGroup ())#addContainerGap ((org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 32767))#add ((Obj.magic jFileChooser1), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))#addContainerGap ())))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add ((((((Obj.magic !layout)#createSequentialGroup ())#addContainerGap ())#add ((Obj.magic jFileChooser1), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, 357, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))#addContainerGap ((org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 32767))))));
        ignore (self#pack ())
        end [@@warning "-7"]
    

    method jFileChooser1ActionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
        let evt = Obj.repr evt in
        begin
        ignore ((Obj.magic logUtil)#putF (("Starting Action Command: " ^ java_string_of (Obj.repr (((Obj.magic evt)#getActionCommand ())))), self, "ActionPerformed"));
        let files : Obj.t ref = ref ((Obj.repr ((self#getJFileChooser1 ())#getSelectedFiles ()))) in ();
        if ((Obj.repr ((Obj.magic evt)#getActionCommand ())) == (Obj.repr (self#getJFileChooser1 ())#cANCEL_SELECTION)) then begin
            ignore (self#setVisible (false))
        end;
        if ((Obj.repr ((Obj.magic evt)#getActionCommand ())) == (Obj.repr (self#getJFileChooser1 ())#aPPROVE_SELECTION)) then begin
            if (((Obj.magic !files) != (Obj.magic 0)) && ((Array.length (Obj.magic !files)) > 0)) then begin
                ignore (finishedListenerInterface#onFiles ((Obj.magic !files)))
            end
        end
        end [@@warning "-7-20"]
    

    method getJFileChooser1 : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic jFileChooser1)))
        end [@@warning "-7"]
    

    method setJFileChooser1 : 'any1. 'any1 -> unit = fun (jFileChooser1_arg) ->
        let jFileChooser1_arg = Obj.repr jFileChooser1_arg in
        begin
        jFileChooser1 <- Obj.repr ((Obj.magic jFileChooser1_arg))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        finishedListenerInterface <- ((Obj.magic 0) :> FileJDialogListenerInterface.fileJDialogListenerInterface);
        jFileChooser1 <- (Obj.repr (Obj.magic 0));
        ();
        (* super(...) is the inherit clause *) ();
        (self#initComponents ());
        ignore ((self#getJFileChooser1 ())#setMultiSelectionEnabled (true))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "FileJDialog" (fun arguments -> Obj.repr (new fileJDialog (Obj.obj arguments)))

let main ((_args : string array)) : unit =
        begin
        ignore ((java.get_awt ())#eventQueue#invokeLater ((object (self)
            inherit ARunnable.aRunnable () as super
            

            method run () : unit =
                begin
                ignore ((new fileJDialog ((new JFrame.jFrame ()), true))#setVisible (true))
                end
        end)))
        end
let () = java_register_static "FileJDialog.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


