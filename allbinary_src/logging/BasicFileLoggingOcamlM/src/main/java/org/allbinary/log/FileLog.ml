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
(* package org.allbinary.log *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.BufferedReader *)
(* import java.io.BufferedWriter *)
(* import java.io.File *)
(* import java.io.FileReader *)
(* import java.io.FileWriter *)
(* import java.io.RandomAccessFile *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.communication.log.LogFormatUtil *)
(* import org.allbinary.logic.string.StringMaker *)

let stringUtil : StringUtil.stringUtil = ((StringUtil.getInstance ()) :> StringUtil.stringUtil)
let get_stringUtil () = stringUtil
let () = java_register_static "FileLog.get_stringUtil" (fun _ -> Obj.repr (get_stringUtil ()))
let logLength : int = 33000000
let get_logLength () = logLength
let () = java_register_static "FileLog.get_logLength" (fun _ -> Obj.repr (get_logLength ()))
let logPath : string = "g:\\log\\"
let get_logPath () = logPath
let () = java_register_static "FileLog.get_logPath" (fun _ -> Obj.repr (get_logPath ()))
let backupFileName : string = (fileName#concat (".bak"))
let get_backupFileName () = backupFileName
let () = java_register_static "FileLog.get_backupFileName" (fun _ -> Obj.repr (get_backupFileName ()))
let oRG_ALLBINARY : string = "org.allbinary: "
let get_oRG_ALLBINARY () = oRG_ALLBINARY
let () = java_register_static "FileLog.get_oRG_ALLBINARY" (fun _ -> Obj.repr (get_oRG_ALLBINARY ()))
let firstTime : bool ref = ref (true)
let get_firstTime () = !firstTime
let set_firstTime value' = firstTime := value'
let () = java_register_static "FileLog.get_firstTime" (fun _ -> Obj.repr (get_firstTime ()))
let logFile : Obj.t ref = ref ((Obj.repr (new File.file (logPath, fileName))))
let get_logFile () = Obj.magic !logFile
let set_logFile value' = logFile := Obj.repr value'
let () = java_register_static "FileLog.get_logFile" (fun _ -> Obj.repr (get_logFile ()))
let logFileBak : Obj.t ref = ref ((Obj.repr (Obj.magic 0)))
let get_logFileBak () = Obj.magic !logFileBak
let set_logFileBak value' = logFileBak := Obj.repr value'
let () = java_register_static "FileLog.get_logFileBak" (fun _ -> Obj.repr (get_logFileBak ()))
let fileOut : Obj.t ref = ref ((Obj.repr (Obj.magic 0)))
let get_fileOut () = Obj.magic !fileOut
let set_fileOut value' = fileOut := Obj.repr value'
let () = java_register_static "FileLog.get_fileOut" (fun _ -> Obj.repr (get_fileOut ()))
let backupIndex : int ref = ref (0)
let get_backupIndex () = !backupIndex
let set_backupIndex value' = backupIndex := value'
let () = java_register_static "FileLog.get_backupIndex" (fun _ -> Obj.repr (get_backupIndex ()))

let rec put : 'any2. string * 'any2 * string -> string = fun ((specialMessage : string), anyType, (functionName : string)) ->
        let anyType = Obj.repr anyType in
        begin
        (put (specialMessage, anyType, functionName, (Obj.magic 0)))
        end

(* Java overload put(String, String, String) is not converted: OCaml has one method per name *)

let () = java_register_static "FileLog.put" (fun arguments -> Obj.repr (put (Obj.obj arguments)))
class fileLog () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "FileLog" (fun arguments -> Obj.repr (new fileLog (Obj.obj arguments)))

let extension : string = (Obj.obj (java_new "String" (Obj.repr ("dat"))))
let get_extension () = extension
let () = java_register_static "FileLog.get_extension" (fun _ -> Obj.repr (get_extension ()))

let fileName : string = (Obj.obj (java_new "String" (Obj.repr (("log." ^ java_string_of (Obj.repr (extension)))))))
let get_fileName () = fileName
let () = java_register_static "FileLog.get_fileName" (fun _ -> Obj.repr (get_fileName ()))

let rec createLogFile () : bool =
        begin
        (try
            logFile := Obj.repr ((new File.file (logPath, fileName)));
            if (not !firstTime) then begin
                fileOut := Obj.repr ((new BufferedWriter.bufferedWriter ((new FileWriter.fileWriter ((Obj.magic !logFile))))))
            end else begin
                firstTime := false;
                let raFile : Obj.t ref = ref ((Obj.repr (new RandomAccessFile.randomAccessFile ((Obj.magic !logFile), "rw")))) in ();
                ignore ((Obj.magic !raFile)#seek (((Obj.magic !raFile)#length ())));
                fileOut := Obj.repr ((new BufferedWriter.bufferedWriter ((new FileWriter.fileWriter (((Obj.magic !raFile)#getFD ()))))))
            end;
            let canWrite : bool ref = ref (((Obj.magic !logFile)#canWrite ())) in ();
            !canWrite
        with e -> begin
            (print_endline (java_string_of (Obj.repr (("Error Creating Log: " ^ java_string_of (Obj.repr (e)))))));
            false
        end)
        end

and createLogFileBackup () : bool =
        begin
        (try
            let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            logFileBak := Obj.repr ((new File.file (logPath, (java_string_of (Obj.repr (((!stringMaker#append (backupFileName))#append ((CommonSeps.getInstance ())#pERIOD))#appendint (!backupIndex)))))));
            while ((Obj.magic !logFileBak)#isFile ()) do
                backupIndex := !backupIndex + 1;
                ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                logFileBak := Obj.repr ((new File.file (logPath, (java_string_of (Obj.repr (((!stringMaker#append (backupFileName))#append ((CommonSeps.getInstance ())#pERIOD))#appendint (!backupIndex)))))))
            done;
            let line : string ref = ref ("") in ();
            let tmpOut : Obj.t ref = ref ((Obj.repr (new BufferedWriter.bufferedWriter ((new FileWriter.fileWriter ((Obj.magic !logFileBak))))))) in ();
            let tmpIn : Obj.t ref = ref ((Obj.repr (new BufferedReader.bufferedReader ((new FileReader.fileReader ((Obj.magic !logFile))))))) in ();
            while (((line := ((Obj.magic !tmpIn)#readLine ()); !line)) != (Obj.magic 0)) do
                ignore ((Obj.magic !tmpOut)#write (!line, 0, (String.length !line)));
                ignore ((Obj.magic !tmpOut)#newLine ())
            done;
            ignore ((Obj.magic !tmpOut)#flush ());
            ignore ((Obj.magic !tmpOut)#close ());
            ignore ((Obj.magic !tmpIn)#close ());
            ignore ((Obj.magic !logFile)#delete ());
            true
        with e -> begin
            (print_endline (java_string_of (Obj.repr (("Error Creating Backup: " ^ java_string_of (Obj.repr (e)))))));
            false
        end)
        end

(* Java overload put(String, Any, String, Throwable) is not converted: OCaml has one method per name *)

(* Java overload put(String, String, String, Exception) is not converted: OCaml has one method per name *)

and getFilePath () : string =
        begin
        (logPath + fileName)
        end
let () = java_register_static "FileLog.createLogFile" (fun arguments -> Obj.repr (createLogFile (Obj.obj arguments)))
let () = java_register_static "FileLog.createLogFileBackup" (fun arguments -> Obj.repr (createLogFileBackup (Obj.obj arguments)))
let () = java_register_static "FileLog.getFilePath" (fun arguments -> Obj.repr (getFilePath (Obj.obj arguments)))


