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
(* package org.allbinary.input.automation.actions.script.condition *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.media.image.analysis.ColorRangeInterface *)
(* import org.allbinary.string.CommonStrings *)

class colorAtActionScriptConditionJPanel ((colorAtActionScriptConditionInterface_arg : ColorAtActionScriptConditionInterface.colorAtActionScriptConditionInterface)) =
  object (self)
    inherit JPanel.jPanel ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable colorAtActionScriptConditionInterface : ColorAtActionScriptConditionInterface.colorAtActionScriptConditionInterface = (Obj.magic 0)
    method colorAtActionScriptConditionInterface = colorAtActionScriptConditionInterface
    method set_colorAtActionScriptConditionInterface value' = colorAtActionScriptConditionInterface <- value'
    val mutable blueJLabel : Obj.t = Obj.repr 0
    method blueJLabel : 'r. 'r = Obj.magic blueJLabel
    method set_blueJLabel : 'v. 'v -> unit = fun value' -> blueJLabel <- Obj.repr value'
    val mutable colorAtActionJButton : Obj.t = Obj.repr 0
    method colorAtActionJButton : 'r. 'r = Obj.magic colorAtActionJButton
    method set_colorAtActionJButton : 'v. 'v -> unit = fun value' -> colorAtActionJButton <- Obj.repr value'
    val mutable colorAtActionJDialog : Obj.t = Obj.repr 0
    method colorAtActionJDialog : 'r. 'r = Obj.magic colorAtActionJDialog
    method set_colorAtActionJDialog : 'v. 'v -> unit = fun value' -> colorAtActionJDialog <- Obj.repr value'
    val mutable colorAtXJTextField : Obj.t = Obj.repr 0
    method colorAtXJTextField : 'r. 'r = Obj.magic colorAtXJTextField
    method set_colorAtXJTextField : 'v. 'v -> unit = fun value' -> colorAtXJTextField <- Obj.repr value'
    val mutable colorAtYJTextField : Obj.t = Obj.repr 0
    method colorAtYJTextField : 'r. 'r = Obj.magic colorAtYJTextField
    method set_colorAtYJTextField : 'v. 'v -> unit = fun value' -> colorAtYJTextField <- Obj.repr value'
    val mutable colorRangeJLabel : Obj.t = Obj.repr 0
    method colorRangeJLabel : 'r. 'r = Obj.magic colorRangeJLabel
    method set_colorRangeJLabel : 'v. 'v -> unit = fun value' -> colorRangeJLabel <- Obj.repr value'
    val mutable greenJLabel : Obj.t = Obj.repr 0
    method greenJLabel : 'r. 'r = Obj.magic greenJLabel
    method set_greenJLabel : 'v. 'v -> unit = fun value' -> greenJLabel <- Obj.repr value'
    val mutable jLabel1 : Obj.t = Obj.repr 0
    method jLabel1 : 'r. 'r = Obj.magic jLabel1
    method set_jLabel1 : 'v. 'v -> unit = fun value' -> jLabel1 <- Obj.repr value'
    val mutable locationJLabel : Obj.t = Obj.repr 0
    method locationJLabel : 'r. 'r = Obj.magic locationJLabel
    method set_locationJLabel : 'v. 'v -> unit = fun value' -> locationJLabel <- Obj.repr value'
    val mutable maxBlueJTextField : Obj.t = Obj.repr 0
    method maxBlueJTextField : 'r. 'r = Obj.magic maxBlueJTextField
    method set_maxBlueJTextField : 'v. 'v -> unit = fun value' -> maxBlueJTextField <- Obj.repr value'
    val mutable maxGreenJTextField : Obj.t = Obj.repr 0
    method maxGreenJTextField : 'r. 'r = Obj.magic maxGreenJTextField
    method set_maxGreenJTextField : 'v. 'v -> unit = fun value' -> maxGreenJTextField <- Obj.repr value'
    val mutable maxJLabel : Obj.t = Obj.repr 0
    method maxJLabel : 'r. 'r = Obj.magic maxJLabel
    method set_maxJLabel : 'v. 'v -> unit = fun value' -> maxJLabel <- Obj.repr value'
    val mutable maxRedJTextField : Obj.t = Obj.repr 0
    method maxRedJTextField : 'r. 'r = Obj.magic maxRedJTextField
    method set_maxRedJTextField : 'v. 'v -> unit = fun value' -> maxRedJTextField <- Obj.repr value'
    val mutable minBlueJTextField : Obj.t = Obj.repr 0
    method minBlueJTextField : 'r. 'r = Obj.magic minBlueJTextField
    method set_minBlueJTextField : 'v. 'v -> unit = fun value' -> minBlueJTextField <- Obj.repr value'
    val mutable minGreenJTextField : Obj.t = Obj.repr 0
    method minGreenJTextField : 'r. 'r = Obj.magic minGreenJTextField
    method set_minGreenJTextField : 'v. 'v -> unit = fun value' -> minGreenJTextField <- Obj.repr value'
    val mutable minJLabel : Obj.t = Obj.repr 0
    method minJLabel : 'r. 'r = Obj.magic minJLabel
    method set_minJLabel : 'v. 'v -> unit = fun value' -> minJLabel <- Obj.repr value'
    val mutable minRedJTextField : Obj.t = Obj.repr 0
    method minRedJTextField : 'r. 'r = Obj.magic minRedJTextField
    method set_minRedJTextField : 'v. 'v -> unit = fun value' -> minRedJTextField <- Obj.repr value'
    val mutable okJButton : Obj.t = Obj.repr 0
    method okJButton : 'r. 'r = Obj.magic okJButton
    method set_okJButton : 'v. 'v -> unit = fun value' -> okJButton <- Obj.repr value'
    val mutable redJLabel : Obj.t = Obj.repr 0
    method redJLabel : 'r. 'r = Obj.magic redJLabel
    method set_redJLabel : 'v. 'v -> unit = fun value' -> redJLabel <- Obj.repr value'
    val mutable titleJLabel : Obj.t = Obj.repr 0
    method titleJLabel : 'r. 'r = Obj.magic titleJLabel
    method set_titleJLabel : 'v. 'v -> unit = fun value' -> titleJLabel <- Obj.repr value'
    val mutable xJLabel : Obj.t = Obj.repr 0
    method xJLabel : 'r. 'r = Obj.magic xJLabel
    method set_xJLabel : 'v. 'v -> unit = fun value' -> xJLabel <- Obj.repr value'
    val mutable yJLabel : Obj.t = Obj.repr 0
    method yJLabel : 'r. 'r = Obj.magic yJLabel
    method set_yJLabel : 'v. 'v -> unit = fun value' -> yJLabel <- Obj.repr value'
    
    

    method set () : unit =
        begin
        let colorRangeInterface : ColorRangeInterface.colorRangeInterface ref = ref (((colorAtActionScriptConditionInterface#getColorRangeInterface ()) :> ColorRangeInterface.colorRangeInterface)) in ();
        ignore ((self#getMinRedJTextField ())#setText ((string_of_int ((!colorRangeInterface#getMinRed ())))));
        ignore ((self#getMaxRedJTextField ())#setText ((string_of_int ((!colorRangeInterface#getMaxRed ())))));
        ignore ((self#getMinGreenJTextField ())#setText ((string_of_int ((!colorRangeInterface#getMinGreen ())))));
        ignore ((self#getMaxGreenJTextField ())#setText ((string_of_int ((!colorRangeInterface#getMaxGreen ())))));
        ignore ((self#getMinBlueJTextField ())#setText ((string_of_int ((!colorRangeInterface#getMinBlue ())))));
        ignore ((self#getMaxBlueJTextField ())#setText ((string_of_int ((!colorRangeInterface#getMaxBlue ())))));
        ignore ((self#getColorAtXJTextField ())#setText ((string_of_int ((colorAtActionScriptConditionInterface#getPoint ())#x))));
        ignore ((self#getColorAtYJTextField ())#setText ((string_of_int ((colorAtActionScriptConditionInterface#getPoint ())#y))));
        ignore (colorAtActionScriptConditionInterface#log ())
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        let colorRangeInterface : ColorRangeInterface.colorRangeInterface ref = ref (((colorAtActionScriptConditionInterface#getColorRangeInterface ()) :> ColorRangeInterface.colorRangeInterface)) in ();
        ignore (!colorRangeInterface#setMinRed (((string_of_int (((self#getMinRedJTextField ())#getText ())))#intValue ())));
        ignore (!colorRangeInterface#setMaxRed (((string_of_int (((self#getMaxRedJTextField ())#getText ())))#intValue ())));
        ignore (!colorRangeInterface#setMinGreen (((string_of_int (((self#getMinGreenJTextField ())#getText ())))#intValue ())));
        ignore (!colorRangeInterface#setMaxGreen (((string_of_int (((self#getMaxGreenJTextField ())#getText ())))#intValue ())));
        ignore (!colorRangeInterface#setMinBlue (((string_of_int (((self#getMinBlueJTextField ())#getText ())))#intValue ())));
        ignore (!colorRangeInterface#setMaxBlue (((string_of_int (((self#getMaxBlueJTextField ())#getText ())))#intValue ())));
        let xString : string ref = ref (((self#getColorAtXJTextField ())#getText ())) in ();
        if ((not ((StringValidationUtil.getInstance ())#isEmpty (!xString))) && ((StringValidationUtil.getInstance ())#isNumber (!xString))) then begin
            (colorAtActionScriptConditionInterface#getPoint ())#set_x ((int_of_string (!xString)))
        end;
        let yString : string ref = ref (((self#getColorAtYJTextField ())#getText ())) in ();
        if ((not ((StringValidationUtil.getInstance ())#isEmpty (!yString))) && ((StringValidationUtil.getInstance ())#isNumber (!yString))) then begin
            (colorAtActionScriptConditionInterface#getPoint ())#set_y ((int_of_string (!xString)))
        end;
        ignore (colorAtActionScriptConditionInterface#log ())
        end [@@warning "-7"]
    

    method getColorAtXJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic colorAtXJTextField)))
        end [@@warning "-7"]
    

    method setColorAtXJTextField : 'any1. 'any1 -> unit = fun (colorAtXJTextField_arg) ->
        let colorAtXJTextField_arg = Obj.repr colorAtXJTextField_arg in
        begin
        colorAtXJTextField <- Obj.repr ((Obj.magic colorAtXJTextField_arg))
        end [@@warning "-7-20"]
    

    method getColorAtYJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic colorAtYJTextField)))
        end [@@warning "-7"]
    

    method setColorAtYJTextField : 'any1. 'any1 -> unit = fun (colorAtYJTextField_arg) ->
        let colorAtYJTextField_arg = Obj.repr colorAtYJTextField_arg in
        begin
        colorAtYJTextField <- Obj.repr ((Obj.magic colorAtYJTextField_arg))
        end [@@warning "-7-20"]
    

    method getMaxBlueJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic maxBlueJTextField)))
        end [@@warning "-7"]
    

    method setMaxBlueJTextField : 'any1. 'any1 -> unit = fun (maxBlueJTextField_arg) ->
        let maxBlueJTextField_arg = Obj.repr maxBlueJTextField_arg in
        begin
        maxBlueJTextField <- Obj.repr ((Obj.magic maxBlueJTextField_arg))
        end [@@warning "-7-20"]
    

    method getMaxGreenJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic maxGreenJTextField)))
        end [@@warning "-7"]
    

    method setMaxGreenJTextField : 'any1. 'any1 -> unit = fun (maxGreenJTextField_arg) ->
        let maxGreenJTextField_arg = Obj.repr maxGreenJTextField_arg in
        begin
        maxGreenJTextField <- Obj.repr ((Obj.magic maxGreenJTextField_arg))
        end [@@warning "-7-20"]
    

    method getMaxRedJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic maxRedJTextField)))
        end [@@warning "-7"]
    

    method setMaxRedJTextField : 'any1. 'any1 -> unit = fun (maxRedJTextField_arg) ->
        let maxRedJTextField_arg = Obj.repr maxRedJTextField_arg in
        begin
        maxRedJTextField <- Obj.repr ((Obj.magic maxRedJTextField_arg))
        end [@@warning "-7-20"]
    

    method getMinBlueJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic minBlueJTextField)))
        end [@@warning "-7"]
    

    method setMinBlueJTextField : 'any1. 'any1 -> unit = fun (minBlueJTextField_arg) ->
        let minBlueJTextField_arg = Obj.repr minBlueJTextField_arg in
        begin
        minBlueJTextField <- Obj.repr ((Obj.magic minBlueJTextField_arg))
        end [@@warning "-7-20"]
    

    method getMinGreenJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic minGreenJTextField)))
        end [@@warning "-7"]
    

    method setMinGreenJTextField : 'any1. 'any1 -> unit = fun (minGreenJTextField_arg) ->
        let minGreenJTextField_arg = Obj.repr minGreenJTextField_arg in
        begin
        minGreenJTextField <- Obj.repr ((Obj.magic minGreenJTextField_arg))
        end [@@warning "-7-20"]
    

    method getMinRedJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic minRedJTextField)))
        end [@@warning "-7"]
    

    method setMinRedJTextField : 'any1. 'any1 -> unit = fun (minRedJTextField_arg) ->
        let minRedJTextField_arg = Obj.repr minRedJTextField_arg in
        begin
        minRedJTextField <- Obj.repr ((Obj.magic minRedJTextField_arg))
        end [@@warning "-7-20"]
    

    method getYJLabel : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic yJLabel)))
        end [@@warning "-7"]
    

    method setYJLabel : 'any1. 'any1 -> unit = fun (yJLabel_arg) ->
        let yJLabel_arg = Obj.repr yJLabel_arg in
        begin
        yJLabel <- Obj.repr ((Obj.magic yJLabel_arg))
        end [@@warning "-7-20"]
    

    method getColorAtActionJDialog : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic colorAtActionJDialog)))
        end [@@warning "-7"]
    

    method setColorAtActionJDialog : 'any1. 'any1 -> unit = fun (colorAtActionJDialog_arg) ->
        let colorAtActionJDialog_arg = Obj.repr colorAtActionJDialog_arg in
        begin
        colorAtActionJDialog <- Obj.repr ((Obj.magic colorAtActionJDialog_arg))
        end [@@warning "-7-20"]
    

    method initComponents () : unit =
        begin
        colorAtActionJDialog <- Obj.repr ((new JDialog.jDialog ()));
        titleJLabel <- Obj.repr ((new JLabel.jLabel ()));
        locationJLabel <- Obj.repr ((new JLabel.jLabel ()));
        colorAtXJTextField <- Obj.repr ((new JTextField.jTextField ()));
        xJLabel <- Obj.repr ((new JLabel.jLabel ()));
        yJLabel <- Obj.repr ((new JLabel.jLabel ()));
        colorAtYJTextField <- Obj.repr ((new JTextField.jTextField ()));
        colorRangeJLabel <- Obj.repr ((new JLabel.jLabel ()));
        redJLabel <- Obj.repr ((new JLabel.jLabel ()));
        minJLabel <- Obj.repr ((new JLabel.jLabel ()));
        maxJLabel <- Obj.repr ((new JLabel.jLabel ()));
        greenJLabel <- Obj.repr ((new JLabel.jLabel ()));
        blueJLabel <- Obj.repr ((new JLabel.jLabel ()));
        minRedJTextField <- Obj.repr ((new JTextField.jTextField ()));
        maxRedJTextField <- Obj.repr ((new JTextField.jTextField ()));
        maxGreenJTextField <- Obj.repr ((new JTextField.jTextField ()));
        minBlueJTextField <- Obj.repr ((new JTextField.jTextField ()));
        maxBlueJTextField <- Obj.repr ((new JTextField.jTextField ()));
        okJButton <- Obj.repr ((new JButton.jButton ()));
        minGreenJTextField <- Obj.repr ((new JTextField.jTextField ()));
        colorAtActionJButton <- Obj.repr ((new JButton.jButton ()));
        jLabel1 <- Obj.repr ((new JLabel.jLabel ()));
        ignore ((Obj.magic colorAtActionJDialog)#setMinimumSize ((new Dimension.dimension (350, 250))));
        ignore ((Obj.magic titleJLabel)#setText ("              Color At Action Options            "));
        ignore ((Obj.magic locationJLabel)#setText ("Location:"));
        ignore ((Obj.magic xJLabel)#setText ("X:"));
        ignore ((Obj.magic yJLabel)#setText ("Y:"));
        ignore ((Obj.magic colorRangeJLabel)#setText ("Color Range"));
        ignore ((Obj.magic redJLabel)#setText ("Red:"));
        ignore ((Obj.magic minJLabel)#setText ("Minimum"));
        ignore ((Obj.magic maxJLabel)#setText ("Maximum"));
        ignore ((Obj.magic greenJLabel)#setText ("Green:"));
        ignore ((Obj.magic blueJLabel)#setText ("Blue:"));
        ignore ((Obj.magic okJButton)#setText ("OK"));
        ignore ((Obj.magic okJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#okJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        let colorAtActionJDialogLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (((Obj.magic colorAtActionJDialog)#getContentPane ()))))) in ();
        ignore (((Obj.magic colorAtActionJDialog)#getContentPane ())#setLayout ((Obj.magic !colorAtActionJDialogLayout)));
        ignore ((Obj.magic !colorAtActionJDialogLayout)#setHorizontalGroup ((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !colorAtActionJDialogLayout)#createSequentialGroup ())#addContainerGap ())#addGroup (((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((((((Obj.magic !colorAtActionJDialogLayout)#createSequentialGroup ())#addGroup (((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING))#addComponent ((Obj.magic okJButton)))#addGroup ((((((Obj.magic !colorAtActionJDialogLayout)#createSequentialGroup ())#addGroup (((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING, false))#addGroup (((((Obj.magic !colorAtActionJDialogLayout)#createSequentialGroup ())#addGroup (((((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic blueJLabel)))#addComponent ((Obj.magic greenJLabel)))#addComponent ((Obj.magic redJLabel)))#addComponent ((Obj.magic colorRangeJLabel)))))#addGap (29, 29, 29))))#addGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING, ((((((Obj.magic !colorAtActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic locationJLabel)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))#addComponent ((Obj.magic xJLabel)))#addGap (18, 18, 18))))))#addGroup ((((((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addComponent ((Obj.magic minBlueJTextField), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 40, 32767))#addComponent ((Obj.magic minGreenJTextField), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 40, 32767))#addComponent ((Obj.magic minJLabel), (javax.get_swing ())#groupLayout#alignment#tRAILING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))#addComponent ((Obj.magic minRedJTextField), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 40, 32767))#addComponent ((Obj.magic colorAtXJTextField), (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 40, 32767))))#addGap (16, 16, 16))))))#addGap (6, 6, 6))#addComponent ((Obj.magic yJLabel)))#addGap (24, 24, 24))#addGroup ((((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING))#addComponent ((Obj.magic maxJLabel), (javax.get_swing ())#groupLayout#alignment#lEADING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 32767))#addGroup ((javax.get_swing ())#groupLayout#alignment#lEADING, ((((Obj.magic !colorAtActionJDialogLayout)#createSequentialGroup ())#addGap (1, 1, 1))#addGroup ((((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING, false))#addComponent ((Obj.magic maxBlueJTextField), (javax.get_swing ())#groupLayout#alignment#tRAILING))#addComponent ((Obj.magic maxRedJTextField), (javax.get_swing ())#groupLayout#alignment#tRAILING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 43, 32767))#addComponent ((Obj.magic maxGreenJTextField), (javax.get_swing ())#groupLayout#alignment#tRAILING, (javax.get_swing ())#groupLayout#pREFERRED_SIZE, 43, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))))#addComponent ((Obj.magic colorAtYJTextField), (javax.get_swing ())#groupLayout#alignment#lEADING, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, 44, 32767))))#addGap (22, 22, 22))))#addGroup ((javax.get_swing ())#groupLayout#alignment#tRAILING, ((((Obj.magic !colorAtActionJDialogLayout)#createSequentialGroup ())#addComponent ((Obj.magic titleJLabel)))#addGap (33, 33, 33))))))))));
        ignore ((Obj.magic !colorAtActionJDialogLayout)#setVerticalGroup ((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((((Obj.magic !colorAtActionJDialogLayout)#createSequentialGroup ())#addContainerGap ())#addComponent ((Obj.magic titleJLabel)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((((((((((((Obj.magic !colorAtActionJDialogLayout)#createSequentialGroup ())#addGap (15, 15, 15))#addGroup (((((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic xJLabel)))#addComponent ((Obj.magic locationJLabel)))#addComponent ((Obj.magic colorAtXJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addComponent ((Obj.magic yJLabel)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic minJLabel)))#addComponent ((Obj.magic colorRangeJLabel)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic minRedJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addComponent ((Obj.magic redJLabel)))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic greenJLabel)))#addComponent ((Obj.magic minGreenJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addGroup (((((Obj.magic !colorAtActionJDialogLayout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic blueJLabel)))#addComponent ((Obj.magic minBlueJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, 17, 32767))#addComponent ((Obj.magic okJButton)))))#addGroup (((((((((((((Obj.magic !colorAtActionJDialogLayout)#createSequentialGroup ())#addGap (14, 14, 14))#addComponent ((Obj.magic colorAtYJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic maxJLabel)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic maxRedJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic maxGreenJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED))#addComponent ((Obj.magic maxBlueJTextField), (javax.get_swing ())#groupLayout#pREFERRED_SIZE, (javax.get_swing ())#groupLayout#dEFAULT_SIZE, (javax.get_swing ())#groupLayout#pREFERRED_SIZE))))))#addContainerGap ())))));
        ignore (self#setPreferredSize ((new Dimension.dimension (100, 0))));
        ignore ((Obj.magic colorAtActionJButton)#setText ("Edit"));
        ignore ((Obj.magic colorAtActionJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#colorAtActionJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic jLabel1)#setText ("Color At:"));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic jLabel1)))#addPreferredGap ((javax.get_swing ())#layoutStyle#componentPlacement#rELATED, 15, 32767))#addComponent ((Obj.magic colorAtActionJButton)))))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#bASELINE))#addComponent ((Obj.magic jLabel1)))#addComponent ((Obj.magic colorAtActionJButton)))))))
        end [@@warning "-7"]
    

    method okJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#update ());
        ignore ((self#getColorAtActionJDialog ())#setVisible (false))
        end [@@warning "-7-20"]
    

    method colorAtActionJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ignore ((self#getColorAtActionJDialog ())#setVisible (true))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        blueJLabel <- (Obj.repr (Obj.magic 0));
        colorAtActionJButton <- (Obj.repr (Obj.magic 0));
        colorAtActionJDialog <- (Obj.repr (Obj.magic 0));
        colorAtXJTextField <- (Obj.repr (Obj.magic 0));
        colorAtYJTextField <- (Obj.repr (Obj.magic 0));
        colorRangeJLabel <- (Obj.repr (Obj.magic 0));
        greenJLabel <- (Obj.repr (Obj.magic 0));
        jLabel1 <- (Obj.repr (Obj.magic 0));
        locationJLabel <- (Obj.repr (Obj.magic 0));
        maxBlueJTextField <- (Obj.repr (Obj.magic 0));
        maxGreenJTextField <- (Obj.repr (Obj.magic 0));
        maxJLabel <- (Obj.repr (Obj.magic 0));
        maxRedJTextField <- (Obj.repr (Obj.magic 0));
        minBlueJTextField <- (Obj.repr (Obj.magic 0));
        minGreenJTextField <- (Obj.repr (Obj.magic 0));
        minJLabel <- (Obj.repr (Obj.magic 0));
        minRedJTextField <- (Obj.repr (Obj.magic 0));
        okJButton <- (Obj.repr (Obj.magic 0));
        redJLabel <- (Obj.repr (Obj.magic 0));
        titleJLabel <- (Obj.repr (Obj.magic 0));
        xJLabel <- (Obj.repr (Obj.magic 0));
        yJLabel <- (Obj.repr (Obj.magic 0));
        ();
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
        (self#initComponents ());
        colorAtActionScriptConditionInterface <- colorAtActionScriptConditionInterface_arg;
        (self#set ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "ColorAtActionScriptConditionJPanel" (fun arguments -> Obj.repr (new colorAtActionScriptConditionJPanel (Obj.obj arguments)))


