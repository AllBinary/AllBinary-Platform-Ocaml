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
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)

class shader () =
  object
    val mutable shaderName : string = ""
    method shaderName = shaderName
    method set_shaderName value' = shaderName <- value'
    val mutable shaderStringList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method shaderStringList = shaderStringList
    method set_shaderStringList value' = shaderStringList <- value'
    val mutable shaderAsString : string = ""
    method shaderAsString = shaderAsString
    method set_shaderAsString value' = shaderAsString <- value'
    val mutable shaderHandle : int = 0
    method shaderHandle = shaderHandle
    method set_shaderHandle value' = shaderHandle <- value'

    initializer
      begin
        shaderName <- (StringUtil.getInstance ())#eMPTY_STRING;
        shaderStringList <- (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()) :> BasicArrayList.basicArrayList);
        shaderAsString <- (StringUtil.getInstance ())#eMPTY_STRING;
        shaderHandle <- 0;
        ()
      end
  end
let () = java_register_constructor "Shader" (fun arguments -> Obj.repr (new shader (Obj.obj arguments)))


