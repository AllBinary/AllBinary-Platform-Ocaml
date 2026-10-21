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
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import org.allbinary.string.CommonStrings *)

class shaderInitializer () =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    

    method init : 'any1. 'any1 * Shader.shader array * string array -> int = fun (_gl, (_shader : Shader.shader array), (_attributeArray : string array)) ->
        begin
        (-1)
        end [@@warning "-20"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ()
      end
  end
let () = java_register_constructor "ShaderInitializer" (fun arguments -> Obj.repr (new shaderInitializer (Obj.obj arguments)))

let instance = (new shaderInitializer ())
let get_instance () = instance
let () = java_register_static "ShaderInitializer.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ShaderInitializer.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


