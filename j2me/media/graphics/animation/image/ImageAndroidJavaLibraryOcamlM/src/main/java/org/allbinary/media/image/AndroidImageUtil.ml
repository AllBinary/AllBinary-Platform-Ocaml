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
(* import android.graphics.Bitmap *)
(* import android.graphics.Canvas *)
(* import android.graphics.Color *)
(* import android.graphics.Matrix *)
(* import android.graphics.Paint *)
(* import javax.microedition.lcdui.Image *)
(* import org.microemu.android.device.AndroidImageInterface *)

class androidImageUtil () =
  object
    

    method paintBitmap : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (bitmap, originalBitmap, paint) ->
        let bitmap = Obj.repr bitmap in
        let originalBitmap = Obj.repr originalBitmap in
        let paint = Obj.repr paint in
        begin
        ignore ((Obj.magic bitmap)#eraseColor ((Obj.magic (java_call_static "Color.get_tRANSPARENT" (Obj.repr ())))));
        let canvas : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "Canvas" (Obj.repr ()))))) in ();
        ignore ((Obj.magic !canvas)#setBitmap ((Obj.magic bitmap)));
        ignore ((Obj.magic !canvas)#drawBitmap ((Obj.magic originalBitmap), 0.0, 0.0, (Obj.magic paint)))
        end [@@warning "-20"]
    

    method paint : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (image, originalImage, paint) ->
        let image = Obj.repr image in
        let originalImage = Obj.repr originalImage in
        let paint = Obj.repr paint in
        begin
        let androidImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
        ignore (((Obj.magic !androidImage)#getBitmap ())#eraseColor ((Obj.magic (java_call_static "Color.get_tRANSPARENT" (Obj.repr ())))));
        let canvas : Obj.t ref = ref ((Obj.repr ((Obj.magic !androidImage)#getCanvas ()))) in ();
        let originalAndroidImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic originalImage)))) in ();
        ignore ((Obj.magic !canvas)#drawBitmap (((Obj.magic !originalAndroidImage)#getBitmap ()), 0.0, 0.0, (Obj.magic paint)))
        end [@@warning "-20"]
    

    method rotate : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 -> unit = fun (image, originalImage, matrix, paint) ->
        let image = Obj.repr image in
        let originalImage = Obj.repr originalImage in
        let matrix = Obj.repr matrix in
        let paint = Obj.repr paint in
        begin
        let androidImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
        ignore (((Obj.magic !androidImage)#getBitmap ())#eraseColor ((Obj.magic (java_call_static "Color.get_tRANSPARENT" (Obj.repr ())))));
        let canvas : Obj.t ref = ref ((Obj.repr ((Obj.magic !androidImage)#getCanvas ()))) in ();
        ignore ((Obj.magic !canvas)#concat ((Obj.magic matrix)));
        let originalAndroidImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic originalImage)))) in ();
        ignore ((Obj.magic !canvas)#drawBitmap (((Obj.magic !originalAndroidImage)#getBitmap ()), 0.0, 0.0, (Obj.magic paint)))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AndroidImageUtil" (fun arguments -> Obj.repr (new androidImageUtil (Obj.obj arguments)))

let instance = (new androidImageUtil ())
let get_instance () = instance
let () = java_register_static "AndroidImageUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AndroidImageUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


