(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.android *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.graphics.Canvas *)
(* import android.media.MediaPlayer *)

let nULL_MEDIA_PLAYER : Obj.t = (Obj.repr (new MediaPlayer.mediaPlayer ()))
let get_nULL_MEDIA_PLAYER () = Obj.magic nULL_MEDIA_PLAYER
let () = java_register_static "NullAndroidCanvas.get_nULL_MEDIA_PLAYER" (fun _ -> Obj.repr (get_nULL_MEDIA_PLAYER ()))
class nullAndroidCanvas () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullAndroidCanvas" (fun arguments -> Obj.repr (new nullAndroidCanvas (Obj.obj arguments)))

let nULL_CANVAS : Obj.t = (Obj.repr (Obj.obj (java_new "Canvas" (Obj.repr ()))))
let get_nULL_CANVAS () = Obj.magic nULL_CANVAS
let () = java_register_static "NullAndroidCanvas.get_nULL_CANVAS" (fun _ -> Obj.repr (get_nULL_CANVAS ()))


