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
(* import android.graphics.Paint *)
(* import android.graphics.PorterDuff *)
(* import android.graphics.PorterDuffColorFilter *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.graphics.color.BasicColor *)

class imageModifierUtil () =
  object
    val mutable paint : Obj.t = Obj.repr 0
    method paint : 'r. 'r = Obj.magic paint
    method set_paint : 'v. 'v -> unit = fun value' -> paint <- Obj.repr value'
    

    method setColor : 'any1 'any2 'any4. 'any1 * 'any2 * int * 'any4 -> unit = fun (_unusedOriginalImage, _image, (_imageIndex : int), basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        ignore ((Obj.magic paint)#setColorFilter ((new PorterDuffColorFilter.porterDuffColorFilter (((Obj.magic basicColor)#intValue ()), (PorterDuff.get_mode ())#sRC_IN))))
        end [@@warning "-20"]
    

    method changeColor : 'any1 'any2 'any4. 'any1 * 'any2 * int * 'any4 -> unit = fun (_unusedOriginalImage, _image, (_imageIndex : int), basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        ignore ((Obj.magic paint)#setColorFilter ((new PorterDuffColorFilter.porterDuffColorFilter (((Obj.magic basicColor)#intValue ()), (PorterDuff.get_mode ())#sRC_IN))))
        end [@@warning "-20"]
    

    method setAlpha : 'any1 'any2. 'any1 * 'any2 * int * int -> unit = fun (_originalImage, _image, (_imageIndex : int), (alphaInt : int)) ->
        begin
        if (alphaInt <> ((Obj.magic paint)#getAlpha ())) then begin
            ignore ((Obj.magic paint)#setAlpha (alphaInt))
        end
        end [@@warning "-20"]
    

    method getImageArray : 'return. _ -> 'return = fun (originalImageArray) ->
        begin
        (Obj.magic (originalImageArray))
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
        paint <- (Obj.repr (new Paint.paint ((Paint.get_aNTI_ALIAS_FLAG ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageModifierUtil" (fun arguments -> Obj.repr (new imageModifierUtil (Obj.obj arguments)))

let getInstanceOrCreate () =
        begin
        (new imageModifierUtil ())
        end
let () = java_register_static "ImageModifierUtil.getInstanceOrCreate" (fun arguments -> Obj.repr (getInstanceOrCreate (Obj.obj arguments)))


