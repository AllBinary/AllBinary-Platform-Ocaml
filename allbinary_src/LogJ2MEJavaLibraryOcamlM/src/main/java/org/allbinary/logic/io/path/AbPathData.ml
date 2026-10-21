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
(* package org.allbinary.logic.io.path *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.io.file.FilePathData *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)

class abPathData () =
  object
    val mutable eXTENSION_SEP : string = ""
    method eXTENSION_SEP = eXTENSION_SEP
    method set_eXTENSION_SEP value' = eXTENSION_SEP <- value'
    val mutable sEPARATORCHAR : char = '\000'
    method sEPARATORCHAR = sEPARATORCHAR
    method set_sEPARATORCHAR value' = sEPARATORCHAR <- value'
    val mutable sEPARATOR : string = ""
    method sEPARATOR = sEPARATOR
    method set_sEPARATOR value' = sEPARATOR <- value'
    

    initializer
      begin
        eXTENSION_SEP <- (CommonSeps.getInstance ())#pERIOD;
        sEPARATORCHAR <- '/';
        sEPARATOR <- (CommonSeps.getInstance ())#fORWARD_SLASH;
        ();
        ()
      end
  end
let () = java_register_constructor "AbPathData" (fun arguments -> Obj.repr (new abPathData (Obj.obj arguments)))

let instance = (new abPathData ())
let get_instance () = instance
let () = java_register_static "AbPathData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AbPathData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


