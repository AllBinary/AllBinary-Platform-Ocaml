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
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.media.image.ImageModifierUtil *)

class alphaProcessor () =
  object
    inherit AlphaBaseProcessor.alphaBaseProcessor ()
    

    method setAlpha : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> unit = fun (imageModifierUtil, _originalImage, imageToShow, (alpha : int)) ->
        let imageModifierUtil = Obj.repr imageModifierUtil in
        let imageToShow = Obj.repr imageToShow in
        begin
        ignore ((Obj.magic imageModifierUtil)#setAlpha3 ((Obj.magic imageToShow), alpha))
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AlphaProcessor" (fun arguments -> Obj.repr (new alphaProcessor (Obj.obj arguments)))

let instanceC = (new alphaProcessor ())
let get_instanceC () = instanceC
let () = java_register_static "AlphaProcessor.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "AlphaProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


