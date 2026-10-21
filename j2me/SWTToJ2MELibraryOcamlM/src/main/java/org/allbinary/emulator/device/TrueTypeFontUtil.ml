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
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import org.eclipse.swt.SWT *)
(* import org.eclipse.swt.graphics.ImageData *)
(* import org.eclipse.swt.graphics.ImageLoader *)
(* import org.microemu.device.swt.SwtMutableImage *)
(* import org.allbinary.AvianUtil *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.graphics.opengles.OpenGLCapabilities *)
(* import org.allbinary.image.PreResourceImageUtil *)
(* import org.allbinary.image.opengles.OpenGLESImage *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class trueTypeFontUtil () =
  object (self)
    inherit TrueTypeFontUtilBase.trueTypeFontUtilBase (2)
    val mutable preResourceImageUtil : Obj.t = Obj.repr 0
    method preResourceImageUtil : 'r. 'r = Obj.magic preResourceImageUtil
    method set_preResourceImageUtil : 'v. 'v -> unit = fun value' -> preResourceImageUtil <- Obj.repr value'
    val mutable widthFloatArray : float array = (Obj.magic 0)
    method widthFloatArray = widthFloatArray
    method set_widthFloatArray value' = widthFloatArray <- value'
    val mutable fontImage : Obj.t = Obj.repr 0
    method fontImage : 'r. 'r = Obj.magic fontImage
    method set_fontImage : 'v. 'v -> unit = fun value' -> fontImage <- Obj.repr value'
    val mutable widthScale : float = 0.0
    method widthScale = widthScale
    method set_widthScale value' = widthScale <- value'
    
    

    method getFontBitmapGL : 'any1 'any4 'return. 'any1 * string * int * 'any4 -> 'return = fun (_gl, (_filename : string), (_cellSize : int), _basicColor) ->
        try
        begin
        (try
            if ((Obj.repr (Obj.magic fontImage)) == (Obj.repr (Obj.magic (java_call_static "OpenGLESImage.get_nULL_OPENGL_IMAGE" (Obj.repr ()))))) then begin
                let canvasStrings : CanvasStrings.canvasStrings ref = ref (((CanvasStrings.getInstance ()) :> CanvasStrings.canvasStrings)) in ();
                let openGLCapabilities : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "OpenGLCapabilities.getInstance" (Obj.repr ()))))) in ();
                if (((Obj.magic !openGLCapabilities)#isTextureSizeValid (1024)) && (scale == 2)) then begin
                    let fONT_ATLAS_1024 : string ref = ref ("/font_1024.png") in ();
                    let image : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Image.createImage" (Obj.repr (((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getResourceAsStream (!fONT_ATLAS_1024)))))))) in ();
                    ignore ((Obj.magic !image)#setName (!canvasStrings#fONT_ATLAS));
                    fontImage <- Obj.repr ((Obj.magic ((Obj.magic preResourceImageUtil)#encapsulate ((Obj.magic !image)))))
                end else if ((Obj.magic !openGLCapabilities)#isTextureSizeValid (512)) then begin
                    let fONT_ATLAS_512 : string ref = ref ("/font_512.png") in ();
                    let image : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Image.createImage" (Obj.repr (((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getResourceAsStream (!fONT_ATLAS_512)))))))) in ();
                    ignore ((Obj.magic !image)#setName (!canvasStrings#fONT_ATLAS));
                    fontImage <- Obj.repr ((Obj.magic ((Obj.magic preResourceImageUtil)#encapsulate ((Obj.magic !image)))))
                end else begin
                    let fONT_ATLAS_512 : string ref = ref ("/font_512.png") in ();
                    let image : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Image.createImage" (Obj.repr (((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getResourceAsStream (!fONT_ATLAS_512)))))))) in ();
                    ignore ((Obj.magic !image)#setName (!canvasStrings#fONT_ATLAS));
                    fontImage <- Obj.repr ((Obj.magic ((Obj.magic preResourceImageUtil)#encapsulate ((Obj.magic !image)))))
                end;
                raise (Java_return (Obj.repr ((Obj.magic fontImage))))
            end else begin
                raise (Java_return (Obj.repr ((Obj.magic fontImage))))
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (!commonStrings#eXCEPTION, self, !commonStrings#eXCEPTION, e))));
            raise (Failure ("RuntimeException"))
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method saveFontAtlasAsFile () : unit =
        begin
        let image : Obj.t ref = ref ((Obj.repr (self#getFontBitmap ((Obj.magic 0), cellSize, (BasicColorFactory.getInstance ())#wHITE)))) in ();
        let imageLoader : Obj.t ref = ref ((Obj.repr (new ImageLoader.imageLoader ()))) in ();
        let imageData : Obj.t ref = ref ((Obj.repr (((Obj.magic (Obj.magic !image)))#image#getImageData ()))) in ();
        ignore ((Obj.magic !imageData)#set_transparentPixel (((Obj.magic !imageData)#getPixel (0, 0))));
        ignore ((Obj.magic !imageLoader)#set_data ([| (Obj.magic !imageData) |]));
        ignore ((Obj.magic !imageLoader)#save (((CommonSeps.getInstance ())#pERIOD + (CanvasStrings.getInstance ())#fONT_ATLAS), (SWT.get_iMAGE_PNG ())))
        end [@@warning "-7"]
    

    method getFontBitmap : 'any3 'return. string * int * 'any3 -> 'return = fun ((_filename : string), (cellSize : int), basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        let cellsPerRow2 : int ref = ref ((cELLS_PER_ROW * 2)) in ();
        let cellsPerRow3 : int ref = ref ((cELLS_PER_ROW * 3)) in ();
        let cellsPerRow4 : int ref = ref ((cELLS_PER_ROW * 4)) in ();
        let cellsPerRow5 : int ref = ref ((cELLS_PER_ROW * 5)) in ();
        let cellsPerRow6 : int ref = ref ((cELLS_PER_ROW * 6)) in ();
        let cellsPerRow7 : int ref = ref ((cELLS_PER_ROW * 7)) in ();
        let image : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Image.createImage" (Obj.repr (textureSize, textureSize)))))) in ();
        let graphics : Obj.t ref = ref ((Obj.repr ((Obj.magic !image)#getGraphics ()))) in ();
        ignore ((Obj.magic !graphics)#setColor (((Obj.magic basicColor)#intValue ())));
        let biggestHeight : int ref = ref (0) in ();
        let bounds : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "Rectangle" (Obj.repr (((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (0, 0)), cellSize, cellSize)))))) in ();
        let x : int ref = ref (0) in ();
        let y : int ref = ref (0) in ();
        for index = 0 to size - 1 do
            characterArray.(0) <- (Obj.magic ((pattern#charAt (index))));
            _characterWidth.(index) <- (Obj.magic (((Obj.magic !bounds)#getMaxX ())));
            if ((((Obj.magic !bounds)#getMaxY ()) - (((Obj.magic !bounds)#getPoint ())#getX ())) > !biggestHeight) then begin
                biggestHeight := (((Obj.magic !bounds)#getMaxY ()) - (((Obj.magic !bounds)#getPoint ())#getX ()))
            end;
            x := (((index mod cELLS_PER_ROW)) * cellSize);
            x := (!x + ((cellSize asr 1)));
            x := (!x - ((_characterWidth.(index) asr 1)));
            y := (-((cellSize asr 1)));
            if (index >= cELLS_PER_ROW) then begin
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
            ignore ((Obj.magic !graphics)#drawChar (characterArray.(0), !x, !y, 0))
        done;
        (Obj.magic ((Obj.magic !image)))
        end [@@warning "-7-20"]
    

    method getFontWidths ((_filename : string), (fontSize : int)) : int array =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        for index = 0 to size - 1 do
            characterArray.(0) <- (Obj.magic ((pattern#charAt (index))));
            if (characterArray.(0) == ' ') then begin
                _characterWidth.(index) <- (Obj.magic (((fontSize / 4))))
            end else begin
                let shortPatternIndex : int ref = ref ((shortPattern#indexOf (characterArray.(0)))) in ();
                let w : int ref = ref (((int_of_float (((widthFloatArray.(!shortPatternIndex) /. 75.)))) + 19)) in ();
                _characterWidth.(index) <- (Obj.magic (!w));
                if ((characterArray.(0) == '.') || (characterArray.(0) == '1')) then begin
                    _characterWidth.(index) <- (_characterWidth.(index) + 4)
                end;
                if ((characterArray.(0) >= 'a') && (characterArray.(0) < 'k')) then begin
                    _characterWidth.(index) <- (_characterWidth.(index) - 2)
                end;
                if ((characterArray.(0) >= 'k') && (characterArray.(0) < 'v')) then begin
                    _characterWidth.(index) <- (_characterWidth.(index) - 4)
                end;
                if ((characterArray.(0) >= 'v') && (characterArray.(0) < 'z')) then begin
                    _characterWidth.(index) <- (_characterWidth.(index) - 8)
                end;
                if (characterArray.(0) == 'D') then begin
                    _characterWidth.(index) <- (_characterWidth.(index) - 4)
                end;
                if ((characterArray.(0) >= 'A') && (characterArray.(0) <= 'Z')) then begin
                    _characterWidth.(index) <- (_characterWidth.(index) - 2)
                end
            end;
            _characterWidth.(index) <- (_characterWidth.(index) * widthScale)
        done;
        _characterWidth
        end [@@warning "-7"]

    initializer
      begin
        preResourceImageUtil <- (Obj.repr (Obj.magic (java_call_static "PreResourceImageUtil.getInstance" (Obj.repr ()))));
        widthFloatArray <- (Obj.magic 0);
        fontImage <- (Obj.repr (Obj.magic (java_call_static "OpenGLESImage.get_nULL_OPENGL_IMAGE" (Obj.repr ()))));
        ();
        ();
        (* super(...) is the inherit clause *) ();
        if (Obj.magic (java_call_static "AvianUtil.isAvian" (Obj.repr ()))) then begin
            widthFloatArray <- [| 1504.0; 967.0; 527.0; 961.0; 957.0; 1087.0; 920.0; 954.0; 973.0; 961.0; 955.0; 1296.0; 1013.0; 1106.0; 1167.0; 815.0; 815.0; 1216.0; 1110.0; 170.0; 520.0; 1056.0; 815.0; 1448.0; 1142.0; 1345.0; 927.0; 1345.0; 1030.0; 920.0; 1096.0; 1119.0; 1219.0; 1841.0; 1166.0; 1147.0; 1005.0; 879.0; 965.0; 792.0; 964.0; 927.0; 753.0; 1034.0; 916.0; 196.0; 469.0; 877.0; 166.0; 1563.0; 916.0; 1007.0; 965.0; 964.0; 631.0; 777.0; 649.0; 917.0; 1026.0; 1548.0; 993.0; 1028.0; 795.0; 241.0; 798.0; 241.0; 905.0; 1477.0; 393.0; 961.0; 961.0; 961.0; 961.0; 555.0; 1029.0; 1010.0; 1378.0; 952.0; 952.0; 952.0; 952.0; 463.0; 463.0; 926.0; 961.0; 491.0; 930.0; 457.0; 457.0; 644.0; 643.0; 326.0; 186.0; 1219.0; 241.0; 1599.0; 961.0; 302.0; 711.0; 961.0; 961.0; 710.0; 141.0; 1504.0; 1504.0; 1504.0; 1504.0; 1504.0; 1504.0; 1504.0; 1504.0 |]
        end else begin
            widthFloatArray <- [| 1504.0; 967.0; 527.0; 961.0; 957.0; 1087.0; 920.0; 954.0; 973.0; 961.0; 955.0; 1296.0; 1013.0; 1106.0; 1167.0; 815.0; 815.0; 1216.0; 1110.0; 170.0; 520.0; 1056.0; 815.0; 1448.0; 1142.0; 1345.0; 927.0; 1345.0; 1030.0; 920.0; 1096.0; 1119.0; 1219.0; 1841.0; 1166.0; 1147.0; 1005.0; 879.0; 965.0; 792.0; 964.0; 927.0; 753.0; 1034.0; 916.0; 196.0; 469.0; 877.0; 166.0; 1563.0; 916.0; 1007.0; 965.0; 964.0; 631.0; 777.0; 649.0; 917.0; 1026.0; 1548.0; 993.0; 1028.0; 795.0; 241.0; 798.0; 241.0; 905.0; 1477.0; 393.0; 961.0; 555.0; 1029.0; 1010.0; 1378.0; 952.0; 463.0; 463.0; 926.0; 961.0; 491.0; 930.0; 457.0; 457.0; 644.0; 643.0; 326.0; 186.0; 1219.0; 241.0; 1599.0; 961.0; 302.0; 711.0; 961.0; 961.0; 710.0; 141.0; 1504.0; 1504.0 |]
        end;
        widthScale <- (if ((scale == 2)) then 1.2 else 1.)
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


