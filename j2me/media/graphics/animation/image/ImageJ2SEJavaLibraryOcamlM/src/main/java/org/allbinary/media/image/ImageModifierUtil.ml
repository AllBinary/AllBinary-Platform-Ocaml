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
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import java.awt.image.ColorModel *)
(* import java.awt.image.WritableRaster *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.string.CommonStrings *)

class imageModifierUtil () =
  object (self)
    val mutable imageUtil : Obj.t = Obj.repr 0
    method imageUtil : 'r. 'r = Obj.magic imageUtil
    method set_imageUtil : 'v. 'v -> unit = fun value' -> imageUtil <- Obj.repr value'
    val mutable colorArray : int array = (Obj.magic 0)
    method colorArray = colorArray
    method set_colorArray value' = colorArray <- value'
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (_basicColor) ->
        begin
        ()
        end [@@warning "-20"]
    

    method setColor : 'any1 'any2 'any4. 'any1 * 'any2 * int * 'any4 -> unit = fun (_unusedOriginalImage, image, (_imageIndex : int), basicColor) ->
        let image = Obj.repr image in
        let basicColor = Obj.repr basicColor in
        begin
        let newBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageUtil)#getBufferedImage ((Obj.magic image))))) in ();
        let r : int ref = ref ((Obj.magic basicColor)#red) in ();
        let g : int ref = ref ((Obj.magic basicColor)#green) in ();
        let b : int ref = ref ((Obj.magic basicColor)#blue) in ();
        let width : int ref = ref (((Obj.magic image)#getWidth ())) in ();
        let height : int ref = ref (((Obj.magic image)#getHeight ())) in ();
        let colorModel : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let dataElements : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let ax : int ref = ref (0) in ();
        let rx : int ref = ref (0) in ();
        let gx : int ref = ref (0) in ();
        let bx : int ref = ref (0) in ();
        for index = 0 to !width - 1 do
            for index2 = 0 to !height - 1 do
                colorModel := Obj.repr (((Obj.magic !newBufferedImage)#getColorModel ()));
                dataElements := (((Obj.magic !newBufferedImage)#getRaster ())#getDataElements (index, index2, (Obj.magic 0)));
                ax := ((Obj.magic !colorModel)#getAlpha (!dataElements));
                rx := ((Obj.magic !colorModel)#getRed (!dataElements));
                gx := ((Obj.magic !colorModel)#getGreen (!dataElements));
                bx := ((Obj.magic !colorModel)#getBlue (!dataElements));
                if (((!rx <> 0) || (!gx <> 0)) || (!bx <> 0)) then begin
                    ignore ((Obj.magic !newBufferedImage)#setRGB (index, index2, (((((!ax lsl 24)) lor ((!r lsl 16))) lor ((!g lsl 8))) lor (!b))))
                end
            done
        done
        end [@@warning "-20"]
    

    method changeColor : 'any1 'any2 'any4. 'any1 * 'any2 * int * 'any4 -> unit = fun (_unusedOriginalImage, image, (_imageIndex : int), basicColor) ->
        let image = Obj.repr image in
        let basicColor = Obj.repr basicColor in
        begin
        let newBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageUtil)#getBufferedImage ((Obj.magic image))))) in ();
        let mAX : float ref = ref (255.) in ();
        let r : float ref = ref ((((java_to_float (Obj.repr ((Obj.magic basicColor)#red)))) /. !mAX)) in ();
        let g : float ref = ref ((((java_to_float (Obj.repr ((Obj.magic basicColor)#green)))) /. !mAX)) in ();
        let b : float ref = ref ((((java_to_float (Obj.repr ((Obj.magic basicColor)#blue)))) /. !mAX)) in ();
        let width : int ref = ref (((Obj.magic image)#getWidth ())) in ();
        let height : int ref = ref (((Obj.magic image)#getHeight ())) in ();
        let colorModel : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let dataElements : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let ax : int ref = ref (0) in ();
        let rx : int ref = ref (0) in ();
        let gx : int ref = ref (0) in ();
        let bx : int ref = ref (0) in ();
        for index = 0 to !width - 1 do
            for index2 = 0 to !height - 1 do
                colorModel := Obj.repr (((Obj.magic !newBufferedImage)#getColorModel ()));
                dataElements := (((Obj.magic !newBufferedImage)#getRaster ())#getDataElements (index, index2, (Obj.magic 0)));
                ax := ((Obj.magic !colorModel)#getAlpha (!dataElements));
                rx := ((Obj.magic !colorModel)#getRed (!dataElements));
                gx := ((Obj.magic !colorModel)#getGreen (!dataElements));
                bx := ((Obj.magic !colorModel)#getBlue (!dataElements));
                rx := (int_of_float ((!rx *. !r)));
                gx := (int_of_float ((!gx *. !g)));
                bx := (int_of_float ((!bx *. !b)));
                ignore ((Obj.magic !newBufferedImage)#setRGB (index, index2, (((((!ax lsl 24)) lor ((!rx lsl 16))) lor ((!gx lsl 8))) lor (!bx))))
            done
        done
        end [@@warning "-20"]
    

    method setAlpha : 'any1 'any2. 'any1 * 'any2 * int * int -> unit = fun (_unusedOriginalImage, image, (_imageIndex : int), (alphaInt : int)) ->
        let image = Obj.repr image in
        begin
        let alpha : int ref = ref (alphaInt) in ();
        let newBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageUtil)#getBufferedImage ((Obj.magic image))))) in ();
        let width : int ref = ref (((Obj.magic image)#getWidth ())) in ();
        let height : int ref = ref (((Obj.magic image)#getHeight ())) in ();
        let raster : Obj.t ref = ref ((Obj.repr ((Obj.magic !newBufferedImage)#getAlphaRaster ()))) in ();
        for index = 0 to !width - 1 do
            for index2 = 0 to !height - 1 do
                ignore ((Obj.magic !raster)#getPixel (index, index2, colorArray));
                colorArray.(0) <- (!alpha land colorArray.(0));
                ignore ((Obj.magic !raster)#setPixel (index, index2, colorArray))
            done
        done
        end [@@warning "-20"]
    

    method getImageArray : 'return. _ -> 'return = fun (originalImageArray) ->
        begin
        (try
            let newImageArray : Obj.t ref = ref ((Obj.repr (Array.make ((Array.length originalImageArray)) (Obj.magic 0)))) in ();
            let size : int ref = ref ((Array.length (Obj.magic !newImageArray))) in ();
            let originalImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            for index = 0 to !size - 1 do
                originalImage := Obj.repr (originalImageArray.(index));
                let image : Obj.t ref = ref ((Obj.repr ((ImageCreationUtil.getInstance ())#createImageWH (((Obj.magic !originalImage)#getWidth ()), ((Obj.magic !originalImage)#getHeight ()))))) in ();
                ignore (((Obj.magic !image)#getGraphics ())#drawImage ((Obj.magic !originalImage), 0, 0, (Anchor.get_tOP_LEFT ())));
                (Obj.magic !newImageArray).(index) <- (Obj.magic !image)
            done;
            (Obj.magic ((Obj.magic !newImageArray)))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (!commonStrings#eXCEPTION, self, "getImageArray", e))));
            (Obj.magic (originalImageArray))
        end)
        end
    

    method handleImage : 'any3. _ * int * 'any3 -> unit = fun (_imageArray, (_index : int), _image) ->
        begin
        ()
        end [@@warning "-20"]
    

    method reset () : unit =
        begin
        ()
        end

    initializer
      begin
        imageUtil <- (Obj.repr (Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ()))));
        colorArray <- (Array.make (1) 0);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageModifierUtil" (fun arguments -> Obj.repr (new imageModifierUtil (Obj.obj arguments)))

let instance = (new imageModifierUtil ())
let get_instance () = instance
let () = java_register_static "ImageModifierUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstanceOrCreate () =
        begin
        instance
        end
let () = java_register_static "ImageModifierUtil.getInstanceOrCreate" (fun arguments -> Obj.repr (getInstanceOrCreate (Obj.obj arguments)))


