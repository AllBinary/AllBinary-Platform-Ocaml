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
(* import java.awt *)
(* import java.awt.event.ActionEvent *)
(* import java.awt.event.ActionListener *)
(* import javax.swing *)
(* import org.allbinary.graphics.j2me.GraphicsException *)
(* import org.allbinary.graphics.j2me.MyFrame *)
(* import org.allbinary.graphics.j2me.workarea.WorkAreaJPanel *)
(* import org.allbinary.graphics.j2me.workarea.WorkAreaJPanelInterface *)

class newWorkAreaJDialog (parent_arg, (modal : bool), dimension_arg, (newName : string)) =
  object (self)
    inherit JDialog.jDialog ((Obj.magic parent_arg), modal)
    val mutable parent : Obj.t = Obj.repr 0
    method parent : 'r. 'r = Obj.magic parent
    method set_parent : 'v. 'v -> unit = fun value' -> parent <- Obj.repr value'
    val mutable dimension : Obj.t = Obj.repr 0
    method dimension : 'r. 'r = Obj.magic dimension
    method set_dimension : 'v. 'v -> unit = fun value' -> dimension <- Obj.repr value'
    val mutable xSizeJTextField : Obj.t = Obj.repr 0
    method xSizeJTextField : 'r. 'r = Obj.magic xSizeJTextField
    method set_xSizeJTextField : 'v. 'v -> unit = fun value' -> xSizeJTextField <- Obj.repr value'
    val mutable ySizeJTextField : Obj.t = Obj.repr 0
    method ySizeJTextField : 'r. 'r = Obj.magic ySizeJTextField
    method set_ySizeJTextField : 'v. 'v -> unit = fun value' -> ySizeJTextField <- Obj.repr value'
    val mutable nameJTextField : Obj.t = Obj.repr 0
    method nameJTextField : 'r. 'r = Obj.magic nameJTextField
    method set_nameJTextField : 'v. 'v -> unit = fun value' -> nameJTextField <- Obj.repr value'
    
    

    method disposeNewDialog () : unit =
        begin
        (try
            let canvasWidth : int ref = ref ((Obj.obj (java_new "Integer" (Obj.repr (((Obj.magic xSizeJTextField)#getText ())))))) in ();
            let canvasHeight : int ref = ref ((Obj.obj (java_new "Integer" (Obj.repr (((Obj.magic ySizeJTextField)#getText ())))))) in ();
            let newName : string ref = ref (((Obj.magic nameJTextField)#getText ())) in ();
            if (!newName = (Obj.magic 0)) then begin
                raise (Failure ("No Name", self, "disposeNewDialog"))
            end;
            let workAreaJPanel : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "WorkAreaJPanel" (Obj.repr (!newName, (Obj.magic dimension), !canvasWidth, !canvasHeight)))))) in ();
            ignore ((Obj.magic !workAreaJPanel)#setLayout ((new GridLayout.gridLayout (1, 1))));
            ignore ((Obj.magic parent)#add ((Obj.magic (Obj.magic !workAreaJPanel))));
            ignore (self#dispose ())
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method initComponents () : unit =
        begin
        ignore (self#addWindowListener ((object (self)
            inherit WindowAdapter.windowAdapter () as super
            

            method windowClosing : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#closeDialog ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore (self#pack ())
        end [@@warning "-7"]
    

    method closeDialog : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore (self#setVisible (false));
        ignore (self#dispose ())
        end [@@warning "-7-20"]

    initializer
      begin
        parent <- (Obj.repr (Obj.magic 0));
        dimension <- (Obj.repr (Obj.magic 0));
        xSizeJTextField <- (Obj.repr (Obj.magic 0));
        ySizeJTextField <- (Obj.repr (Obj.magic 0));
        nameJTextField <- (Obj.repr (Obj.magic 0));
        ();
        (* super(...) is the inherit clause *) ();
        (try
            (self#initComponents ());
            parent <- Obj.repr (parent_arg);
            xSizeJTextField <- Obj.repr ((new JTextField.jTextField ("12")));
            ySizeJTextField <- Obj.repr ((new JTextField.jTextField ("12")));
            nameJTextField <- Obj.repr ((new JTextField.jTextField (newName)));
            dimension <- Obj.repr (dimension_arg);
            let submitButton : Obj.t ref = ref ((Obj.repr (new JButton.jButton ("Ok")))) in ();
            ignore ((Obj.magic !submitButton)#addActionListener ((object (self)
                inherit ActionListener.actionListener () as super
                

                method actionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
                    begin
                    (try
                        (self#disposeNewDialog ())
                    with e -> begin
                        ()
                    end)
                    end [@@warning "-20"]
            end)));
            ignore (self#setSize (150, 100));
            ignore ((self#getContentPane ())#setLayout ((new GridLayout.gridLayout (5, 2))));
            ignore ((self#getContentPane ())#add ((new JLabel.jLabel ("Please enter"))));
            ignore ((self#getContentPane ())#add ((new JLabel.jLabel (" the size."))));
            ignore ((self#getContentPane ())#add ((new JLabel.jLabel ("Name:"))));
            ignore ((self#getContentPane ())#add ((Obj.magic nameJTextField)));
            ignore ((self#getContentPane ())#add ((new JLabel.jLabel ("X: "))));
            ignore ((self#getContentPane ())#add ((Obj.magic xSizeJTextField)));
            ignore ((self#getContentPane ())#add ((new JLabel.jLabel ("Y: "))));
            ignore ((self#getContentPane ())#add ((Obj.magic ySizeJTextField)));
            ignore ((self#getContentPane ())#add ((Obj.magic !submitButton)));
            ignore (self#show ())
        with e -> begin
            raise e
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "NewWorkAreaJDialog" (fun arguments -> Obj.repr (new newWorkAreaJDialog (Obj.obj arguments)))

let main ((_args : string array)) : unit =
        begin
        (try
            ignore ((new newWorkAreaJDialog ((Obj.obj (java_new "MyFrame" (Obj.repr ()))), true, (new Dimension.dimension (100, 100)), "testing"))#show ())
        with e -> begin
            ()
        end)
        end
let () = java_register_static "NewWorkAreaJDialog.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


