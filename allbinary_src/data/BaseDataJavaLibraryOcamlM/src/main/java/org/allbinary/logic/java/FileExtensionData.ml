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
(* package org.allbinary.logic.java *)

open Allbinary_java [@@warning "-33"]

class fileExtensionData () =
  object
    val mutable dOT_JAVA_SOURCE : string = ""
    method dOT_JAVA_SOURCE = dOT_JAVA_SOURCE
    method set_dOT_JAVA_SOURCE value' = dOT_JAVA_SOURCE <- value'
    val mutable jAVA_SOURCE : string = ""
    method jAVA_SOURCE = jAVA_SOURCE
    method set_jAVA_SOURCE value' = jAVA_SOURCE <- value'
    

    initializer
      begin
        dOT_JAVA_SOURCE <- ".java";
        jAVA_SOURCE <- "java";
        ();
        ()
      end
  end
let () = java_register_constructor "FileExtensionData" (fun arguments -> Obj.repr (new fileExtensionData (Obj.obj arguments)))

let instance = (new fileExtensionData ())
let get_instance () = instance
let () = java_register_static "FileExtensionData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FileExtensionData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


