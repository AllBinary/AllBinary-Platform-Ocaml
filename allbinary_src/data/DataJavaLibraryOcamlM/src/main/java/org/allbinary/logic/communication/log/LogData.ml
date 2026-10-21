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
(* package org.allbinary.logic.communication.log *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.io.path.AbPathData *)

class logData () =
  object
    val mutable mAX : int = 0
    method mAX = mAX
    method set_mAX value' = mAX <- value'
    val mutable extension : string = ""
    method extension = extension
    method set_extension value' = extension <- value'
    val mutable backupFileExt : string = ""
    method backupFileExt = backupFileExt
    method set_backupFileExt value' = backupFileExt <- value'
    val mutable aLLBINARY : string = ""
    method aLLBINARY = aLLBINARY
    method set_aLLBINARY value' = aLLBINARY <- value'
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable dESCRIPTION : string = ""
    method dESCRIPTION = dESCRIPTION
    method set_dESCRIPTION value' = dESCRIPTION <- value'

    initializer
      begin
        mAX <- 5000000;
        extension <- "log";
        backupFileExt <- (((java_string_of (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP)) ^ "bak") ^ java_string_of (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP))) ^ "txt");
        aLLBINARY <- "allbinary";
        nAME <- "LOG_NAME";
        dESCRIPTION <- "LOG_DESCRIPTION";
        ()
      end
  end
let () = java_register_constructor "LogData" (fun arguments -> Obj.repr (new logData (Obj.obj arguments)))


