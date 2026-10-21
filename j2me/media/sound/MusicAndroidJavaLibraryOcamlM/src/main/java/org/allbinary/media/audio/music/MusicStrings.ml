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
(* package org.allbinary.media.audio.music *)

open Allbinary_java [@@warning "-33"]

class musicStrings () =
  object
    val mutable sONG_EXTRA : string = ""
    method sONG_EXTRA = sONG_EXTRA
    method set_sONG_EXTRA value' = sONG_EXTRA <- value'
    val mutable lEFT_VOLUME : string = ""
    method lEFT_VOLUME = lEFT_VOLUME
    method set_lEFT_VOLUME value' = lEFT_VOLUME <- value'
    val mutable rIGHT_VOLUME : string = ""
    method rIGHT_VOLUME = rIGHT_VOLUME
    method set_rIGHT_VOLUME value' = rIGHT_VOLUME <- value'

    initializer
      begin
        sONG_EXTRA <- "SONG";
        lEFT_VOLUME <- "LEFT_VOLUME";
        rIGHT_VOLUME <- "RIGHT_VOLUME";
        ()
      end
  end
let () = java_register_constructor "MusicStrings" (fun arguments -> Obj.repr (new musicStrings (Obj.obj arguments)))

let instance = (new musicStrings ())
let get_instance () = instance
let () = java_register_static "MusicStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MusicStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


