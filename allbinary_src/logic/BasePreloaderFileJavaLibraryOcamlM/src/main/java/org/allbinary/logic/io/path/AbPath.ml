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
[@@@warning "-20"]
(* import org.allbinary.logic.io.file.FilePathData *)
(* import org.allbinary.logic.io.file.FilePathUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonSeps *)

let nETWORK_SEP : string = ":/"
let get_nETWORK_SEP () = nETWORK_SEP
let () = java_register_static "AbPath.get_nETWORK_SEP" (fun _ -> Obj.repr (get_nETWORK_SEP ()))
class abPath ((aPath : string), (name : string)) =
  object (self)
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable abPathData : Obj.t = Obj.repr 0
    method abPathData : 'r. 'r = Obj.magic abPathData
    method set_abPathData : 'v. 'v -> unit = fun value' -> abPathData <- Obj.repr value'
    val mutable abPathUtil : PathUtil.pathUtil = (Obj.magic 0)
    method abPathUtil = abPathUtil
    method set_abPathUtil value' = abPathUtil <- value'
    val mutable eMPTY_STRING : string = ""
    method eMPTY_STRING = eMPTY_STRING
    method set_eMPTY_STRING value' = eMPTY_STRING <- value'
    val mutable schema : string = ""
    method schema = schema
    method set_schema value' = schema <- value'
    val mutable path : string = ""
    method path = path
    method set_path value' = path <- value'
    val mutable nameP : string = ""
    method nameP = nameP
    method set_nameP value' = nameP <- value'
    val mutable hasSchemaP : bool = false
    method hasSchemaP = hasSchemaP
    method set_hasSchemaP value' = hasSchemaP <- value'
    val mutable numberOfSeps : int = 0
    method numberOfSeps = numberOfSeps
    method set_numberOfSeps value' = numberOfSeps <- value'
    
    

    method init () : unit =
        begin
        schema <- eMPTY_STRING;
        (self#setPath ((Obj.magic abPathData)#sEPARATOR));
        nameP <- eMPTY_STRING
        end
    

    method getSchema ((aPath : string)) : string =
        try
        begin
        let beginIndex : int ref = ref ((java_string_index_of aPath (Obj.repr (commonSeps#cOLON)))) in ();
        if (!beginIndex >= 0) then begin
            hasSchemaP <- true;
            raise (Java_return (Obj.repr ((String.sub aPath (0) ((!beginIndex) - (0))))))
        end;
        hasSchemaP <- false;
        eMPTY_STRING
        end
        with Java_return value -> Obj.obj value
    

    method hasSchema () : bool =
        begin
        hasSchemaP
        end
    

    method getPathFromPath ((aPath : string)) : string =
        begin
        let filePathData : FilePathData.filePathData ref = ref (((FilePathData.getInstance ()) :> FilePathData.filePathData)) in ();
        let tempPath : string ref = ref (aPath) in ();
        if (not (self#hasSchema ())) then begin
            tempPath := (abPathUtil#adjustStart (!tempPath))
        end else begin
            let beginIndex : int ref = ref ((java_string_index_of !tempPath (Obj.repr (commonSeps#cOLON)))) in ();
            if (!beginIndex >= 0) then begin
                beginIndex := !beginIndex + 1;
                while (((Obj.repr (String.get !tempPath (!beginIndex))) == (Obj.repr (Obj.magic abPathData)#sEPARATORCHAR)) || ((Obj.repr (String.get !tempPath (!beginIndex))) == (Obj.repr !filePathData#sEPARATORCHAR))) do
                    beginIndex := !beginIndex + 1;
                    numberOfSeps <- numberOfSeps + 1;
                    if (numberOfSeps > 2) then begin
                        raise (Failure ("Should Not Have More Than Two Seps"))
                    end
                done;
                tempPath := (String.sub !tempPath (!beginIndex) (((String.length !tempPath)) - (!beginIndex)))
            end
        end;
        !tempPath
        end
    

    method setName ((name : string)) : unit =
        begin
        nameP <- name
        end
    

    method getName () : string =
        begin
        nameP
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        if (self#hasSchema ()) then begin
            ignore (!stringBuffer#append (schema));
            ignore (!stringBuffer#append (nETWORK_SEP))
        end;
        ignore (!stringBuffer#append ((self#getPath ())));
        ignore (!stringBuffer#append (nameP));
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method toFileSystemString () : string =
        try
        begin
        if (self#hasSchema ()) then begin
            let filePathData : FilePathData.filePathData ref = ref (((FilePathData.getInstance ()) :> FilePathData.filePathData)) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append (schema));
            ignore (!stringBuffer#append (commonSeps#cOLON));
            ignore (!stringBuffer#append (!filePathData#pATH_START));
            ignore (!stringBuffer#append ((FilePathUtil.adjust ((self#getPath ())))));
            ignore (!stringBuffer#append (nameP));
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))
        end else begin
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr ((FilePathUtil.adjust ((self#getPath ()))))) ^ nameP))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getPath () : string =
        begin
        path
        end
    

    method setPath ((path_arg : string)) : unit =
        begin
        path <- path_arg
        end

    initializer
      begin
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        abPathData <- (Obj.repr (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ()))));
        abPathUtil <- ((PathUtil.getInstance ()) :> PathUtil.pathUtil);
        eMPTY_STRING <- (StringUtil.getInstance ())#eMPTY_STRING;
        schema <- eMPTY_STRING;
        path <- eMPTY_STRING;
        nameP <- eMPTY_STRING;
        hasSchemaP <- false;
        numberOfSeps <- 0;
        ();
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if (not (!stringValidationUtil#isEmpty (aPath))) then begin
            schema <- (self#getSchema (aPath));
            nameP <- name;
            path <- (abPathUtil#adjustEnd ((abPathUtil#adjust ((self#getPathFromPath (aPath))))))
        end else begin
            (self#init ());
            if (not (!stringValidationUtil#isEmpty (name))) then begin
                nameP <- name
            end
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbPath" (fun arguments -> Obj.repr (new abPath (Obj.obj arguments)))

let createAbPath () =
        begin
        (try
            let eMPTY_STRING_arg : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
            (new abPath (!eMPTY_STRING_arg, !eMPTY_STRING_arg))
        with ex -> begin
            raise (Failure ("RuntimeException"))
        end)
        end
let () = java_register_static "AbPath.createAbPath" (fun arguments -> Obj.repr (createAbPath (Obj.obj arguments)))


