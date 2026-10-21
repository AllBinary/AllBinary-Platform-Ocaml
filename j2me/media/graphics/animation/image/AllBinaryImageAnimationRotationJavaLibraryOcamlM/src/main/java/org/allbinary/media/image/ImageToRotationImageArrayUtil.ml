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

class imageToRotationImageArrayUtil () =
  object
    
    

    method generate : 'any1 'return. 'any1 * int * int -> 'return = fun (image, (angleIncrement : int), (totalAngle : int)) ->
        let image = Obj.repr image in
        begin
        let imageRotationUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ImageRotationUtil.getInstance" (Obj.repr ()))))) in ();
        let totalFrames : int ref = ref ((totalAngle / angleIncrement)) in ();
        let imageArray : Obj.t ref = ref ((Obj.repr (Array.make (!totalFrames) (Obj.magic 0)))) in ();
        (Obj.magic !imageArray).(0) <- (Obj.magic image);
        for index = 1 to !totalFrames - 1 do
            (Obj.magic !imageArray).(index) <- ((Obj.magic !imageRotationUtil)#createRotatedImage ((Obj.magic image), (index * angleIncrement)))
        done;
        (Obj.magic ((Obj.magic !imageArray)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ImageToRotationImageArrayUtil" (fun arguments -> Obj.repr (new imageToRotationImageArrayUtil (Obj.obj arguments)))

let instance = (new imageToRotationImageArrayUtil ())
let get_instance () = instance
let () = java_register_static "ImageToRotationImageArrayUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageToRotationImageArrayUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


