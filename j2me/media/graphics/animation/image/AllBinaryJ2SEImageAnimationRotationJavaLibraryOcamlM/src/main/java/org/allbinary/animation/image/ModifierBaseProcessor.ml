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
(* package org.allbinary.animation.image *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.media.image.ImageModifierUtil *)

class modifierBaseProcessor () =
  object
    

    method updateColor : 'any1 'any2 'any3 'any5. 'any1 * 'any2 * 'any3 * int * 'any5 -> unit = fun (_imageModifierUtil, _originalImage, _imageToShow, (_index : int), _basicColor) ->
        begin
        ()
        end [@@warning "-20"]
    

    method updateAlpha : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int * int -> unit = fun (_imageModifierUtil, _originalImage, _imageToShow, (_index : int), (_alpha : int)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ModifierBaseProcessor" (fun arguments -> Obj.repr (new modifierBaseProcessor (Obj.obj arguments)))

let instance = (new modifierBaseProcessor ())
let get_instance () = instance
let () = java_register_static "ModifierBaseProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ModifierBaseProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


