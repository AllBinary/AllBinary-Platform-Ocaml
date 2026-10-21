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
(* import android.graphics.Bitmap *)
(* import android.graphics.Canvas *)
(* import android.graphics.Matrix *)
(* import org.microemu.android.device.AndroidImageInterface *)

class imageRotationUtil () =
  object
    val mutable matrix : Obj.t = Obj.repr 0
    method matrix : 'r. 'r = Obj.magic matrix
    method set_matrix : 'v. 'v -> unit = fun value' -> matrix <- Obj.repr value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    
    

    method createRotatedImage : 'any1 'return. 'any1 * int -> 'return = fun (originalImage, (rotationInDegrees : int)) ->
        let originalImage = Obj.repr originalImage in
        try
        begin
        let image : Obj.t ref = ref ((Obj.repr ((ImageCreationUtil.getInstance ())#createImageWH (((Obj.magic originalImage)#getWidth ()), ((Obj.magic originalImage)#getHeight ()))))) in ();
        if ((Obj.magic !image)#isMutable ()) then begin
            let bitmap : Obj.t ref = ref ((Obj.repr (((Obj.magic (Obj.magic !image)))#getBitmap ()))) in ();
            let width : int ref = ref (((Obj.magic !bitmap)#getWidth ())) in ();
            let height : int ref = ref (((Obj.magic !bitmap)#getHeight ())) in ();
            ignore ((Obj.magic matrix)#setRotate ((float_of_int (rotationInDegrees)), (float_of_int (((!width asr 1)))), (float_of_int (((!height asr 1))))));
            let canvas : Obj.t ref = ref ((Obj.repr (((Obj.magic (Obj.magic !image)))#getCanvas ()))) in ();
            ignore ((Obj.magic !canvas)#concat ((Obj.magic matrix)));
            ignore (((Obj.magic !image)#getGraphics ())#drawImage ((Obj.magic originalImage), 0, 0, anchor));
            raise (Java_return (Obj.repr ((Obj.magic !image))))
        end else begin
            raise (Failure ("Not Mutable"))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        matrix <- (Obj.repr (new Matrix.matrix ()));
        anchor <- (Anchor.get_tOP_LEFT ());
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageRotationUtil" (fun arguments -> Obj.repr (new imageRotationUtil (Obj.obj arguments)))

let instance = (new imageRotationUtil ())
let get_instance () = instance
let () = java_register_static "ImageRotationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageRotationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


