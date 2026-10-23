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
(* package org.allbinary.animation.text *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.threed.SWTJOGLProcessor *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class textAnimation ((text : string), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit IndexedAnimation.indexedAnimation (animationBehavior)
    val mutable updateMyFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method updateMyFontProcessor = updateMyFontProcessor
    method set_updateMyFontProcessor value' = updateMyFontProcessor <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable textArrayP : string array = (Obj.magic 0)
    method textArrayP = textArrayP
    method set_textArrayP value' = textArrayP <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    val mutable fontHeight : int = 0
    method fontHeight = fontHeight
    method set_fontHeight value' = fontHeight <- value'
    val mutable offsetY : int = 0
    method offsetY = offsetY
    method set_offsetY value' = offsetY <- value'
    val mutable textChangeListener : Obj.t = Obj.repr 0
    method textChangeListener : 'r. 'r = Obj.magic textChangeListener
    method set_textChangeListener : 'v. 'v -> unit = fun value' -> textChangeListener <- Obj.repr value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        fontHeight <- ((Obj.magic !font)#getHeight ());
        let adjustedFontHeight : int ref = ref ((int_of_float ((-.(((float_of_int (fontHeight)) *. 2.00)))))) in ();
        offsetY <- (if ((Obj.magic (java_call_static "SWTJOGLProcessor.getInstance" (Obj.repr ())))#isJOGL ()) then !adjustedFontHeight else 0);
        ignore ((Obj.magic textChangeListener)#onMeasure ());
        textChangeListener <- Obj.repr ((Obj.magic (java_call_static "TextChangeListener.getInstance" (Obj.repr ()))));
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method nextFrame () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        (self#paintXYNoUpdate ((Obj.magic graphics), x, y))
        end [@@warning "-7-20"]
    

    method paintXYNoUpdate : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((self#basicSetColorUtil)#setBasicColorP3 ((Obj.magic graphics), (self#getBasicColorP ()), (self#getColor ())));
        let size : int ref = ref ((Array.length textArrayP)) in ();
        for index = 0 to !size - 1 do
            ignore ((Obj.magic graphics)#drawString (textArrayP.(index), x, ((y + offsetY) + ((index * fontHeight))), anchor))
        done
        end [@@warning "-7-20"]
    

    method setTextWithOnMeasure : 'any2. string * 'any2 -> unit = fun ((text : string), textChangeListener_arg) ->
        let textChangeListener_arg = Obj.repr textChangeListener_arg in
        begin
        (self#setText (text));
        textChangeListener <- Obj.repr ((Obj.magic textChangeListener_arg))
        end [@@warning "-7-20"]
    

    method setText ((text : string)) : unit =
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        if ((text <> (Obj.magic 0)) && ((String.length text) > 0)) then begin
            let index : int ref = ref (0) in ();
            let startIndex : int ref = ref (0) in ();
            let endIndex : int ref = ref (0) in ();
            while (!index >= 0) do
                startIndex := !index;
                index := (java_string_index_of_from text (Obj.repr ('\n')) (!startIndex));
                endIndex := !index;
                if (!index < 0) then begin
                    endIndex := (String.length text)
                end;
                ignore (!list#add ((String.sub text (!startIndex) ((!endIndex) - (!startIndex)))));
                if (!index < 0) then begin
                    raise Java_break
                end;
                index := !index + 1
            done
        end;
        if ((!list#size ()) > 0) then begin
            let textArray : string array ref = ref ((Array.make ((!list#size ())) (Obj.magic 0))) in ();
            let size : int ref = ref ((!list#size ())) in ();
            for index = 0 to !size - 1 do
                !textArray.(index) <- (Obj.magic (!list#get (index)))
            done;
            textArrayP <- !textArray
        end else begin
            textArrayP <- (StringUtil.getInstance ())#oNE_EMPTY_STRING_ARRAY
        end;
        myFontProcessor <- updateMyFontProcessor
        end [@@warning "-7"]
    

    method getTextArray () : string array =
        begin
        textArrayP
        end [@@warning "-7"]
    

    method getFontHeight () : int =
        begin
        fontHeight
        end [@@warning "-7"]

    initializer
      begin
        updateMyFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        myFontProcessor <- (updateMyFontProcessor :> MyFontProcessor.myFontProcessor);
        textArrayP <- (StringUtil.getInstance ())#oNE_EMPTY_STRING_ARRAY;
        anchor <- (Anchor.get_tOP_LEFT ());
        fontHeight <- 0;
        offsetY <- 0;
        textChangeListener <- (Obj.repr (Obj.magic (java_call_static "TextChangeListener.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ();
        (self#setText (text))
      end
  end [@@warning "-20"]
let () = java_register_constructor "TextAnimation" (fun arguments -> Obj.repr (new textAnimation (Obj.obj arguments)))


