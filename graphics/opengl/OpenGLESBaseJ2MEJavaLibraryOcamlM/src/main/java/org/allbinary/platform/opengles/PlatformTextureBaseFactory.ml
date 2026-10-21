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
(* package org.allbinary.platform.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.string.CommonStrings *)

class platformTextureBaseFactory () =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    

    method load : 'any1 'any4. 'any1 * int * int * 'any4 * int * bool -> unit = fun (_gl, (_target : int), (_level : int), _image, (_border : int), (_flip : bool)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ()
      end
  end
let () = java_register_constructor "PlatformTextureBaseFactory" (fun arguments -> Obj.repr (new platformTextureBaseFactory (Obj.obj arguments)))

let nULL_PLATFORM_TEXTURE_BASE_FACTORY = (new platformTextureBaseFactory ())
let get_nULL_PLATFORM_TEXTURE_BASE_FACTORY () = nULL_PLATFORM_TEXTURE_BASE_FACTORY
let () = java_register_static "PlatformTextureBaseFactory.get_nULL_PLATFORM_TEXTURE_BASE_FACTORY" (fun _ -> Obj.repr (get_nULL_PLATFORM_TEXTURE_BASE_FACTORY ()))


