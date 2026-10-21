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
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.image.ImagePersistanceUtil *)
(* import org.allbinary.media.image.ImageProcessorInput *)
(* import org.allbinary.media.image.ImageProcessorInputCompositeInterface *)
(* import org.allbinary.media.image.ImageUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class createIconImagesJPanel ((imageProcessorInput_arg : ImageProcessorInput.imageProcessorInput)) =
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
    
    

    method process () : unit =
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
        aboveJButton <- Obj.repr ((new JButton.jButton ()));
        ignore ((Obj.magic aboveJButton)#setText ("Process"));
        ignore ((Obj.magic aboveJButton)#addActionListener ((object (self)
            inherit ActionListener.actionListener () as super
            

            method actionPerformed : 'any1. 'any1 -> unit = fun (evt) ->
                let evt = Obj.repr evt in
                begin
                (self#aboveJButtonActionPerformed ((Obj.magic evt)))
                end [@@warning "-20"]
        end)));
        let layout : Obj.t ref = ref ((Obj.repr (new GroupLayout.groupLayout (self)))) in ();
        ignore (self#setLayout ((Obj.magic !layout)));
        ignore ((Obj.magic !layout)#setHorizontalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup (((((Obj.magic !layout)#createSequentialGroup ())#addComponent ((Obj.magic aboveJButton)))#addGap (0, 335, 32767))))));
        ignore ((Obj.magic !layout)#setVerticalGroup ((((Obj.magic !layout)#createParallelGroup ((javax.get_swing ())#groupLayout#alignment#lEADING))#addGroup ((((((Obj.magic !layout)#createSequentialGroup ())#addContainerGap ())#addComponent ((Obj.magic aboveJButton)))#addContainerGap (286, 32767))))))
        end [@@warning "-7"]
    

    method aboveJButtonActionPerformed : 'any1. 'any1 -> unit = fun (_evt) ->
        begin
        (self#process ())
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        aboveJButton <- (Obj.repr (Obj.magic 0));
        ();
        (* super(...) is the inherit clause *) ();
        (self#initComponents ());
        imageProcessorInput <- imageProcessorInput_arg;
        let numberStringArray : string array ref = ref ((Array.make (101) (Obj.magic 0))) in ();
        !numberStringArray.(0) <- (string_of_int ((-1)));
        for index = 1 to 100 - 1 do
            !numberStringArray.(index) <- (string_of_int (index))
        done;
        let araster : Obj.t ref = ref ((Obj.repr ((imageProcessorInput#getBufferedImageArray ()).(0)#getAlphaRaster ()))) in ();
        if ((Obj.magic !araster) == (Obj.magic 0)) then begin
            (print_endline (java_string_of (Obj.repr ("there is no Alpha channel!!!!!!!!!"))))
        end else begin
            (print_endline (java_string_of (Obj.repr ("Alpha channel found !"))))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "CreateIconImagesJPanel" (fun arguments -> Obj.repr (new createIconImagesJPanel (Obj.obj arguments)))


