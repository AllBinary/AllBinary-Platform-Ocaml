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
(* import org.allbinary.util.BasicArrayList *)

class shaderManager ((gL_VERTEX_SHADER_arg : int), (gL_FRAGMENT_SHADER_arg : int)) =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable lOAD_SHADER : string = ""
    method lOAD_SHADER = lOAD_SHADER
    method set_lOAD_SHADER value' = lOAD_SHADER <- value'
    val mutable __VERSION__ : string = ""
    method __VERSION__ = __VERSION__
    method set___VERSION__ value' = __VERSION__ <- value'
    val mutable gL_VERTEX_SHADER : int = 0
    method gL_VERTEX_SHADER = gL_VERTEX_SHADER
    method set_gL_VERTEX_SHADER value' = gL_VERTEX_SHADER <- value'
    val mutable gL_FRAGMENT_SHADER : int = 0
    method gL_FRAGMENT_SHADER = gL_FRAGMENT_SHADER
    method set_gL_FRAGMENT_SHADER value' = gL_FRAGMENT_SHADER <- value'
    
    

    method load : 'any1. 'any1 * string * string array * int -> int = fun (_gl, (_resource : string), (_shaderAsStringArray : string array), (_shaderType : int)) ->
        begin
        (-1)
        end [@@warning "-20"]
    

    method loadShader : 'any1 'any3. 'any1 * string * 'any3 * int -> int = fun (_gl, (_resource : string), _stringList, (_shaderType : int)) ->
        begin
        (-1)
        end [@@warning "-20"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        lOAD_SHADER <- "loadShader";
        __VERSION__ <- "__VERSION__";
        ();
        ();
        ();
        gL_VERTEX_SHADER <- gL_VERTEX_SHADER_arg;
        gL_FRAGMENT_SHADER <- gL_FRAGMENT_SHADER_arg
      end
  end
let () = java_register_constructor "ShaderManager" (fun arguments -> Obj.repr (new shaderManager (Obj.obj arguments)))

let instance = (new shaderManager ((-1), (-1)))
let get_instance () = instance
let () = java_register_static "ShaderManager.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ShaderManager.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


