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
(* package org.allbinary.logic.visual.dhtml.style.css.property.font *)

open Allbinary_java [@@warning "-33"]

class fontFamilyData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable vALUE : string = ""
    method vALUE = vALUE
    method set_vALUE value' = vALUE <- value'
    

    initializer
      begin
        nAME <- "FONT_FAMILY_NAME";
        vALUE <- "font-family";
        ();
        ()
      end
  end
let () = java_register_constructor "FontFamilyData" (fun arguments -> Obj.repr (new fontFamilyData (Obj.obj arguments)))

let instance = (new fontFamilyData ())
let get_instance () = instance
let () = java_register_static "FontFamilyData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FontFamilyData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


