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

class compositeShaderUpdater ((_uniformBlockArray : string array), (_uniformArray : string array), (_attributeArray : string array), (_attributeHandleArray : int array)) =
  object
    inherit ShaderUpdater.shaderUpdater ()
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    
    

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
        ();
        ()
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


