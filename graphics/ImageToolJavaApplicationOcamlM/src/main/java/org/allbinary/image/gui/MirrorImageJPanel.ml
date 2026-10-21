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
(* import org.allbinary.media.image.ImageProcessorInput *)
(* import org.allbinary.media.image.ImageProcessorInputCompositeInterface *)
(* import org.allbinary.media.image.ImageStrings *)
(* import org.allbinary.media.image.MirrorImageUtil *)
(* import org.allbinary.string.CommonStrings *)

class mirrorImageJPanel ((imageProcessorInput_arg : ImageProcessorInput.imageProcessorInput)) =
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
    val mutable buttonGroup : Obj.t = Obj.repr 0
    method buttonGroup : 'r. 'r = Obj.magic buttonGroup
    method set_buttonGroup : 'v. 'v -> unit = fun value' -> buttonGroup <- Obj.repr value'
    val mutable generateJButton : Obj.t = Obj.repr 0
    method generateJButton : 'r. 'r = Obj.magic generateJButton
    method set_generateJButton : 'v. 'v -> unit = fun value' -> generateJButton <- Obj.repr value'
    val mutable horizontalJCheckBox : Obj.t = Obj.repr 0
    method horizontalJCheckBox : 'r. 'r = Obj.magic horizontalJCheckBox
    method set_horizontalJCheckBox : 'v. 'v -> unit = fun value' -> horizontalJCheckBox <- Obj.repr value'
    val mutable jLabel2 : Obj.t = Obj.repr 0
    method jLabel2 : 'r. 'r = Obj.magic jLabel2
    method set_jLabel2 : 'v. 'v -> unit = fun value' -> jLabel2 <- Obj.repr value'
    val mutable jLayeredPane1 : Obj.t = Obj.repr 0
    method jLayeredPane1 : 'r. 'r = Obj.magic jLayeredPane1
    method set_jLayeredPane1 : 'v. 'v -> unit = fun value' -> jLayeredPane1 <- Obj.repr value'
    val mutable jPanel1 : Obj.t = Obj.repr 0
    method jPanel1 : 'r. 'r = Obj.magic jPanel1
    method set_jPanel1 : 'v. 'v -> unit = fun value' -> jPanel1 <- Obj.repr value'
    val mutable jPanel2 : Obj.t = Obj.repr 0
    method jPanel2 : 'r. 'r = Obj.magic jPanel2
    method set_jPanel2 : 'v. 'v -> unit = fun value' -> jPanel2 <- Obj.repr value'
    val mutable jPanel3 : Obj.t = Obj.repr 0
    method jPanel3 : 'r. 'r = Obj.magic jPanel3
    method set_jPanel3 : 'v. 'v -> unit = fun value' -> jPanel3 <- Obj.repr value'
    val mutable renameJRadioButton : Obj.t = Obj.repr 0
    method renameJRadioButton : 'r. 'r = Obj.magic renameJRadioButton
    method set_renameJRadioButton : 'v. 'v -> unit = fun value' -> renameJRadioButton <- Obj.repr value'
    val mutable verticleJCheckBox : Obj.t = Obj.repr 0
    method verticleJCheckBox : 'r. 'r = Obj.magic verticleJCheckBox
    method set_verticleJCheckBox : 'v. 'v -> unit = fun value' -> verticleJCheckBox <- Obj.repr value'
    val mutable writeOverOriginalJRadioButton : Obj.t = Obj.repr 0
    method writeOverOriginalJRadioButton : 'r. 'r = Obj.magic writeOverOriginalJRadioButton
    method set_writeOverOriginalJRadioButton : 'v. 'v -> unit = fun value' -> writeOverOriginalJRadioButton <- Obj.repr value'
    
    

    method process () : unit =
        begin
        ignore ((Obj.obj (java_new "Thread" (Obj.repr ())))#start ())
        end [@@warning "-7"]
    

    method initComponents () : unit =
        begin
        jLayeredPane1 <- Obj.repr ((new JLayeredPane.jLayeredPane ()));
        buttonGroup <- Obj.repr ((new ButtonGroup.buttonGroup ()));
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
        horizontalJCheckBox <- Obj.repr ((new JCheckBox.jCheckBox ()));
        verticleJCheckBox <- Obj.repr ((new JCheckBox.jCheckBox ()));
        generateJButton <- Obj.repr ((new JButton.jButton ()));
        renameJRadioButton <- Obj.repr ((new JRadioButton.jRadioButton ()));
        writeOverOriginalJRadioButton <- Obj.repr ((new JRadioButton.jRadioButton ()));
        jPanel3 <- Obj.repr ((new JPanel.jPanel ()));
        jLabel2 <- Obj.repr ((new JLabel.jLabel ()));
        let jPanel1Layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic jPanel1))))) in ();
        ignore ((Obj.magic jPanel1)#setLayout ((Obj.magic !jPanel1Layout)));
        ignore ((Obj.magic !jPanel1Layout)#setHorizontalGroup ((((Obj.magic !jPanel1Layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add (0, 522, 32767))));
        ignore ((Obj.magic !jPanel1Layout)#setVerticalGroup ((((Obj.magic !jPanel1Layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add (0, 230, 32767))));
        ignore ((Obj.magic horizontalJCheckBox)#setSelected (true));
        ignore ((Obj.magic horizontalJCheckBox)#setText ("Horizontal"));
        ignore ((Obj.magic horizontalJCheckBox)#setEnabled (false));
        ignore ((Obj.magic verticleJCheckBox)#setText ("Verticle"));
        ignore ((Obj.magic verticleJCheckBox)#setEnabled (false));
        ignore ((Obj.magic generateJButton)#setText ("Generate"));
        ignore ((Obj.magic generateJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#generateJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic renameJRadioButton)#setText ("Save As filename_mirror"));
        ignore ((Obj.magic renameJRadioButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#renameJRadioButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic writeOverOriginalJRadioButton)#setText ("Write Over Original"));
        let jPanel2Layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic jPanel2))))) in ();
        ignore ((Obj.magic jPanel2)#setLayout ((Obj.magic !jPanel2Layout)));
        ignore ((Obj.magic !jPanel2Layout)#setHorizontalGroup ((((Obj.magic !jPanel2Layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add ((((((((((((((Obj.magic !jPanel2Layout)#createSequentialGroup ())#addContainerGap ((org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 32767))#add ((Obj.magic verticleJCheckBox)))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#uNRELATED))#add ((Obj.magic horizontalJCheckBox)))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add ((Obj.magic writeOverOriginalJRadioButton)))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#uNRELATED))#add ((Obj.magic renameJRadioButton)))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add ((Obj.magic generateJButton)))#add (37, 37, 37))))));
        ignore ((Obj.magic !jPanel2Layout)#setVerticalGroup ((((Obj.magic !jPanel2Layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add (((((Obj.magic !jPanel2Layout)#createSequentialGroup ())#add ((((((((Obj.magic !jPanel2Layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#bASELINE))#add ((Obj.magic horizontalJCheckBox)))#add ((Obj.magic verticleJCheckBox)))#add ((Obj.magic writeOverOriginalJRadioButton)))#add ((Obj.magic renameJRadioButton)))#add ((Obj.magic generateJButton)))))#addContainerGap ())))));
        ignore ((Obj.magic jLabel2)#setText ("Results:"));
        let jPanel3Layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic jPanel3))))) in ();
        ignore ((Obj.magic jPanel3)#setLayout ((Obj.magic !jPanel3Layout)));
        ignore ((Obj.magic !jPanel3Layout)#setHorizontalGroup ((((Obj.magic !jPanel3Layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add (((((Obj.magic !jPanel3Layout)#createSequentialGroup ())#add ((Obj.magic jLabel2)))#addContainerGap (433, 32767))))));
        ignore ((Obj.magic !jPanel3Layout)#setVerticalGroup ((((Obj.magic !jPanel3Layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add ((Obj.magic jLabel2)))));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((((Obj.magic !layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add ((org.get_jdesktop ())#layout#groupLayout#tRAILING, (((((Obj.magic !layout)#createSequentialGroup ())#addContainerGap ())#add ((Obj.magic jPanel3), (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 32767))#addContainerGap ())))#add ((Obj.magic jPanel1), (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 32767))#add (((((Obj.magic !layout)#createSequentialGroup ())#add ((Obj.magic jPanel2), (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 32767))#addContainerGap ((org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 32767))))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add ((((((((Obj.magic !layout)#createSequentialGroup ())#add ((Obj.magic jPanel2), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, 25, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add ((Obj.magic jPanel3), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add ((Obj.magic jPanel1), (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 32767))))))
        end [@@warning "-7"]
    

    method generateJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#process ())
        end [@@warning "-7-20"]
    

    method renameJRadioButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
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
        buttonGroup <- (Obj.repr (Obj.magic 0));
        generateJButton <- (Obj.repr (Obj.magic 0));
        horizontalJCheckBox <- (Obj.repr (Obj.magic 0));
        jLabel2 <- (Obj.repr (Obj.magic 0));
        jLayeredPane1 <- (Obj.repr (Obj.magic 0));
        jPanel1 <- (Obj.repr (Obj.magic 0));
        jPanel2 <- (Obj.repr (Obj.magic 0));
        jPanel3 <- (Obj.repr (Obj.magic 0));
        renameJRadioButton <- (Obj.repr (Obj.magic 0));
        verticleJCheckBox <- (Obj.repr (Obj.magic 0));
        writeOverOriginalJRadioButton <- (Obj.repr (Obj.magic 0));
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((Obj.magic logUtil)#putF ("Starting", self, commonStrings#cONSTRUCTOR));
        (self#initComponents ());
        imageProcessorInput <- imageProcessorInput_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "MirrorImageJPanel" (fun arguments -> Obj.repr (new mirrorImageJPanel (Obj.obj arguments)))


