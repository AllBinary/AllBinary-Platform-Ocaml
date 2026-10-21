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
(* package org.allbinary.graphics.color *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import jsinterop.annotations.JsType *)
(* import org.allbinary.logic.string.StringMaker *)
(* import jsinterop.annotations.JsMethod *)
(* import jsinterop.annotations.JsConstructor *)
(* import jsinterop.annotations.JsProperty *)

class basicColor ((alphaValue : int), (value_arg : int), (name_arg : string)) =
  object
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable value : int = 0
    method value = value
    method set_value value' = value <- value'
    val mutable redComponent : float = 0.0
    method redComponent = redComponent
    method set_redComponent value' = redComponent <- value'
    val mutable greenComponent : float = 0.0
    method greenComponent = greenComponent
    method set_greenComponent value' = greenComponent <- value'
    val mutable blueComponent : float = 0.0
    method blueComponent = blueComponent
    method set_blueComponent value' = blueComponent <- value'
    val mutable alphaComponent : float = 0.0
    method alphaComponent = alphaComponent
    method set_alphaComponent value' = alphaComponent <- value'
    val mutable red : int = 0
    method red = red
    method set_red value' = red <- value'
    val mutable green : int = 0
    method green = green
    method set_green value' = green <- value'
    val mutable blue : int = 0
    method blue = blue
    method set_blue value' = blue <- value'
    val mutable alpha : int = 0
    method alpha = alpha
    method set_alpha value' = alpha <- value'
    
    

    method intValue () : int =
        begin
        value
        end
    

    method toInt () : int =
        begin
        value
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("BasicColor: "));
        ignore (!stringBuffer#append ("Alpha: "));
        ignore (!stringBuffer#appendshort (alpha));
        ignore (!stringBuffer#append (" Red: "));
        ignore (!stringBuffer#appendshort (red));
        ignore (!stringBuffer#append (" Green: "));
        ignore (!stringBuffer#appendshort (green));
        ignore (!stringBuffer#append (" Blue: "));
        ignore (!stringBuffer#appendshort (blue));
        ignore (!stringBuffer#append (" Value: "));
        ignore (!stringBuffer#appendint (value));
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method getName () : string =
        begin
        name
        end
    

    method getRedComponent () : float =
        begin
        redComponent
        end
    

    method getGreenComponent () : float =
        begin
        greenComponent
        end
    

    method getBlueComponent () : float =
        begin
        blueComponent
        end
    

    method getAlphaComponent () : float =
        begin
        alphaComponent
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        name <- name_arg;
        let tempValue : int ref = ref (0) in ();
        let basicColorUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "BasicColorUtil.getInstance" (Obj.repr ()))))) in ();
        if (Obj.magic !basicColorUtil)#isAlpha then begin
            if (Obj.magic !basicColorUtil)#ffOpaque then begin
                tempValue := (alphaValue lor value_arg)
            end else begin
                tempValue := (0x00000000 lor value_arg)
            end
        end else begin
            tempValue := value_arg
        end;
        let alphaInt : int ref = ref (((((!tempValue asr 24)) land 255))) in ();
        alpha <- !alphaInt;
        alphaComponent <- (((float_of_int (!alphaInt))) /. 255.);
        let redInt : int ref = ref (((((!tempValue asr 16)) land 255))) in ();
        red <- !redInt;
        redComponent <- (((float_of_int (!redInt))) /. 255.);
        let greenInt : int ref = ref (((((!tempValue asr 8)) land 255))) in ();
        green <- !greenInt;
        greenComponent <- (((float_of_int (!greenInt))) /. 255.);
        let blueInt : int ref = ref ((((!tempValue) land 255))) in ();
        blue <- !blueInt;
        blueComponent <- (((float_of_int (!blueInt))) /. 255.);
        value <- !tempValue
      end
  end
let () = java_register_constructor "BasicColor" (fun arguments -> Obj.repr (new basicColor (Obj.obj arguments)))


