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
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.graphics.color.BasicColor *)

class imageModifierUtil () =
  object
    

    method setColor : 'any1 'any2 'any4. 'any1 * 'any2 * int * 'any4 -> unit = fun (_unusedOriginalImage, _image, (_imageIndex : int), _basicColor) ->
        begin
        ()
        end [@@warning "-20"]
    

    method changeColor : 'any1 'any2 'any4. 'any1 * 'any2 * int * 'any4 -> unit = fun (_unusedOriginalImage, _image, (_imageIndex : int), _basicColor) ->
        begin
        ()
        end [@@warning "-20"]
    

    method setAlpha : 'any1 'any2. 'any1 * 'any2 * int * int -> unit = fun (_originalImage, _image, (_imageIndex : int), (_alphaInt : int)) ->
        begin
        ()
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
        ()
      end
  end
let () = java_register_constructor "ImageModifierUtil" (fun arguments -> Obj.repr (new imageModifierUtil (Obj.obj arguments)))

let instance = (new imageModifierUtil ())
let get_instance () = instance
let () = java_register_static "ImageModifierUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstanceOrCreate () =
        begin
        instance
        end
let () = java_register_static "ImageModifierUtil.getInstanceOrCreate" (fun arguments -> Obj.repr (getInstanceOrCreate (Obj.obj arguments)))


