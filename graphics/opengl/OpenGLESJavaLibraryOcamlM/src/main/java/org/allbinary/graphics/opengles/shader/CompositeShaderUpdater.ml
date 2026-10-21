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
(* import javax.microedition.khronos.egl.EGLConfig *)
(* import javax.microedition.khronos.opengles.GL10 *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)

class compositeShaderUpdater ((uniformBlockArray_arg : string array), (uniformArray_arg : string array), (attributeArray_arg : string array), (attributeHandleArray_arg : int array)) =
  object
    inherit ShaderUpdater.shaderUpdater ()
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable shaderStrings : ShaderStrings.shaderStrings = (Obj.magic 0)
    method shaderStrings = shaderStrings
    method set_shaderStrings value' = shaderStrings <- value'
    val mutable uniformBlockHandleArray : int array = (Obj.magic 0)
    method uniformBlockHandleArray = uniformBlockHandleArray
    method set_uniformBlockHandleArray value' = uniformBlockHandleArray <- value'
    val mutable uniformBlockArray : string array = (Obj.magic 0)
    method uniformBlockArray = uniformBlockArray
    method set_uniformBlockArray value' = uniformBlockArray <- value'
    val mutable uniformHandleArray : int array = (Obj.magic 0)
    method uniformHandleArray = uniformHandleArray
    method set_uniformHandleArray value' = uniformHandleArray <- value'
    val mutable uniformArray : string array = (Obj.magic 0)
    method uniformArray = uniformArray
    method set_uniformArray value' = uniformArray <- value'
    val mutable attributeHandleArray : int array = (Obj.magic 0)
    method attributeHandleArray = attributeHandleArray
    method set_attributeHandleArray value' = attributeHandleArray <- value'
    val mutable attributeArray : string array = (Obj.magic 0)
    method attributeArray = attributeArray
    method set_attributeArray value' = attributeArray <- value'
    
    

    method onSurfaceCreated : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (_gl, _eglConfig, (_programHandle : int)) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method onSurfaceDestroyed : 'any1. 'any1 -> unit = fun (_gl) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        shaderStrings <- ((ShaderStrings.getInstance ()) :> ShaderStrings.shaderStrings);
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        uniformBlockArray <- uniformBlockArray_arg;
        uniformBlockHandleArray <- (Array.make ((Array.length uniformBlockArray)) 0);
        uniformArray <- uniformArray_arg;
        uniformHandleArray <- (Array.make ((Array.length uniformArray)) 0);
        attributeArray <- attributeArray_arg;
        attributeHandleArray <- attributeHandleArray_arg
      end
  end
let () = java_register_constructor "CompositeShaderUpdater" (fun arguments -> Obj.repr (new compositeShaderUpdater (Obj.obj arguments)))

let instanceC = (new compositeShaderUpdater (((StringUtil.getInstance ())#getArrayInstance ()), ((StringUtil.getInstance ())#getArrayInstance ()), ((StringUtil.getInstance ())#getArrayInstance ()), (NullUtil.getInstance ())#nULL_INT_ARRAY))
let get_instanceC () = instanceC
let () = java_register_static "CompositeShaderUpdater.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "CompositeShaderUpdater.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


