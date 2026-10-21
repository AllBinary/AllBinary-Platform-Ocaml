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
(* package org.allbinary.logic.visual.transform.template *)

open Allbinary_java [@@warning "-33"]

class xslData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable rOOT_IMPORT_URI : string = ""
    method rOOT_IMPORT_URI = rOOT_IMPORT_URI
    method set_rOOT_IMPORT_URI value' = rOOT_IMPORT_URI <- value'
    

    initializer
      begin
        nAME <- "XSL_NAME";
        rOOT_IMPORT_URI <- "ROOT_IMPORT_URI";
        ();
        ()
      end
  end
let () = java_register_constructor "XslData" (fun arguments -> Obj.repr (new xslData (Obj.obj arguments)))

let instance = (new xslData ())
let get_instance () = instance
let () = java_register_static "XslData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "XslData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


