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
(* package javax.microedition.lcdui *)

open Allbinary_java [@@warning "-33"]

class preLoadPlatformImage () =
  object
    inherit PlatformImage.platformImage ()

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PreLoadPlatformImage" (fun arguments -> Obj.repr (new preLoadPlatformImage (Obj.obj arguments)))

let instance = (new preLoadPlatformImage ())
let get_instance () = instance
let () = java_register_static "PreLoadPlatformImage.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PreLoadPlatformImage.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


