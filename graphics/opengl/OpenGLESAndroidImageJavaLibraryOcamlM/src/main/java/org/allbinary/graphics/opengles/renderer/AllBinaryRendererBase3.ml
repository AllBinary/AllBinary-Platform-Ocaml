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
(* package org.allbinary.graphics.opengles.renderer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.image.opengles.OpenGLESImage *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class allBinaryRendererBase3 () =
  object
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    

    method update : 'any1. 'any1 -> unit = fun (gl) ->
        let gl = Obj.repr gl in
        begin
        while ((list#size ()) > 0) do
            let openGLESImage : Obj.t ref = ref ((Obj.repr (Obj.magic (list#removeAt (0))))) in ();
            if ((Obj.magic !openGLESImage) != (Obj.magic 0)) then begin
                ignore ((Obj.magic !openGLESImage)#set ((Obj.magic gl)))
            end
        done
        end [@@warning "-20"]
    

    method add : 'any1. 'any1 -> unit = fun (image) ->
        let image = Obj.repr image in
        begin
        ignore (list#add ((Obj.magic image)))
        end [@@warning "-20"]

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end
let () = java_register_constructor "AllBinaryRendererBase3" (fun arguments -> Obj.repr (new allBinaryRendererBase3 (Obj.obj arguments)))


