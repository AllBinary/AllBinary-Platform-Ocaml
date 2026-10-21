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
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
(* import org.eclipse.swt.graphics.Color *)
(* import org.eclipse.swt.graphics.RGB *)
(* import org.microemu.app.BareMain *)

class imageSwtUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ImageSwtUtil" (fun arguments -> Obj.repr (new imageSwtUtil (Obj.obj arguments)))

let instance = (new imageSwtUtil ())
let get_instance () = instance
let () = java_register_static "ImageSwtUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageSwtUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


