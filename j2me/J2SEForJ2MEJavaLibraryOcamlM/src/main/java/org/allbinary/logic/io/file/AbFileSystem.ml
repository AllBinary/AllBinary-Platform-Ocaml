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
(* package org.allbinary.logic.io.file *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.File *)
(* import java.io.FileInputStream *)
(* import java.io.InputStream *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

class abFileSystem () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    

    method isDirectoryOrFile ((path : string)) : bool =
        begin
        let file : Obj.t ref = ref ((Obj.repr (new File.file (path)))) in ();
        (((Obj.magic !file)#isDirectory ()) || ((Obj.magic !file)#isFile ()))
        end
    

    method isDirectory ((path : string)) : bool =
        begin
        ((new File.file (path))#isDirectory ())
        end
    

    method getFilesAsStringArrayForPath ((currentDirPath : string)) : string array =
        try
        begin
        let file : Obj.t ref = ref ((Obj.repr (new File.file (currentDirPath)))) in ();
        if ((Obj.magic !file)#exists ()) then begin
            raise (Java_return (Obj.repr (((Obj.magic !file)#list ()))))
        end else begin
            raise (Java_return (Obj.repr (((StringUtil.getInstance ())#getArrayInstance ()))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method readAsString ((fileName : string)) : string =
        begin
        let bytes : int array ref = ref ((Array.make (1000000) 0)) in ();
        (self#readAsString (fileName, !bytes))
        end
    

    (* Java overload readAsString(String, ArrayType) is not converted: OCaml has one method per name *)
    

    method close : 'any1. 'any1 -> bool = fun (closeable) ->
        let closeable = Obj.repr closeable in
        begin
        (try
            if (closeable != (Obj.magic 0)) then begin
                let inputStream : Obj.t ref = ref ((Obj.repr ((Obj.magic closeable)))) in ();
                ignore ((Obj.magic !inputStream)#close ())
            end;
            true
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#cLOSE, e));
            false
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbFileSystem" (fun arguments -> Obj.repr (new abFileSystem (Obj.obj arguments)))

let instance = (new abFileSystem ())
let get_instance () = instance
let () = java_register_static "AbFileSystem.get_instance" (fun _ -> Obj.repr (get_instance ()))

let rec getInstance () =
        begin
        instance
        end

and main ((_args : string array)) : unit =
        begin
        let isDirectory : bool ref = ref (((getInstance ())#isDirectory ("c:"))) in ();
        (print_endline (java_string_of (Obj.repr (("isDirectory: " ^ java_string_of (Obj.repr (!isDirectory)))))))
        end
let () = java_register_static "AbFileSystem.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "AbFileSystem.main" (fun arguments -> Obj.repr (main (Obj.obj arguments)))


