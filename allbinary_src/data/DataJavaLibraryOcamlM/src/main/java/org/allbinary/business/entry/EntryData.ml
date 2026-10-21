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
(* package org.allbinary.business.entry *)

open Allbinary_java [@@warning "-33"]

class entryData () =
  object
    val mutable iD : string = ""
    method iD = iD
    method set_iD value' = iD <- value'
    val mutable eNCRYPTION : string = ""
    method eNCRYPTION = eNCRYPTION
    method set_eNCRYPTION value' = eNCRYPTION <- value'
    val mutable tIMECREATED : string = ""
    method tIMECREATED = tIMECREATED
    method set_tIMECREATED value' = tIMECREATED <- value'
    val mutable lASTMODIFIED : string = ""
    method lASTMODIFIED = lASTMODIFIED
    method set_lASTMODIFIED value' = lASTMODIFIED <- value'
    val mutable dEFAULT : string = ""
    method dEFAULT = dEFAULT
    method set_dEFAULT value' = dEFAULT <- value'
    val mutable sPECIAL : string = ""
    method sPECIAL = sPECIAL
    method set_sPECIAL value' = sPECIAL <- value'
    val mutable eNABLE : string = ""
    method eNABLE = eNABLE
    method set_eNABLE value' = eNABLE <- value'
    val mutable yES : string = ""
    method yES = yES
    method set_yES value' = yES <- value'
    val mutable nO : string = ""
    method nO = nO
    method set_nO value' = nO <- value'
    

    initializer
      begin
        iD <- "ENTRY_ID";
        eNCRYPTION <- "ENTRY_ENCRYPTION";
        tIMECREATED <- "ENTRY_TIMECREATED";
        lASTMODIFIED <- "ENTRY_LASTMODIFIED";
        dEFAULT <- "ENTRY_DEFAULT";
        sPECIAL <- "ENTRY_SPECIAL";
        eNABLE <- "ENTRY_ENABLE";
        yES <- "Yes";
        nO <- "No";
        ();
        ()
      end
  end
let () = java_register_constructor "EntryData" (fun arguments -> Obj.repr (new entryData (Obj.obj arguments)))

let instance = (new entryData ())
let get_instance () = instance
let () = java_register_static "EntryData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "EntryData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


