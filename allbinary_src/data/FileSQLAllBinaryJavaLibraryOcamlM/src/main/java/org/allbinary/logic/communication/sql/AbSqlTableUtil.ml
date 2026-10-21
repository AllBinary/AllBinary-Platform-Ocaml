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
(* package org.allbinary.logic.communication.sql *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)
(* import java.sql.ResultSet *)
(* import java.sql.ResultSetMetaData *)
(* import java.util.Calendar *)
(* import org.allbinary.business.installer.Portion *)
(* import org.allbinary.logic.io.AbFileOutputStream *)
(* import org.allbinary.logic.io.BufferedLineReader *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FileUtil *)
(* import org.allbinary.logic.io.file.directory.Directory *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.globals.PATH_GLOBALS *)
(* import java.io.OutputStream *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringUtil *)

class abSqlTableUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable eXTENSION : string = ""
    method eXTENSION = eXTENSION
    method set_eXTENSION value' = eXTENSION <- value'
    val mutable eND : string = ""
    method eND = eND
    method set_eND value' = eND <- value'
    val mutable sAVING_BACKUP_PATH : string = ""
    method sAVING_BACKUP_PATH = sAVING_BACKUP_PATH
    method set_sAVING_BACKUP_PATH value' = sAVING_BACKUP_PATH <- value'
    val mutable fILE_LABEL : string = ""
    method fILE_LABEL = fILE_LABEL
    method set_fILE_LABEL value' = fILE_LABEL <- value'
    val mutable mETHOD_RESTORE_TABLE : string = ""
    method mETHOD_RESTORE_TABLE = mETHOD_RESTORE_TABLE
    method set_mETHOD_RESTORE_TABLE value' = mETHOD_RESTORE_TABLE <- value'
    val mutable mETHOD_BACKUP_TABLE : string = ""
    method mETHOD_BACKUP_TABLE = mETHOD_BACKUP_TABLE
    method set_mETHOD_BACKUP_TABLE value' = mETHOD_BACKUP_TABLE <- value'
    val mutable mETHOD_BACKUP_FILE : string = ""
    method mETHOD_BACKUP_FILE = mETHOD_BACKUP_FILE
    method set_mETHOD_BACKUP_FILE value' = mETHOD_BACKUP_FILE <- value'
    val mutable mETHOD_GET_OUTPUT_STREAM : string = ""
    method mETHOD_GET_OUTPUT_STREAM = mETHOD_GET_OUTPUT_STREAM
    method set_mETHOD_GET_OUTPUT_STREAM value' = mETHOD_GET_OUTPUT_STREAM <- value'
    val mutable tABLE_CREATION_SUCCESS : string = ""
    method tABLE_CREATION_SUCCESS = tABLE_CREATION_SUCCESS
    method set_tABLE_CREATION_SUCCESS value' = tABLE_CREATION_SUCCESS <- value'
    val mutable dROPPED_SUCCESS : string = ""
    method dROPPED_SUCCESS = dROPPED_SUCCESS
    method set_dROPPED_SUCCESS value' = dROPPED_SUCCESS <- value'
    val mutable sAVING : string = ""
    method sAVING = sAVING
    method set_sAVING value' = sAVING <- value'
    val mutable aPPENDING : string = ""
    method aPPENDING = aPPENDING
    method set_aPPENDING value' = aPPENDING <- value'
    val mutable tABLE_LABEL : string = ""
    method tABLE_LABEL = tABLE_LABEL
    method set_tABLE_LABEL value' = tABLE_LABEL <- value'
    val mutable bACKUP_SUCCESS : string = ""
    method bACKUP_SUCCESS = bACKUP_SUCCESS
    method set_bACKUP_SUCCESS value' = bACKUP_SUCCESS <- value'
    val mutable eRROR_CREATING : string = ""
    method eRROR_CREATING = eRROR_CREATING
    method set_eRROR_CREATING value' = eRROR_CREATING <- value'
    val mutable tOTAL_LABEL : string = ""
    method tOTAL_LABEL = tOTAL_LABEL
    method set_tOTAL_LABEL value' = tOTAL_LABEL <- value'
    val mutable sECTION_LABEL : string = ""
    method sECTION_LABEL = sECTION_LABEL
    method set_sECTION_LABEL value' = sECTION_LABEL <- value'
    val mutable dASH : string = ""
    method dASH = dASH
    method set_dASH value' = dASH <- value'
    val mutable pORTION_RESTORED : string = ""
    method pORTION_RESTORED = pORTION_RESTORED
    method set_pORTION_RESTORED value' = pORTION_RESTORED <- value'
    val mutable specialCharArray : char array = (Obj.magic 0)
    method specialCharArray = specialCharArray
    method set_specialCharArray value' = specialCharArray <- value'
    val mutable nEW_LINE : string = ""
    method nEW_LINE = nEW_LINE
    method set_nEW_LINE value' = nEW_LINE <- value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable sqlStrings : SqlStrings.sqlStrings = (Obj.magic 0)
    method sqlStrings = sqlStrings
    method set_sqlStrings value' = sqlStrings <- value'
    

    method getOutputStream : 'return. string * string -> 'return = fun ((backupPath : string), (tableName : string)) ->
        begin
        (try
            let fileName : string ref = ref ((tableName ^ eXTENSION)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((sAVING ^ tableName), self, mETHOD_GET_OUTPUT_STREAM))
            end;
            let backupFilePath : AbPath.abPath ref = ref (((new AbPath.abPath (backupPath, !fileName)) :> AbPath.abPath)) in ();
            let backupFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (!backupFilePath)))))) in ();
            if ((Obj.magic !backupFile)#exists ()) then begin
                ignore (self#backupFile (!backupFilePath, backupPath, tableName));
                ignore ((Obj.magic !backupFile)#delete ())
            end;
            ignore ((Obj.magic !backupFile)#createNewFile ());
            let outputStream : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "AbFileOutputStream" (Obj.repr ((Obj.magic !backupFile))))))) in ();
            (Obj.magic ((Obj.magic !outputStream)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Create File", self, mETHOD_GET_OUTPUT_STREAM, e))
            end;
            (Obj.magic ((Obj.magic 0)))
        end)
        end
    

    method backupFile : 'any1. 'any1 * string * string -> bool = fun (path, (backupPath : string), (tableName : string)) ->
        let path = Obj.repr path in
        begin
        (try
            let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
            let timeLong : int ref = ref ((Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))) in ();
            let time : string ref = ref ((string_of_int !timeLong)) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            let fileName : string ref = ref ((tableName ^ eXTENSION)) in ();
            ignore (!stringBuffer#append (backupPath));
            ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
            ignore (!stringBuffer#append (!time));
            let backupAbPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)))) :> AbPath.abPath)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append (sAVING_BACKUP_PATH));
                ignore (!stringBuffer#append ((!backupAbPath#toFileSystemString ())));
                ignore (!stringBuffer#append (fILE_LABEL));
                ignore (!stringBuffer#append (!fileName));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, mETHOD_BACKUP_FILE))
            end;
            ignore (Directory.create (!backupAbPath));
            let backupFileBak : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr ((!backupAbPath#toFileSystemString ()))))))) in ();
            ignore ((Obj.magic !backupFileBak)#createNewFile ());
            ignore ((FileUtil.getInstance ())#copy ((Obj.magic path), !backupAbPath));
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, mETHOD_BACKUP_FILE, e))
            end;
            false
        end)
        end [@@warning "-20"]
    

    method convertNewLines ((value : string)) : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let index : int ref = ref (0) in ();
        let lastIndex : int ref = ref (0) in ();
        while (!index < (String.length value)) do
            index := (java_string_index_of_from value (Obj.repr (specialCharArray.(0))) (!lastIndex));
            if (!index <> (-1)) then begin
                let nextLine : string ref = ref ((String.sub value (!lastIndex) (((!index - 1)) - (!lastIndex)))) in ();
                ignore (!stringBuffer#append (!nextLine));
                ignore (!stringBuffer#append (nEW_LINE));
                lastIndex := (!index + 1)
            end else begin
                raise Java_break
            end
        done;
        if (!lastIndex < (String.length value)) then begin
            ignore (!stringBuffer#append ((String.sub value (!lastIndex) (((String.length value)) - (!lastIndex)))))
        end;
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method backupTable : 'any1. 'any1 -> string = fun (abSqlTable) ->
        let abSqlTable = Obj.repr abSqlTable in
        begin
        let tableName : string ref = ref (((Obj.magic abSqlTable)#getTableName ())) in ();
        (try
            let count : int ref = ref (0) in ();
            let sqlStatement : string ref = ref ((java_string_of (Obj.repr (sqlStrings#sELECT_ALL_FROM)) ^ !tableName)) in ();
            let path : string ref = ref ((((org.get_allbinary ())#globals#uRLGLOBALS#getMainPath ()) + (PATH_GLOBALS.getInstance ())#bACKUP_PATH)) in ();
            if (not (Directory.create ((new AbPath.abPath (!path))))) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore ((Obj.magic logUtil)#putF ((eRROR_CREATING ^ java_string_of (Obj.repr (!path))), self, mETHOD_BACKUP_TABLE))
                end
            end;
            let rset : Obj.t ref = ref ((Obj.repr ((Obj.magic abSqlTable)#executeSQLStatement (!sqlStatement)))) in ();
            let rsmd : Obj.t ref = ref ((Obj.repr ((Obj.magic !rset)#getMetaData ()))) in ();
            let colNum : int ref = ref (((Obj.magic !rsmd)#getColumnCount ())) in ();
            let qUERY_START : string ref = ref ((java_string_of (Obj.repr ((((new StringBuilder.stringBuilder ())#append (sqlStrings#iNSERT_INTO))#append (!tableName))#append (sqlStrings#vALUES))))) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            let outputStream : Obj.t ref = ref ((Obj.repr (self#getOutputStream (!path, !tableName)))) in ();
            while ((Obj.magic !rset)#next ()) do
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append (!qUERY_START));
                for i = 1 to !colNum - 1 do
                    let value : string ref = ref (((Obj.magic !rset)#getString (i))) in ();
                    ignore (!stringBuffer#append ((self#convertNewLines (!value))));
                    ignore (!stringBuffer#append (sqlStrings#sINGLE_QUOTE_COMMA_SEP))
                done;
                ignore (!stringBuffer#append (((Obj.magic !rset)#getString (!colNum))));
                ignore (!stringBuffer#append (eND));
                let sqlStatementLine : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore ((Obj.magic logUtil)#putF ((aPPENDING ^ !sqlStatementLine), self, mETHOD_BACKUP_TABLE))
                end;
                ignore ((Obj.magic !outputStream)#write ((java_string_get_bytes !sqlStatementLine)))
            done;
            ignore ((StreamUtil.getInstance ())#close ((Obj.magic !outputStream)));
            ((tABLE_LABEL ^ !tableName) ^ bACKUP_SUCCESS)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Backup Table Failed\nSQL Statement", self, mETHOD_BACKUP_TABLE, e))
            end;
            ((tABLE_LABEL ^ !tableName) ^ " Backup Failed")
        end)
        end [@@warning "-20"]
    

    method restoreTable : 'any1 'any2. 'any1 * 'any2 -> string = fun (abSqlTable, portion) ->
        let abSqlTable = Obj.repr abSqlTable in
        let portion = Obj.repr portion in
        begin
        let tableName : string ref = ref (((Obj.magic abSqlTable)#getTableName ())) in ();
        (try
            let path : string ref = ref ((((org.get_allbinary ())#globals#uRLGLOBALS#getMainPath ()) + (PATH_GLOBALS.getInstance ())#bACKUP_PATH)) in ();
            let current : int ref = ref ((((Obj.magic portion)#getCurrent ())#intValue ())) in ();
            if (!current = 0) then begin
                if (Directory.create ((new AbPath.abPath (!path)))) then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                        ignore ((Obj.magic logUtil)#putF ((eRROR_CREATING ^ java_string_of (Obj.repr (!path))), self, mETHOD_RESTORE_TABLE))
                    end
                end
            end;
            let backupFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (!path, (!tableName ^ eXTENSION))))))) in ();
            let bufferedLineReader : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "BufferedLineReader" (Obj.repr ((Obj.magic !backupFile))))))) in ();
            let size : int ref = ref (((Obj.magic !bufferedLineReader)#getSize ())) in ();
            let section : int ref = ref (((!size / (((Obj.magic portion)#getTotal ())#intValue ())) + 1)) in ();
            let start : int ref = ref ((!section * !current)) in ();
            let end_ : int ref = ref ((!start + !section)) in ();
            if (!end_ > !size) then begin
                end_ := !size
            end;
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append (tOTAL_LABEL));
            ignore (!stringBuffer#append (!size));
            ignore (!stringBuffer#append (sECTION_LABEL));
            ignore (!stringBuffer#append (!start));
            ignore (!stringBuffer#append (dASH));
            ignore (!stringBuffer#append (!end_));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, mETHOD_RESTORE_TABLE))
            end;
            ignore ((Obj.magic !bufferedLineReader)#readUpToLines (!start));
            let line : string ref = ref (stringUtil#eMPTY_STRING) in ();
            while ((((Obj.magic !bufferedLineReader)#getCurrent ()) < !end_) && (((line := ((Obj.magic !bufferedLineReader)#readLine ()); !line)) != (Obj.magic 0))) do
                if ((String.length !line) > 1) then begin
                    ignore ((Obj.magic abSqlTable)#executeSQLStatement (!line))
                end
            done;
            ignore (!stringBuffer#append (commonSeps#sPACE));
            ignore (!stringBuffer#append (tABLE_LABEL));
            ignore (!stringBuffer#append (!tableName));
            ignore (!stringBuffer#append (pORTION_RESTORED));
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Restore Table Failed\nSQL Statement", self, mETHOD_RESTORE_TABLE, e))
            end;
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append (tABLE_LABEL));
            ignore (!stringBuffer#append (!tableName));
            ignore (!stringBuffer#append (" Restoration Failed"));
            (java_string_of (Obj.repr !stringBuffer))
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        eXTENSION <- ".adb";
        eND <- "')\n";
        sAVING_BACKUP_PATH <- "Saving Backup: Path: ";
        fILE_LABEL <- " File: ";
        mETHOD_RESTORE_TABLE <- "restoreTable()";
        mETHOD_BACKUP_TABLE <- "backupTable()";
        mETHOD_BACKUP_FILE <- "backupFile()";
        mETHOD_GET_OUTPUT_STREAM <- "getOutputStream()";
        tABLE_CREATION_SUCCESS <- "Table Creation Successful: ";
        dROPPED_SUCCESS <- " Dropped Successfully";
        sAVING <- "Saving: ";
        aPPENDING <- "Appending: ";
        tABLE_LABEL <- "Table: ";
        bACKUP_SUCCESS <- " Backup Success";
        eRROR_CREATING <- "Error Creating: ";
        tOTAL_LABEL <- " Total: ";
        sECTION_LABEL <- " Section: ";
        dASH <- " - ";
        pORTION_RESTORED <- " Portion Restored";
        specialCharArray <- [| '\n'; '\f'; '\r' |];
        nEW_LINE <- "\\n";
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        sqlStrings <- ((SqlStrings.getInstance ()) :> SqlStrings.sqlStrings);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbSqlTableUtil" (fun arguments -> Obj.repr (new abSqlTableUtil (Obj.obj arguments)))

let instance = (new abSqlTableUtil ())
let get_instance () = instance
let () = java_register_static "AbSqlTableUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AbSqlTableUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


