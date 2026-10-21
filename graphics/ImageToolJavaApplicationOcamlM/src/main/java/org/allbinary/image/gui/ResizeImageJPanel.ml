(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.image.gui *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import java.awt.image.Raster *)
(* import java.io.File *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.FileWrapperUtil *)
(* import org.allbinary.media.image.ImagePersistanceUtil *)
(* import org.allbinary.media.image.ImageProcessorInput *)
(* import org.allbinary.media.image.ImageProcessorInputCompositeInterface *)
(* import org.allbinary.media.image.ImageUtil *)
(* import org.allbinary.string.CommonStrings *)

class resizeImageJPanel ((imageProcessorInput_arg : ImageProcessorInput.imageProcessorInput)) =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable imageProcessorInput : ImageProcessorInput.imageProcessorInput = (Obj.magic 0)
    method imageProcessorInput = imageProcessorInput
    method set_imageProcessorInput value' = imageProcessorInput <- value'
    val mutable aboveJButton : Obj.t = Obj.repr 0
    method aboveJButton : 'r. 'r = Obj.magic aboveJButton
    method set_aboveJButton : 'v. 'v -> unit = fun value' -> aboveJButton <- Obj.repr value'
    val mutable adjustFor16AboveJButton : Obj.t = Obj.repr 0
    method adjustFor16AboveJButton : 'r. 'r = Obj.magic adjustFor16AboveJButton
    method set_adjustFor16AboveJButton : 'v. 'v -> unit = fun value' -> adjustFor16AboveJButton <- Obj.repr value'
    val mutable adjustFor16BelowJButton : Obj.t = Obj.repr 0
    method adjustFor16BelowJButton : 'r. 'r = Obj.magic adjustFor16BelowJButton
    method set_adjustFor16BelowJButton : 'v. 'v -> unit = fun value' -> adjustFor16BelowJButton <- Obj.repr value'
    val mutable floatPercentJTextField : Obj.t = Obj.repr 0
    method floatPercentJTextField : 'r. 'r = Obj.magic floatPercentJTextField
    method set_floatPercentJTextField : 'v. 'v -> unit = fun value' -> floatPercentJTextField <- Obj.repr value'
    val mutable jComboBox1 : Obj.t = Obj.repr 0
    method jComboBox1 : 'r. 'r = Obj.magic jComboBox1
    method set_jComboBox1 : 'v. 'v -> unit = fun value' -> jComboBox1 <- Obj.repr value'
    val mutable jLabel1 : Obj.t = Obj.repr 0
    method jLabel1 : 'r. 'r = Obj.magic jLabel1
    method set_jLabel1 : 'v. 'v -> unit = fun value' -> jLabel1 <- Obj.repr value'
    val mutable jLabel2 : Obj.t = Obj.repr 0
    method jLabel2 : 'r. 'r = Obj.magic jLabel2
    method set_jLabel2 : 'v. 'v -> unit = fun value' -> jLabel2 <- Obj.repr value'
    val mutable jLabel3 : Obj.t = Obj.repr 0
    method jLabel3 : 'r. 'r = Obj.magic jLabel3
    method set_jLabel3 : 'v. 'v -> unit = fun value' -> jLabel3 <- Obj.repr value'
    val mutable jTextField1 : Obj.t = Obj.repr 0
    method jTextField1 : 'r. 'r = Obj.magic jTextField1
    method set_jTextField1 : 'v. 'v -> unit = fun value' -> jTextField1 <- Obj.repr value'
    val mutable jTextField2 : Obj.t = Obj.repr 0
    method jTextField2 : 'r. 'r = Obj.magic jTextField2
    method set_jTextField2 : 'v. 'v -> unit = fun value' -> jTextField2 <- Obj.repr value'
    val mutable updateJButton : Obj.t = Obj.repr 0
    method updateJButton : 'r. 'r = Obj.magic updateJButton
    method set_updateJButton : 'v. 'v -> unit = fun value' -> updateJButton <- Obj.repr value'
    
    

    method process () : unit =
        begin
        ignore ((Obj.obj (java_new "Thread" (Obj.repr ())))#start ())
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        ignore ((Obj.obj (java_new "Thread" (Obj.repr ())))#start ())
        end [@@warning "-7"]
    

    method updateFor16Above () : unit =
        begin
        ignore ((Obj.obj (java_new "Thread" (Obj.repr ())))#start ())
        end [@@warning "-7"]
    

    method updateFor16Below () : unit =
        begin
        ignore ((Obj.obj (java_new "Thread" (Obj.repr ())))#start ())
        end [@@warning "-7"]
    

    method getImageProcessorInput () : ImageProcessorInput.imageProcessorInput =
        begin
        (imageProcessorInput :> ImageProcessorInput.imageProcessorInput)
        end [@@warning "-7"]
    

    method setImageProcessorInput : 'any1. 'any1 -> unit = fun (imageProcessorInput_arg) ->
        let imageProcessorInput_arg = Obj.repr imageProcessorInput_arg in
        begin
        imageProcessorInput <- (Obj.magic imageProcessorInput_arg)
        end [@@warning "-7-20"]
    

    method initComponents () : unit =
        begin
        jLabel1 <- Obj.repr ((new JLabel.jLabel ()));
        jComboBox1 <- Obj.repr ((new JComboBox.jComboBox ()));
        aboveJButton <- Obj.repr ((new JButton.jButton ()));
        jTextField1 <- Obj.repr ((new JTextField.jTextField ()));
        jLabel2 <- Obj.repr ((new JLabel.jLabel ()));
        jLabel3 <- Obj.repr ((new JLabel.jLabel ()));
        jTextField2 <- Obj.repr ((new JTextField.jTextField ()));
        updateJButton <- Obj.repr ((new JButton.jButton ()));
        floatPercentJTextField <- Obj.repr ((new JTextField.jTextField ()));
        adjustFor16AboveJButton <- Obj.repr ((new JButton.jButton ()));
        adjustFor16BelowJButton <- Obj.repr ((new JButton.jButton ()));
        ignore ((Obj.magic jLabel1)#setText ("Percent:"));
        ignore ((Obj.magic jComboBox1)#setModel ((new DefaultComboBoxModel.defaultComboBoxModel ([| "Item 1"; "Item 2"; "Item 3"; "Item 4" |]))));
        ignore ((Obj.magic aboveJButton)#setText ("Process"));
        ignore ((Obj.magic aboveJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#aboveJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel2)#setText ("Width:"));
        ignore ((Obj.magic jLabel3)#setText ("Height:"));
        ignore ((Obj.magic updateJButton)#setText ("Update"));
        ignore ((Obj.magic updateJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#updateJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic floatPercentJTextField)#setText ("-1.000000"));
        ignore ((Obj.magic floatPercentJTextField)#setMinimumSize ((new Dimension.dimension (120, 22))));
        ignore ((Obj.magic adjustFor16AboveJButton)#setText ("Adjust for 16 Above"));
        ignore ((Obj.magic adjustFor16AboveJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#adjustFor16AboveJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic adjustFor16BelowJButton)#setText ("Adjust for 16 Below"));
        ignore ((Obj.magic adjustFor16BelowJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#adjustFor16BelowJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((((((Obj.magic !layout)#createSequentialGroup ())#addContainerGap ())#addGroup ((((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic jLabel1)))#addComponent ((Obj.magic jLabel2)))#addComponent ((Obj.magic jLabel3)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup ((((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING, false))#addComponent ((Obj.magic jComboBox1), 0, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))#addComponent ((Obj.magic jTextField1)))#addComponent ((Obj.magic jTextField2)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#uNRELATED))#addGroup ((((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic floatPercentJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addComponent ((Obj.magic adjustFor16AboveJButton)))#addComponent ((Obj.magic adjustFor16BelowJButton)))))#addContainerGap ((javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))))#addGroup (((((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic updateJButton)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic aboveJButton)))#addGap (0, 250, 32767))))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((((((((Obj.magic !layout)#createSequentialGroup ())#addContainerGap ())#addGroup ((((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel1)))#addComponent ((Obj.magic jComboBox1), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addComponent ((Obj.magic floatPercentJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup ((((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jTextField1), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addComponent ((Obj.magic jLabel2)))#addComponent ((Obj.magic adjustFor16AboveJButton)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup ((((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel3)))#addComponent ((Obj.magic jTextField2), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addComponent ((Obj.magic adjustFor16BelowJButton)))))#addGap (18, 18, 18))#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic aboveJButton)))#addComponent ((Obj.magic updateJButton)))))#addContainerGap (175, 32767))))))
        end [@@warning "-7"]
    

    method aboveJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#process ())
        end [@@warning "-7-20"]
    

    method updateJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#update ())
        end [@@warning "-7-20"]
    

    method adjustFor16AboveJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#updateFor16Above ())
        end [@@warning "-7-20"]
    

    method adjustFor16BelowJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#updateFor16Below ())
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        aboveJButton <- (Obj.repr (Obj.magic 0));
        adjustFor16AboveJButton <- (Obj.repr (Obj.magic 0));
        adjustFor16BelowJButton <- (Obj.repr (Obj.magic 0));
        floatPercentJTextField <- (Obj.repr (Obj.magic 0));
        jComboBox1 <- (Obj.repr (Obj.magic 0));
        jLabel1 <- (Obj.repr (Obj.magic 0));
        jLabel2 <- (Obj.repr (Obj.magic 0));
        jLabel3 <- (Obj.repr (Obj.magic 0));
        jTextField1 <- (Obj.repr (Obj.magic 0));
        jTextField2 <- (Obj.repr (Obj.magic 0));
        updateJButton <- (Obj.repr (Obj.magic 0));
        ();
        (* super(...) is the inherit clause *) ();
        (self#initComponents ());
        imageProcessorInput <- imageProcessorInput_arg;
        let numberStringArray : string array ref = ref ((Array.make (101) (Obj.magic 0))) in ();
        !numberStringArray.(0) <- (string_of_int ((-1)));
        for index = 1 to 100 - 1 do
            !numberStringArray.(index) <- (string_of_int (index))
        done;
        ignore ((Obj.magic jComboBox1)#setModel ((new DefaultComboBoxModel.defaultComboBoxModel (!numberStringArray))));
        let araster : Obj.t ref = ref ((Obj.repr ((imageProcessorInput#getBufferedImageArray ()).(0)#getAlphaRaster ()))) in ();
        if ((Obj.magic !araster) == (Obj.magic 0)) then begin
            (print_endline (java_string_of (Obj.repr ("there is no Alpha channel!!!!!!!!!"))))
        end else begin
            (print_endline (java_string_of (Obj.repr ("Alpha channel found !"))))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "ResizeImageJPanel" (fun arguments -> Obj.repr (new resizeImageJPanel (Obj.obj arguments)))


