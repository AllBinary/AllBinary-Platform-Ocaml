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
(* package org.allbinary.logic.io.file *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.InputStream *)
(* import java.io.OutputStream *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory *)
(* import org.allbinary.logic.io.AbDataOutputStream *)
(* import org.allbinary.logic.io.AbFileInputStream *)
(* import org.allbinary.logic.io.AbFileLocalInputStream *)
(* import org.allbinary.logic.io.AbIOSystem *)
(* import org.allbinary.logic.io.DataOutputStreamFactory *)
(* import org.allbinary.logic.io.FileStreamFactory *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.directory.Directory *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)


let getNewDirectory : 'any1. 'any1 -> string = fun (fromFile) ->
        let fromFile = Obj.repr fromFile in
        begin
        let newDirectory : string ref = ref (((Obj.magic fromFile)#getPath ())) in ();
        let separatorChar : string ref = ref ((FilePathData.getInstance ())#pATH_START) in ();
        if ((AbIOSystem.getInstance ())#isType ("com.vobject.appengine.java.io")) then begin
            separatorChar := (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR
        end;
        let lastIndex : int ref = ref ((java_string_last_index_of !newDirectory (Obj.repr (!separatorChar)))) in ();
        if (!lastIndex >= (String.length !newDirectory)) then begin
            newDirectory := (String.sub !newDirectory (0) ((((String.length !newDirectory) - 1)) - (0)));
            lastIndex := (java_string_last_index_of !newDirectory (Obj.repr (!separatorChar)))
        end;
        (String.sub !newDirectory (!lastIndex) (((String.length !newDirectory)) - (!lastIndex)))
        end [@@warning "-20"]

let () = java_register_static "FileUtil.getNewDirectory" (fun arguments -> Obj.repr (getNewDirectory (Obj.obj arguments)))
class fileUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable directory : Directory.directory = (Obj.magic 0)
    method directory = directory
    method set_directory value' = directory <- value'
    val mutable logConfigTypeFactory : Obj.t = Obj.repr 0
    method logConfigTypeFactory : 'r. 'r = Obj.magic logConfigTypeFactory
    method set_logConfigTypeFactory : 'v. 'v -> unit = fun value' -> logConfigTypeFactory <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable streamUtil : StreamUtil.streamUtil = (Obj.magic 0)
    method streamUtil = streamUtil
    method set_streamUtil value' = streamUtil <- value'
    val mutable wRITE_LABEL : string = ""
    method wRITE_LABEL = wRITE_LABEL
    method set_wRITE_LABEL value' = wRITE_LABEL <- value'
    val mutable dATA_LABEL : string = ""
    method dATA_LABEL = dATA_LABEL
    method set_dATA_LABEL value' = dATA_LABEL <- value'
    val mutable wRITE_METHOD : string = ""
    method wRITE_METHOD = wRITE_METHOD
    method set_wRITE_METHOD value' = wRITE_METHOD <- value'
    
    

    method write : 'any1 'any2. 'any1 * 'any2 -> unit = fun (inputStream, file) ->
        let inputStream = Obj.repr inputStream in
        let file = Obj.repr file in
        begin
        let dataOutputStream : AbDataOutputStream.abDataOutputStream ref = ref ((((Obj.magic (java_call_static "DataOutputStreamFactory.getInstance" (Obj.repr ())))#getInstanceForAbFile ((Obj.magic file))) :> AbDataOutputStream.abDataOutputStream)) in ();
        (self#write ((Obj.magic inputStream), !dataOutputStream))
        end [@@warning "-20"]
    

    (* Java overload write(InputStream, AbDataOutputStream) is not converted: OCaml has one method per name *)
    

    (* Java overload write(InputStream, AbDataOutputStream, ArrayType) is not converted: OCaml has one method per name *)
    

    method copy : 'any1 'any2. 'any1 * 'any2 -> unit = fun (dataInputStream, dataOutputStream) ->
        let dataInputStream = Obj.repr dataInputStream in
        let dataOutputStream = Obj.repr dataOutputStream in
        let dataOutputStream = ref dataOutputStream in
        begin
        Fun.protect ~finally:(fun () -> 
            ignore ((StreamUtil.getInstance ())#close ((Obj.magic !dataOutputStream)));
            ignore ((StreamUtil.getInstance ())#close ((Obj.magic dataInputStream)))
        ) (fun () -> (try
            dataOutputStream := Obj.repr ((Obj.magic ((StreamUtil.getInstance ())#get ((Obj.magic dataInputStream), (Obj.magic !dataOutputStream), (Array.make (16384) 0)))));
            ignore ((Obj.magic !dataOutputStream)#flush ())
        with exception_value -> raise exception_value))
        end [@@warning "-20"]
    

    method fixPath : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * string -> AbPath.abPath = fun (file, _path, realPath, (cloud : string)) ->
        let file = Obj.repr file in
        let realPath = Obj.repr realPath in
        begin
        let beginIndex : int ref = ref (((((Obj.magic file)#getPath ())#indexOf (cloud)) + (String.length cloud))) in ();
        let endIndex : int ref = ref ((((Obj.magic file)#getPath ())#indexOf (((Obj.magic file)#getName ())))) in ();
        let fixedPathString : string ref = ref ((java_string_of (Obj.repr (((Obj.magic realPath)#toFileSystemString ()))) ^ (((Obj.magic file)#getPath ())#substring (!beginIndex, !endIndex)))) in ();
        let fixedPath : AbPath.abPath ref = ref (((new AbPath.abPath (!fixedPathString, (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
        ignore (directory#create (!fixedPath));
        let string : string ref = ref ((!fixedPath#toFileSystemString ())) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((Obj.magic logConfigTypeFactory)#fILE)) then begin
            ignore ((Obj.magic logUtil)#putF (!string, self, "fixPath"))
        end;
        let outPath : AbPath.abPath ref = ref (((new AbPath.abPath (!string, ((Obj.magic file)#getName ()))) :> AbPath.abPath)) in ();
        (!outPath :> AbPath.abPath)
        end [@@warning "-20"]
    

    method copyToCloud : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * string -> unit = fun (file, path, realPath, (cloud : string)) ->
        let file = Obj.repr file in
        let path = Obj.repr path in
        let realPath = Obj.repr realPath in
        begin
        (self#copyToCloud ((Obj.magic file), (Obj.magic path), (Obj.magic realPath), cloud, false, false))
        end [@@warning "-20"]
    

    (* Java overload copyToCloud(AbFile, AbPath, AbPath, String, BOOLEAN, BOOLEAN) is not converted: OCaml has one method per name *)
    

    (* Java overload copyToCloud(AbFile, AbFile) is not converted: OCaml has one method per name *)
    

    (* Java overload copyToCloud(AbFile, AbFile, BOOLEAN, BOOLEAN) is not converted: OCaml has one method per name *)
    

    method copyPrepare : 'any1 'any2. 'any1 * 'any2 * bool * bool -> bool = fun (fromFile, toFile, (overwriteNewer : bool), (overwriteAll : bool)) ->
        let fromFile = Obj.repr fromFile in
        let toFile = Obj.repr toFile in
        try
        begin
        if ((Obj.magic toFile)#exists ()) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            if overwriteAll then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((Obj.magic logConfigTypeFactory)#fILE)) then begin
                    ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                    ignore (!stringBuffer#append ("Overwriting File: "));
                    ignore (!stringBuffer#append (((Obj.magic toFile)#getPath ())));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), (getInstance ()), "copyFile"))
                end;
                ignore ((Obj.magic toFile)#delete ());
                ignore ((Obj.magic toFile)#createNewFile ())
            end else if ((((Obj.magic toFile)#lastModified ()) < ((Obj.magic fromFile)#lastModified ())) && overwriteNewer) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((Obj.magic logConfigTypeFactory)#fILE)) then begin
                    ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                    ignore (!stringBuffer#append ("Newer by: "));
                    ignore (!stringBuffer#appendlong ((java_to_int (Obj.repr ((((Obj.magic fromFile)#lastModified ()) - ((Obj.magic toFile)#lastModified ())))))));
                    ignore (!stringBuffer#append ("ms "));
                    ignore (!stringBuffer#append ("Copying File: "));
                    ignore (!stringBuffer#append (((Obj.magic toFile)#getPath ())));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), (getInstance ()), "copyFile"))
                end;
                ignore ((Obj.magic toFile)#delete ());
                ignore ((Obj.magic toFile)#createNewFile ())
            end else begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((Obj.magic logConfigTypeFactory)#fILE)) then begin
                    ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                    ignore (!stringBuffer#append ("File Already Exists"));
                    if overwriteNewer then begin
                        ignore (!stringBuffer#append (" And Is Not Older"))
                    end else begin
                        ignore (!stringBuffer#append (" And Not A In Overwrite Mode"))
                    end;
                    ignore (!stringBuffer#append ((CommonLabels.getInstance ())#cOLON_SEP));
                    ignore (!stringBuffer#append (((Obj.magic toFile)#getPath ())));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), (getInstance ()), "copyFile"))
                end;
                raise (Java_return (Obj.repr (false)))
            end
        end else begin
            ignore ((Obj.magic toFile)#createNewFile ())
        end;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method copyFile : 'any1 'any2. 'any1 * 'any2 -> unit = fun (fromFile, toFile) ->
        let fromFile = Obj.repr fromFile in
        let toFile = Obj.repr toFile in
        begin
        (self#copyFile ((Obj.magic fromFile), (Obj.magic toFile), false, false))
        end [@@warning "-20"]
    

    (* Java overload copyFile(AbFile, AbFile, BOOLEAN, BOOLEAN) is not converted: OCaml has one method per name *)
    

    method copyDirectoryPortion : 'any1 'any2. 'any1 * 'any2 * bool * bool * int * int -> unit = fun (fromDirectoryAbPath, toDirectoryAbPath, (overwriteNewer : bool), (overwriteAll : bool), (current : int), (total : int)) ->
        let fromDirectoryAbPath = Obj.repr fromDirectoryAbPath in
        let toDirectoryAbPath = Obj.repr toDirectoryAbPath in
        begin
        let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr ((Obj.magic fromDirectoryAbPath))))))) in ();
        if (not ((Obj.magic !file)#isDirectory ())) then begin
            raise (Failure (("Not a directory: " ^ java_string_of (Obj.repr (((Obj.magic !file)#getPath ()))))))
        end;
        let fileList : BasicArrayList.basicArrayList ref = ref (((directory#search ((Obj.magic !file), true)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!fileList#size ())) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Searched: "));
        ignore (!stringBuffer#append (((Obj.magic !file)#getPath ())));
        ignore (!stringBuffer#append (" Total: "));
        ignore (!stringBuffer#appendint (!size));
        let portion : int ref = ref (((!size / total) + 1)) in ();
        let start : int ref = ref ((!portion * current)) in ();
        let end_ : int ref = ref ((!start + !portion)) in ();
        if (!end_ > !size) then begin
            end_ := !size
        end;
        ignore (!stringBuffer#append (" Section: "));
        ignore (!stringBuffer#appendint (!start));
        ignore (!stringBuffer#append (" - "));
        ignore (!stringBuffer#appendint (!end_));
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((Obj.magic logConfigTypeFactory)#fILE)) then begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), (getInstance ()), "copySomeFilesToDirectory()"))
        end;
        let nextFile : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = !start to !end_ - 1 do
            nextFile := Obj.repr ((Obj.magic (!fileList#get (index))));
            if ((Obj.magic !nextFile)#isDirectory ()) then begin
                ()
            end else begin
                let path : string ref = ref (((new AbPath.abPath (((Obj.magic !nextFile)#getPath ()), (StringUtil.getInstance ())#eMPTY_STRING))#getPath ())) in ();
                let beginIndex : int ref = ref ((((Obj.magic fromDirectoryAbPath)#getPath ())#length ())) in ();
                if ((!path#indexOf ((URLGLOBALS.getWebappPath ()))) < 0) then begin
                    beginIndex := (!beginIndex - (((new AbPath.abPath ((URLGLOBALS.getWebappPath ()), (StringUtil.getInstance ())#eMPTY_STRING))#getPath ())#length ()))
                end;
                let newPath : string ref = ref ((java_string_of (Obj.repr (((Obj.magic toDirectoryAbPath)#toFileSystemString ()))) ^ (!path#substring (!beginIndex)))) in ();
                let toFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr ((new AbPath.abPath (!newPath, (StringUtil.getInstance ())#eMPTY_STRING)))))))) in ();
                (self#copyFile ((Obj.magic !nextFile), (Obj.magic !toFile), overwriteNewer, overwriteAll))
            end
        done
        end [@@warning "-20"]
    

    method copyDirectory : 'any1 'any2. 'any1 * 'any2 -> unit = fun (fromFile, to_) ->
        let fromFile = Obj.repr fromFile in
        let to_ = Obj.repr to_ in
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((Obj.magic logConfigTypeFactory)#fILE)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Copying Directory from: "));
                ignore (!stringBuffer#append (((Obj.magic fromFile)#getPath ())));
                ignore (!stringBuffer#append (" to: "));
                ignore (!stringBuffer#append (((Obj.magic to_)#getPath ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), (getInstance ()), "copyDirectory"))
            end;
            let newDirectory : string ref = ref ((getNewDirectory ((Obj.magic fromFile)))) in ();
            let newDirectoryAbPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr ((((Obj.magic to_)#getPath ()) + (Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR))) ^ !newDirectory), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
            if (not (directory#create (!newDirectoryAbPath))) then begin
                raise (Failure (("Failed to create directory: " ^ java_string_of (Obj.repr (!newDirectoryAbPath)))))
            end;
            let fileArray : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "FileWrapperUtil.wrapFiles" (Obj.repr (((Obj.magic fromFile)#listFiles ()))))))) in ();
            let size : int ref = ref ((Array.length (Obj.magic !fileArray))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((Obj.magic logConfigTypeFactory)#fILE)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Copying "));
                ignore (!stringBuffer#appendint (!size));
                ignore (!stringBuffer#append (" files from: "));
                ignore (!stringBuffer#append (((Obj.magic fromFile)#getPath ())));
                ignore (!stringBuffer#append (" to: "));
                ignore (!stringBuffer#append (((Obj.magic to_)#getPath ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), (getInstance ()), "copyDirectory"))
            end;
            let file : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            for index = 0 to !size - 1 do
                file := Obj.repr ((Obj.magic !fileArray).(index));
                if ((Obj.magic !file)#isFile ()) then begin
                    (self#copyFile ((Obj.magic !file), (Obj.magic (java_call_static "AbFile.createAbFilePathAndName" (Obj.repr ((java_string_of (Obj.repr !newDirectoryAbPath)), ((Obj.magic !file)#getName ())))))))
                end else if ((Obj.magic !file)#isDirectory ()) then begin
                    (self#copyDirectory ((Obj.magic !file), (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (!newDirectoryAbPath))))))
                end else begin
                    raise (Failure ("File Copy Error"))
                end
            done
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((Obj.magic logConfigTypeFactory)#fILEERROR)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Error Copying Directory fromFile: "));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic fromFile)))));
                ignore (!stringBuffer#append (" to: "));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic to_)))));
                ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr !stringBuffer)), (getInstance ()), "copyDirectory", e))
            end;
            raise e
        end)
        end [@@warning "-20"]
    

    (* Java overload copy(AbPath, AbPath) is not converted: OCaml has one method per name *)
    

    method shouldSkip : 'any1. 'any1 * string array -> bool = fun (file, (skipFiles : string array)) ->
        let file = Obj.repr file in
        try
        begin
        let size : int ref = ref ((Array.length skipFiles)) in ();
        let skipFile : string ref = ref ("") in ();
        for index = 0 to !size - 1 do
            skipFile := skipFiles.(index);
            if ((((Obj.magic file)#getPath ())#compareTo (!skipFile)) == 0) then begin
                raise (Java_return (Obj.repr (true)))
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    (* Java overload write(String, String) is not converted: OCaml has one method per name *)
    

    method loadFileAsList : 'any1. 'any1 * int * int array -> BasicArrayList.basicArrayList = fun (file, (max : int), (byteArray1 : int array)) ->
        let file = Obj.repr file in
        begin
        (((FileUtil2.getInstance ())#loadFileAsList ((Obj.magic file), max, byteArray1)) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        directory <- ((Directory.getInstance ()) :> Directory.directory);
        logConfigTypeFactory <- (Obj.repr (Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        streamUtil <- ((StreamUtil.getInstance ()) :> StreamUtil.streamUtil);
        wRITE_LABEL <- "Write file: ";
        dATA_LABEL <- " data: ";
        wRITE_METHOD <- "write";
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "FileUtil" (fun arguments -> Obj.repr (new fileUtil (Obj.obj arguments)))

let instance = (new fileUtil ())
let get_instance () = instance
let () = java_register_static "FileUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FileUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


