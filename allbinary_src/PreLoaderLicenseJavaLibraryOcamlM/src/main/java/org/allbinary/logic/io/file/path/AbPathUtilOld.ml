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
(* package org.allbinary.logic.io.file.path *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.FilePathData *)
(* import org.allbinary.logic.io.path.AbFilePath *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)

let mIN : int = 4
let get_mIN () = mIN
let () = java_register_static "AbPathUtilOld.get_mIN" (fun _ -> Obj.repr (get_mIN ()))
class abPathUtilOld () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abPathData : Obj.t = Obj.repr 0
    method abPathData : 'r. 'r = Obj.magic abPathData
    method set_abPathData : 'v. 'v -> unit = fun value' -> abPathData <- Obj.repr value'
    val mutable filePathData : FilePathData.filePathData = (Obj.magic 0)
    method filePathData = filePathData
    method set_filePathData value' = filePathData <- value'
    
    

    method getExtension : 'any1. 'any1 -> string = fun (abFilePath) ->
        let abFilePath = Obj.repr abFilePath in
        begin
        (self#getExtension ((java_string_of (Obj.repr (Obj.magic abFilePath)))))
        end [@@warning "-20"]
    

    (* Java overload getExtension(AbPath) is not converted: OCaml has one method per name *)
    

    (* Java overload getExtension(String) is not converted: OCaml has one method per name *)
    

    method getWithoutExtension : 'any1. 'any1 -> string = fun (abFilePath) ->
        let abFilePath = Obj.repr abFilePath in
        begin
        (self#getWithoutExtension ((java_string_of (Obj.repr (Obj.magic abFilePath)))))
        end [@@warning "-20"]
    

    (* Java overload getWithoutExtension(AbPath) is not converted: OCaml has one method per name *)
    

    (* Java overload getWithoutExtension(String) is not converted: OCaml has one method per name *)
    

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
        if ((Obj.repr (String.get path (0))) == (Obj.repr (Obj.magic abPathData)#sEPARATORCHAR)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method isValidEnd ((path : string)) : bool =
        try
        begin
        if ((StringValidationUtil.getInstance ())#isEmpty (path)) then begin
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
        if ((StringValidationUtil.getInstance ())#isEmpty (!path)) then begin
            raise (Java_return (Obj.repr ((Obj.magic abPathData)#sEPARATOR)))
        end;
        if ((java_string_index_of !path (Obj.repr ("\\"))) >= 0) then begin
            path := (java_string_replace !path (Obj.repr ('\\')) (Obj.repr ((Obj.magic abPathData)#sEPARATORCHAR)))
        end;
        !path
        end
        with Java_return value -> Obj.obj value
    

    method getNameFromPath ((categoryPath : string)) : string =
        try
        begin
        let endIndex : int ref = ref ((java_string_last_index_of categoryPath (Obj.repr ((Obj.magic abPathData)#sEPARATOR)))) in ();
        if (!endIndex < 0) then begin
            endIndex := (java_string_last_index_of categoryPath (Obj.repr (filePathData#sEPARATORCHAR)))
        end;
        if (!endIndex < 0) then begin
            categoryPath
        end;
        if ((String.length categoryPath) = (!endIndex + 1)) then begin
            let categoryName : string ref = ref ((String.sub categoryPath (0) ((!endIndex) - (0)))) in ();
            raise (Java_return (Obj.repr ((self#getNameFromPath (!categoryName)))))
        end else begin
            let categoryName : string ref = ref ((String.sub categoryPath ((!endIndex + 1)) (String.length categoryPath - ((!endIndex + 1))))) in ();
            raise (Java_return (Obj.repr (!categoryName)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method removeNameFromPath ((categoryPath : string)) : AbPath.abPath =
        try
        begin
        let endIndex : int ref = ref ((java_string_last_index_of categoryPath (Obj.repr ((Obj.magic abPathData)#sEPARATOR)))) in ();
        if (!endIndex < 0) then begin
            endIndex := (java_string_last_index_of categoryPath (Obj.repr (filePathData#sEPARATORCHAR)))
        end;
        if (!endIndex < 0) then begin
            raise (Java_return (Obj.repr ((AbPath.createAbPath ()))))
        end;
        if ((String.length categoryPath) = (!endIndex + 1)) then begin
            raise (Java_return (Obj.repr ((self#removeNameFromPath ((String.sub categoryPath (0) (((!endIndex - 1)) - (0))))))))
        end else begin
            let categoryName : string ref = ref ((String.sub categoryPath (0) ((!endIndex) - (0)))) in ();
            raise (Java_return (Obj.repr ((new AbPath.abPath (!categoryName, (StringUtil.getInstance ())#eMPTY_STRING)))))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        abPathData <- (Obj.repr (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ()))));
        filePathData <- ((FilePathData.getInstance ()) :> FilePathData.filePathData);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbPathUtilOld" (fun arguments -> Obj.repr (new abPathUtilOld (Obj.obj arguments)))

let instance = (new abPathUtilOld ())
let get_instance () = instance
let () = java_register_static "AbPathUtilOld.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AbPathUtilOld.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


