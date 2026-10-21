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
(* package org.allbinary.data.tree.dom *)

open Allbinary_java [@@warning "-33"]

class uRIResolverStrings () =
  object
    val mutable iMPORT_URL : string = ""
    method iMPORT_URL = iMPORT_URL
    method set_iMPORT_URL value' = iMPORT_URL <- value'
    val mutable aTTEMPT : string = ""
    method aTTEMPT = aTTEMPT
    method set_aTTEMPT value' = aTTEMPT <- value'
    val mutable bASE : string = ""
    method bASE = bASE
    method set_bASE value' = bASE <- value'
    val mutable nEW_PATH : string = ""
    method nEW_PATH = nEW_PATH
    method set_nEW_PATH value' = nEW_PATH <- value'
    val mutable nOTE : string = ""
    method nOTE = nOTE
    method set_nOTE value' = nOTE <- value'
    val mutable uRL_GLOBAL : string = ""
    method uRL_GLOBAL = uRL_GLOBAL
    method set_uRL_GLOBAL value' = uRL_GLOBAL <- value'
    val mutable rEQUIRED_EXTENSION : string = ""
    method rEQUIRED_EXTENSION = rEQUIRED_EXTENSION
    method set_rEQUIRED_EXTENSION value' = rEQUIRED_EXTENSION <- value'
    val mutable rESOLVE : string = ""
    method rESOLVE = rESOLVE
    method set_rESOLVE value' = rESOLVE <- value'

    initializer
      begin
        iMPORT_URL <- "/{import url}";
        aTTEMPT <- "attempt to use xsl:import: href=";
        bASE <- "\nBase= ";
        nEW_PATH <- "\nNew path= ";
        nOTE <- "\nNote: ";
        uRL_GLOBAL <- " is a urlglobal";
        rEQUIRED_EXTENSION <- "\nRequired Extension: ";
        rESOLVE <- "resolve";
        ()
      end
  end
let () = java_register_constructor "URIResolverStrings" (fun arguments -> Obj.repr (new uRIResolverStrings (Obj.obj arguments)))

let instance = (new uRIResolverStrings ())
let get_instance () = instance
let () = java_register_static "URIResolverStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "URIResolverStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


