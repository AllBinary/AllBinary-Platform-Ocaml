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
(* package org.allbinary.graphics.opengles.shader *)

open Allbinary_java [@@warning "-33"]

class shaderStrings () =
  object
    val mutable nO_PROGRAM_HANDLE : string = ""
    method nO_PROGRAM_HANDLE = nO_PROGRAM_HANDLE
    method set_nO_PROGRAM_HANDLE value' = nO_PROGRAM_HANDLE <- value'
    val mutable uNIFORM_BLOCK_HANDLE : string = ""
    method uNIFORM_BLOCK_HANDLE = uNIFORM_BLOCK_HANDLE
    method set_uNIFORM_BLOCK_HANDLE value' = uNIFORM_BLOCK_HANDLE <- value'
    val mutable uNIFORM_HANDLE : string = ""
    method uNIFORM_HANDLE = uNIFORM_HANDLE
    method set_uNIFORM_HANDLE value' = uNIFORM_HANDLE <- value'
    val mutable uNIFORM_ATTRIBUTE_HANDLE : string = ""
    method uNIFORM_ATTRIBUTE_HANDLE = uNIFORM_ATTRIBUTE_HANDLE
    method set_uNIFORM_ATTRIBUTE_HANDLE value' = uNIFORM_ATTRIBUTE_HANDLE <- value'

    initializer
      begin
        nO_PROGRAM_HANDLE <- "No program handle";
        uNIFORM_BLOCK_HANDLE <- "Uniform Block Handle: ";
        uNIFORM_HANDLE <- "Uniform Handle: ";
        uNIFORM_ATTRIBUTE_HANDLE <- "Uniform Attribute Handle: ";
        ()
      end
  end
let () = java_register_constructor "ShaderStrings" (fun arguments -> Obj.repr (new shaderStrings (Obj.obj arguments)))

let instance = (new shaderStrings ())
let get_instance () = instance
let () = java_register_static "ShaderStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ShaderStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


