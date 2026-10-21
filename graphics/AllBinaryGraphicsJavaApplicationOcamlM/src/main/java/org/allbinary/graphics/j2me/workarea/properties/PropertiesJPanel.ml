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
(* package org.allbinary.graphics.j2me.workarea.properties *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.swing *)

class propertiesJPanel () =
  object (self)
    inherit JPanel.jPanel ()
    val mutable rotateJButton : Obj.t = Obj.repr 0
    method rotateJButton : 'r. 'r = Obj.magic rotateJButton
    method set_rotateJButton : 'v. 'v -> unit = fun value' -> rotateJButton <- Obj.repr value'
    val mutable copyVerticalJButton : Obj.t = Obj.repr 0
    method copyVerticalJButton : 'r. 'r = Obj.magic copyVerticalJButton
    method set_copyVerticalJButton : 'v. 'v -> unit = fun value' -> copyVerticalJButton <- Obj.repr value'
    val mutable leftJButton : Obj.t = Obj.repr 0
    method leftJButton : 'r. 'r = Obj.magic leftJButton
    method set_leftJButton : 'v. 'v -> unit = fun value' -> leftJButton <- Obj.repr value'
    val mutable rotateJPanel : Obj.t = Obj.repr 0
    method rotateJPanel : 'r. 'r = Obj.magic rotateJPanel
    method set_rotateJPanel : 'v. 'v -> unit = fun value' -> rotateJPanel <- Obj.repr value'
    val mutable angleJTextField : Obj.t = Obj.repr 0
    method angleJTextField : 'r. 'r = Obj.magic angleJTextField
    method set_angleJTextField : 'v. 'v -> unit = fun value' -> angleJTextField <- Obj.repr value'
    val mutable workAreaPropertiesJPanel : Obj.t = Obj.repr 0
    method workAreaPropertiesJPanel : 'r. 'r = Obj.magic workAreaPropertiesJPanel
    method set_workAreaPropertiesJPanel : 'v. 'v -> unit = fun value' -> workAreaPropertiesJPanel <- Obj.repr value'
    val mutable modifierJPanel : Obj.t = Obj.repr 0
    method modifierJPanel : 'r. 'r = Obj.magic modifierJPanel
    method set_modifierJPanel : 'v. 'v -> unit = fun value' -> modifierJPanel <- Obj.repr value'
    val mutable upJButton : Obj.t = Obj.repr 0
    method upJButton : 'r. 'r = Obj.magic upJButton
    method set_upJButton : 'v. 'v -> unit = fun value' -> upJButton <- Obj.repr value'
    val mutable jPanel8 : Obj.t = Obj.repr 0
    method jPanel8 : 'r. 'r = Obj.magic jPanel8
    method set_jPanel8 : 'v. 'v -> unit = fun value' -> jPanel8 <- Obj.repr value'
    val mutable downJButton : Obj.t = Obj.repr 0
    method downJButton : 'r. 'r = Obj.magic downJButton
    method set_downJButton : 'v. 'v -> unit = fun value' -> downJButton <- Obj.repr value'
    val mutable jPanel7 : Obj.t = Obj.repr 0
    method jPanel7 : 'r. 'r = Obj.magic jPanel7
    method set_jPanel7 : 'v. 'v -> unit = fun value' -> jPanel7 <- Obj.repr value'
    val mutable rightJButton : Obj.t = Obj.repr 0
    method rightJButton : 'r. 'r = Obj.magic rightJButton
    method set_rightJButton : 'v. 'v -> unit = fun value' -> rightJButton <- Obj.repr value'
    val mutable copyHorizontalJButton : Obj.t = Obj.repr 0
    method copyHorizontalJButton : 'r. 'r = Obj.magic copyHorizontalJButton
    method set_copyHorizontalJButton : 'v. 'v -> unit = fun value' -> copyHorizontalJButton <- Obj.repr value'
    
    

    method set : 'any1. 'any1 -> unit = fun (panel) ->
        let panel = Obj.repr panel in
        begin
        ignore ((Obj.magic workAreaPropertiesJPanel)#add ((Obj.magic panel)));
        ignore (self#repaint ())
        end [@@warning "-7-20"]
    

    method initComponents () : unit =
        begin
        workAreaPropertiesJPanel <- Obj.repr ((new JPanel.jPanel ()));
        modifierJPanel <- Obj.repr ((new JPanel.jPanel ()));
        copyVerticalJButton <- Obj.repr ((new JButton.jButton ()));
        copyHorizontalJButton <- Obj.repr ((new JButton.jButton ()));
        rotateJPanel <- Obj.repr ((new JPanel.jPanel ()));
        rotateJButton <- Obj.repr ((new JButton.jButton ()));
        angleJTextField <- Obj.repr ((new JTextField.jTextField ()));
        jPanel7 <- Obj.repr ((new JPanel.jPanel ()));
        upJButton <- Obj.repr ((new JButton.jButton ()));
        downJButton <- Obj.repr ((new JButton.jButton ()));
        jPanel8 <- Obj.repr ((new JPanel.jPanel ()));
        leftJButton <- Obj.repr ((new JButton.jButton ()));
        rightJButton <- Obj.repr ((new JButton.jButton ()));
        ignore (self#setLayout ((new GridLayout.gridLayout (2, 1))));
        ignore ((Obj.magic workAreaPropertiesJPanel)#setLayout ((new GridLayout.gridLayout ())));
        ignore (self#add ((Obj.magic workAreaPropertiesJPanel)));
        ignore ((Obj.magic modifierJPanel)#setLayout ((new GridLayout.gridLayout (6, 0))));
        ignore ((Obj.magic copyVerticalJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic copyVerticalJButton)#setText ("Copy Vertical"));
        ignore ((Obj.magic modifierJPanel)#add ((Obj.magic copyVerticalJButton)));
        ignore ((Obj.magic copyHorizontalJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic copyHorizontalJButton)#setText ("Copy Horizontal"));
        ignore ((Obj.magic modifierJPanel)#add ((Obj.magic copyHorizontalJButton)));
        ignore ((Obj.magic rotateJPanel)#setLayout ((new GridLayout.gridLayout (1, 2))));
        ignore ((Obj.magic rotateJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic rotateJButton)#setText ("Rotate"));
        ignore ((Obj.magic rotateJPanel)#add ((Obj.magic rotateJButton)));
        ignore ((Obj.magic angleJTextField)#setText ("Angle"));
        ignore ((Obj.magic rotateJPanel)#add ((Obj.magic angleJTextField)));
        ignore ((Obj.magic modifierJPanel)#add ((Obj.magic rotateJPanel)));
        ignore ((Obj.magic jPanel7)#setLayout ((new GridLayout.gridLayout (1, 2))));
        ignore ((Obj.magic upJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic upJButton)#setText ("Up"));
        ignore ((Obj.magic jPanel7)#add ((Obj.magic upJButton)));
        ignore ((Obj.magic downJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic downJButton)#setText ("Down"));
        ignore ((Obj.magic jPanel7)#add ((Obj.magic downJButton)));
        ignore ((Obj.magic modifierJPanel)#add ((Obj.magic jPanel7)));
        ignore ((Obj.magic jPanel8)#setLayout ((new GridLayout.gridLayout (1, 2))));
        ignore ((Obj.magic leftJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic leftJButton)#setText ("Left"));
        ignore ((Obj.magic jPanel8)#add ((Obj.magic leftJButton)));
        ignore ((Obj.magic rightJButton)#setFont ((Obj.obj (java_new "Font" (Obj.repr ("Dialog", 0, 10))))));
        ignore ((Obj.magic rightJButton)#setText ("Right"));
        ignore ((Obj.magic jPanel8)#add ((Obj.magic rightJButton)));
        ignore ((Obj.magic modifierJPanel)#add ((Obj.magic jPanel8)));
        ignore (self#add ((Obj.magic modifierJPanel)))
        end [@@warning "-7"]

    initializer
      begin
        rotateJButton <- (Obj.repr (Obj.magic 0));
        copyVerticalJButton <- (Obj.repr (Obj.magic 0));
        leftJButton <- (Obj.repr (Obj.magic 0));
        rotateJPanel <- (Obj.repr (Obj.magic 0));
        angleJTextField <- (Obj.repr (Obj.magic 0));
        workAreaPropertiesJPanel <- (Obj.repr (Obj.magic 0));
        modifierJPanel <- (Obj.repr (Obj.magic 0));
        upJButton <- (Obj.repr (Obj.magic 0));
        jPanel8 <- (Obj.repr (Obj.magic 0));
        downJButton <- (Obj.repr (Obj.magic 0));
        jPanel7 <- (Obj.repr (Obj.magic 0));
        rightJButton <- (Obj.repr (Obj.magic 0));
        copyHorizontalJButton <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "PropertiesJPanel" (fun arguments -> Obj.repr (new propertiesJPanel (Obj.obj arguments)))


