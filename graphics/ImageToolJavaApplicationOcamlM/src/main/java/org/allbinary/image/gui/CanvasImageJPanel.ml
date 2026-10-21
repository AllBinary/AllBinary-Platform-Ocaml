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
(* import java.awt *)
(* import java.awt.image.BufferedImage *)
(* import java.awt.image.RenderedImage *)
(* import java.io.File *)
(* import java.io.IOException *)
(* import javax.imageio.ImageIO *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.media.image.CanvasExpandUtil *)
(* import org.allbinary.media.image.CanvasTrimUtil *)
(* import org.allbinary.media.image.ImageProcessedVisitor *)
(* import org.allbinary.media.image.ImageProcessorInput *)
(* import org.allbinary.media.image.ImageStrings *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class canvasImageJPanel ((imageProcessorInput_arg : ImageProcessorInput.imageProcessorInput)) =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
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
    val mutable heightReductionTextField : Obj.t = Obj.repr 0
    method heightReductionTextField : 'r. 'r = Obj.magic heightReductionTextField
    method set_heightReductionTextField : 'v. 'v -> unit = fun value' -> heightReductionTextField <- Obj.repr value'
    val mutable heightReductionTextField1 : Obj.t = Obj.repr 0
    method heightReductionTextField1 : 'r. 'r = Obj.magic heightReductionTextField1
    method set_heightReductionTextField1 : 'v. 'v -> unit = fun value' -> heightReductionTextField1 <- Obj.repr value'
    val mutable jLabel4 : Obj.t = Obj.repr 0
    method jLabel4 : 'r. 'r = Obj.magic jLabel4
    method set_jLabel4 : 'v. 'v -> unit = fun value' -> jLabel4 <- Obj.repr value'
    val mutable jLabel5 : Obj.t = Obj.repr 0
    method jLabel5 : 'r. 'r = Obj.magic jLabel5
    method set_jLabel5 : 'v. 'v -> unit = fun value' -> jLabel5 <- Obj.repr value'
    val mutable jLabel6 : Obj.t = Obj.repr 0
    method jLabel6 : 'r. 'r = Obj.magic jLabel6
    method set_jLabel6 : 'v. 'v -> unit = fun value' -> jLabel6 <- Obj.repr value'
    val mutable jLabel7 : Obj.t = Obj.repr 0
    method jLabel7 : 'r. 'r = Obj.magic jLabel7
    method set_jLabel7 : 'v. 'v -> unit = fun value' -> jLabel7 <- Obj.repr value'
    val mutable jLabel8 : Obj.t = Obj.repr 0
    method jLabel8 : 'r. 'r = Obj.magic jLabel8
    method set_jLabel8 : 'v. 'v -> unit = fun value' -> jLabel8 <- Obj.repr value'
    val mutable jPanel1 : Obj.t = Obj.repr 0
    method jPanel1 : 'r. 'r = Obj.magic jPanel1
    method set_jPanel1 : 'v. 'v -> unit = fun value' -> jPanel1 <- Obj.repr value'
    val mutable jPanel2 : Obj.t = Obj.repr 0
    method jPanel2 : 'r. 'r = Obj.magic jPanel2
    method set_jPanel2 : 'v. 'v -> unit = fun value' -> jPanel2 <- Obj.repr value'
    val mutable widthReductionTextField : Obj.t = Obj.repr 0
    method widthReductionTextField : 'r. 'r = Obj.magic widthReductionTextField
    method set_widthReductionTextField : 'v. 'v -> unit = fun value' -> widthReductionTextField <- Obj.repr value'
    val mutable widthReductionTextField1 : Obj.t = Obj.repr 0
    method widthReductionTextField1 : 'r. 'r = Obj.magic widthReductionTextField1
    method set_widthReductionTextField1 : 'v. 'v -> unit = fun value' -> widthReductionTextField1 <- Obj.repr value'
    val mutable writeOverOriginalJCheckBox : Obj.t = Obj.repr 0
    method writeOverOriginalJCheckBox : 'r. 'r = Obj.magic writeOverOriginalJCheckBox
    method set_writeOverOriginalJCheckBox : 'v. 'v -> unit = fun value' -> writeOverOriginalJCheckBox <- Obj.repr value'
    
    

    method process () : unit =
        begin
        ignore ((Obj.obj (java_new "Thread" (Obj.repr ())))#start ())
        end [@@warning "-7"]
    

    method initComponents () : unit =
        begin
        writeOverOriginalJCheckBox <- Obj.repr ((new JCheckBox.jCheckBox ()));
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
        generateJButton <- Obj.repr ((new JButton.jButton ()));
        jLabel4 <- Obj.repr ((new JLabel.jLabel ()));
        jPanel2 <- Obj.repr ((new JPanel.jPanel ()));
        jLabel5 <- Obj.repr ((new JLabel.jLabel ()));
        widthReductionTextField <- Obj.repr ((new JTextField.jTextField ()));
        jLabel6 <- Obj.repr ((new JLabel.jLabel ()));
        heightReductionTextField <- Obj.repr ((new JTextField.jTextField ()));
        widthReductionTextField1 <- Obj.repr ((new JTextField.jTextField ()));
        jLabel7 <- Obj.repr ((new JLabel.jLabel ()));
        jLabel8 <- Obj.repr ((new JLabel.jLabel ()));
        heightReductionTextField1 <- Obj.repr ((new JTextField.jTextField ()));
        ignore ((Obj.magic writeOverOriginalJCheckBox)#setSelected (true));
        ignore ((Obj.magic writeOverOriginalJCheckBox)#setText ("Write Over Original"));
        ignore ((Obj.magic writeOverOriginalJCheckBox)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#writeOverOriginalJCheckBoxActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        let jPanel1Layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic jPanel1))))) in ();
        ignore ((Obj.magic jPanel1)#setLayout ((Obj.magic !jPanel1Layout)));
        ignore ((Obj.magic !jPanel1Layout)#setHorizontalGroup ((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 0, 32767))));
        ignore ((Obj.magic !jPanel1Layout)#setVerticalGroup ((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGap (0, 196, 32767))));
        ignore ((Obj.magic generateJButton)#setText ("Generate"));
        ignore ((Obj.magic generateJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#generateJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel4)#setText ("Results:"));
        ignore ((Obj.magic jLabel5)#setText ("Right:"));
        ignore ((Obj.magic widthReductionTextField)#setText ((CommonPhoneStrings.getInstance ())#zERO));
        ignore ((Obj.magic widthReductionTextField)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#widthReductionTextFieldActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel6)#setText ("Bottom"));
        ignore ((Obj.magic heightReductionTextField)#setText ((CommonPhoneStrings.getInstance ())#zERO));
        ignore ((Obj.magic widthReductionTextField1)#setText ((CommonPhoneStrings.getInstance ())#zERO));
        ignore ((Obj.magic widthReductionTextField1)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#widthReductionTextField1ActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel7)#setText ("Top"));
        ignore ((Obj.magic jLabel8)#setText ("Left:"));
        ignore ((Obj.magic heightReductionTextField1)#setText ((CommonPhoneStrings.getInstance ())#zERO));
        let jPanel2Layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic jPanel2))))) in ();
        ignore ((Obj.magic jPanel2)#setLayout ((Obj.magic !jPanel2Layout)));
        ignore ((Obj.magic !jPanel2Layout)#setHorizontalGroup ((((Obj.magic !jPanel2Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((((((((((((((((Obj.magic !jPanel2Layout)#createSequentialGroup ())#addContainerGap ())#addComponent ((Obj.magic jLabel8)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic widthReductionTextField1), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 41, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jLabel5)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic widthReductionTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 41, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jLabel7)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic heightReductionTextField1), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 46, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jLabel6)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic heightReductionTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 46, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addContainerGap (140, 32767))))));
        ignore ((Obj.magic !jPanel2Layout)#setVerticalGroup ((((Obj.magic !jPanel2Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING, ((((Obj.magic !jPanel2Layout)#createSequentialGroup ())#addGap (0, 16, 32767))#addGroup ((((((Obj.magic !jPanel2Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !jPanel2Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel6)))#addComponent ((Obj.magic heightReductionTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addGroup (((((((Obj.magic !jPanel2Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel8)))#addComponent ((Obj.magic widthReductionTextField1), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 22, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addComponent ((Obj.magic jLabel7)))#addComponent ((Obj.magic heightReductionTextField1), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addGroup (((((Obj.magic !jPanel2Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel5)))#addComponent ((Obj.magic widthReductionTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 22, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))))))));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic jPanel2), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))#addGap (78, 78, 78))))#addGroup (((((Obj.magic !layout)#createSequentialGroup ())#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !layout)#createSequentialGroup ())#addContainerGap ())#addComponent ((Obj.magic jPanel1), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))))#addGroup (((((Obj.magic !layout)#createSequentialGroup ())#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic jLabel4)))#addGroup ((((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic writeOverOriginalJCheckBox)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic generateJButton)))))))#addGap (0, 0, 32767))))))#addContainerGap ())))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic jPanel2), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic generateJButton)))#addComponent ((Obj.magic writeOverOriginalJCheckBox)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jLabel4)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jPanel1), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))))))
        end [@@warning "-7"]
    

    method writeOverOriginalJCheckBoxActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method generateJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#process ())
        end [@@warning "-7-20"]
    

    method widthReductionTextFieldActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method widthReductionTextField1ActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
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
    

    method visit : 'any1. 'any1 * string * int -> unit = fun (generatedBufferedImage, (name : string), (index : int)) ->
        let generatedBufferedImage = Obj.repr generatedBufferedImage in
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#vISIT, self, commonStrings#vISIT));
        result <- Obj.repr ((Obj.magic generatedBufferedImage));
        ignore ((self#getParent ())#repaint ());
        let file : Obj.t ref = ref ((Obj.repr (imageProcessorInput#getFiles ()).(index))) in ();
        if (not ((Obj.magic writeOverOriginalJCheckBox)#isSelected ())) then begin
            let filePath : string ref = ref (((Obj.magic !file)#getAbsolutePath ())) in ();
            let extensionIndex : int ref = ref ((java_string_index_of !filePath (Obj.repr (imageStrings#pNG_EXTENSION)))) in ();
            filePath := (java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ((String.sub !filePath (0) ((!extensionIndex) - (0)))))#append (commonSeps#uNDERSCORE))#append (name))#append (imageStrings#pNG_EXTENSION))));
            file := Obj.repr ((new File.file (!filePath)))
        end;
        let isWritten : bool ref = ref ((ImageIO.write ((Obj.magic (Obj.magic result)), imageStrings#pNG, (Obj.magic !file)))) in ();
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("File: "))#append (((StringUtil.getInstance ())#toString ((Obj.magic !file)))))#append (" Wrote: "))#appendboolean (!isWritten)))), self, commonStrings#rUN))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        imageStrings <- ((ImageStrings.getInstance ()) :> ImageStrings.imageStrings);
        ();
        result <- (Obj.repr (Obj.magic 0));
        generateJButton <- (Obj.repr (Obj.magic 0));
        heightReductionTextField <- (Obj.repr (Obj.magic 0));
        heightReductionTextField1 <- (Obj.repr (Obj.magic 0));
        jLabel4 <- (Obj.repr (Obj.magic 0));
        jLabel5 <- (Obj.repr (Obj.magic 0));
        jLabel6 <- (Obj.repr (Obj.magic 0));
        jLabel7 <- (Obj.repr (Obj.magic 0));
        jLabel8 <- (Obj.repr (Obj.magic 0));
        jPanel1 <- (Obj.repr (Obj.magic 0));
        jPanel2 <- (Obj.repr (Obj.magic 0));
        widthReductionTextField <- (Obj.repr (Obj.magic 0));
        widthReductionTextField1 <- (Obj.repr (Obj.magic 0));
        writeOverOriginalJCheckBox <- (Obj.repr (Obj.magic 0));
        ();
        (* super(...) is the inherit clause *) ();
        (self#initComponents ());
        imageProcessorInput <- imageProcessorInput_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "CanvasImageJPanel" (fun arguments -> Obj.repr (new canvasImageJPanel (Obj.obj arguments)))


