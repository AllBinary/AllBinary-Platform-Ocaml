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
(* import java.awt.image.BufferedImage *)
(* import java.io.File *)
(* import javax.swing *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.FileWrapperUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.media.image.ImagePersistanceUtil *)
(* import org.allbinary.media.image.ImageProcessorInput *)
(* import org.allbinary.media.image.ImageProcessorInputCompositeInterface *)
(* import org.allbinary.media.image.ImageStrings *)
(* import org.allbinary.media.image.ImageUnifierCell *)
(* import org.allbinary.media.image.ImageUnifierProperties *)
(* import org.allbinary.media.image.ImageUnifierUtil *)
(* import org.allbinary.media.image.ImageUtil *)
(* import org.allbinary.media.image.ImagesRatioUtil *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class imageUnifierJPanel ((imageProcessorInput_arg : ImageProcessorInput.imageProcessorInput)) =
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
    val mutable imagesRatioUtil : ImagesRatioUtil.imagesRatioUtil = (Obj.magic 0)
    method imagesRatioUtil = imagesRatioUtil
    method set_imagesRatioUtil value' = imagesRatioUtil <- value'
    val mutable imageProcessorInput : ImageProcessorInput.imageProcessorInput = (Obj.magic 0)
    method imageProcessorInput = imageProcessorInput
    method set_imageProcessorInput value' = imageProcessorInput <- value'
    val mutable icon : Obj.t = Obj.repr 0
    method icon : 'r. 'r = Obj.magic icon
    method set_icon : 'v. 'v -> unit = fun value' -> icon <- Obj.repr value'
    val mutable imageUnifierProperties : ImageUnifierProperties.imageUnifierProperties = (Obj.magic 0)
    method imageUnifierProperties = imageUnifierProperties
    method set_imageUnifierProperties value' = imageUnifierProperties <- value'
    val mutable result : Obj.t = Obj.repr 0
    method result : 'r. 'r = Obj.magic result
    method set_result : 'v. 'v -> unit = fun value' -> result <- Obj.repr value'
    val mutable isImageFillIn : bool = false
    method isImageFillIn = isImageFillIn
    method set_isImageFillIn value' = isImageFillIn <- value'
    val mutable avgRatioJTextField : Obj.t = Obj.repr 0
    method avgRatioJTextField : 'r. 'r = Obj.magic avgRatioJTextField
    method set_avgRatioJTextField : 'v. 'v -> unit = fun value' -> avgRatioJTextField <- Obj.repr value'
    val mutable cellHeightJTextField : Obj.t = Obj.repr 0
    method cellHeightJTextField : 'r. 'r = Obj.magic cellHeightJTextField
    method set_cellHeightJTextField : 'v. 'v -> unit = fun value' -> cellHeightJTextField <- Obj.repr value'
    val mutable cellRatioJTextField : Obj.t = Obj.repr 0
    method cellRatioJTextField : 'r. 'r = Obj.magic cellRatioJTextField
    method set_cellRatioJTextField : 'v. 'v -> unit = fun value' -> cellRatioJTextField <- Obj.repr value'
    val mutable cellWidthJTextField : Obj.t = Obj.repr 0
    method cellWidthJTextField : 'r. 'r = Obj.magic cellWidthJTextField
    method set_cellWidthJTextField : 'v. 'v -> unit = fun value' -> cellWidthJTextField <- Obj.repr value'
    val mutable columnsJTextField : Obj.t = Obj.repr 0
    method columnsJTextField : 'r. 'r = Obj.magic columnsJTextField
    method set_columnsJTextField : 'v. 'v -> unit = fun value' -> columnsJTextField <- Obj.repr value'
    val mutable downJButton : Obj.t = Obj.repr 0
    method downJButton : 'r. 'r = Obj.magic downJButton
    method set_downJButton : 'v. 'v -> unit = fun value' -> downJButton <- Obj.repr value'
    val mutable fudgeItJButton : Obj.t = Obj.repr 0
    method fudgeItJButton : 'r. 'r = Obj.magic fudgeItJButton
    method set_fudgeItJButton : 'v. 'v -> unit = fun value' -> fudgeItJButton <- Obj.repr value'
    val mutable imageJList : Obj.t = Obj.repr 0
    method imageJList : 'r. 'r = Obj.magic imageJList
    method set_imageJList : 'v. 'v -> unit = fun value' -> imageJList <- Obj.repr value'
    val mutable jButton1 : Obj.t = Obj.repr 0
    method jButton1 : 'r. 'r = Obj.magic jButton1
    method set_jButton1 : 'v. 'v -> unit = fun value' -> jButton1 <- Obj.repr value'
    val mutable jButton2 : Obj.t = Obj.repr 0
    method jButton2 : 'r. 'r = Obj.magic jButton2
    method set_jButton2 : 'v. 'v -> unit = fun value' -> jButton2 <- Obj.repr value'
    val mutable jButtonOrder : Obj.t = Obj.repr 0
    method jButtonOrder : 'r. 'r = Obj.magic jButtonOrder
    method set_jButtonOrder : 'v. 'v -> unit = fun value' -> jButtonOrder <- Obj.repr value'
    val mutable jLabel1 : Obj.t = Obj.repr 0
    method jLabel1 : 'r. 'r = Obj.magic jLabel1
    method set_jLabel1 : 'v. 'v -> unit = fun value' -> jLabel1 <- Obj.repr value'
    val mutable jLabel2 : Obj.t = Obj.repr 0
    method jLabel2 : 'r. 'r = Obj.magic jLabel2
    method set_jLabel2 : 'v. 'v -> unit = fun value' -> jLabel2 <- Obj.repr value'
    val mutable jLabel3 : Obj.t = Obj.repr 0
    method jLabel3 : 'r. 'r = Obj.magic jLabel3
    method set_jLabel3 : 'v. 'v -> unit = fun value' -> jLabel3 <- Obj.repr value'
    val mutable jLabel4 : Obj.t = Obj.repr 0
    method jLabel4 : 'r. 'r = Obj.magic jLabel4
    method set_jLabel4 : 'v. 'v -> unit = fun value' -> jLabel4 <- Obj.repr value'
    val mutable jLabel5 : Obj.t = Obj.repr 0
    method jLabel5 : 'r. 'r = Obj.magic jLabel5
    method set_jLabel5 : 'v. 'v -> unit = fun value' -> jLabel5 <- Obj.repr value'
    val mutable jLabel6 : Obj.t = Obj.repr 0
    method jLabel6 : 'r. 'r = Obj.magic jLabel6
    method set_jLabel6 : 'v. 'v -> unit = fun value' -> jLabel6 <- Obj.repr value'
    val mutable jPanel1 : Obj.t = Obj.repr 0
    method jPanel1 : 'r. 'r = Obj.magic jPanel1
    method set_jPanel1 : 'v. 'v -> unit = fun value' -> jPanel1 <- Obj.repr value'
    val mutable jScrollPane1 : Obj.t = Obj.repr 0
    method jScrollPane1 : 'r. 'r = Obj.magic jScrollPane1
    method set_jScrollPane1 : 'v. 'v -> unit = fun value' -> jScrollPane1 <- Obj.repr value'
    val mutable jScrollPane2 : Obj.t = Obj.repr 0
    method jScrollPane2 : 'r. 'r = Obj.magic jScrollPane2
    method set_jScrollPane2 : 'v. 'v -> unit = fun value' -> jScrollPane2 <- Obj.repr value'
    val mutable rowsJTextField : Obj.t = Obj.repr 0
    method rowsJTextField : 'r. 'r = Obj.magic rowsJTextField
    method set_rowsJTextField : 'v. 'v -> unit = fun value' -> rowsJTextField <- Obj.repr value'
    val mutable upJButton : Obj.t = Obj.repr 0
    method upJButton : 'r. 'r = Obj.magic upJButton
    method set_upJButton : 'v. 'v -> unit = fun value' -> upJButton <- Obj.repr value'
    
    

    method init () : unit =
        begin
        (try
            let imageProcessorInput_arg : ImageProcessorInput.imageProcessorInput ref = ref (((self#getImageProcessorInput ()) :> ImageProcessorInput.imageProcessorInput)) in ();
            let bufferedImageArray : Obj.t ref = ref ((Obj.repr (!imageProcessorInput_arg#getBufferedImageArray ()))) in ();
            icon <- Obj.repr ((Array.make ((Array.length (Obj.magic !bufferedImageArray))) (Obj.magic 0)));
            let defaultListModel : Obj.t ref = ref ((Obj.repr (new DefaultListModel.defaultListModel ()))) in ();
            for index = 0 to (Array.length (Obj.magic !bufferedImageArray)) - 1 do
                let width : float ref = ref (((Obj.magic !bufferedImageArray).(index)#getWidth ())) in ();
                let height : float ref = ref (((Obj.magic !bufferedImageArray).(index)#getHeight ())) in ();
                let newWidth : int ref = ref (52) in ();
                let oldRatio : float ref = ref ((!width /. !height)) in ();
                let newHeight : int ref = ref ((int_of_float ((((float_of_int (!newWidth)) /. !oldRatio))))) in ();
                let iconBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ())))#createBufferedImage ((Obj.magic !bufferedImageArray).(index), !newWidth, !newHeight, true)))) in ();
                (Obj.magic icon).(index) <- (new ImageIconUnique.imageIconUnique ((Obj.magic !iconBufferedImage), index));
                ignore ((Obj.magic !defaultListModel)#addElement ((Obj.magic icon).(index)))
            done;
            ignore ((Obj.magic imageJList)#setModel ((Obj.magic !defaultListModel)));
            (self#updateOnPropertiesChange ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#iNIT, e))
        end)
        end [@@warning "-7"]
    

    method updateImage () : unit =
        begin
        (try
            let bufferedImageArray : Obj.t ref = ref ((Obj.repr ((self#getImageProcessorInput ())#getBufferedImageArray ()))) in ();
            let tempBufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make ((Array.length (Obj.magic !bufferedImageArray))) (Obj.magic 0)))) in ();
            for index = 0 to (Array.length (Obj.magic !bufferedImageArray)) - 1 do
                let indexedImageIcon : Obj.t ref = ref ((Obj.repr (Obj.magic (((Obj.magic imageJList)#getModel ())#getElementAt (index))))) in ();
                let bufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ())))#createBufferedImage ((Obj.magic !bufferedImageArray).(((Obj.magic !indexedImageIcon)#getId ())), ((imageUnifierProperties#getImageUnifierCell ())#getWidth ()), ((imageUnifierProperties#getImageUnifierCell ())#getHeight ()), false)))) in ();
                (Obj.magic !tempBufferedImageArray).(index) <- (Obj.magic !bufferedImage)
            done;
            let totalImages : int ref = ref (((imageUnifierProperties#getRows ()) * (imageUnifierProperties#getColumns ()))) in ();
            let averageRatio : float ref = ref ((imagesRatioUtil#getAverage ((Obj.magic !tempBufferedImageArray), !totalImages))) in ();
            let averageRatioString : string ref = ref ((java_string_of (Obj.repr !averageRatio))) in ();
            if ((String.length !averageRatioString) > 4) then begin
                averageRatioString := (String.sub !averageRatioString (0) ((4) - (0)))
            end;
            ignore ((Obj.magic avgRatioJTextField)#setText (!averageRatioString));
            ignore ((Obj.magic fudgeItJButton)#setEnabled (false));
            if (not (imagesRatioUtil#isEqual ((Obj.magic !tempBufferedImageArray), !totalImages))) then begin
                if isImageFillIn then begin
                    ignore ((Obj.magic fudgeItJButton)#setEnabled (true))
                end
            end;
            (self#updateImage ((Obj.magic !tempBufferedImageArray)))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "updateImage", e))
        end)
        end [@@warning "-7"]
    

    method updateImageWithFudgedImages () : unit =
        begin
        (try
            let bufferedImageArray : Obj.t ref = ref ((Obj.repr ((self#getImageProcessorInput ())#getBufferedImageArray ()))) in ();
            let tempBufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make ((Array.length (Obj.magic !bufferedImageArray))) (Obj.magic 0)))) in ();
            for index = 0 to (Array.length (Obj.magic !bufferedImageArray)) - 1 do
                let indexedImageIcon : Obj.t ref = ref ((Obj.repr (Obj.magic (((Obj.magic imageJList)#getModel ())#getElementAt (index))))) in ();
                let bufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ())))#createBufferedImage ((Obj.magic !bufferedImageArray).(((Obj.magic !indexedImageIcon)#getId ())), ((imageUnifierProperties#getImageUnifierCell ())#getWidth ()), ((imageUnifierProperties#getImageUnifierCell ())#getHeight ()), false)))) in ();
                (Obj.magic !tempBufferedImageArray).(index) <- (Obj.magic !bufferedImage)
            done;
            let totalImages : int ref = ref (((imageUnifierProperties#getRows ()) * (imageUnifierProperties#getColumns ()))) in ();
            let averageRatio : float ref = ref ((imagesRatioUtil#getAverage ((Obj.magic !tempBufferedImageArray), !totalImages))) in ();
            let fudgedBufferedImageArray : Obj.t ref = ref ((Obj.repr (imagesRatioUtil#fudge ((Obj.magic !tempBufferedImageArray), !totalImages, !averageRatio)))) in ();
            (self#updateImage ((Obj.magic !fudgedBufferedImageArray)))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "updateImageWithFudgedImages", e))
        end)
        end [@@warning "-7"]
    

    (* Java overload updateImage(ArrayType) is not converted: OCaml has one method per name *)
    

    method updateOnPropertiesChange () : unit =
        begin
        if (((((((Obj.magic rowsJTextField)#getText ())#length ()) > 0) && ((((Obj.magic columnsJTextField)#getText ())#length ()) > 0)) && ((((Obj.magic cellWidthJTextField)#getText ())#length ()) > 0)) && ((((Obj.magic cellHeightJTextField)#getText ())#length ()) > 0)) then begin
            imageUnifierProperties <- (new ImageUnifierProperties.imageUnifierProperties ());
            ignore (imageUnifierProperties#setRows ((Obj.obj (java_new "Integer" (Obj.repr (((Obj.magic rowsJTextField)#getText ())))))));
            ignore (imageUnifierProperties#setColumns ((Obj.obj (java_new "Integer" (Obj.repr (((Obj.magic columnsJTextField)#getText ())))))));
            let imageUnifierCell : ImageUnifierCell.imageUnifierCell ref = ref (((new ImageUnifierCell.imageUnifierCell ((Obj.obj (java_new "Integer" (Obj.repr (((Obj.magic cellWidthJTextField)#getText ()))))), (Obj.obj (java_new "Integer" (Obj.repr (((Obj.magic cellHeightJTextField)#getText ()))))))) :> ImageUnifierCell.imageUnifierCell)) in ();
            ignore (imageUnifierProperties#setImageUnifierCell (!imageUnifierCell));
            let cellRatio : float ref = ref ((((java_to_float (Obj.repr ((!imageUnifierCell#getWidth ())))) /. (!imageUnifierCell#getHeight ())))) in ();
            let cellRatioString : string ref = ref ((java_string_of (Obj.repr !cellRatio))) in ();
            if ((String.length !cellRatioString) > 4) then begin
                cellRatioString := (String.sub !cellRatioString (0) ((4) - (0)))
            end;
            ignore ((Obj.magic cellRatioJTextField)#setText (!cellRatioString));
            (self#updateImage ())
        end
        end [@@warning "-7"]
    

    method initComponents () : unit =
        begin
        let commonPhoneStrings : CommonPhoneStrings.commonPhoneStrings ref = ref (((CommonPhoneStrings.getInstance ()) :> CommonPhoneStrings.commonPhoneStrings)) in ();
        jScrollPane1 <- Obj.repr ((new JScrollPane.jScrollPane ()));
        imageJList <- Obj.repr ((new JList.jList ()));
        jScrollPane2 <- Obj.repr ((new JScrollPane.jScrollPane ()));
        jPanel1 <- Obj.repr ((new JPanel.jPanel ()));
        jButton1 <- Obj.repr ((new JButton.jButton ()));
        upJButton <- Obj.repr ((new JButton.jButton ()));
        downJButton <- Obj.repr ((new JButton.jButton ()));
        fudgeItJButton <- Obj.repr ((new JButton.jButton ()));
        jLabel2 <- Obj.repr ((new JLabel.jLabel ()));
        columnsJTextField <- Obj.repr ((new JTextField.jTextField ()));
        jLabel1 <- Obj.repr ((new JLabel.jLabel ()));
        rowsJTextField <- Obj.repr ((new JTextField.jTextField ()));
        jLabel3 <- Obj.repr ((new JLabel.jLabel ()));
        cellWidthJTextField <- Obj.repr ((new JTextField.jTextField ()));
        jLabel4 <- Obj.repr ((new JLabel.jLabel ()));
        cellHeightJTextField <- Obj.repr ((new JTextField.jTextField ()));
        jLabel5 <- Obj.repr ((new JLabel.jLabel ()));
        cellRatioJTextField <- Obj.repr ((new JTextField.jTextField ()));
        jLabel6 <- Obj.repr ((new JLabel.jLabel ()));
        avgRatioJTextField <- Obj.repr ((new JTextField.jTextField ()));
        jButton2 <- Obj.repr ((new JButton.jButton ()));
        jButtonOrder <- Obj.repr ((new JButton.jButton ()));
        ignore (self#setMinimumSize ((new Dimension.dimension (500, 375))));
        ignore (self#setPreferredSize ((new Dimension.dimension (0, 0))));
        ignore ((Obj.magic imageJList)#setMinimumSize ((new Dimension.dimension (50, 0))));
        ignore ((Obj.magic jScrollPane1)#setViewportView ((Obj.magic imageJList)));
        ignore ((Obj.magic jButton1)#setText ("Save"));
        ignore ((Obj.magic jButton1)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#jButton1ActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic upJButton)#setText ("Up"));
        ignore ((Obj.magic upJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#upJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic downJButton)#setText ("Down"));
        ignore ((Obj.magic downJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#downJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic fudgeItJButton)#setText ("Fudge It!"));
        ignore ((Obj.magic fudgeItJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#fudgeItJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel2)#setText ("Columns:"));
        ignore ((Obj.magic columnsJTextField)#setText (!commonPhoneStrings#tWO));
        ignore ((Obj.magic columnsJTextField)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#columnsJTextFieldActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic columnsJTextField)#addPropertyChangeListener ((object (self)
            inherit PropertyChangeListener.propertyChangeListener () as super
            

            method propertyChange : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#columnsJTextFieldPropertyChange ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic columnsJTextField)#addKeyListener ((object (self)
            inherit KeyAdapter.keyAdapter () as super
            

            method keyPressed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#columnsJTextFieldKeyPressed ((Obj.magic evt)))
                end [@@warning "-20"]
            

            method keyTyped : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#columnsJTextFieldKeyTyped ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel1)#setText ("Rows:"));
        ignore ((Obj.magic rowsJTextField)#setText (!commonPhoneStrings#tWO));
        ignore ((Obj.magic rowsJTextField)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#rowsJTextFieldActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel3)#setText ("Cell Width:"));
        ignore ((Obj.magic cellWidthJTextField)#setText ("200"));
        ignore ((Obj.magic cellWidthJTextField)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#cellWidthJTextFieldActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel4)#setText ("Cell Height:"));
        ignore ((Obj.magic cellHeightJTextField)#setText ("150"));
        ignore ((Obj.magic cellHeightJTextField)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#cellHeightJTextFieldActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel5)#setText ("Cell Ratio:"));
        ignore ((Obj.magic cellRatioJTextField)#setEditable (false));
        ignore ((Obj.magic jLabel6)#setText ("Avg Image Ratio:"));
        ignore ((Obj.magic avgRatioJTextField)#setEditable (false));
        ignore ((Obj.magic jButton2)#setText (commonStrings#uPDATE));
        ignore ((Obj.magic jButton2)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#jButton2ActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jButtonOrder)#setText ("Order"));
        ignore ((Obj.magic jButtonOrder)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#jButtonOrderActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        let jPanel1Layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout ((Obj.magic jPanel1))))) in ();
        ignore ((Obj.magic jPanel1)#setLayout ((Obj.magic !jPanel1Layout)));
        ignore ((Obj.magic !jPanel1Layout)#setHorizontalGroup ((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING, (((((Obj.magic !jPanel1Layout)#createSequentialGroup ())#addContainerGap ())#addGroup (((((((((((((((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING))#addComponent ((Obj.magic jButton1), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 151, 32767))#addGroup ((((((Obj.magic !jPanel1Layout)#createSequentialGroup ())#addComponent ((Obj.magic upJButton), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 71, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, 10, 32767))#addComponent ((Obj.magic downJButton), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 70, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addComponent ((Obj.magic fudgeItJButton), (javax.get_swing ())#groupLayout#alignment#lEADING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 151, 32767))#addGroup ((javax.get_swing ())#groupLayout#alignment#lEADING, ((((Obj.magic !jPanel1Layout)#createSequentialGroup ())#addComponent ((Obj.magic jLabel3)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, 99, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addGroup ((javax.get_swing ())#groupLayout#alignment#lEADING, ((((Obj.magic !jPanel1Layout)#createSequentialGroup ())#addComponent ((Obj.magic jLabel4)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, 96, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addComponent ((Obj.magic avgRatioJTextField), (javax.get_swing ())#groupLayout#alignment#lEADING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 151, 32767))#addComponent ((Obj.magic jLabel6), (javax.get_swing ())#groupLayout#alignment#lEADING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 151, 32767))#addComponent ((Obj.magic cellRatioJTextField), (javax.get_swing ())#groupLayout#alignment#lEADING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 151, 32767))#addComponent ((Obj.magic jLabel5), (javax.get_swing ())#groupLayout#alignment#lEADING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 151, 32767))#addComponent ((Obj.magic cellHeightJTextField), (javax.get_swing ())#groupLayout#alignment#lEADING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 151, 32767))#addComponent ((Obj.magic cellWidthJTextField), (javax.get_swing ())#groupLayout#alignment#lEADING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 151, 32767))#addComponent ((Obj.magic jButton2), (javax.get_swing ())#groupLayout#alignment#lEADING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 151, 32767))#addGroup ((javax.get_swing ())#groupLayout#alignment#lEADING, (((((Obj.magic !jPanel1Layout)#createSequentialGroup ())#addGroup (((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic jLabel2)))#addComponent ((Obj.magic jLabel1)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic rowsJTextField), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 103, 32767))#addGroup (((((Obj.magic !jPanel1Layout)#createSequentialGroup ())#addComponent ((Obj.magic columnsJTextField), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 102, 32767))#addGap (1, 1, 1))))))))#addComponent ((Obj.magic jButtonOrder), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 151, 32767))))#addContainerGap ())))));
        ignore ((Obj.magic !jPanel1Layout)#setVerticalGroup ((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((((((((((((((((((((((((((((((Obj.magic !jPanel1Layout)#createSequentialGroup ())#addContainerGap ())#addComponent ((Obj.magic jButton1)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic upJButton)))#addComponent ((Obj.magic downJButton)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jButtonOrder)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic fudgeItJButton)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel2)))#addComponent ((Obj.magic columnsJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !jPanel1Layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel1)))#addComponent ((Obj.magic rowsJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jLabel3)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic cellWidthJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jLabel4)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic cellHeightJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jButton2)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jLabel5)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))#addComponent ((Obj.magic cellRatioJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addGap (7, 7, 7))#addComponent ((Obj.magic jLabel6)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic avgRatioJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addGap (66, 66, 66))))));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic jScrollPane1), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 84, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jPanel1), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic jScrollPane2), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 527, 32767))))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING, ((((Obj.magic !layout)#createSequentialGroup ())#addGroup ((((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING))#addComponent ((Obj.magic jPanel1), (javax.get_swing ())#groupLayout#alignment#lEADING, 0, 445, 32767))#addComponent ((Obj.magic jScrollPane2), (javax.get_swing ())#groupLayout#alignment#lEADING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 445, 32767))#addComponent ((Obj.magic jScrollPane1), (javax.get_swing ())#groupLayout#alignment#lEADING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 445, 32767))))#addContainerGap ())))))
        end [@@warning "-7"]
    

    method jButton2ActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#updateOnPropertiesChange ())
        end [@@warning "-7-20"]
    

    method columnsJTextFieldKeyPressed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method columnsJTextFieldKeyTyped : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method columnsJTextFieldPropertyChange : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method fudgeItJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#updateImageWithFudgedImages ())
        end [@@warning "-7-20"]
    

    method cellHeightJTextFieldActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#updateOnPropertiesChange ())
        end [@@warning "-7-20"]
    

    method cellWidthJTextFieldActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#updateOnPropertiesChange ())
        end [@@warning "-7-20"]
    

    method columnsJTextFieldActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#updateOnPropertiesChange ())
        end [@@warning "-7-20"]
    

    method rowsJTextFieldActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#updateOnPropertiesChange ())
        end [@@warning "-7-20"]
    

    method jButton1ActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            let fileArray : Obj.t ref = ref ((Obj.repr (imageProcessorInput#getFiles ()))) in ();
            let file : Obj.t ref = ref ((Obj.repr (Obj.magic !fileArray).(0))) in ();
            let filePath : string ref = ref (((Obj.magic !file)#getAbsolutePath ())) in ();
            let extensionIndex : int ref = ref ((java_string_index_of !filePath (Obj.repr (imageStrings#pNG_EXTENSION)))) in ();
            filePath := (java_string_of (Obj.repr ((((((((new StringMaker.stringMaker ())#append ((String.sub !filePath (0) ((!extensionIndex) - (0)))))#append ((CommonSeps.getInstance ())#uNDERSCORE))#appendint ((java_to_int (Obj.repr ((imageUnifierProperties#getColumns ()))))))#append ("_By_"))#appendint ((java_to_int (Obj.repr ((imageUnifierProperties#getRows ()))))))#append ("_Unified"))#append (imageStrings#pNG_EXTENSION))));
            ignore ((Obj.magic logUtil)#putF (("New File Path: " ^ !filePath), self, (StringUtil.getInstance ())#eMPTY_STRING));
            let outputFile : Obj.t ref = ref ((Obj.repr (new File.file (!filePath)))) in ();
            ignore ((ImagePersistanceUtil.getInstance ())#saveWithBatik ((Obj.magic (java_call_static "FileWrapperUtil.wrapFile" (Obj.repr ((Obj.magic !outputFile))))), (Obj.magic result)))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "jButton1ActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method downJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        let index : int ref = ref (((Obj.magic imageJList)#getSelectedIndex ())) in ();
        let defaultListModel : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic imageJList)#getModel ())))) in ();
        if ((!index >= 0) && ((!index + 1) < ((Obj.magic !defaultListModel)#size ()))) then begin
            let indexedImageIcon : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !defaultListModel)#remove (!index))))) in ();
            ignore ((Obj.magic !defaultListModel)#insertElementAt ((Obj.magic !indexedImageIcon), (!index + 1)));
            ignore ((Obj.magic imageJList)#setSelectedIndex ((!index + 1)));
            (self#updateImage ())
        end
        end [@@warning "-7-20"]
    

    method upJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        let index : int ref = ref (((Obj.magic imageJList)#getSelectedIndex ())) in ();
        if (!index > 0) then begin
            let defaultListModel : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic imageJList)#getModel ())))) in ();
            let indexedImageIcon : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !defaultListModel)#remove (!index))))) in ();
            ignore ((Obj.magic !defaultListModel)#insertElementAt ((Obj.magic !indexedImageIcon), (!index - 1)));
            ignore ((Obj.magic imageJList)#setSelectedIndex ((!index - 1)));
            (self#updateImage ())
        end
        end [@@warning "-7-20"]
    

    method jButtonOrderActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        let defaultListModel : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic imageJList)#getModel ())))) in ();
        let size : int ref = ref (((Obj.magic !defaultListModel)#size ())) in ();
        let last : int ref = ref ((!size - 1)) in ();
        for index = !last downto 0 do
            let indexedImageIcon : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !defaultListModel)#remove (!last))))) in ();
            ignore ((Obj.magic !defaultListModel)#insertElementAt ((Obj.magic !indexedImageIcon), (!last - index)))
        done;
        if (!size > 0) then begin
            ignore ((Obj.magic imageJList)#setSelectedIndex (0));
            (self#updateImage ())
        end
        end [@@warning "-7-20"]
    

    method getImageProcessorInput () : ImageProcessorInput.imageProcessorInput =
        begin
        (imageProcessorInput :> ImageProcessorInput.imageProcessorInput)
        end [@@warning "-7"]
    

    method setImageProcessorInput : 'any1. 'any1 -> unit = fun (imageProcessorInput_arg) ->
        let imageProcessorInput_arg = Obj.repr imageProcessorInput_arg in
        begin
        imageProcessorInput <- (Obj.magic imageProcessorInput_arg);
        (self#init ())
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        imageStrings <- ((ImageStrings.getInstance ()) :> ImageStrings.imageStrings);
        imagesRatioUtil <- ((ImagesRatioUtil.getInstance ()) :> ImagesRatioUtil.imagesRatioUtil);
        imageProcessorInput <- ((Obj.magic 0) :> ImageProcessorInput.imageProcessorInput);
        icon <- (Obj.repr (Obj.magic 0));
        imageUnifierProperties <- ((Obj.magic 0) :> ImageUnifierProperties.imageUnifierProperties);
        result <- (Obj.repr (Obj.magic 0));
        isImageFillIn <- true;
        avgRatioJTextField <- (Obj.repr (Obj.magic 0));
        cellHeightJTextField <- (Obj.repr (Obj.magic 0));
        cellRatioJTextField <- (Obj.repr (Obj.magic 0));
        cellWidthJTextField <- (Obj.repr (Obj.magic 0));
        columnsJTextField <- (Obj.repr (Obj.magic 0));
        downJButton <- (Obj.repr (Obj.magic 0));
        fudgeItJButton <- (Obj.repr (Obj.magic 0));
        imageJList <- (Obj.repr (Obj.magic 0));
        jButton1 <- (Obj.repr (Obj.magic 0));
        jButton2 <- (Obj.repr (Obj.magic 0));
        jButtonOrder <- (Obj.repr (Obj.magic 0));
        jLabel1 <- (Obj.repr (Obj.magic 0));
        jLabel2 <- (Obj.repr (Obj.magic 0));
        jLabel3 <- (Obj.repr (Obj.magic 0));
        jLabel4 <- (Obj.repr (Obj.magic 0));
        jLabel5 <- (Obj.repr (Obj.magic 0));
        jLabel6 <- (Obj.repr (Obj.magic 0));
        jPanel1 <- (Obj.repr (Obj.magic 0));
        jScrollPane1 <- (Obj.repr (Obj.magic 0));
        jScrollPane2 <- (Obj.repr (Obj.magic 0));
        rowsJTextField <- (Obj.repr (Obj.magic 0));
        upJButton <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ());
        (self#setImageProcessorInput (imageProcessorInput_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageUnifierJPanel" (fun arguments -> Obj.repr (new imageUnifierJPanel (Obj.obj arguments)))


