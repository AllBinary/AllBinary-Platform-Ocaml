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

class fileData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable iSFILE : string = ""
    method iSFILE = iSFILE
    method set_iSFILE value' = iSFILE <- value'
    val mutable iSDIRECTORY : string = ""
    method iSDIRECTORY = iSDIRECTORY
    method set_iSDIRECTORY value' = iSDIRECTORY <- value'
    val mutable iSHIDDEN : string = ""
    method iSHIDDEN = iSHIDDEN
    method set_iSHIDDEN value' = iSHIDDEN <- value'
    val mutable iSABSOLUTE : string = ""
    method iSABSOLUTE = iSABSOLUTE
    method set_iSABSOLUTE value' = iSABSOLUTE <- value'
    val mutable rOOT_NAME : string = ""
    method rOOT_NAME = rOOT_NAME
    method set_rOOT_NAME value' = rOOT_NAME <- value'
    val mutable pATH : string = ""
    method pATH = pATH
    method set_pATH value' = pATH <- value'
    val mutable aBSOLUTE_PATH : string = ""
    method aBSOLUTE_PATH = aBSOLUTE_PATH
    method set_aBSOLUTE_PATH value' = aBSOLUTE_PATH <- value'
    val mutable cANONICAL_PATH : string = ""
    method cANONICAL_PATH = cANONICAL_PATH
    method set_cANONICAL_PATH value' = cANONICAL_PATH <- value'
    val mutable pARENT : string = ""
    method pARENT = pARENT
    method set_pARENT value' = pARENT <- value'
    val mutable mINLEN : int = 0
    method mINLEN = mINLEN
    method set_mINLEN value' = mINLEN <- value'
    val mutable mAXLEN : int = 0
    method mAXLEN = mAXLEN
    method set_mAXLEN value' = mAXLEN <- value'
    val mutable mAXIMAGEFILESIZE : int = 0
    method mAXIMAGEFILESIZE = mAXIMAGEFILESIZE
    method set_mAXIMAGEFILESIZE value' = mAXIMAGEFILESIZE <- value'
    val mutable mINIMAGEFILESIZE : int = 0
    method mINIMAGEFILESIZE = mINIMAGEFILESIZE
    method set_mINIMAGEFILESIZE value' = mINIMAGEFILESIZE <- value'
    val mutable mAXDOWNLOADABLEFILESIZE : int = 0
    method mAXDOWNLOADABLEFILESIZE = mAXDOWNLOADABLEFILESIZE
    method set_mAXDOWNLOADABLEFILESIZE value' = mAXDOWNLOADABLEFILESIZE <- value'
    val mutable mINDOWNLOADABLEFILESIZE : int = 0
    method mINDOWNLOADABLEFILESIZE = mINDOWNLOADABLEFILESIZE
    method set_mINDOWNLOADABLEFILESIZE value' = mINDOWNLOADABLEFILESIZE <- value'
    

    initializer
      begin
        nAME <- "FILE_NAME";
        iSFILE <- "FILE_ISFILE";
        iSDIRECTORY <- "FILE_ISDIRECTORY";
        iSHIDDEN <- "FILE_ISHIDDEN";
        iSABSOLUTE <- "FILE_ISABSOLUTE";
        rOOT_NAME <- "FILE_ROOT_NAME";
        pATH <- "FILE_PATH";
        aBSOLUTE_PATH <- "FILE_ABSOLUTE_PATH";
        cANONICAL_PATH <- "FILE_CANONICAL_PATH";
        pARENT <- "FILE_PARENT";
        mINLEN <- 1;
        mAXLEN <- 120;
        mAXIMAGEFILESIZE <- 1048576;
        mINIMAGEFILESIZE <- 32;
        mAXDOWNLOADABLEFILESIZE <- (1048576 * 20);
        mINDOWNLOADABLEFILESIZE <- 1;
        ();
        ()
      end
  end
let () = java_register_constructor "FileData" (fun arguments -> Obj.repr (new fileData (Obj.obj arguments)))

let instance = (new fileData ())
let get_instance () = instance
let () = java_register_static "FileData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FileData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


