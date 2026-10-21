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
[@@@warning "-20"]
(* import java.awt.Color *)

class imageJ2SEUtil () =
  object
    val mutable tRANSPARENT_COLOR : Obj.t = Obj.repr 0
    method tRANSPARENT_COLOR : 'r. 'r = Obj.magic tRANSPARENT_COLOR
    method set_tRANSPARENT_COLOR : 'v. 'v -> unit = fun value' -> tRANSPARENT_COLOR <- Obj.repr value'

    initializer
      begin
        tRANSPARENT_COLOR <- (Obj.repr (Obj.obj (java_new "Color" (Obj.repr (0, 0, 0, 0)))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageJ2SEUtil" (fun arguments -> Obj.repr (new imageJ2SEUtil (Obj.obj arguments)))

let instance = (new imageJ2SEUtil ())
let get_instance () = instance
let () = java_register_static "ImageJ2SEUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageJ2SEUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


