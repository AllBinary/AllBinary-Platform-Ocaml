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
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.media.ScaleProperties *)

class customTextAnimationFactory ((text_arg : string), (fontSize : int), (animationBehaviorFactory_arg : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory = (Obj.magic 0)
    method animationBehaviorFactory = animationBehaviorFactory
    method set_animationBehaviorFactory value' = animationBehaviorFactory <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable text : string = ""
    method text = text
    method set_text value' = text <- value'
    val mutable initScaleHeight : int = 0
    method initScaleHeight = initScaleHeight
    method set_initScaleHeight value' = initScaleHeight <- value'
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    val mutable font : Obj.t = Obj.repr 0
    method font : 'r. 'r = Obj.magic font
    method set_font : 'v. 'v -> unit = fun value' -> font <- Obj.repr value'
    val mutable scaleProperties : ScaleProperties.scaleProperties = (Obj.magic 0)
    method scaleProperties = scaleProperties
    method set_scaleProperties value' = scaleProperties <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        let customTextAnimation : CustomTextAnimation.customTextAnimation ref = ref (((Obj.magic 0) :> CustomTextAnimation.customTextAnimation)) in ();
        if ((dx <> 0) || (dy <> 0)) then begin
            customTextAnimation := (new AdjustCustomTextAnimation.adjustCustomTextAnimation (text, scaleProperties#scaleHeight, dx, dy, (animationBehaviorFactory#getOrCreateInstance ())))
        end else begin
            customTextAnimation := (new CustomTextAnimation.customTextAnimation (text, scaleProperties#scaleHeight, (animationBehaviorFactory#getOrCreateInstance ())))
        end;
        ignore (!customTextAnimation#setBasicColorP (basicColor));
        (Obj.magic (!customTextAnimation))
        end
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (_scaleProperties_arg) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getWidth () : int =
        begin
        ((Obj.magic font)#stringWidth (text))
        end
    

    method getHeight () : int =
        begin
        ((Obj.magic font)#getHeight ())
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        basicColor <- ((BasicColorFactory.getInstance ())#bLACK :> BasicColor.basicColor);
        ();
        ();
        dx <- 0;
        dy <- 0;
        ();
        ();
        ();
        scaleProperties <- (new ScaleProperties.scaleProperties ());
        text <- text_arg;
        scaleProperties#set_scaleHeight ((fontSize - ((fontSize / 4))));
        initScaleHeight <- scaleProperties#scaleHeight;
        animationBehaviorFactory <- animationBehaviorFactory_arg;
        font <- Obj.repr ((Obj.magic (java_call_static "Font.getFont" (Obj.repr ((Obj.magic (java_call_static "Font.get_fACE_SYSTEM" (Obj.repr ()))), (Obj.magic (java_call_static "Font.get_sTYLE_PLAIN" (Obj.repr ()))), initScaleHeight)))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "CustomTextAnimationFactory" (fun arguments -> Obj.repr (new customTextAnimationFactory (Obj.obj arguments)))

let createDXY : 'any5. string * int * int * int * 'any5 -> _ = fun ((text_arg : string), (fontSize : int), (dx_arg : int), (dy_arg : int), animationBehaviorFactory_arg) ->
        let animationBehaviorFactory_arg = Obj.repr animationBehaviorFactory_arg in
        begin
        let customTextAnimationFactory : Obj.t ref = ref ((Obj.repr (new customTextAnimationFactory (text_arg, fontSize, (Obj.magic animationBehaviorFactory_arg))))) in ();
        ignore ((Obj.magic !customTextAnimationFactory)#set_dx (dx_arg));
        ignore ((Obj.magic !customTextAnimationFactory)#set_dy (dy_arg));
        (Obj.magic !customTextAnimationFactory)
        end [@@warning "-20"]
let () = java_register_static "CustomTextAnimationFactory.createDXY" (fun arguments -> Obj.repr (createDXY (Obj.obj arguments)))


