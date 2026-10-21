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
(* import java.util.Arrays *)
(* import java.util.Comparator *)
(* import javax.imageio.ImageIO *)
(* import org.allbinary.gui.dialog.FileJDialog *)
(* import org.allbinary.gui.dialog.FileJDialogListenerInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.media.image.ImageProcessorInput *)
(* import org.allbinary.media.image.ImageProcessorInputCompositeInterface *)
(* import org.allbinary.media.image.analysis.ColorRange *)
(* import org.allbinary.media.image.analysis.ColorRangeInterface *)
(* import org.allbinary.media.image.analysis.ImageAnalysis *)
(* import org.allbinary.media.image.analysis.ImageAnalysisResults *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonStrings *)

let imageProcessorInputCompositeInterface : ImageProcessorInputCompositeInterface.imageProcessorInputCompositeInterface ref = ref (((Obj.magic 0) :> ImageProcessorInputCompositeInterface.imageProcessorInputCompositeInterface))
let get_imageProcessorInputCompositeInterface () = !imageProcessorInputCompositeInterface
let set_imageProcessorInputCompositeInterface value' = imageProcessorInputCompositeInterface := value'
let () = java_register_static "ImageToolJFrame.get_imageProcessorInputCompositeInterface" (fun _ -> Obj.repr (get_imageProcessorInputCompositeInterface ()))
class imageToolJFrame () =
  object (self)
    inherit JFrame.jFrame ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable fileJDialog : FileJDialog.fileJDialog = (Obj.magic 0)
    method fileJDialog = fileJDialog
    method set_fileJDialog value' = fileJDialog <- value'
    val mutable imageProcessorInput : ImageProcessorInput.imageProcessorInput = (Obj.magic 0)
    method imageProcessorInput = imageProcessorInput
    method set_imageProcessorInput value' = imageProcessorInput <- value'
    val mutable analysisActionJDialog : Obj.t = Obj.repr 0
    method analysisActionJDialog : 'r. 'r = Obj.magic analysisActionJDialog
    method set_analysisActionJDialog : 'v. 'v -> unit = fun value' -> analysisActionJDialog <- Obj.repr value'
    val mutable analyzeJMenuItem : Obj.t = Obj.repr 0
    method analyzeJMenuItem : 'r. 'r = Obj.magic analyzeJMenuItem
    method set_analyzeJMenuItem : 'v. 'v -> unit = fun value' -> analyzeJMenuItem <- Obj.repr value'
    val mutable blueJLabel : Obj.t = Obj.repr 0
    method blueJLabel : 'r. 'r = Obj.magic blueJLabel
    method set_blueJLabel : 'v. 'v -> unit = fun value' -> blueJLabel <- Obj.repr value'
    val mutable colorRangeJLabel : Obj.t = Obj.repr 0
    method colorRangeJLabel : 'r. 'r = Obj.magic colorRangeJLabel
    method set_colorRangeJLabel : 'v. 'v -> unit = fun value' -> colorRangeJLabel <- Obj.repr value'
    val mutable createStripImageJMenuItem : Obj.t = Obj.repr 0
    method createStripImageJMenuItem : 'r. 'r = Obj.magic createStripImageJMenuItem
    method set_createStripImageJMenuItem : 'v. 'v -> unit = fun value' -> createStripImageJMenuItem <- Obj.repr value'
    val mutable fileJMenu : Obj.t = Obj.repr 0
    method fileJMenu : 'r. 'r = Obj.magic fileJMenu
    method set_fileJMenu : 'v. 'v -> unit = fun value' -> fileJMenu <- Obj.repr value'
    val mutable generateSpriteSplitterMenuItem : Obj.t = Obj.repr 0
    method generateSpriteSplitterMenuItem : 'r. 'r = Obj.magic generateSpriteSplitterMenuItem
    method set_generateSpriteSplitterMenuItem : 'v. 'v -> unit = fun value' -> generateSpriteSplitterMenuItem <- Obj.repr value'
    val mutable generateRotationMenuItem : Obj.t = Obj.repr 0
    method generateRotationMenuItem : 'r. 'r = Obj.magic generateRotationMenuItem
    method set_generateRotationMenuItem : 'v. 'v -> unit = fun value' -> generateRotationMenuItem <- Obj.repr value'
    val mutable generateMirrorSpriteMenuItem : Obj.t = Obj.repr 0
    method generateMirrorSpriteMenuItem : 'r. 'r = Obj.magic generateMirrorSpriteMenuItem
    method set_generateMirrorSpriteMenuItem : 'v. 'v -> unit = fun value' -> generateMirrorSpriteMenuItem <- Obj.repr value'
    val mutable generateRotationSpriteJMenuItem : Obj.t = Obj.repr 0
    method generateRotationSpriteJMenuItem : 'r. 'r = Obj.magic generateRotationSpriteJMenuItem
    method set_generateRotationSpriteJMenuItem : 'v. 'v -> unit = fun value' -> generateRotationSpriteJMenuItem <- Obj.repr value'
    val mutable greenJLabel : Obj.t = Obj.repr 0
    method greenJLabel : 'r. 'r = Obj.magic greenJLabel
    method set_greenJLabel : 'v. 'v -> unit = fun value' -> greenJLabel <- Obj.repr value'
    val mutable jPanel1 : Obj.t = Obj.repr 0
    method jPanel1 : 'r. 'r = Obj.magic jPanel1
    method set_jPanel1 : 'v. 'v -> unit = fun value' -> jPanel1 <- Obj.repr value'
    val mutable mainJMenuBar : Obj.t = Obj.repr 0
    method mainJMenuBar : 'r. 'r = Obj.magic mainJMenuBar
    method set_mainJMenuBar : 'v. 'v -> unit = fun value' -> mainJMenuBar <- Obj.repr value'
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
    val mutable mirrorJMenuItem : Obj.t = Obj.repr 0
    method mirrorJMenuItem : 'r. 'r = Obj.magic mirrorJMenuItem
    method set_mirrorJMenuItem : 'v. 'v -> unit = fun value' -> mirrorJMenuItem <- Obj.repr value'
    val mutable okJButton : Obj.t = Obj.repr 0
    method okJButton : 'r. 'r = Obj.magic okJButton
    method set_okJButton : 'v. 'v -> unit = fun value' -> okJButton <- Obj.repr value'
    val mutable openImageJMenuItem : Obj.t = Obj.repr 0
    method openImageJMenuItem : 'r. 'r = Obj.magic openImageJMenuItem
    method set_openImageJMenuItem : 'v. 'v -> unit = fun value' -> openImageJMenuItem <- Obj.repr value'
    val mutable processingJMenu : Obj.t = Obj.repr 0
    method processingJMenu : 'r. 'r = Obj.magic processingJMenu
    method set_processingJMenu : 'v. 'v -> unit = fun value' -> processingJMenu <- Obj.repr value'
    val mutable redJLabel : Obj.t = Obj.repr 0
    method redJLabel : 'r. 'r = Obj.magic redJLabel
    method set_redJLabel : 'v. 'v -> unit = fun value' -> redJLabel <- Obj.repr value'
    val mutable scaleImagesJMenuItem : Obj.t = Obj.repr 0
    method scaleImagesJMenuItem : 'r. 'r = Obj.magic scaleImagesJMenuItem
    method set_scaleImagesJMenuItem : 'v. 'v -> unit = fun value' -> scaleImagesJMenuItem <- Obj.repr value'
    val mutable canvasImagesJMenuItem : Obj.t = Obj.repr 0
    method canvasImagesJMenuItem : 'r. 'r = Obj.magic canvasImagesJMenuItem
    method set_canvasImagesJMenuItem : 'v. 'v -> unit = fun value' -> canvasImagesJMenuItem <- Obj.repr value'
    val mutable createIconImagesJMenuItem : Obj.t = Obj.repr 0
    method createIconImagesJMenuItem : 'r. 'r = Obj.magic createIconImagesJMenuItem
    method set_createIconImagesJMenuItem : 'v. 'v -> unit = fun value' -> createIconImagesJMenuItem <- Obj.repr value'
    val mutable titleJLabel : Obj.t = Obj.repr 0
    method titleJLabel : 'r. 'r = Obj.magic titleJLabel
    method set_titleJLabel : 'v. 'v -> unit = fun value' -> titleJLabel <- Obj.repr value'
    
    

    method initComponents () : unit =
        begin
        analysisActionJDialog <- Obj.repr ((new JDialog.jDialog ()));
        titleJLabel <- Obj.repr ((new JLabel.jLabel ()));
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
        jPanel1 <- Obj.repr ((new JPanel.jPanel ()));
        mainJMenuBar <- Obj.repr ((new JMenuBar.jMenuBar ()));
        fileJMenu <- Obj.repr ((new JMenu.jMenu ()));
        openImageJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        processingJMenu <- Obj.repr ((new JMenu.jMenu ()));
        analyzeJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        generateSpriteSplitterMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        generateRotationMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        generateMirrorSpriteMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        generateRotationSpriteJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        createStripImageJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        mirrorJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        scaleImagesJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        canvasImagesJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        createIconImagesJMenuItem <- Obj.repr ((new JMenuItem.jMenuItem ()));
        ignore ((Obj.magic analysisActionJDialog)#setMinimumSize ((new Dimension.dimension (350, 250))));
        ignore ((Obj.magic titleJLabel)#setText ("              Color At Action Options            "));
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
        let analysisActionJDialogLayout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (((Obj.magic analysisActionJDialog)#getContentPane ()))))) in ();
        ignore (((Obj.magic analysisActionJDialog)#getContentPane ())#setLayout ((Obj.magic !analysisActionJDialogLayout)));
        ignore ((Obj.magic !analysisActionJDialogLayout)#setHorizontalGroup ((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add (((((Obj.magic !analysisActionJDialogLayout)#createSequentialGroup ())#addContainerGap ())#add (((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add (((((((((Obj.magic !analysisActionJDialogLayout)#createSequentialGroup ())#add (((((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add ((Obj.magic blueJLabel)))#add ((Obj.magic greenJLabel)))#add ((Obj.magic redJLabel)))#add ((Obj.magic colorRangeJLabel)))))#add (29, 29, 29))#add (((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add ((org.get_jdesktop ())#layout#groupLayout#tRAILING, (Obj.magic minJLabel), (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 58, 32767))#add (((((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#tRAILING, false))#add ((org.get_jdesktop ())#layout#groupLayout#lEADING, (Obj.magic minBlueJTextField)))#add ((org.get_jdesktop ())#layout#groupLayout#lEADING, (Obj.magic minGreenJTextField)))#add ((org.get_jdesktop ())#layout#groupLayout#lEADING, (Obj.magic minRedJTextField), (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 42, 32767))#add ((org.get_jdesktop ())#layout#groupLayout#lEADING, (Obj.magic okJButton)))))))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add (((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#tRAILING))#add ((org.get_jdesktop ())#layout#groupLayout#lEADING, ((((Obj.magic !analysisActionJDialogLayout)#createSequentialGroup ())#add (((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#tRAILING, false))#add ((org.get_jdesktop ())#layout#groupLayout#lEADING, (Obj.magic maxRedJTextField)))#add ((org.get_jdesktop ())#layout#groupLayout#lEADING, ((((Obj.magic !analysisActionJDialogLayout)#createSequentialGroup ())#add (1, 1, 1))#add (((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add ((Obj.magic maxBlueJTextField)))#add ((Obj.magic maxGreenJTextField), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, 43, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))))))))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED, 17, 32767))))#add ((org.get_jdesktop ())#layout#groupLayout#lEADING, (Obj.magic maxJLabel), (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 61, 32767))))#addContainerGap ())))#add ((org.get_jdesktop ())#layout#groupLayout#tRAILING, ((((Obj.magic !analysisActionJDialogLayout)#createSequentialGroup ())#add ((Obj.magic titleJLabel)))#add (25, 25, 25))))))))));
        ignore ((Obj.magic !analysisActionJDialogLayout)#setVerticalGroup ((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#lEADING))#add (((((((((((((((Obj.magic !analysisActionJDialogLayout)#createSequentialGroup ())#add ((Obj.magic titleJLabel)))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add ((((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#bASELINE))#add ((Obj.magic minJLabel)))#add ((Obj.magic colorRangeJLabel)))#add ((Obj.magic maxJLabel)))))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add (((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#tRAILING))#add ((Obj.magic redJLabel)))#add (((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#bASELINE))#add ((Obj.magic minRedJTextField), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))#add ((Obj.magic maxRedJTextField), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))))))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add (((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#tRAILING))#add ((Obj.magic greenJLabel)))#add (((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#bASELINE))#add ((Obj.magic minGreenJTextField), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))#add ((Obj.magic maxGreenJTextField), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))))))#addPreferredGap ((org.get_jdesktop ())#layout#layoutStyle#rELATED))#add (((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#tRAILING))#add ((Obj.magic blueJLabel)))#add (((((Obj.magic !analysisActionJDialogLayout)#createParallelGroup ((org.get_jdesktop ())#layout#groupLayout#bASELINE))#add ((Obj.magic minBlueJTextField), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))#add ((Obj.magic maxBlueJTextField), (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE, (org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, (org.get_jdesktop ())#layout#groupLayout#pREFERRED_SIZE))))))#add (16, 16, 16))#add ((Obj.magic okJButton)))#addContainerGap ((org.get_jdesktop ())#layout#groupLayout#dEFAULT_SIZE, 32767))))));
        ignore (self#setDefaultCloseOperation ((javax.get_swing ())#windowConstants#eXIT_ON_CLOSE));
        ignore ((self#getContentPane ())#setLayout ((new GridLayout.gridLayout (1, 0))));
        ignore ((Obj.magic jPanel1)#setLayout ((new GridLayout.gridLayout (1, 0))));
        ignore ((self#getContentPane ())#add ((Obj.magic jPanel1)));
        ignore ((Obj.magic fileJMenu)#setText ("File"));
        ignore ((Obj.magic fileJMenu)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#fileJMenuActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic openImageJMenuItem)#setText ("Open"));
        ignore ((Obj.magic openImageJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#openImageJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic fileJMenu)#add ((Obj.magic openImageJMenuItem)));
        ignore ((Obj.magic mainJMenuBar)#add ((Obj.magic fileJMenu)));
        ignore ((Obj.magic processingJMenu)#setText ("Processing"));
        ignore ((Obj.magic processingJMenu)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#processingJMenuActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic analyzeJMenuItem)#setText ("Image Analyze"));
        ignore ((Obj.magic analyzeJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#analyzeJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic processingJMenu)#add ((Obj.magic analyzeJMenuItem)));
        ignore ((Obj.magic generateMirrorSpriteMenuItem)#setText ("Mirror Sprite Generator"));
        ignore ((Obj.magic generateMirrorSpriteMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#generateMirrorSpriteMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic processingJMenu)#add ((Obj.magic generateMirrorSpriteMenuItem)));
        ignore ((Obj.magic generateRotationSpriteJMenuItem)#setText ("Rotation Sprite Generator"));
        ignore ((Obj.magic generateRotationSpriteJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#generateRotationSpriteJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic processingJMenu)#add ((Obj.magic generateRotationSpriteJMenuItem)));
        ignore ((Obj.magic generateSpriteSplitterMenuItem)#setText ("Sprite Splitter Generator"));
        ignore ((Obj.magic generateSpriteSplitterMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#generateSpriteSplitterMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic processingJMenu)#add ((Obj.magic generateSpriteSplitterMenuItem)));
        ignore ((Obj.magic generateRotationMenuItem)#setText ("Rotate Image Generator"));
        ignore ((Obj.magic generateRotationMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#generateRotationMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic processingJMenu)#add ((Obj.magic generateRotationMenuItem)));
        ignore ((Obj.magic createStripImageJMenuItem)#setText ("Multi Image Unifier"));
        ignore ((Obj.magic createStripImageJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#createStripImageJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic processingJMenu)#add ((Obj.magic createStripImageJMenuItem)));
        ignore ((Obj.magic mirrorJMenuItem)#setText ("Mirror Image(s)"));
        ignore ((Obj.magic mirrorJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#mirrorJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic processingJMenu)#add ((Obj.magic mirrorJMenuItem)));
        ignore ((Obj.magic scaleImagesJMenuItem)#setText ("Scale Image(s)"));
        ignore ((Obj.magic scaleImagesJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#scaleImagesJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic processingJMenu)#add ((Obj.magic scaleImagesJMenuItem)));
        ignore ((Obj.magic canvasImagesJMenuItem)#setText ("Canvas Image(s)"));
        ignore ((Obj.magic canvasImagesJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#canvasImagesJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic processingJMenu)#add ((Obj.magic canvasImagesJMenuItem)));
        ignore ((Obj.magic createIconImagesJMenuItem)#setText ("Create Icon Image(s)"));
        ignore ((Obj.magic createIconImagesJMenuItem)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#createIconsJMenuItemActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        ignore ((Obj.magic processingJMenu)#add ((Obj.magic createIconImagesJMenuItem)));
        ignore ((Obj.magic mainJMenuBar)#add ((Obj.magic processingJMenu)));
        ignore (self#setJMenuBar ((Obj.magic mainJMenuBar)));
        ignore (self#pack ())
        end [@@warning "-7"]
    

    method createStripImageJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            let imageUnifierJPanel : ImageUnifierJPanel.imageUnifierJPanel ref = ref (((new ImageUnifierJPanel.imageUnifierJPanel (imageProcessorInput)) :> ImageUnifierJPanel.imageUnifierJPanel)) in ();
            ignore ((Obj.magic jPanel1)#removeAll ());
            ignore ((Obj.magic jPanel1)#add (!imageUnifierJPanel));
            ignore ((Obj.magic jPanel1)#updateUI ());
            imageProcessorInputCompositeInterface := !imageUnifierJPanel
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "createStripImageJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method okJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Obj.magic logUtil)#putF ("Starting", self, "okJButtonActionPerformed"));
            let imageAnalysisResultsArray : ImageAnalysisResults.imageAnalysisResults array ref = ref (((ImageAnalysis.getInstance ())#process ((imageProcessorInput#getBufferedImageArray ()), (self#getColorRangeInterface ())))) in ();
            ignore ((Obj.magic jPanel1)#removeAll ());
            ignore ((Obj.magic jPanel1)#add ((new ImageAnalysisResultsJPanel.imageAnalysisResultsJPanel (!imageAnalysisResultsArray))));
            ignore ((Obj.magic jPanel1)#updateUI ());
            ignore ((Obj.magic analysisActionJDialog)#setVisible (false));
            imageProcessorInputCompositeInterface := (Obj.magic 0)
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "okJButtonActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method processingJMenuActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method openImageJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Obj.magic logUtil)#putF ("Starting", self, "openImageJMenuItemActionPerformed"));
            ignore (fileJDialog#setVisible (true))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "openImageJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method onFiles (files) : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF ((("Reading " ^ java_string_of (Obj.repr ((Array.length files)))) ^ " files."), self, "onFiles"));
            ignore (Arrays.sort (files, (object (self)
                inherit Comparator.comparator () as super
                

                method compare : 'any1 'any2. 'any1 * 'any2 -> int = fun (file1, file2) ->
                    let file1 = Obj.repr file1 in
                    let file2 = Obj.repr file2 in
                    begin
                    let fileNameIndexValue1 : int ref = ref ((self#extractIndexNumberIfAnyFromFileName (((Obj.magic file1)#getName ())))) in ();
                    let fileNameIndexValue2 : int ref = ref ((self#extractIndexNumberIfAnyFromFileName (((Obj.magic file2)#getName ())))) in ();
                    (!fileNameIndexValue1 - !fileNameIndexValue2)
                    end [@@warning "-20"]
                

                method extractIndexNumberIfAnyFromFileName ((name : string)) : int =
                    begin
                    let i : int ref = ref (0) in ();
                    (try
                        let start : int ref = ref (((java_string_last_index_of name (Obj.repr ('_'))) + 1)) in ();
                        let end_ : int ref = ref ((java_string_last_index_of name (Obj.repr ('.')))) in ();
                        let number : string ref = ref ((String.sub name (!start) ((!end_) - (!start)))) in ();
                        i := (int_of_string (!number))
                    with e -> begin
                        i := 0
                    end);
                    !i
                    end
            end)));
            let bufferedImageArray : Obj.t ref = ref ((Obj.repr (Array.make ((Array.length files)) (Obj.magic 0)))) in ();
            for index = 0 to (Array.length files) - 1 do
                (Obj.magic !bufferedImageArray).(index) <- (ImageIO.read (files.(index)));
                if ((Obj.magic !bufferedImageArray).(index) == (Obj.magic 0)) then begin
                    raise (Failure (("Unable to read file: " ^ java_string_of (Obj.repr ((files.(index)#getPath ()))))))
                end
            done;
            imageProcessorInput <- (new ImageProcessorInput.imageProcessorInput (files, (Obj.magic !bufferedImageArray)));
            ignore (fileJDialog#setVisible (false));
            if (!imageProcessorInputCompositeInterface != (Obj.magic 0)) then begin
                ignore (!imageProcessorInputCompositeInterface#setImageProcessorInput (imageProcessorInput))
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "onFiles", e))
        end)
        end [@@warning "-7"]
    

    method fileJMenuActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method analyzeJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Obj.magic logUtil)#putF ("Starting", self, "analyzeJMenuItemActionPerformed"));
            ignore ((Obj.magic analysisActionJDialog)#setVisible (true))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "analyzeJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method generateRotationSpriteJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Obj.magic logUtil)#putF ("Starting", self, "generateRotationSpriteJMenuItemActionPerformed"));
            let spriteImageJPanel : RotationSpriteImageJPanel.rotationSpriteImageJPanel ref = ref (((new RotationSpriteImageJPanel.rotationSpriteImageJPanel (imageProcessorInput)) :> RotationSpriteImageJPanel.rotationSpriteImageJPanel)) in ();
            ignore ((Obj.magic jPanel1)#removeAll ());
            ignore ((Obj.magic jPanel1)#add (!spriteImageJPanel));
            ignore ((Obj.magic jPanel1)#updateUI ());
            imageProcessorInputCompositeInterface := !spriteImageJPanel
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "generateRotationSpriteJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method generateSpriteSplitterMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Obj.magic logUtil)#putF ("Starting", self, "generateRotationSpriteJMenuItemActionPerformed"));
            let imageJPanel : SpriteSplitterImageJPanel.spriteSplitterImageJPanel ref = ref (((new SpriteSplitterImageJPanel.spriteSplitterImageJPanel (imageProcessorInput)) :> SpriteSplitterImageJPanel.spriteSplitterImageJPanel)) in ();
            ignore ((Obj.magic jPanel1)#removeAll ());
            ignore ((Obj.magic jPanel1)#add (!imageJPanel));
            ignore ((Obj.magic jPanel1)#updateUI ());
            imageProcessorInputCompositeInterface := !imageJPanel
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "generateRotationMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method generateRotationMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Obj.magic logUtil)#putF ("Starting", self, "generateRotationSpriteJMenuItemActionPerformed"));
            let rotationImageJPanel : RotationImageJPanel.rotationImageJPanel ref = ref (((new RotationImageJPanel.rotationImageJPanel (imageProcessorInput)) :> RotationImageJPanel.rotationImageJPanel)) in ();
            ignore ((Obj.magic jPanel1)#removeAll ());
            ignore ((Obj.magic jPanel1)#add (!rotationImageJPanel));
            ignore ((Obj.magic jPanel1)#updateUI ());
            imageProcessorInputCompositeInterface := !rotationImageJPanel
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "generateRotationMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method scaleImagesJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "scaleImagesJMenuItemActionPerformed"));
            let resizeImageJPanel : ResizeImageJPanel.resizeImageJPanel ref = ref (((new ResizeImageJPanel.resizeImageJPanel (imageProcessorInput)) :> ResizeImageJPanel.resizeImageJPanel)) in ();
            ignore ((Obj.magic jPanel1)#removeAll ());
            ignore ((Obj.magic jPanel1)#add (!resizeImageJPanel));
            ignore ((Obj.magic jPanel1)#updateUI ());
            imageProcessorInputCompositeInterface := !resizeImageJPanel
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "scaleImagesJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method createIconsJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "createIconsJMenuItemActionPerformed"));
            let createIconImagesJPanel : CreateIconImagesJPanel.createIconImagesJPanel ref = ref (((new CreateIconImagesJPanel.createIconImagesJPanel (imageProcessorInput)) :> CreateIconImagesJPanel.createIconImagesJPanel)) in ();
            ignore ((Obj.magic jPanel1)#removeAll ());
            ignore ((Obj.magic jPanel1)#add (!createIconImagesJPanel));
            ignore ((Obj.magic jPanel1)#updateUI ());
            imageProcessorInputCompositeInterface := !createIconImagesJPanel
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "scaleImagesJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method canvasImagesJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "canvasImagesJMenuItemActionPerformed"));
            let resizeImageJPanel : CanvasImageJPanel.canvasImageJPanel ref = ref (((new CanvasImageJPanel.canvasImageJPanel (imageProcessorInput)) :> CanvasImageJPanel.canvasImageJPanel)) in ();
            ignore ((Obj.magic jPanel1)#removeAll ());
            ignore ((Obj.magic jPanel1)#add (!resizeImageJPanel));
            ignore ((Obj.magic jPanel1)#updateUI ());
            imageProcessorInputCompositeInterface := !resizeImageJPanel
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "scaleImagesJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method generateMirrorSpriteMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Obj.magic logUtil)#putF ("Starting", self, "generateMirrorSpriteJMenuItemActionPerformed"));
            let spriteImageJPanel : MirrorSpriteImageJPanel.mirrorSpriteImageJPanel ref = ref (((new MirrorSpriteImageJPanel.mirrorSpriteImageJPanel (imageProcessorInput)) :> MirrorSpriteImageJPanel.mirrorSpriteImageJPanel)) in ();
            ignore ((Obj.magic jPanel1)#removeAll ());
            ignore ((Obj.magic jPanel1)#add (!spriteImageJPanel));
            ignore ((Obj.magic jPanel1)#updateUI ());
            imageProcessorInputCompositeInterface := !spriteImageJPanel
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "generateMirrorSpriteJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method mirrorJMenuItemActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (try
            ignore ((Obj.magic logUtil)#putF ("Starting", self, "generateMirrorJMenuItemActionPerformed"));
            let mirrorImageJPanel : MirrorImageJPanel.mirrorImageJPanel ref = ref (((new MirrorImageJPanel.mirrorImageJPanel (imageProcessorInput)) :> MirrorImageJPanel.mirrorImageJPanel)) in ();
            ignore ((Obj.magic jPanel1)#removeAll ());
            ignore ((Obj.magic jPanel1)#add (!mirrorImageJPanel));
            ignore ((Obj.magic jPanel1)#updateUI ());
            imageProcessorInputCompositeInterface := !mirrorImageJPanel
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "generateMirrorJMenuItemActionPerformed", e))
        end)
        end [@@warning "-7-20"]
    

    method getColorRangeInterface () : ColorRangeInterface.colorRangeInterface =
        begin
        let colorRangeInterface : ColorRangeInterface.colorRangeInterface ref = ref (((Obj.magic (new ColorRange.colorRange ())) :> ColorRangeInterface.colorRangeInterface)) in ();
        ignore (!colorRangeInterface#setMinRed (((Obj.obj (java_new "Integer" (Obj.repr (((self#getMinRedJTextField ())#getText ())))))#intValue ())));
        ignore (!colorRangeInterface#setMaxRed (((Obj.obj (java_new "Integer" (Obj.repr (((self#getMaxRedJTextField ())#getText ())))))#intValue ())));
        ignore (!colorRangeInterface#setMinGreen (((Obj.obj (java_new "Integer" (Obj.repr (((self#getMinGreenJTextField ())#getText ())))))#intValue ())));
        ignore (!colorRangeInterface#setMaxGreen (((Obj.obj (java_new "Integer" (Obj.repr (((self#getMaxGreenJTextField ())#getText ())))))#intValue ())));
        ignore (!colorRangeInterface#setMinBlue (((Obj.obj (java_new "Integer" (Obj.repr (((self#getMinBlueJTextField ())#getText ())))))#intValue ())));
        ignore (!colorRangeInterface#setMaxBlue (((Obj.obj (java_new "Integer" (Obj.repr (((self#getMaxBlueJTextField ())#getText ())))))#intValue ())));
        (!colorRangeInterface :> ColorRangeInterface.colorRangeInterface)
        end [@@warning "-7"]
    

    method getMaxBlueJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic maxBlueJTextField)))
        end [@@warning "-7"]
    

    method setMaxBlueJTextField : 'any1. 'any1 -> unit = fun (_maxBlueJTextField_arg) ->
        begin
        maxBlueJTextField <- Obj.repr ((Obj.magic maxBlueJTextField))
        end [@@warning "-7-20"]
    

    method getMaxGreenJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic maxGreenJTextField)))
        end [@@warning "-7"]
    

    method setMaxGreenJTextField : 'any1. 'any1 -> unit = fun (_maxGreenJTextField_arg) ->
        begin
        maxGreenJTextField <- Obj.repr ((Obj.magic maxGreenJTextField))
        end [@@warning "-7-20"]
    

    method getMaxRedJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic maxRedJTextField)))
        end [@@warning "-7"]
    

    method setMaxRedJTextField : 'any1. 'any1 -> unit = fun (_maxRedJTextField_arg) ->
        begin
        maxRedJTextField <- Obj.repr ((Obj.magic maxRedJTextField))
        end [@@warning "-7-20"]
    

    method getMinBlueJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic minBlueJTextField)))
        end [@@warning "-7"]
    

    method setMinBlueJTextField : 'any1. 'any1 -> unit = fun (_minBlueJTextField_arg) ->
        begin
        minBlueJTextField <- Obj.repr ((Obj.magic minBlueJTextField))
        end [@@warning "-7-20"]
    

    method getMinGreenJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic minGreenJTextField)))
        end [@@warning "-7"]
    

    method setMinGreenJTextField : 'any1. 'any1 -> unit = fun (_minGreenJTextField_arg) ->
        begin
        minGreenJTextField <- Obj.repr ((Obj.magic minGreenJTextField))
        end [@@warning "-7-20"]
    

    method getMinRedJTextField : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic minRedJTextField)))
        end [@@warning "-7"]
    

    method setMinRedJTextField : 'any1. 'any1 -> unit = fun (_minRedJTextField_arg) ->
        begin
        minRedJTextField <- Obj.repr ((Obj.magic minRedJTextField))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        imageProcessorInput <- ((Obj.magic 0) :> ImageProcessorInput.imageProcessorInput);
        analysisActionJDialog <- (Obj.repr (Obj.magic 0));
        analyzeJMenuItem <- (Obj.repr (Obj.magic 0));
        blueJLabel <- (Obj.repr (Obj.magic 0));
        colorRangeJLabel <- (Obj.repr (Obj.magic 0));
        createStripImageJMenuItem <- (Obj.repr (Obj.magic 0));
        fileJMenu <- (Obj.repr (Obj.magic 0));
        generateSpriteSplitterMenuItem <- (Obj.repr (Obj.magic 0));
        generateRotationMenuItem <- (Obj.repr (Obj.magic 0));
        generateMirrorSpriteMenuItem <- (Obj.repr (Obj.magic 0));
        generateRotationSpriteJMenuItem <- (Obj.repr (Obj.magic 0));
        greenJLabel <- (Obj.repr (Obj.magic 0));
        jPanel1 <- (Obj.repr (Obj.magic 0));
        mainJMenuBar <- (Obj.repr (Obj.magic 0));
        maxBlueJTextField <- (Obj.repr (Obj.magic 0));
        maxGreenJTextField <- (Obj.repr (Obj.magic 0));
        maxJLabel <- (Obj.repr (Obj.magic 0));
        maxRedJTextField <- (Obj.repr (Obj.magic 0));
        minBlueJTextField <- (Obj.repr (Obj.magic 0));
        minGreenJTextField <- (Obj.repr (Obj.magic 0));
        minJLabel <- (Obj.repr (Obj.magic 0));
        minRedJTextField <- (Obj.repr (Obj.magic 0));
        mirrorJMenuItem <- (Obj.repr (Obj.magic 0));
        okJButton <- (Obj.repr (Obj.magic 0));
        openImageJMenuItem <- (Obj.repr (Obj.magic 0));
        processingJMenu <- (Obj.repr (Obj.magic 0));
        redJLabel <- (Obj.repr (Obj.magic 0));
        scaleImagesJMenuItem <- (Obj.repr (Obj.magic 0));
        canvasImagesJMenuItem <- (Obj.repr (Obj.magic 0));
        createIconImagesJMenuItem <- (Obj.repr (Obj.magic 0));
        titleJLabel <- (Obj.repr (Obj.magic 0));
        ();
        (self#initComponents ());
        let commonPhoneStrings : CommonPhoneStrings.commonPhoneStrings ref = ref (((CommonPhoneStrings.getInstance ()) :> CommonPhoneStrings.commonPhoneStrings)) in ();
        ignore (self#setSize (640, 480));
        ignore ((self#getMaxRedJTextField ())#setText ("255"));
        ignore ((self#getMaxGreenJTextField ())#setText ("255"));
        ignore ((self#getMaxBlueJTextField ())#setText ("255"));
        ignore ((self#getMinRedJTextField ())#setText (!commonPhoneStrings#zERO));
        ignore ((self#getMinGreenJTextField ())#setText (!commonPhoneStrings#zERO));
        ignore ((self#getMinBlueJTextField ())#setText (!commonPhoneStrings#zERO));
        fileJDialog <- (new FileJDialog.fileJDialog ());
        ignore (fileJDialog#addFinishedListener (self))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageToolJFrame" (fun arguments -> Obj.repr (new imageToolJFrame (Obj.obj arguments)))


