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
(* package org.allbinary.animation.text *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.TextField *)
(* import org.allbinary.graphics.form.item.CustomTextBox *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.game.canvas.ABToGBUtil *)
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.media.ScaleProperties *)

class customTextBoxIndexedAnimationFactory ((fontSize : int), (maxLength_arg : int)) =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable scaleProperties : ScaleProperties.scaleProperties = (Obj.magic 0)
    method scaleProperties = scaleProperties
    method set_scaleProperties value' = scaleProperties <- value'
    val mutable maxLength : int = 0
    method maxLength = maxLength
    method set_maxLength value' = maxLength <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        let abToGBUtil : ABToGBUtil.aBToGBUtil ref = ref (((ABToGBUtil.getInstance ()) :> ABToGBUtil.aBToGBUtil)) in ();
        let abCanvas : AllBinaryGameCanvas.allBinaryGameCanvas ref = ref (((Obj.magic !abToGBUtil#abCanvas) :> AllBinaryGameCanvas.allBinaryGameCanvas)) in ();
        let font : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Font.getFont" (Obj.repr ((Obj.magic (java_call_static "Font.get_fACE_SYSTEM" (Obj.repr ()))), (Obj.magic (java_call_static "Font.get_sTYLE_PLAIN" (Obj.repr ()))), scaleProperties#scaleHeight)))))) in ();
        let customTextBox : CustomTextBox.customTextBox ref = ref (((new CustomTextBox2.customTextBox2 ((!abCanvas#getCustomCommandListener ()), (StringUtil.getInstance ())#eMPTY_STRING, (StringUtil.getInstance ())#eMPTY_STRING, maxLength, (Obj.magic (java_call_static "TextField.get_aNY" (Obj.repr ()))), (Obj.magic !font), ((!abCanvas#getLayerManager ())#getBackgroundBasicColor ()), ((!abCanvas#getLayerManager ())#getForegroundBasicColor ()))) :> CustomTextBox.customTextBox)) in ();
        (Obj.magic ((new CustomTextBoxIndexedAnimation.customTextBoxIndexedAnimation (!customTextBox))))
        end
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (scaleProperties_arg) ->
        let scaleProperties_arg = Obj.repr scaleProperties_arg in
        begin
        let fontSize : int ref = ref (scaleProperties#scaleHeight) in ();
        scaleProperties <- (Obj.magic scaleProperties_arg);
        if (scaleProperties#scaleHeight < 6) then begin
            scaleProperties#set_scaleHeight (!fontSize)
        end
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        scaleProperties <- (new ScaleProperties.scaleProperties ());
        scaleProperties#set_scaleHeight (fontSize);
        maxLength <- maxLength_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "CustomTextBoxIndexedAnimationFactory" (fun arguments -> Obj.repr (new customTextBoxIndexedAnimationFactory (Obj.obj arguments)))


