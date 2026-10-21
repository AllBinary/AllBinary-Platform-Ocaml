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
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.media.image.ImageModifierUtil *)

class changeColorProcessor () =
  object
    inherit ModifierBaseProcessor.modifierBaseProcessor ()
    

    method updateColor : 'any1 'any2 'any3 'any5. 'any1 * 'any2 * 'any3 * int * 'any5 -> unit = fun (imageModifierUtil, originalImage, imageToShow, (index : int), basicColor) ->
        let imageModifierUtil = Obj.repr imageModifierUtil in
        let originalImage = Obj.repr originalImage in
        let imageToShow = Obj.repr imageToShow in
        let basicColor = Obj.repr basicColor in
        begin
        ignore ((Obj.magic imageModifierUtil)#changeColor ((Obj.magic originalImage), (Obj.magic imageToShow), index, (Obj.magic basicColor)))
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ChangeColorProcessor" (fun arguments -> Obj.repr (new changeColorProcessor (Obj.obj arguments)))

let instanceC = (new changeColorProcessor ())
let get_instanceC () = instanceC
let () = java_register_static "ChangeColorProcessor.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "ChangeColorProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


