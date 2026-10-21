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

class imageStrings () =
  object
    val mutable pNG : string = ""
    method pNG = pNG
    method set_pNG value' = pNG <- value'
    val mutable pNG_EXTENSION : string = ""
    method pNG_EXTENSION = pNG_EXTENSION
    method set_pNG_EXTENSION value' = pNG_EXTENSION <- value'

    initializer
      begin
        pNG <- "PNG";
        pNG_EXTENSION <- ".png";
        ()
      end
  end
let () = java_register_constructor "ImageStrings" (fun arguments -> Obj.repr (new imageStrings (Obj.obj arguments)))

let instance = (new imageStrings ())
let get_instance () = instance
let () = java_register_static "ImageStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


