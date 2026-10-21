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
(* package org.allbinary.logic.visual.dhtml.html.head.meta *)

open Allbinary_java [@@warning "-33"]

class htmlMetaData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable lABEL : string = ""
    method lABEL = lABEL
    method set_lABEL value' = lABEL <- value'
    val mutable vALUE : string = ""
    method vALUE = vALUE
    method set_vALUE value' = vALUE <- value'
    

    initializer
      begin
        nAME <- "HTMLMETA_NAME";
        lABEL <- "HTMLMETA_LABEL";
        vALUE <- "meta";
        ();
        ()
      end
  end
let () = java_register_constructor "HtmlMetaData" (fun arguments -> Obj.repr (new htmlMetaData (Obj.obj arguments)))

let instance = (new htmlMetaData ())
let get_instance () = instance
let () = java_register_static "HtmlMetaData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HtmlMetaData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


