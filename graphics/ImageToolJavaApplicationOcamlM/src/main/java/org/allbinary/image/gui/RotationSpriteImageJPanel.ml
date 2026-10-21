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
(* package org.allbinary.image.gui *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt *)
(* import java.awt.image.BufferedImage *)
(* import java.awt.image.RenderedImage *)
(* import java.io.File *)
(* import javax.imageio.ImageIO *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.image.ImageJ2SERotationUtil *)
(* import org.allbinary.media.image.ImageProcessorInput *)
(* import org.allbinary.media.image.ImageProcessorInputCompositeInterface *)
(* import org.allbinary.media.image.ImageStrings *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class rotationSpriteImageJPanel ((imageProcessorInput_arg : ImageProcessorInput.imageProcessorInput)) =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable imageStrings : ImageStrings.imageStrings = (Obj.magic 0)
    method imageStrings = imageStrings
    method set_imageStrings value' = imageStrings <- value'
    val mutable imageProcessorInput : ImageProcessorInput.imageProcessorInput = (Obj.magic 0)
    method imageProcessorInput = imageProcessorInput
    method set_imageProcessorInput value' = imageProcessorInput <- value'
    val mutable result : Obj.t = Obj.repr 0
    method result : 'r. 'r = Obj.magic result
    method set_result : 'v. 'v -> unit = fun value' -> result <- Obj.repr value'
    val mutable generateJButton : Obj.t = Obj.repr 0
    method generateJButton : 'r. 'r = Obj.magic generateJButton
    method set_generateJButton : 'v. 'v -> unit = fun value' -> generateJButton <- Obj.repr value'
    val mutable jLabel1 : Obj.t = Obj.repr 0
    method jLabel1 : 'r. 'r = Obj.magic jLabel1
    method set_jLabel1 : 'v. 'v -> unit = fun value' -> jLabel1 <- Obj.repr value'
    val mutable jLabel2 : Obj.t = Obj.repr 0
    method jLabel2 : 'r. 'r = Obj.magic jLabel2
    method set_jLabel2 : 'v. 'v -> unit = fun value' -> jLabel2 <- Obj.repr value'
    val mutable jLabel3 : Obj.t = Obj.repr 0
    method jLabel3 : 'r. 'r = Obj.magic jLabel3
    method set_jLabel3 : 'v. 'v -> unit = fun value' -> jLabel3 <- Obj.repr value'
    val mutable jPanel1 : Obj.t = Obj.repr 0
    method jPanel1 : 'r. 'r = Obj.magic jPanel1
    method set_jPanel1 : 'v. 'v -> unit = fun value' -> jPanel1 <- Obj.repr value'
    val mutable jPanel2 : Obj.t = Obj.repr 0
    method jPanel2 : 'r. 'r = Obj.magic jPanel2
    method set_jPanel2 : 'v. 'v -> unit = fun value' -> jPanel2 <- Obj.repr value'
    val mutable jPanel3 : Obj.t = Obj.repr 0
    method jPanel3 : 'r. 'r = Obj.magic jPanel3
    method set_jPanel3 : 'v. 'v -> unit = fun value' -> jPanel3 <- Obj.repr value'
    val mutable totalAngleJComboBox : Obj.t = Obj.repr 0
    method totalAngleJComboBox : 'r. 'r = Obj.magic totalAngleJComboBox
    method set_totalAngleJComboBox : 'v. 'v -> unit = fun value' -> totalAngleJComboBox <- Obj.repr value'
    val mutable totalFramesJComboBox : Obj.t = Obj.repr 0
    method totalFramesJComboBox : 'r. 'r = Obj.magic totalFramesJComboBox
    method set_totalFramesJComboBox : 'v. 'v -> unit = fun value' -> totalFramesJComboBox <- Obj.repr value'
    val mutable writeOverOriginalJCheckBox : Obj.t = Obj.repr 0
    method writeOverOriginalJCheckBox : 'r. 'r = Obj.magic writeOverOriginalJCheckBox
    method set_writeOverOriginalJCheckBox : 'v. 'v -> unit = fun value' -> writeOverOriginalJCheckBox <- Obj.repr value'
    
    

    method process () : unit =
        begin
        ignore ((Obj.obj (java_new "Thread" (Obj.repr ())))#start ())
        end [@@warning "-7"]
    

    method initComponents () : unit =
        begin
        jPanel1 <- Obj.repr ((object (self)
            inherit JPanel.jPanel () as super
            

            method paint : 'any1. 'any1 -> unit = fun (graphics) ->
                let graphics = Obj.repr graphics in
                begin
                if ((Obj.magic result) != (Obj.magic 0)) then begin
                    ignore ((Obj.magic graphics)#drawImage ((Obj.magic result), 0, 0, ((Obj.magic result)#getWidth ((Obj.magic 0))), ((Obj.magic result)#getHeight ((Obj.magic 0))), (Obj.magic 0)))
                end
                end [@@warning "-20"]
        end));
        jPanel2 <- Obj.repr ((new JPanel.jPanel ()));
        totalFramesJComboBox <- Obj.repr ((new JComboBox.jComboBox ()));
        jLabel1 <- Obj.repr ((new JLabel.jLabel ()));
        generateJButton <- Obj.repr ((new JButton.jButton ()));
        totalAngleJComboBox <- Obj.repr ((new JComboBox.jComboBox ()));
        jLabel3 <- Obj.repr ((new JLabel.jLabel ()));
        writeOverOriginalJCheckBox <- Obj.repr ((new JCheckBox.jCheckBox ()));
        jPanel3 <- Obj.repr ((new JPanel.jPanel ()));
        jLabel2 <- Obj.repr ((new JLabel.jLabel ()));
        let jPanel1Layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic jPanel1))))) in ();
        ignore ((Obj.magic jPanel1)#setLayout ((Obj.magic !jPanel1Layout)));
        ignore ((Obj.magic !jPanel1Layout)#setHorizontalGroup ((((Obj.magic !jPanel1Layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add (0, 436, 32767))));
        ignore ((Obj.magic !jPanel1Layout)#setVerticalGroup ((((Obj.magic !jPanel1Layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add (0, 227, 32767))));
        ignore ((Obj.magic totalFramesJComboBox)#setModel ((new DefaultComboBoxModel.defaultComboBoxModel ([| (CommonPhoneStrings.getInstance ())#fOUR; (CommonPhoneStrings.getInstance ())#nINE; "18"; "20"; "36" |]))));
        ignore ((Obj.magic jLabel1)#setText ("Total Frames:"));
        ignore ((Obj.magic generateJButton)#setText ("Generate"));
        ignore ((Obj.magic generateJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#generateJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic totalAngleJComboBox)#setModel ((new DefaultComboBoxModel.defaultComboBoxModel ([| "360"; "90" |]))));
        ignore ((Obj.magic totalAngleJComboBox)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#totalAngleJComboBoxActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel3)#setText ("Total Angle:"));
        ignore ((Obj.magic writeOverOriginalJCheckBox)#setText ("Write Over Original"));
        let jPanel2Layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic jPanel2))))) in ();
        ignore ((Obj.magic jPanel2)#setLayout ((Obj.magic !jPanel2Layout)));
        ignore ((Obj.magic !jPanel2Layout)#setHorizontalGroup ((((Obj.magic !jPanel2Layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add ((((((((((((((((Obj.magic !jPanel2Layout)#createSequentialGroup ())#add (8, 8, 8))#add ((Obj.magic jLabel1)))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add ((Obj.magic totalFramesJComboBox), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add ((Obj.magic jLabel3)))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add ((Obj.magic totalAngleJComboBox), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add ((Obj.magic writeOverOriginalJCheckBox)))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add ((Obj.magic generateJButton)))#addContainerGap ((org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 32767))))));
        ignore ((Obj.magic !jPanel2Layout)#setVerticalGroup ((((Obj.magic !jPanel2Layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add (((((((((Obj.magic !jPanel2Layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#bASELINE))#add ((Obj.magic jLabel1)))#add ((Obj.magic totalFramesJComboBox), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))#add ((Obj.magic generateJButton)))#add ((Obj.magic totalAngleJComboBox), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))#add ((Obj.magic jLabel3)))#add ((Obj.magic writeOverOriginalJCheckBox)))))));
        ignore ((Obj.magic jLabel2)#setText ("Results:"));
        let jPanel3Layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic jPanel3))))) in ();
        ignore ((Obj.magic jPanel3)#setLayout ((Obj.magic !jPanel3Layout)));
        ignore ((Obj.magic !jPanel3Layout)#setHorizontalGroup ((((Obj.magic !jPanel3Layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add (((((Obj.magic !jPanel3Layout)#createSequentialGroup ())#add ((Obj.magic jLabel2)))#addContainerGap (377, 32767))))));
        ignore ((Obj.magic !jPanel3Layout)#setVerticalGroup ((((Obj.magic !jPanel3Layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add ((Obj.magic jLabel2)))));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((((Obj.magic !layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add ((org.get_jdesktop ())#layout#groupLayout#tRAILING, (Obj.magic jPanel2), (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 32767))#add ((((((Obj.magic !layout)#createSequentialGroup ())#addContainerGap ())#add ((Obj.magic jPanel3), (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 32767))#addContainerGap ())))#add ((Obj.magic jPanel1), (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 32767))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add ((((((((Obj.magic !layout)#createSequentialGroup ())#add ((Obj.magic jPanel2), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#uNRELATED))#add ((Obj.magic jPanel3), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add ((Obj.magic jPanel1), (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 32767))))))
        end [@@warning "-7"]
    

    method generateJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#process ())
        end [@@warning "-7-20"]
    

    method totalAngleJComboBoxActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getImageProcessorInput () : ImageProcessorInput.imageProcessorInput =
        begin
        (imageProcessorInput :> ImageProcessorInput.imageProcessorInput)
        end [@@warning "-7"]
    

    method setImageProcessorInput : 'any1. 'any1 -> unit = fun (imageProcessorInput_arg) ->
        let imageProcessorInput_arg = Obj.repr imageProcessorInput_arg in
        begin
        imageProcessorInput <- (Obj.magic imageProcessorInput_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        imageStrings <- ((ImageStrings.getInstance ()) :> ImageStrings.imageStrings);
        ();
        result <- (Obj.repr (Obj.magic 0));
        generateJButton <- (Obj.repr (Obj.magic 0));
        jLabel1 <- (Obj.repr (Obj.magic 0));
        jLabel2 <- (Obj.repr (Obj.magic 0));
        jLabel3 <- (Obj.repr (Obj.magic 0));
        jPanel1 <- (Obj.repr (Obj.magic 0));
        jPanel2 <- (Obj.repr (Obj.magic 0));
        jPanel3 <- (Obj.repr (Obj.magic 0));
        totalAngleJComboBox <- (Obj.repr (Obj.magic 0));
        totalFramesJComboBox <- (Obj.repr (Obj.magic 0));
        writeOverOriginalJCheckBox <- (Obj.repr (Obj.magic 0));
        ();
        (* super(...) is the inherit clause *) ();
        (self#initComponents ());
        imageProcessorInput <- imageProcessorInput_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "RotationSpriteImageJPanel" (fun arguments -> Obj.repr (new rotationSpriteImageJPanel (Obj.obj arguments)))


