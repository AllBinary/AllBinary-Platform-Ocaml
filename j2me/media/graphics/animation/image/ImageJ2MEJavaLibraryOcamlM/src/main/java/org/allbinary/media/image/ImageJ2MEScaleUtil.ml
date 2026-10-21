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
    

    method scale : 'any1 'return. 'any1 * int * int -> 'return = fun (image, (width : int), (height : int)) ->
        let image = Obj.repr image in
        begin
        let sourceWidth : int ref = ref (((Obj.magic image)#getWidth ())) in ();
        let sourceHeight : int ref = ref (((Obj.magic image)#getHeight ())) in ();
        let originalData : int array ref = ref ((Array.make ((((Obj.magic image)#getWidth ()) * ((Obj.magic image)#getHeight ()))) 0)) in ();
        ignore ((Obj.magic image)#getRGB (!originalData, 0, ((Obj.magic image)#getWidth ()), 0, 0, ((Obj.magic image)#getWidth ()), ((Obj.magic image)#getHeight ())));
        let scaledData : int array ref = ref ((Array.make ((width * height)) 0)) in ();
        let heightRatioFactor : int ref = ref ((((8 * !sourceHeight)) / height)) in ();
        let widthRatioFactor : int ref = ref ((((8 * !sourceWidth)) / width)) in ();
        let scaledIndex : int ref = ref (((Array.length !scaledData) - 1)) in ();
        let dx : int ref = ref (0) in ();
        let dy : int ref = ref (0) in ();
        let index : int ref = ref (height) in ();
        while ((index := !index - 1; !index) >= 0) do
            dy := (((!index * !heightRatioFactor)) asr 3);
            let index2 : int ref = ref (width) in ();
            while ((index2 := !index2 - 1; !index2) >= 0) do
                dx := (((!index2 * !widthRatioFactor)) asr 3);
                !scaledData.((let value = !scaledIndex in scaledIndex := !scaledIndex - 1; value)) <- !originalData.((((!sourceWidth * !dy)) + !dx))
            done
        done;
        let scaledImage : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Image.createRGBImage" (Obj.repr (!scaledData, width, height, true)))))) in ();
        (Obj.magic ((Obj.magic !scaledImage)))
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


