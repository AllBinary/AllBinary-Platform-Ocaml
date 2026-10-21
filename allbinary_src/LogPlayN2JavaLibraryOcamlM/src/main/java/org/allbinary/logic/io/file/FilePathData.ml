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
(* package org.allbinary.logic.io.file *)

open Allbinary_java [@@warning "-33"]

class filePathData () =
  object
    val mutable sEPARATORCHAR : char = '\000'
    method sEPARATORCHAR = sEPARATORCHAR
    method set_sEPARATORCHAR value' = sEPARATORCHAR <- value'
    val mutable pATH_START : string = ""
    method pATH_START = pATH_START
    method set_pATH_START value' = pATH_START <- value'
    

    initializer
      begin
        sEPARATORCHAR <- '\\';
        pATH_START <- "\\\\";
        ();
        ()
      end
  end
let () = java_register_constructor "FilePathData" (fun arguments -> Obj.repr (new filePathData (Obj.obj arguments)))

let instance = (new filePathData ())
let get_instance () = instance
let () = java_register_static "FilePathData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FilePathData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


