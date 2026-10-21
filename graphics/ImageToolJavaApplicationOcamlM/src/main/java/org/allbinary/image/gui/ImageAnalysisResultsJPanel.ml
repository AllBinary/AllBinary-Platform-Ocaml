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
(* import org.allbinary.media.image.analysis.ImageAnalysisResults *)
(* import org.allbinary.media.image.analysis.ImageColorRangeResults *)
(* import org.allbinary.media.image.analysis.ImageColorResults *)
(* import org.allbinary.string.CommonPhoneStrings *)

class imageAnalysisResultsJPanel (imageAnalysisResultsArray) =
  object (self)
    inherit JPanel.jPanel ()
    val mutable avgBlueJTextField = (Obj.magic 0)
    method avgBlueJTextField = avgBlueJTextField
    method set_avgBlueJTextField value = avgBlueJTextField <- value
    val mutable avgGreenJTextField = (Obj.magic 0)
    method avgGreenJTextField = avgGreenJTextField
    method set_avgGreenJTextField value = avgGreenJTextField <- value
    val mutable avgRedJTextField = (Obj.magic 0)
    method avgRedJTextField = avgRedJTextField
    method set_avgRedJTextField value = avgRedJTextField <- value
    val mutable jComboBox1 = (Obj.magic 0)
    method jComboBox1 = jComboBox1
    method set_jComboBox1 value = jComboBox1 <- value
    val mutable jLabel1 = (Obj.magic 0)
    method jLabel1 = jLabel1
    method set_jLabel1 value = jLabel1 <- value
    val mutable jLabel10 = (Obj.magic 0)
    method jLabel10 = jLabel10
    method set_jLabel10 value = jLabel10 <- value
    val mutable jLabel11 = (Obj.magic 0)
    method jLabel11 = jLabel11
    method set_jLabel11 value = jLabel11 <- value
    val mutable jLabel12 = (Obj.magic 0)
    method jLabel12 = jLabel12
    method set_jLabel12 value = jLabel12 <- value
    val mutable jLabel13 = (Obj.magic 0)
    method jLabel13 = jLabel13
    method set_jLabel13 value = jLabel13 <- value
    val mutable jLabel2 = (Obj.magic 0)
    method jLabel2 = jLabel2
    method set_jLabel2 value = jLabel2 <- value
    val mutable jLabel3 = (Obj.magic 0)
    method jLabel3 = jLabel3
    method set_jLabel3 value = jLabel3 <- value
    val mutable jLabel4 = (Obj.magic 0)
    method jLabel4 = jLabel4
    method set_jLabel4 value = jLabel4 <- value
    val mutable jLabel5 = (Obj.magic 0)
    method jLabel5 = jLabel5
    method set_jLabel5 value = jLabel5 <- value
    val mutable jLabel6 = (Obj.magic 0)
    method jLabel6 = jLabel6
    method set_jLabel6 value = jLabel6 <- value
    val mutable jLabel7 = (Obj.magic 0)
    method jLabel7 = jLabel7
    method set_jLabel7 value = jLabel7 <- value
    val mutable jLabel8 = (Obj.magic 0)
    method jLabel8 = jLabel8
    method set_jLabel8 value = jLabel8 <- value
    val mutable jLabel9 = (Obj.magic 0)
    method jLabel9 = jLabel9
    method set_jLabel9 value = jLabel9 <- value
    val mutable matchingPixelsJTextField = (Obj.magic 0)
    method matchingPixelsJTextField = matchingPixelsJTextField
    method set_matchingPixelsJTextField value = matchingPixelsJTextField <- value
    val mutable maxBlueJTextField = (Obj.magic 0)
    method maxBlueJTextField = maxBlueJTextField
    method set_maxBlueJTextField value = maxBlueJTextField <- value
    val mutable maxGreenJTextField = (Obj.magic 0)
    method maxGreenJTextField = maxGreenJTextField
    method set_maxGreenJTextField value = maxGreenJTextField <- value
    val mutable maxRedJTextField = (Obj.magic 0)
    method maxRedJTextField = maxRedJTextField
    method set_maxRedJTextField value = maxRedJTextField <- value
    val mutable minBlueJTextField = (Obj.magic 0)
    method minBlueJTextField = minBlueJTextField
    method set_minBlueJTextField value = minBlueJTextField <- value
    val mutable minGreenJTextField = (Obj.magic 0)
    method minGreenJTextField = minGreenJTextField
    method set_minGreenJTextField value = minGreenJTextField <- value
    val mutable minRedJTextField = (Obj.magic 0)
    method minRedJTextField = minRedJTextField
    method set_minRedJTextField value = minRedJTextField <- value
    val mutable percentMatchingJTextField = (Obj.magic 0)
    method percentMatchingJTextField = percentMatchingJTextField
    method set_percentMatchingJTextField value = percentMatchingJTextField <- value
    val mutable totalPixelsJTextField = (Obj.magic 0)
    method totalPixelsJTextField = totalPixelsJTextField
    method set_totalPixelsJTextField value = totalPixelsJTextField <- value
    
    

    method initComponents () =
        begin
        jLabel1 <- (new JLabel.jLabel ());
        jLabel2 <- (new JLabel.jLabel ());
        jLabel3 <- (new JLabel.jLabel ());
        percentMatchingJTextField <- (new JTextField.jTextField ());
        totalPixelsJTextField <- (new JTextField.jTextField ());
        matchingPixelsJTextField <- (new JTextField.jTextField ());
        jComboBox1 <- (new JComboBox.jComboBox ());
        jLabel4 <- (new JLabel.jLabel ());
        jLabel5 <- (new JLabel.jLabel ());
        jLabel6 <- (new JLabel.jLabel ());
        jLabel7 <- (new JLabel.jLabel ());
        avgRedJTextField <- (new JTextField.jTextField ());
        avgGreenJTextField <- (new JTextField.jTextField ());
        avgBlueJTextField <- (new JTextField.jTextField ());
        minGreenJTextField <- (new JTextField.jTextField ());
        jLabel8 <- (new JLabel.jLabel ());
        jLabel9 <- (new JLabel.jLabel ());
        jLabel10 <- (new JLabel.jLabel ());
        minRedJTextField <- (new JTextField.jTextField ());
        minBlueJTextField <- (new JTextField.jTextField ());
        jLabel11 <- (new JLabel.jLabel ());
        jLabel12 <- (new JLabel.jLabel ());
        jLabel13 <- (new JLabel.jLabel ());
        maxRedJTextField <- (new JTextField.jTextField ());
        maxGreenJTextField <- (new JTextField.jTextField ());
        maxBlueJTextField <- (new JTextField.jTextField ());
        ignore (jLabel1#setText ("Matching Pixels:"));
        ignore (jLabel2#setText ("Total Pixels:"));
        ignore (jLabel3#setText ("Percent Matching:"));
        ignore (percentMatchingJTextField#setEditable (false));
        ignore (totalPixelsJTextField#setEditable (false));
        ignore (matchingPixelsJTextField#setEditable (false));
        ignore (jComboBox1#setModel ((new DefaultComboBoxModel.defaultComboBoxModel ([| (CommonPhoneStrings.getInstance ())#oNE |]))));
        ignore (jComboBox1#setEnabled (false));
        ignore (jLabel4#setText ("Image:"));
        ignore (jLabel5#setText ("Average Red:"));
        ignore (jLabel6#setText ("Average Green:"));
        ignore (jLabel7#setText ("Average Blue:"));
        ignore (avgRedJTextField#setEditable (false));
        ignore (avgGreenJTextField#setEditable (false));
        ignore (avgBlueJTextField#setEditable (false));
        ignore (minGreenJTextField#setEditable (false));
        ignore (jLabel8#setText ("Min Red:"));
        ignore (jLabel9#setText ("Min Green:"));
        ignore (jLabel10#setText ("Min Blue:"));
        ignore (minRedJTextField#setEditable (false));
        ignore (minBlueJTextField#setEditable (false));
        ignore (jLabel11#setText ("Max Red:"));
        ignore (jLabel12#setText ("Max Green:"));
        ignore (jLabel13#setText ("Max Blue:"));
        ignore (maxRedJTextField#setEditable (false));
        ignore (maxGreenJTextField#setEditable (false));
        ignore (maxBlueJTextField#setEditable (false));
        let layout = ref ((new GroupLayout.groupLayout (self))) in ();
        ignore (self#setLayout (!layout));
        ignore (!layout#setHorizontalGroup (((!layout#createParallelGroup (javax.swing#groupLayout#alignment#lEADING))#addGroup (((((((((((!layout#createSequentialGroup ())#addContainerGap ())#addGroup (((((((((!layout#createParallelGroup (javax.swing#groupLayout#alignment#lEADING))#addComponent (jLabel3))#addComponent (jLabel2))#addComponent (jLabel1))#addComponent (jLabel5))#addComponent (jLabel6))#addComponent (jLabel7))#addComponent (jLabel4))))#addPreferredGap (javax.swing#layoutStyle#componentPlacement#rELATED))#addGroup (((((((((!layout#createParallelGroup (javax.swing#groupLayout#alignment#lEADING))#addComponent (jComboBox1, javax.swing#groupLayout#pREFERRED_SIZE, 81, javax.swing#groupLayout#pREFERRED_SIZE))#addComponent (avgBlueJTextField, javax.swing#groupLayout#dEFAULT_SIZE, 81, Short.mAX_VALUE))#addComponent (avgGreenJTextField, javax.swing#groupLayout#dEFAULT_SIZE, 81, Short.mAX_VALUE))#addComponent (avgRedJTextField, javax.swing#groupLayout#dEFAULT_SIZE, 81, Short.mAX_VALUE))#addComponent (totalPixelsJTextField, javax.swing#groupLayout#dEFAULT_SIZE, 81, Short.mAX_VALUE))#addComponent (percentMatchingJTextField, javax.swing#groupLayout#dEFAULT_SIZE, 81, Short.mAX_VALUE))#addComponent (matchingPixelsJTextField, javax.swing#groupLayout#dEFAULT_SIZE, 81, Short.mAX_VALUE))))#addPreferredGap (javax.swing#layoutStyle#componentPlacement#rELATED))#addGroup ((((((((!layout#createParallelGroup (javax.swing#groupLayout#alignment#lEADING))#addComponent (jLabel12))#addComponent (jLabel13))#addComponent (jLabel8))#addComponent (jLabel9))#addComponent (jLabel10))#addComponent (jLabel11))))#addPreferredGap (javax.swing#layoutStyle#componentPlacement#rELATED))#addGroup ((((((((!layout#createParallelGroup (javax.swing#groupLayout#alignment#lEADING))#addComponent (minRedJTextField, javax.swing#groupLayout#pREFERRED_SIZE, 82, javax.swing#groupLayout#pREFERRED_SIZE))#addComponent (maxGreenJTextField, javax.swing#groupLayout#pREFERRED_SIZE, 82, javax.swing#groupLayout#pREFERRED_SIZE))#addComponent (minGreenJTextField, javax.swing#groupLayout#pREFERRED_SIZE, 82, javax.swing#groupLayout#pREFERRED_SIZE))#addComponent (minBlueJTextField, javax.swing#groupLayout#pREFERRED_SIZE, 82, javax.swing#groupLayout#pREFERRED_SIZE))#addComponent (maxRedJTextField, javax.swing#groupLayout#pREFERRED_SIZE, 82, javax.swing#groupLayout#pREFERRED_SIZE))#addComponent (maxBlueJTextField, javax.swing#groupLayout#pREFERRED_SIZE, 82, javax.swing#groupLayout#pREFERRED_SIZE))))#addContainerGap (18, Short.mAX_VALUE))))));
        ignore (!layout#setVerticalGroup (((!layout#createParallelGroup (javax.swing#groupLayout#alignment#lEADING))#addGroup (((((((((((((((!layout#createSequentialGroup ())#addGroup ((((!layout#createParallelGroup (javax.swing#groupLayout#alignment#bASELINE))#addComponent (jLabel4))#addComponent (jComboBox1, javax.swing#groupLayout#pREFERRED_SIZE, javax.swing#groupLayout#dEFAULT_SIZE, javax.swing#groupLayout#pREFERRED_SIZE))))#addPreferredGap (javax.swing#layoutStyle#componentPlacement#rELATED))#addGroup ((((((!layout#createParallelGroup (javax.swing#groupLayout#alignment#bASELINE))#addComponent (jLabel1))#addComponent (matchingPixelsJTextField, javax.swing#groupLayout#pREFERRED_SIZE, javax.swing#groupLayout#dEFAULT_SIZE, javax.swing#groupLayout#pREFERRED_SIZE))#addComponent (jLabel8))#addComponent (minRedJTextField, javax.swing#groupLayout#pREFERRED_SIZE, javax.swing#groupLayout#dEFAULT_SIZE, javax.swing#groupLayout#pREFERRED_SIZE))))#addPreferredGap (javax.swing#layoutStyle#componentPlacement#rELATED))#addGroup ((((((!layout#createParallelGroup (javax.swing#groupLayout#alignment#bASELINE))#addComponent (jLabel2))#addComponent (totalPixelsJTextField, javax.swing#groupLayout#pREFERRED_SIZE, javax.swing#groupLayout#dEFAULT_SIZE, javax.swing#groupLayout#pREFERRED_SIZE))#addComponent (jLabel9))#addComponent (minGreenJTextField, javax.swing#groupLayout#pREFERRED_SIZE, javax.swing#groupLayout#dEFAULT_SIZE, javax.swing#groupLayout#pREFERRED_SIZE))))#addPreferredGap (javax.swing#layoutStyle#componentPlacement#rELATED))#addGroup ((((((!layout#createParallelGroup (javax.swing#groupLayout#alignment#bASELINE))#addComponent (jLabel3))#addComponent (percentMatchingJTextField, javax.swing#groupLayout#pREFERRED_SIZE, javax.swing#groupLayout#dEFAULT_SIZE, javax.swing#groupLayout#pREFERRED_SIZE))#addComponent (jLabel10))#addComponent (minBlueJTextField, javax.swing#groupLayout#pREFERRED_SIZE, javax.swing#groupLayout#dEFAULT_SIZE, javax.swing#groupLayout#pREFERRED_SIZE))))#addPreferredGap (javax.swing#layoutStyle#componentPlacement#rELATED))#addGroup ((((((!layout#createParallelGroup (javax.swing#groupLayout#alignment#bASELINE))#addComponent (jLabel5))#addComponent (avgRedJTextField, javax.swing#groupLayout#pREFERRED_SIZE, javax.swing#groupLayout#dEFAULT_SIZE, javax.swing#groupLayout#pREFERRED_SIZE))#addComponent (jLabel11))#addComponent (maxRedJTextField, javax.swing#groupLayout#pREFERRED_SIZE, javax.swing#groupLayout#dEFAULT_SIZE, javax.swing#groupLayout#pREFERRED_SIZE))))#addPreferredGap (javax.swing#layoutStyle#componentPlacement#rELATED))#addGroup ((((((!layout#createParallelGroup (javax.swing#groupLayout#alignment#bASELINE))#addComponent (jLabel6))#addComponent (avgGreenJTextField, javax.swing#groupLayout#pREFERRED_SIZE, javax.swing#groupLayout#dEFAULT_SIZE, javax.swing#groupLayout#pREFERRED_SIZE))#addComponent (maxGreenJTextField, javax.swing#groupLayout#pREFERRED_SIZE, javax.swing#groupLayout#dEFAULT_SIZE, javax.swing#groupLayout#pREFERRED_SIZE))#addComponent (jLabel12))))#addPreferredGap (javax.swing#layoutStyle#componentPlacement#rELATED))#addGroup ((((((!layout#createParallelGroup (javax.swing#groupLayout#alignment#bASELINE))#addComponent (jLabel7))#addComponent (avgBlueJTextField, javax.swing#groupLayout#pREFERRED_SIZE, javax.swing#groupLayout#dEFAULT_SIZE, javax.swing#groupLayout#pREFERRED_SIZE))#addComponent (jLabel13))#addComponent (maxBlueJTextField, javax.swing#groupLayout#pREFERRED_SIZE, javax.swing#groupLayout#dEFAULT_SIZE, javax.swing#groupLayout#pREFERRED_SIZE))))))))
        end
    

    method updateImageColorRangeResults ((imageAnalysisResults : ImageAnalysisResults.imageAnalysisResults)) =
        begin
        let imageColorRangeResults : ImageColorRangeResults.imageColorRangeResults ref = ref (((imageAnalysisResults#getImageColorRangeResults ()) :> ImageColorRangeResults.imageColorRangeResults)) in ();
        ignore (matchingPixelsJTextField#setText (((!imageColorRangeResults#getMatchingPixelsChecked ())#toString ())));
        ignore (totalPixelsJTextField#setText (((!imageColorRangeResults#getTotalPixelsChecked ())#toString ())));
        ignore (percentMatchingJTextField#setText (((!imageColorRangeResults#getPercent ())#toString ())));
        let imageColorResults : ImageColorResults.imageColorResults ref = ref (((imageAnalysisResults#getImageColorResults ()) :> ImageColorResults.imageColorResults)) in ();
        ignore (avgRedJTextField#setText ((((!imageColorResults#getColorAverage ())#getAvgRed ())#toString ())));
        ignore (avgGreenJTextField#setText ((((!imageColorResults#getColorAverage ())#getAvgGreen ())#toString ())));
        ignore (avgBlueJTextField#setText ((((!imageColorResults#getColorAverage ())#getAvgBlue ())#toString ())));
        ignore (minRedJTextField#setText ((((!imageColorResults#getColorRange ())#getMinRed ())#toString ())));
        ignore (minGreenJTextField#setText ((((!imageColorResults#getColorRange ())#getMinGreen ())#toString ())));
        ignore (minBlueJTextField#setText ((((!imageColorResults#getColorRange ())#getMinBlue ())#toString ())));
        ignore (maxRedJTextField#setText ((((!imageColorResults#getColorRange ())#getMaxRed ())#toString ())));
        ignore (maxGreenJTextField#setText ((((!imageColorResults#getColorRange ())#getMaxGreen ())#toString ())));
        ignore (maxBlueJTextField#setText ((((!imageColorResults#getColorRange ())#getMaxBlue ())#toString ())))
        end

    initializer
      begin
        avgBlueJTextField <- (Obj.magic 0);
        avgGreenJTextField <- (Obj.magic 0);
        avgRedJTextField <- (Obj.magic 0);
        jComboBox1 <- (Obj.magic 0);
        jLabel1 <- (Obj.magic 0);
        jLabel10 <- (Obj.magic 0);
        jLabel11 <- (Obj.magic 0);
        jLabel12 <- (Obj.magic 0);
        jLabel13 <- (Obj.magic 0);
        jLabel2 <- (Obj.magic 0);
        jLabel3 <- (Obj.magic 0);
        jLabel4 <- (Obj.magic 0);
        jLabel5 <- (Obj.magic 0);
        jLabel6 <- (Obj.magic 0);
        jLabel7 <- (Obj.magic 0);
        jLabel8 <- (Obj.magic 0);
        jLabel9 <- (Obj.magic 0);
        matchingPixelsJTextField <- (Obj.magic 0);
        maxBlueJTextField <- (Obj.magic 0);
        maxGreenJTextField <- (Obj.magic 0);
        maxRedJTextField <- (Obj.magic 0);
        minBlueJTextField <- (Obj.magic 0);
        minGreenJTextField <- (Obj.magic 0);
        minRedJTextField <- (Obj.magic 0);
        percentMatchingJTextField <- (Obj.magic 0);
        totalPixelsJTextField <- (Obj.magic 0);
        ();
        (self#initComponents ());
        let imageAnalysisResults : ImageAnalysisResults.imageAnalysisResults ref = ref ((imageAnalysisResultsArray.(0) :> ImageAnalysisResults.imageAnalysisResults)) in ();
        (self#updateImageColorRangeResults (!imageAnalysisResults))
      end
  end


