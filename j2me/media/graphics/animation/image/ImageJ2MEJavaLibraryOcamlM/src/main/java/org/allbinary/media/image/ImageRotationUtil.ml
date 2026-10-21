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
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.graphics.Anchor *)

class imageRotationUtil () =
  object
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    
    

    method createRotatedImage : 'any1 'return. 'any1 * int -> 'return = fun (originalImage, (_rotationInDegrees : int)) ->
        let originalImage = Obj.repr originalImage in
        begin
        (Obj.magic ((Obj.magic originalImage)))
        end [@@warning "-20"]

    initializer
      begin
        anchor <- (Anchor.get_tOP_LEFT ());
        ();
        ()
      end
  end
let () = java_register_constructor "ImageRotationUtil" (fun arguments -> Obj.repr (new imageRotationUtil (Obj.obj arguments)))

let instance = (new imageRotationUtil ())
let get_instance () = instance
let () = java_register_static "ImageRotationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageRotationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


