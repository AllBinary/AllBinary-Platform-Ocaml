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
(* package org.allbinary.media.audio.music *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)

class musicManagerFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MusicManagerFactory" (fun arguments -> Obj.repr (new musicManagerFactory (Obj.obj arguments)))

let createMusicManager : 'any1 'return. 'any1 -> 'return = fun (soundList) ->
        let soundList = Obj.repr soundList in
        begin
        (Obj.magic ((Obj.obj (java_new "MusicManager" (Obj.repr ("MusicService", (Obj.magic soundList)))))))
        end [@@warning "-20"]
let () = java_register_static "MusicManagerFactory.createMusicManager" (fun arguments -> Obj.repr (createMusicManager (Obj.obj arguments)))


