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
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.AndroidUtil *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureUtil *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class drawVerticalStringUtil () =
  object (self)
    val mutable eMPTY_STRING : string = ""
    method eMPTY_STRING = eMPTY_STRING
    method set_eMPTY_STRING value' = eMPTY_STRING <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    val mutable charHeight : int = 0
    method charHeight = charHeight
    method set_charHeight value' = charHeight <- value'
    val mutable offsetY : int = 0
    method offsetY = offsetY
    method set_offsetY value' = offsetY <- value'
    val mutable offsetXArray : int array = (Obj.magic 0)
    method offsetXArray = offsetXArray
    method set_offsetXArray value' = offsetXArray <- value'
    

    method updateMeasurement : 'any1. 'any1 * string -> unit = fun (graphics, (string : string)) ->
        let graphics = Obj.repr graphics in
        begin
        let openGLFeatureUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "OpenGLFeatureUtil.getInstance" (Obj.repr ()))))) in ();
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        charHeight <- ((Obj.magic !font)#getHeight ());
        offsetY <- 0;
        if (J2MEUtil.isHTML ()) then begin
            charHeight <- (charHeight + 1)
        end else if ((Obj.magic !openGLFeatureUtil)#isAnyThreed ()) then begin
            charHeight <- (charHeight + 2);
            if (Obj.magic (java_call_static "AndroidUtil.isAndroid" (Obj.repr ()))) then begin
                ()
            end else begin
                offsetY <- (2 + (((charHeight * 2) / 3)))
            end
        end;
        let size : int ref = ref ((String.length string)) in ();
        let aChar : char ref = ref ('\000') in ();
        let offsetXArray_arg : int array ref = ref ((Array.make (!size) 0)) in ();
        for index = (!size - 1) downto 0 do
            aChar := (String.get string (index));
            if ((Obj.magic !openGLFeatureUtil)#isAnyThreed ()) then begin
                !offsetXArray_arg.(index) <- (((Obj.magic !font)#charWidth (!aChar)) / 2)
            end
        done;
        offsetXArray <- !offsetXArray_arg
        end [@@warning "-20"]
    

    method paintVerticle : 'any1. 'any1 * string * int * int * int -> unit = fun (graphics, (string : string), (x : int), (y : int), (anchor_arg : int)) ->
        let graphics = Obj.repr graphics in
        begin
        let size : int ref = ref ((String.length string)) in ();
        let aChar : char ref = ref ('\000') in ();
        for index = (!size - 1) downto 0 do
            aChar := (String.get string (index));
            ignore ((Obj.magic graphics)#drawChar (!aChar, (x + offsetXArray.(index)), ((y + ((charHeight * index))) + offsetY), anchor_arg))
        done
        end [@@warning "-20"]
    

    method drawCenterString : 'any1. 'any1 * string * int * int * int * int -> unit = fun (graphics, (string : string), (offset : int), (length : int), (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        let width : int ref = ref ((((((Obj.magic graphics)#getFont ())#substringWidth (string, offset, length)) asr 1))) in ();
        (try
            ignore ((Obj.magic graphics)#drawSubstring (string, offset, length, (x - !width), y, anchor))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((((((new StringMaker.stringMaker ())#append ("Exception: stringLength: "))#appendint ((String.length string)))#append (" offset: "))#appendint (offset))#append (" currentLength: "))#appendint (length)))), self, "drawCenterString"))))
        end)
        end [@@warning "-20"]
    

    method drawCenterStrings : 'any1. 'any1 * string array * int * int * int -> unit = fun (graphics, (stringArray : string array), (maxWidth : int), (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        let extraLines : int ref = ref (0) in ();
        for index = 0 to (Array.length stringArray) - 1 do
            let string : string ref = ref (stringArray.(index)) in ();
            if (!string <> eMPTY_STRING) then begin
                let width : int ref = ref ((((Obj.magic graphics)#getFont ())#stringWidth (!string))) in ();
                let minTotalLines : int ref = ref (1) in ();
                if (!width > maxWidth) then begin
                    minTotalLines := (((!width / maxWidth)) + 1)
                end;
                let linePortion : int ref = ref (((String.length !string) / !minTotalLines)) in ();
                let offset : int ref = ref (0) in ();
                let currentLength : int ref = ref (!linePortion) in ();
                let size : int ref = ref ((String.length !string)) in ();
                while (!offset < !size) do
                    if ((!offset + !currentLength) > !size) then begin
                        currentLength := (!size - !offset)
                    end;
                    if ((!offset + !currentLength) <> !size) then begin
                        while ((!currentLength > 0) && ((stringArray.(index)#charAt ((!offset + !currentLength))) != ' ')) do
                            currentLength := !currentLength - 1
                        done;
                        if (!currentLength <= 4) then begin
                            currentLength := !linePortion
                        end
                    end;
                    (self#drawCenterString ((Obj.magic graphics), !string, !offset, !currentLength, x, (y + ((((index + (let value = !extraLines in extraLines := !extraLines + 1; value))) * charHeight)))));
                    offset := (!offset + !currentLength);
                    currentLength := !linePortion
                done;
                extraLines := !extraLines - 1
            end
        done
        end [@@warning "-20"]

    initializer
      begin
        eMPTY_STRING <- (StringUtil.getInstance ())#eMPTY_STRING;
        anchor <- (Anchor.get_tOP_LEFT ());
        charHeight <- 0;
        offsetY <- 0;
        offsetXArray <- (NullUtil.getInstance ())#nULL_INT_ARRAY;
        ()
      end
  end
let () = java_register_constructor "DrawVerticalStringUtil" (fun arguments -> Obj.repr (new drawVerticalStringUtil (Obj.obj arguments)))

let instance = (new drawVerticalStringUtil ())
let get_instance () = instance
let () = java_register_static "DrawVerticalStringUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DrawVerticalStringUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


