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
(* package org.allbinary.business.page *)

open Allbinary_java [@@warning "-33"]

class pageData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    

    initializer
      begin
        nAME <- "PAGE_NAME";
        ();
        ()
      end
  end
let () = java_register_constructor "PageData" (fun arguments -> Obj.repr (new pageData (Obj.obj arguments)))

let instance = (new pageData ())
let get_instance () = instance
let () = java_register_static "PageData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PageData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


