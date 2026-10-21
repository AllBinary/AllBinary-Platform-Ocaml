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
(* package org.allbinary.business.category *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.io.file.CommonDataFileStrings *)

class categoryData () =
  object
    val mutable pARENT : string = ""
    method pARENT = pARENT
    method set_pARENT value' = pARENT <- value'
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable pATH : string = ""
    method pATH = pATH
    method set_pATH value' = pATH <- value'
    val mutable lABEL : string = ""
    method lABEL = lABEL
    method set_lABEL value' = lABEL <- value'
    val mutable vIEW : string = ""
    method vIEW = vIEW
    method set_vIEW value' = vIEW <- value'
    val mutable lEVEL : string = ""
    method lEVEL = lEVEL
    method set_lEVEL value' = lEVEL <- value'
    val mutable rEQUEST : string = ""
    method rEQUEST = rEQUEST
    method set_rEQUEST value' = rEQUEST <- value'
    val mutable rOOTCATEGORY : string = ""
    method rOOTCATEGORY = rOOTCATEGORY
    method set_rOOTCATEGORY value' = rOOTCATEGORY <- value'
    val mutable uNCRYPTED_EXTENSION : string = ""
    method uNCRYPTED_EXTENSION = uNCRYPTED_EXTENSION
    method set_uNCRYPTED_EXTENSION value' = uNCRYPTED_EXTENSION <- value'
    val mutable eNCRYPTED_EXTENSION : string = ""
    method eNCRYPTED_EXTENSION = eNCRYPTED_EXTENSION
    method set_eNCRYPTED_EXTENSION value' = eNCRYPTED_EXTENSION <- value'
    

    initializer
      begin
        pARENT <- "CATEGORY_PARENT";
        nAME <- "CATEGORY_NAME";
        pATH <- "CATEGORY_PATH";
        lABEL <- "CATEGORY_LABEL";
        vIEW <- "CATEGORY_VIEW_CATEGORY";
        lEVEL <- "CATEGORY_LEVEL";
        rEQUEST <- "request";
        rOOTCATEGORY <- "Category";
        uNCRYPTED_EXTENSION <- (CommonDataFileStrings.getInstance ())#uNCRYPTED_EXTENSION;
        eNCRYPTED_EXTENSION <- (CommonDataFileStrings.getInstance ())#eNCRYPTED_EXTENSION;
        ();
        ()
      end
  end
let () = java_register_constructor "CategoryData" (fun arguments -> Obj.repr (new categoryData (Obj.obj arguments)))

let instance = (new categoryData ())
let get_instance () = instance
let () = java_register_static "CategoryData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CategoryData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


