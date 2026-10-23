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
(* package org.allbinary.emulator.device *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.File *)
(* import java.io.FileOutputStream *)
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.lcdui.Image *)
(* import android.graphics.Bitmap *)
(* import android.graphics.Canvas *)
(* import android.graphics.Paint *)
(* import android.graphics.Rect *)
(* import android.graphics.Typeface *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.image.PreResourceImageUtil *)
(* import org.allbinary.image.opengles.OpenGLESImage *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.microemu.android.device.AndroidImageInterface *)
(* import org.microemu.android.device.AndroidImmutableImage *)

class trueTypeFontUtil () =
  object (self)
    inherit TrueTypeFontUtilBase.trueTypeFontUtilBase (1)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable preResourceImageUtil : Obj.t = Obj.repr 0
    method preResourceImageUtil : 'r. 'r = Obj.magic preResourceImageUtil
    method set_preResourceImageUtil : 'v. 'v -> unit = fun value' -> preResourceImageUtil <- Obj.repr value'
    val mutable realFontSize : int = 0
    method realFontSize = realFontSize
    method set_realFontSize value' = realFontSize <- value'
    val mutable fontImage : Obj.t = Obj.repr 0
    method fontImage : 'r. 'r = Obj.magic fontImage
    method set_fontImage : 'v. 'v -> unit = fun value' -> fontImage <- Obj.repr value'
    
    

    method saveFontAtlasAsFile () : unit =
        begin
        (try
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            let file : Obj.t ref = ref ((Obj.repr (((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getContext ())#getFilesDir ()))) in ();
            let path : string ref = ref ((((Obj.magic !file)#getAbsolutePath ()) + (CanvasStrings.getInstance ())#fONT_ATLAS)) in ();
            ignore ((Obj.magic logUtil)#putF (!path, self, !commonStrings#cONSTRUCTOR));
            let fos : Obj.t ref = ref ((Obj.repr (new FileOutputStream.fileOutputStream (!path)))) in ();
            let bitmap : Obj.t ref = ref ((Obj.repr (((Obj.magic ((Obj.magic fontImage)#openGLBitmap#getImage ())))#getBitmap ()))) in ();
            ignore ((Obj.magic !bitmap)#compress ((Bitmap.get_compressFormat ())#pNG, 100, (Obj.magic !fos)))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (!commonStrings#eXCEPTION, self, !commonStrings#eXCEPTION, e))))
        end)
        end [@@warning "-7"]
    

    method getFontBitmapGL : 'any1 'any4 'return. 'any1 * string * int * 'any4 -> 'return = fun (_gl, (_filename : string), (cellSize : int), basicColor) ->
        let basicColor = Obj.repr basicColor in
        try
        begin
        if ((Obj.repr (Obj.magic fontImage)) == (Obj.repr (Obj.magic (java_call_static "OpenGLESImage.get_nULL_OPENGL_IMAGE" (Obj.repr ()))))) then begin
            let cellsPerRow2 : int ref = ref (((self#cELLS_PER_ROW) * 2)) in ();
            let cellsPerRow3 : int ref = ref (((self#cELLS_PER_ROW) * 3)) in ();
            let cellsPerRow4 : int ref = ref (((self#cELLS_PER_ROW) * 4)) in ();
            let cellsPerRow5 : int ref = ref (((self#cELLS_PER_ROW) * 5)) in ();
            let cellsPerRow6 : int ref = ref (((self#cELLS_PER_ROW) * 6)) in ();
            let cellsPerRow7 : int ref = ref (((self#cELLS_PER_ROW) * 7)) in ();
            let typeface : Obj.t ref = ref ((Obj.repr (Typeface.get_dEFAULT ()))) in ();
            let textureSize : int ref = ref ((self#getAsTextureSize (((self#cELLS_PER_ROW) * cellSize)))) in ();
            let bitmap : Obj.t ref = ref ((Obj.repr (Bitmap.createBitmap (!textureSize, !textureSize, (Bitmap.get_config ())#aRGB_8888)))) in ();
            let canvas : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "Canvas" (Obj.repr ((Obj.magic !bitmap))))))) in ();
            let paint : Obj.t ref = ref ((Obj.repr (new Paint.paint ()))) in ();
            ignore ((Obj.magic !paint)#setTypeface ((Obj.magic !typeface)));
            ignore ((Obj.magic !paint)#setTextSize ((float_of_int (realFontSize))));
            ignore ((Obj.magic !paint)#setAlpha ((java_to_int (Obj.repr ((Obj.magic basicColor)#alpha)))));
            ignore ((Obj.magic !paint)#setColor (((Obj.magic basicColor)#intValue ())));
            let biggestHeight : int ref = ref (0) in ();
            let bounds : Obj.t ref = ref ((Obj.repr (new Rect.rect ()))) in ();
            let x : int ref = ref (0) in ();
            let y : int ref = ref (0) in ();
            for index = 0 to (self#size) - 1 do
                (self#characterArray).(0) <- (Obj.magic (((self#pattern)#charAt (index))));
                ignore ((Obj.magic !paint)#getTextBounds ((self#characterArray), 0, 1, (Obj.magic !bounds)));
                (self#_characterWidth).(index) <- (Obj.magic ((Obj.magic !bounds)#right));
                if (((Obj.magic !bounds)#bottom - (Obj.magic !bounds)#top) > !biggestHeight) then begin
                    biggestHeight := ((Obj.magic !bounds)#bottom - (Obj.magic !bounds)#top)
                end;
                x := (((index mod (self#cELLS_PER_ROW))) * cellSize);
                x := (!x + ((cellSize asr 1)));
                x := (!x - (((self#_characterWidth).(index) asr 1)));
                y := 0;
                if (index >= (self#cELLS_PER_ROW)) then begin
                    y := (!y + cellSize)
                end;
                if (index >= !cellsPerRow2) then begin
                    y := (!y + cellSize)
                end;
                if (index >= !cellsPerRow3) then begin
                    y := (!y + cellSize)
                end;
                if (index >= !cellsPerRow4) then begin
                    y := (!y + cellSize)
                end;
                if (index >= !cellsPerRow5) then begin
                    y := (!y + cellSize)
                end;
                if (index >= !cellsPerRow6) then begin
                    y := (!y + cellSize)
                end;
                if (index >= !cellsPerRow7) then begin
                    y := (!y + cellSize)
                end;
                y := (!y + cellSize);
                y := (!y - ((cellSize asr 2)));
                ignore ((Obj.magic !canvas)#drawText ((self#characterArray), 0, 1, ((float_of_int (!x)) -. 3.), ((float_of_int (!y)) -. 6.), (Obj.magic !paint)))
            done;
            ignore ((Obj.magic !canvas)#save ());
            let image : Obj.t ref = ref ((Obj.repr (AndroidImmutableImage.create ((Obj.magic !bitmap))))) in ();
            fontImage <- Obj.repr ((Obj.magic ((Obj.magic preResourceImageUtil)#encapsulate ((Obj.magic !image)))));
            raise (Java_return (Obj.repr ((Obj.magic fontImage))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic fontImage))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method getFontWidths ((_filename : string), (fontSize : int)) : int array =
        begin
        let typeface : Obj.t ref = ref ((Obj.repr (Typeface.get_dEFAULT ()))) in ();
        let paint : Obj.t ref = ref ((Obj.repr (new Paint.paint ()))) in ();
        ignore ((Obj.magic !paint)#setTypeface ((Obj.magic !typeface)));
        ignore ((Obj.magic !paint)#setTextSize ((float_of_int (fontSize))));
        ignore ((Obj.magic !paint)#setARGB (255, 255, 255, 255));
        let bounds : Obj.t ref = ref ((Obj.repr (new Rect.rect ()))) in ();
        for index = 0 to (self#size) - 1 do
            (self#characterArray).(0) <- (Obj.magic (((self#pattern)#charAt (index))));
            ignore ((Obj.magic !paint)#getTextBounds ((self#characterArray), 0, 1, (Obj.magic !bounds)));
            if (index < (self#lastCapIndex)) then begin
                if ((self#characterArray).(0) == '1') then begin
                    (self#_characterWidth).(index) <- (Obj.magic (((Obj.magic !bounds)#right + 3)))
                end else if ((((((((self#characterArray).(0) == 'J') || ((self#characterArray).(0) == 'V')) || ((self#characterArray).(0) == '2')) || ((self#characterArray).(0) == '9')) || ((self#characterArray).(0) == 'I')) || ((self#characterArray).(0) == 'N')) || ((self#characterArray).(0) == 'U')) then begin
                    (self#_characterWidth).(index) <- (Obj.magic (((Obj.magic !bounds)#right + 1)))
                end else if (((((self#characterArray).(0) == '4') || ((self#characterArray).(0) == 'C')) || ((self#characterArray).(0) == 'E')) || ((self#characterArray).(0) == 'O')) then begin
                    (self#_characterWidth).(index) <- (Obj.magic (((Obj.magic !bounds)#right - 2)))
                end else if (((((((self#characterArray).(0) == 'B') || ((self#characterArray).(0) == 'D')) || ((self#characterArray).(0) == 'G')) || ((self#characterArray).(0) == 'H')) || ((self#characterArray).(0) == 'T')) || ((self#characterArray).(0) == 'W')) then begin
                    (self#_characterWidth).(index) <- (Obj.magic (((Obj.magic !bounds)#right - 3)))
                end else if ((((self#characterArray).(0) == 'A') || ((self#characterArray).(0) == 'Q')) || ((self#characterArray).(0) == 'R')) then begin
                    (self#_characterWidth).(index) <- (Obj.magic (((Obj.magic !bounds)#right - 5)))
                end else if ((self#characterArray).(0) == 'M') then begin
                    (self#_characterWidth).(index) <- (Obj.magic (((Obj.magic !bounds)#right - 6)))
                end else if ((self#characterArray).(0) == 'm') then begin
                    (self#_characterWidth).(index) <- (Obj.magic (((Obj.magic !bounds)#right - 8)))
                end else begin
                    (self#_characterWidth).(index) <- (Obj.magic ((Obj.magic !bounds)#right))
                end
            end else begin
                if ((self#characterArray).(0) == ' ') then begin
                    (self#_characterWidth).(index) <- (Obj.magic (((Obj.magic !bounds)#right + 10)))
                end else if (((((((self#characterArray).(0) == 'l') || ((self#characterArray).(0) == 'i')) || ((self#characterArray).(0) == 'j')) || ((self#characterArray).(0) == '.')) || ((self#characterArray).(0) == '!')) || ((self#characterArray).(0) == '|')) then begin
                    (self#_characterWidth).(index) <- (Obj.magic (((Obj.magic !bounds)#right + 6)))
                end else if (((((self#characterArray).(0) == 'f') || ((self#characterArray).(0) == 't')) || ((self#characterArray).(0) == 'u')) || ((self#characterArray).(0) == 'v')) then begin
                    (self#_characterWidth).(index) <- (Obj.magic (((Obj.magic !bounds)#right + 1)))
                end else if ((self#characterArray).(0) == 'r') then begin
                    (self#_characterWidth).(index) <- (Obj.magic (((Obj.magic !bounds)#right + 2)))
                end else if (((((self#characterArray).(0) == 'a') || ((self#characterArray).(0) == 'b')) || ((self#characterArray).(0) == 'g')) || ((self#characterArray).(0) == 'u')) then begin
                    (self#_characterWidth).(index) <- (Obj.magic (((Obj.magic !bounds)#right - 1)))
                end else if (((self#characterArray).(0) == 'o') || ((self#characterArray).(0) == 'e')) then begin
                    (self#_characterWidth).(index) <- (Obj.magic (((Obj.magic !bounds)#right - 2)))
                end else if ((self#characterArray).(0) == 'm') then begin
                    (self#_characterWidth).(index) <- (Obj.magic (((Obj.magic !bounds)#right - 7)))
                end else begin
                    (self#_characterWidth).(index) <- (Obj.magic ((Obj.magic !bounds)#right))
                end
            end
        done;
        (self#_characterWidth).(0) <- (Obj.magic ((((fontSize asr 1)) - 2)));
        (self#_characterWidth)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        preResourceImageUtil <- (Obj.repr (Obj.magic (java_call_static "PreResourceImageUtil.getInstance" (Obj.repr ()))));
        realFontSize <- 18;
        fontImage <- (Obj.repr (Obj.magic (java_call_static "OpenGLESImage.get_nULL_OPENGL_IMAGE" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "TrueTypeFontUtil" (fun arguments -> Obj.repr (new trueTypeFontUtil (Obj.obj arguments)))

let instance = (new trueTypeFontUtil ())
let get_instance () = instance
let () = java_register_static "TrueTypeFontUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TrueTypeFontUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


