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
(* package org.allbinary.graphics.draw *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.logic.java.character.CharArrayFactory *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)

class keyValueDrawCharArray ((label : string), (x : int)) =
  object (self)
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable lABEL : string = ""
    method lABEL = lABEL
    method set_lABEL value' = lABEL <- value'
    val mutable labelX : int = 0
    method labelX = labelX
    method set_labelX value' = labelX <- value'
    val mutable valueX : int = 0
    method valueX = valueX
    method set_valueX value' = valueX <- value'
    val mutable value : char array = (Obj.magic 0)
    method value = value
    method set_value value' = value <- value'
    val mutable len : int = 0
    method len = len
    method set_len value' = len <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let labelWidth : int ref = ref (((((Obj.magic graphics)#getFont ())#stringWidth (lABEL)) - (String.length lABEL))) in ();
        valueX <- (!labelWidth + labelX);
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-20"]
    

    method paint : 'any1. 'any1 * int -> unit = fun (graphics, (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore ((Obj.magic graphics)#drawString (lABEL, labelX, y, 0));
        ignore ((Obj.magic graphics)#drawChars (value, 0, len, valueX, y, 0))
        end [@@warning "-20"]
    

    method update ((value_arg : char array), (len_arg : int)) : unit =
        begin
        value <- value_arg;
        len <- len_arg
        end

    initializer
      begin
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        ();
        ();
        valueX <- 0;
        value <- ((CharArrayFactory.getInstance ())#getZeroCharArray ());
        len <- 0;
        ();
        lABEL <- label;
        labelX <- x
      end
  end
let () = java_register_constructor "KeyValueDrawCharArray" (fun arguments -> Obj.repr (new keyValueDrawCharArray (Obj.obj arguments)))


