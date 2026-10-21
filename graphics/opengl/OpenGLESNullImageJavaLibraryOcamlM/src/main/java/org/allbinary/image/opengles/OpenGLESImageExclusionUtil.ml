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
(* package org.allbinary.image.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class openGLESImageExclusionUtil () =
  object
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    

    method isCustomScaling : 'any1. 'any1 -> bool = fun (_image) ->
        begin
        false
        end [@@warning "-20"]

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end
let () = java_register_constructor "OpenGLESImageExclusionUtil" (fun arguments -> Obj.repr (new openGLESImageExclusionUtil (Obj.obj arguments)))

let instance = (new openGLESImageExclusionUtil ())
let get_instance () = instance
let () = java_register_static "OpenGLESImageExclusionUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLESImageExclusionUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


