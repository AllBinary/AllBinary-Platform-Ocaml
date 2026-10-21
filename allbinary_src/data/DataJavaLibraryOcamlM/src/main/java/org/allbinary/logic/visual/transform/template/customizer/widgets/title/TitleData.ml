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
(* package org.allbinary.logic.visual.transform.template.customizer.widgets.title *)

open Allbinary_java [@@warning "-33"]

class titleData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable tEXT : string = ""
    method tEXT = tEXT
    method set_tEXT value' = tEXT <- value'
    val mutable vIEWNAMEKEY : string = ""
    method vIEWNAMEKEY = vIEWNAMEKEY
    method set_vIEWNAMEKEY value' = vIEWNAMEKEY <- value'
    val mutable mAXLEN : int = 0
    method mAXLEN = mAXLEN
    method set_mAXLEN value' = mAXLEN <- value'
    

    initializer
      begin
        nAME <- "TITLE_NAME";
        tEXT <- "TITLE_TEXT";
        vIEWNAMEKEY <- "Title";
        mAXLEN <- 255;
        ();
        ()
      end
  end
let () = java_register_constructor "TitleData" (fun arguments -> Obj.repr (new titleData (Obj.obj arguments)))

let instance = (new titleData ())
let get_instance () = instance
let () = java_register_static "TitleData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TitleData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


