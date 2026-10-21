(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.io.file.directory *)

open Allbinary_java [@@warning "-33"]

class trackedStrings () =
  object
    val mutable tARGET_PATH_WINDOWS : string = ""
    method tARGET_PATH_WINDOWS = tARGET_PATH_WINDOWS
    method set_tARGET_PATH_WINDOWS value' = tARGET_PATH_WINDOWS <- value'
    val mutable tARGET_PATH_UNIX : string = ""
    method tARGET_PATH_UNIX = tARGET_PATH_UNIX
    method set_tARGET_PATH_UNIX value' = tARGET_PATH_UNIX <- value'
    val mutable hTML_TEMP : string = ""
    method hTML_TEMP = hTML_TEMP
    method set_hTML_TEMP value' = hTML_TEMP <- value'
    val mutable aPPLICATION : string = ""
    method aPPLICATION = aPPLICATION
    method set_aPPLICATION value' = aPPLICATION <- value'
    val mutable aPP : string = ""
    method aPP = aPP
    method set_aPP value' = aPP <- value'
    val mutable gIT_COMMAND : string = ""
    method gIT_COMMAND = gIT_COMMAND
    method set_gIT_COMMAND value' = gIT_COMMAND <- value'
    val mutable cHANGE_DIRECTORY_OPTION : string = ""
    method cHANGE_DIRECTORY_OPTION = cHANGE_DIRECTORY_OPTION
    method set_cHANGE_DIRECTORY_OPTION value' = cHANGE_DIRECTORY_OPTION <- value'
    val mutable lIST_FILES_COMMAND : string = ""
    method lIST_FILES_COMMAND = lIST_FILES_COMMAND
    method set_lIST_FILES_COMMAND value' = lIST_FILES_COMMAND <- value'
    val mutable eRROR_UNMATCH_OPTION : string = ""
    method eRROR_UNMATCH_OPTION = eRROR_UNMATCH_OPTION
    method set_eRROR_UNMATCH_OPTION value' = eRROR_UNMATCH_OPTION <- value'
    val mutable pATHSPEC_SEPARATOR : string = ""
    method pATHSPEC_SEPARATOR = pATHSPEC_SEPARATOR
    method set_pATHSPEC_SEPARATOR value' = pATHSPEC_SEPARATOR <- value'
    val mutable sEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE : string = ""
    method sEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE = sEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE
    method set_sEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE value' = sEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE <- value'

    initializer
      begin
        tARGET_PATH_WINDOWS <- "\\target\\";
        tARGET_PATH_UNIX <- "/target/";
        hTML_TEMP <- "HTMLTemp";
        aPPLICATION <- "Application";
        aPP <- "\\app";
        gIT_COMMAND <- "git";
        cHANGE_DIRECTORY_OPTION <- "-C";
        lIST_FILES_COMMAND <- "ls-files";
        eRROR_UNMATCH_OPTION <- "--error-unmatch";
        pATHSPEC_SEPARATOR <- "--";
        sEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE <- "-z";
        ()
      end
  end
let () = java_register_constructor "TrackedStrings" (fun arguments -> Obj.repr (new trackedStrings (Obj.obj arguments)))

let instance = (new trackedStrings ())
let get_instance () = instance
let () = java_register_static "TrackedStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TrackedStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


