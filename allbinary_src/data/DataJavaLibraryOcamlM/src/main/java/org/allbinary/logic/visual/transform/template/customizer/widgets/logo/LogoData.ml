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
(* package org.allbinary.logic.visual.transform.template.customizer.widgets.logo *)

open Allbinary_java [@@warning "-33"]

class logoData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable iMAGEPATH : string = ""
    method iMAGEPATH = iMAGEPATH
    method set_iMAGEPATH value' = iMAGEPATH <- value'
    val mutable iMAGEFILENAME : string = ""
    method iMAGEFILENAME = iMAGEFILENAME
    method set_iMAGEFILENAME value' = iMAGEFILENAME <- value'
    val mutable iMAGE : string = ""
    method iMAGE = iMAGE
    method set_iMAGE value' = iMAGE <- value'
    

    initializer
      begin
        nAME <- "LOGO_NAME";
        iMAGEPATH <- "LOGO_IMAGE_PATH";
        iMAGEFILENAME <- "LOGO_IMAGE_FILE_NAME";
        iMAGE <- "LOGO_IMAGE";
        ();
        ()
      end
  end
let () = java_register_constructor "LogoData" (fun arguments -> Obj.repr (new logoData (Obj.obj arguments)))

let instance = (new logoData ())
let get_instance () = instance
let () = java_register_static "LogoData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LogoData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


