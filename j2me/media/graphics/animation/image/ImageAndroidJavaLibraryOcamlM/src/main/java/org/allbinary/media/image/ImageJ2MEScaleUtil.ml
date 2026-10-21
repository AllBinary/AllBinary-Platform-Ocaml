(*

  AllBinary Open License Version 1
  Copyright (c) 2023 AllBinary
  
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
(* import org.allbinary.image.GameFeatureImageCacheFactory *)

class imageJ2MEScaleUtil () =
  object
    
    

    method scaleArray : 'return. _ * int * int -> 'return = fun (images, (width : int), (height : int)) ->
        begin
        for index = 0 to (Array.length images) - 1 do
            let image : Obj.t ref = ref ((Obj.repr images.(index))) in ();
            images.(index) <- ((Obj.magic (java_call_static "ImageScaleUtil.getInstance" (Obj.repr ())))#createImage2 ((GameFeatureImageCacheFactory.getInstance ()), (Obj.magic !image), ((float_of_int (width)) /. 2.), (java_to_float (Obj.repr (((Obj.magic !image)#getWidth ())))), (float_of_int (height)), (java_to_float (Obj.repr (((Obj.magic !image)#getHeight ())))), false))
        done;
        (Obj.magic (images))
        end
    

    method scale : 'any1 'return. 'any1 * int * int -> 'return = fun (image, (width : int), (height : int)) ->
        let image = Obj.repr image in
        begin
        (Obj.magic (((Obj.magic (java_call_static "ImageScaleUtil.getInstance" (Obj.repr ())))#createImage2 ((GameFeatureImageCacheFactory.getInstance ()), (Obj.magic image), (float_of_int (width)), (java_to_float (Obj.repr (((Obj.magic image)#getWidth ())))), (float_of_int (height)), (java_to_float (Obj.repr (((Obj.magic image)#getHeight ())))), false))))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ImageJ2MEScaleUtil" (fun arguments -> Obj.repr (new imageJ2MEScaleUtil (Obj.obj arguments)))

let instance = (new imageJ2MEScaleUtil ())
let get_instance () = instance
let () = java_register_static "ImageJ2MEScaleUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageJ2MEScaleUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


