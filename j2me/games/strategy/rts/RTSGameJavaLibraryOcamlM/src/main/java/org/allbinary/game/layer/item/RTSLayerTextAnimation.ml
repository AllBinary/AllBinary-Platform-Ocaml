(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)

class rTSLayerTextAnimation ((text_arg : string), image_arg) =
  object (self)
    inherit Animation.animation () as super
    val mutable image : Obj.t = Obj.repr 0
    method image : 'r. 'r = Obj.magic image
    method set_image : 'v. 'v -> unit = fun value' -> image <- Obj.repr value'
    val mutable text : string = ""
    method text = text
    method set_text value' = text <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable fontHeight : int = 0
    method fontHeight = fontHeight
    method set_fontHeight value' = fontHeight <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        fontHeight <- ((Obj.magic !font)#getHeight ());
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore (super#paintXY ((Obj.magic graphics), x, y));
        let adjustedCostY : int ref = ref ((((Obj.magic image)#getHeight ()) - fontHeight)) in ();
        ignore ((Obj.magic graphics)#drawString (text, x, (y + !adjustedCostY), 0))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        fontHeight <- 0;
        ();
        text <- text_arg;
        image <- Obj.repr (image_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "RTSLayerTextAnimation" (fun arguments -> Obj.repr (new rTSLayerTextAnimation (Obj.obj arguments)))


