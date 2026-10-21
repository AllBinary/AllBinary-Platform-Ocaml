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

class scaleBaseProcessor () =
  object
    

    method update : 'any1. 'any1 * _ * _ * int * float * float * float * float -> unit = fun (_originalImage, _originalImageArray, _imageToShowArray, (_index : int), (_scaleX : float), (_scaleY : float), (_maxScaleX : float), (_maxScaleY : float)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ScaleBaseProcessor" (fun arguments -> Obj.repr (new scaleBaseProcessor (Obj.obj arguments)))

let instance = (new scaleBaseProcessor ())
let get_instance () = instance
let () = java_register_static "ScaleBaseProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ScaleBaseProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


