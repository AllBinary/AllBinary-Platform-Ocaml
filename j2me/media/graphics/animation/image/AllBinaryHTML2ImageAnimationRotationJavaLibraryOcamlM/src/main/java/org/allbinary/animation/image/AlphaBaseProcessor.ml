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
(* import org.allbinary.media.image.ImageModifierUtil *)

class alphaBaseProcessor () =
  object
    

    method setAlpha : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> unit = fun (_imageModifierUtil, _originalImage, _imageToShow, (_alpha : int)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AlphaBaseProcessor" (fun arguments -> Obj.repr (new alphaBaseProcessor (Obj.obj arguments)))

let instance = (new alphaBaseProcessor ())
let get_instance () = instance
let () = java_register_static "AlphaBaseProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AlphaBaseProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


