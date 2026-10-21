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

class imageJ2MEScaleUtil () =
  object (self)
    
    

    method scaleArray : 'return. _ * int * int -> 'return = fun (images, (width : int), (height : int)) ->
        begin
        let scaledImages : Obj.t ref = ref ((Obj.repr (Array.make ((Array.length images)) (Obj.magic 0)))) in ();
        let index : int ref = ref ((Array.length images)) in ();
        while ((index := !index - 1; !index) >= 0) do
            (Obj.magic !scaledImages).(!index) <- (self#scale (images.(!index), width, height))
        done;
        (Obj.magic ((Obj.magic !scaledImages)))
        end
    

    method scale : 'any1 'return. 'any1 * int * int -> 'return = fun (image, (_width : int), (_height : int)) ->
        let image = Obj.repr image in
        begin
        (Obj.magic ((Obj.magic image)))
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


