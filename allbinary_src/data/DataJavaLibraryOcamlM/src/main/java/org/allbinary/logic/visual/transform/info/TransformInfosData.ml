(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.visual.transform.info *)

open Allbinary_java [@@warning "-33"]

class transformInfosData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable gROUP : string = ""
    method gROUP = gROUP
    method set_gROUP value' = gROUP <- value'
    val mutable aLL : string = ""
    method aLL = aLL
    method set_aLL value' = aLL <- value'
    val mutable pREVIEW : string = ""
    method pREVIEW = pREVIEW
    method set_pREVIEW value' = pREVIEW <- value'
    val mutable sMALL_PREVIEW : string = ""
    method sMALL_PREVIEW = sMALL_PREVIEW
    method set_sMALL_PREVIEW value' = sMALL_PREVIEW <- value'
    

    initializer
      begin
        nAME <- "TRANSFORM_INFOS_NAME";
        gROUP <- "TRANSFORM_INFOS_GROUP";
        aLL <- "TRANSFORM_INFOS_ALL";
        pREVIEW <- "TRANSFORM_INFOS_PREVIEW";
        sMALL_PREVIEW <- "TRANSFORM_INFOS_SMALL_PREVIEW";
        ();
        ()
      end
  end
let () = java_register_constructor "TransformInfosData" (fun arguments -> Obj.repr (new transformInfosData (Obj.obj arguments)))

let instance = (new transformInfosData ())
let get_instance () = instance
let () = java_register_static "TransformInfosData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TransformInfosData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


