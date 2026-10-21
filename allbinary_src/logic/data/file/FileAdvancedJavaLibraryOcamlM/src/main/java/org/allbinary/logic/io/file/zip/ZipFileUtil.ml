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
(* package org.allbinary.logic.io.file.zip *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.zip.ZipEntry *)
(* import java.util.zip.ZipInputStream *)
(* import java.util.zip.ZipOutputStream *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.AbDataOutputStream *)
(* import org.allbinary.logic.io.AbFileInputStream *)
(* import org.allbinary.logic.io.AbFileOutputStream *)
(* import org.allbinary.logic.io.DataOutputStreamFactory *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FileUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)

class zipFileUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    

    method create : 'any2. string * 'any2 -> unit = fun ((outFilename : string), fileBasicArrayList) ->
        let fileBasicArrayList = Obj.repr fileBasicArrayList in
        begin
        (try
            let zipFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (outFilename)))))) in ();
            if ((Obj.magic !zipFile)#exists ()) then begin
                ignore ((Obj.magic !zipFile)#delete ())
            end;
            ignore ((Obj.magic !zipFile)#createNewFile ());
            let outputStream : Obj.t ref = ref ((Obj.repr (new ZipOutputStream.zipOutputStream ((Obj.magic (java_call_static "AbFileOutputStream.createFromAbFile" (Obj.repr ((Obj.magic !zipFile))))))))) in ();
            let streamUtil : StreamUtil.streamUtil ref = ref (((StreamUtil.getInstance ()) :> StreamUtil.streamUtil)) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            let byteArray : int array ref = ref ((Array.make (16384) 0)) in ();
            let fileInputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let size : int ref = ref (((Obj.magic fileBasicArrayList)#size ())) in ();
            let current : int ref = ref (0) in ();
            for i = 0 to !size - 1 do
                let file : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic fileBasicArrayList)#get (i))))) in ();
                if ((Obj.magic !file)#isDirectory ()) then begin
                    ()
                end else if ((Obj.magic !file)#isFile ()) then begin
                    ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                    ignore (!stringBuffer#appendint (!current));
                    ignore (!stringBuffer#append (" Creating Zip File Entry: "));
                    ignore (!stringBuffer#append (((Obj.magic !file)#getPath ())));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "create()"));
                    (try
                        fileInputStream := Obj.repr ((Obj.obj (java_new "AbFileInputStream" (Obj.repr ((Obj.magic !file))))));
                        ignore ((Obj.magic !outputStream)#putNextEntry ((new ZipEntry.zipEntry (((Obj.magic !file)#getPath ())))));
                        ignore (!streamUtil#get ((Obj.magic !fileInputStream), (Obj.magic !outputStream), !byteArray));
                        ignore ((Obj.magic !outputStream)#closeEntry ());
                        ignore (!streamUtil#close ((Obj.magic !fileInputStream)))
                    with e -> begin
                        ignore ((Obj.magic logUtil)#putF (("Skipping File (Probably Local): " ^ java_string_of (Obj.repr (((Obj.magic !file)#getPath ())))), self, "create()"))
                    end)
                end;
                current := !current + 1
            done;
            ignore (!streamUtil#close ((Obj.magic !outputStream)))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "create", e))
        end)
        end [@@warning "-20"]
    

    method unzip : 'any2. string * 'any2 * string -> unit = fun ((path : string), zipFile, (_fileName : string)) ->
        let zipFile = Obj.repr zipFile in
        begin
        let buffer : int array ref = ref ((Array.make (16384) 0)) in ();
        let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        Fun.protect ~finally:(fun () -> 
            ignore ((StreamUtil.getInstance ())#close ((Obj.magic !inputStream)))
        ) (fun () -> (try
            inputStream := Obj.repr ((new ZipInputStream.zipInputStream ((Obj.obj (java_new "AbFileInputStream" (Obj.repr ((Obj.magic zipFile))))))));
            let zipEntry : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            let fileUtil : FileUtil.fileUtil ref = ref (((FileUtil.getInstance ()) :> FileUtil.fileUtil)) in ();
            while (((zipEntry := Obj.repr (((Obj.magic !inputStream)#getNextEntry ())); (Obj.magic !zipEntry))) != (Obj.magic 0)) do
                let entryName : string ref = ref (((Obj.magic !zipEntry)#getName ())) in ();
                if ((Obj.magic !zipEntry)#isDirectory ()) then begin
                    ()
                end else begin
                    let entryFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr ((path ^ !entryName))))))) in ();
                    ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                    ignore (!stringBuffer#append ("ZipEntry Name: "));
                    ignore (!stringBuffer#append (!entryName));
                    ignore (!stringBuffer#append (" isFile: "));
                    ignore (!stringBuffer#appendboolean (((Obj.magic !entryFile)#isFile ())));
                    ignore (!stringBuffer#append (" isDirectory: "));
                    ignore (!stringBuffer#appendboolean (((Obj.magic !entryFile)#isDirectory ())));
                    ignore (!stringBuffer#append (" getParent: "));
                    ignore (!stringBuffer#append (((Obj.magic !entryFile)#getParent ())));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "unzip"));
                    let dataOutputStream : AbDataOutputStream.abDataOutputStream ref = ref ((((Obj.magic (java_call_static "DataOutputStreamFactory.getInstance" (Obj.repr ())))#getInstanceForAbFile ((Obj.magic !entryFile))) :> AbDataOutputStream.abDataOutputStream)) in ();
                    ignore (!fileUtil#write ((Obj.magic !inputStream), !dataOutputStream, !buffer))
                end;
                ignore ((Obj.magic !inputStream)#closeEntry ())
            done
        with exception_value -> raise exception_value))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ZipFileUtil" (fun arguments -> Obj.repr (new zipFileUtil (Obj.obj arguments)))

let instance = (new zipFileUtil ())
let get_instance () = instance
let () = java_register_static "ZipFileUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ZipFileUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


