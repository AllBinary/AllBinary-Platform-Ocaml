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
(* package org.allbinary.logic.visual.theme *)

open Allbinary_java [@@warning "-33"]

class themeData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable pATH : string = ""
    method pATH = pATH
    method set_pATH value' = pATH <- value'
    val mutable pREVIEW_IMAGE_NAME : string = ""
    method pREVIEW_IMAGE_NAME = pREVIEW_IMAGE_NAME
    method set_pREVIEW_IMAGE_NAME value' = pREVIEW_IMAGE_NAME <- value'
    val mutable pREVIEW_IMAGE_PATH : string = ""
    method pREVIEW_IMAGE_PATH = pREVIEW_IMAGE_PATH
    method set_pREVIEW_IMAGE_PATH value' = pREVIEW_IMAGE_PATH <- value'
    

    initializer
      begin
        nAME <- "THEME_NAME";
        pATH <- "THEME_PATH";
        pREVIEW_IMAGE_NAME <- "THEME_PREVIEW_IMAGE_NAME";
        pREVIEW_IMAGE_PATH <- "THEME_PREVIEW_IMAGE_PATH";
        ();
        ()
      end
  end
let () = java_register_constructor "ThemeData" (fun arguments -> Obj.repr (new themeData (Obj.obj arguments)))

let instance = (new themeData ())
let get_instance () = instance
let () = java_register_static "ThemeData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ThemeData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


