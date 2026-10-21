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
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)

class pathUtil () =
  object (self)
    val mutable abPathData : Obj.t = Obj.repr 0
    method abPathData : 'r. 'r = Obj.magic abPathData
    method set_abPathData : 'v. 'v -> unit = fun value' -> abPathData <- Obj.repr value'
    val mutable filePathData : FilePathData.filePathData = (Obj.magic 0)
    method filePathData = filePathData
    method set_filePathData value' = filePathData <- value'
    
    

    method getExtensionWithAbFilePath : 'any1. 'any1 -> string = fun (abFilePath) ->
        let abFilePath = Obj.repr abFilePath in
        begin
        ((Obj.magic abPathData)#getExtension ((java_string_of (Obj.repr (Obj.magic abFilePath)))))
        end [@@warning "-20"]
    

    method getExtensionWithAbPath : 'any1. 'any1 -> string = fun (abPath) ->
        let abPath = Obj.repr abPath in
        begin
        ((Obj.magic abPathData)#getExtension ((java_string_of (Obj.repr (Obj.magic abPath)))))
        end [@@warning "-20"]
    

    method getWithoutExtensionWithAbFilePath : 'any1. 'any1 -> string = fun (abFilePath) ->
        let abFilePath = Obj.repr abFilePath in
        begin
        (self#getWithoutExtension ((java_string_of (Obj.repr (Obj.magic abFilePath)))))
        end [@@warning "-20"]
    

    method getWithoutExtensionWithAbPath : 'any1. 'any1 -> string = fun (abPath) ->
        let abPath = Obj.repr abPath in
        begin
        (self#getWithoutExtension ((java_string_of (Obj.repr (Obj.magic abPath)))))
        end [@@warning "-20"]
    

    method getWithoutExtension ((filePath : string)) : string =
        begin
        let indexOfFileExtensionDelmiter : int ref = ref (((Obj.magic abPathData)#getExtensionIndex (filePath))) in ();
        let pathWithoutExtension : string ref = ref (filePath) in ();
        if (!indexOfFileExtensionDelmiter >= 0) then begin
            pathWithoutExtension := (String.sub filePath (0) ((!indexOfFileExtensionDelmiter) - (0)))
        end;
        !pathWithoutExtension
        end
    

    method isValid ((path : string)) : bool =
        try
        begin
        if (self#isValidStart (path)) then begin
            if (self#isValidEnd (path)) then begin
                raise (Java_return (Obj.repr (true)))
            end
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method isValidStart ((path : string)) : bool =
        try
        begin
        if (((Obj.repr (String.get path (0))) == (Obj.repr (Obj.magic abPathData)#sEPARATORCHAR)) || ((String.get path (0)) == '.')) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method isValidEnd ((path : string)) : bool =
        try
        begin
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if (!stringValidationUtil#isEmpty (path)) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        if ((Obj.repr (String.get path (((String.length path) - 1)))) == (Obj.repr (Obj.magic abPathData)#sEPARATORCHAR)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method adjustStart ((path : string)) : string =
        let path = ref path in
        begin
        if (not (self#isValidStart (!path))) then begin
            path := (java_string_of (Obj.repr ((Obj.magic abPathData)#sEPARATOR)) ^ !path)
        end;
        !path
        end
    

    method adjustEnd ((path : string)) : string =
        let path = ref path in
        begin
        if (not (self#isValidEnd (!path))) then begin
            path := (!path ^ java_string_of (Obj.repr ((Obj.magic abPathData)#sEPARATOR)))
        end;
        !path
        end
    

    method adjust ((path : string)) : string =
        let path = ref path in
        try
        begin
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if (!stringValidationUtil#isEmpty (!path)) then begin
            raise (Java_return (Obj.repr ((Obj.magic abPathData)#sEPARATOR)))
        end;
        if ((java_string_index_of !path (Obj.repr ("\\"))) >= 0) then begin
            path := (java_string_replace !path (Obj.repr ('\\')) (Obj.repr ((Obj.magic abPathData)#sEPARATORCHAR)))
        end;
        !path
        end
        with Java_return value -> Obj.obj value
    

    method removeNameFromPath : 'return. string -> 'return = fun ((path : string)) ->
        try
        begin
        let endIndex : int ref = ref ((java_string_last_index_of path (Obj.repr ((Obj.magic abPathData)#sEPARATOR)))) in ();
        if (!endIndex < 0) then begin
            endIndex := (java_string_last_index_of path (Obj.repr (filePathData#sEPARATORCHAR)))
        end;
        if (!endIndex < 0) then begin
            raise (Java_return (Obj.repr ((Obj.magic (java_call_static "AbPath.createAbPath" (Obj.repr ()))))))
        end;
        if ((String.length path) = (!endIndex + 1)) then begin
            raise (Java_return (Obj.repr ((self#removeNameFromPath ((String.sub path (0) (((!endIndex - 1)) - (0))))))))
        end else begin
            let pathWithoutName : string ref = ref ((String.sub path (0) ((!endIndex) - (0)))) in ();
            raise (Java_return (Obj.repr ((Obj.obj (java_new "AbPath" (Obj.repr (!pathWithoutName, (StringUtil.getInstance ())#eMPTY_STRING)))))))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        abPathData <- (Obj.repr (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ()))));
        filePathData <- ((FilePathData.getInstance ()) :> FilePathData.filePathData);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PathUtil" (fun arguments -> Obj.repr (new pathUtil (Obj.obj arguments)))

let instance = (new pathUtil ())
let get_instance () = instance
let () = java_register_static "PathUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PathUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


