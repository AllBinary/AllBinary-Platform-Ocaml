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
  object (self)
    val mutable eXTENSION_SEP : string = ""
    method eXTENSION_SEP = eXTENSION_SEP
    method set_eXTENSION_SEP value' = eXTENSION_SEP <- value'
    val mutable sEPARATORCHAR : char = '\000'
    method sEPARATORCHAR = sEPARATORCHAR
    method set_sEPARATORCHAR value' = sEPARATORCHAR <- value'
    val mutable sEPARATOR : string = ""
    method sEPARATOR = sEPARATOR
    method set_sEPARATOR value' = sEPARATOR <- value'
    
    

    method getExtensionIndex ((filePath : string)) : int =
        try
        begin
        let indexOfFileExtensionDelmiter : int ref = ref ((java_string_last_index_of filePath (Obj.repr (eXTENSION_SEP)))) in ();
        let indexOfLatDelimiter : int ref = ref ((java_string_last_index_of filePath (Obj.repr (sEPARATORCHAR)))) in ();
        if (!indexOfFileExtensionDelmiter < 0) then begin
            raise (Java_return (Obj.repr ((-1))))
        end;
        if (!indexOfFileExtensionDelmiter < !indexOfLatDelimiter) then begin
            raise (Java_return (Obj.repr ((-1))))
        end;
        !indexOfFileExtensionDelmiter
        end
        with Java_return value -> Obj.obj value
    

    method getExtensionWithDot ((filePath : string)) : string =
        begin
        let indexOfFileExtensionDelmiter : int ref = ref ((self#getExtensionIndex (filePath))) in ();
        let extension : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        if (!indexOfFileExtensionDelmiter >= 0) then begin
            extension := (String.sub filePath (!indexOfFileExtensionDelmiter) (String.length filePath - (!indexOfFileExtensionDelmiter)))
        end;
        !extension
        end
    

    method getExtension ((filePath : string)) : string =
        begin
        let indexOfFileExtensionDelmiter : int ref = ref ((self#getExtensionIndex (filePath))) in ();
        let extension : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        if (!indexOfFileExtensionDelmiter >= 0) then begin
            extension := (String.sub filePath ((!indexOfFileExtensionDelmiter + 1)) (String.length filePath - ((!indexOfFileExtensionDelmiter + 1))))
        end;
        !extension
        end
    

    method getNameFromPath ((path : string)) : string =
        try
        begin
        let endIndex : int ref = ref ((java_string_last_index_of path (Obj.repr (sEPARATORCHAR)))) in ();
        if (!endIndex < 0) then begin
            endIndex := (java_string_last_index_of path (Obj.repr ((FilePathData.getInstance ())#sEPARATORCHAR)))
        end;
        if (!endIndex < 0) then begin
            raise (Java_return (Obj.repr (path)))
        end;
        if ((String.length path) = (!endIndex + 1)) then begin
            let categoryName : string ref = ref ((String.sub path (0) ((!endIndex) - (0)))) in ();
            raise (Java_return (Obj.repr ((self#getNameFromPath (!categoryName)))))
        end else begin
            let categoryName : string ref = ref ((String.sub path ((!endIndex + 1)) (String.length path - ((!endIndex + 1))))) in ();
            raise (Java_return (Obj.repr (!categoryName)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method removeNameFromPath ((path : string)) : string =
        try
        begin
        let endIndex : int ref = ref ((java_string_last_index_of path (Obj.repr (sEPARATORCHAR)))) in ();
        if (!endIndex < 0) then begin
            endIndex := (java_string_last_index_of path (Obj.repr ((FilePathData.getInstance ())#sEPARATORCHAR)))
        end;
        if (!endIndex < 0) then begin
            raise (Java_return (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING)))
        end;
        if ((String.length path) = (!endIndex + 1)) then begin
            raise (Java_return (Obj.repr ((self#removeNameFromPath ((String.sub path (0) (((!endIndex - 1)) - (0))))))))
        end else begin
            let pathWithoutName : string ref = ref ((String.sub path (0) ((!endIndex) - (0)))) in ();
            raise (Java_return (Obj.repr (!pathWithoutName)))
        end
        end
        with Java_return value -> Obj.obj value

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


