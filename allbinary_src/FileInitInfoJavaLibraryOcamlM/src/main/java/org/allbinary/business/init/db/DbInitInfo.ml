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
(* package org.allbinary.business.init.db *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.http.HttpData *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypes *)
(* import org.allbinary.logic.io.AbDataInputStream *)
(* import org.allbinary.logic.io.AbDataOutputStream *)
(* import org.allbinary.logic.io.AbFileInputStream *)
(* import org.allbinary.logic.io.DataOutputStreamFactory *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.directory.Directory *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.crypt.DatabaseEncoder *)
(* import org.allbinary.logic.system.security.crypt.WeakCrypt *)
(* import org.allbinary.string.CommonStrings *)

class dbInitInfo ((initFileName_arg : string), (read : bool)) =
  object (self)
    inherit DbConnectionInfo.dbConnectionInfo () as super
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable directory : Directory.directory = (Obj.magic 0)
    method directory = directory
    method set_directory value' = directory <- value'
    val mutable httpData : HttpData.httpData = (Obj.magic 0)
    method httpData = httpData
    method set_httpData value' = httpData <- value'
    val mutable gET_URL : string = ""
    method gET_URL = gET_URL
    method set_gET_URL value' = gET_URL <- value'
    val mutable pACKAGE : string = ""
    method pACKAGE = pACKAGE
    method set_pACKAGE value' = pACKAGE <- value'
    val mutable initFileName : string = ""
    method initFileName = initFileName
    method set_initFileName value' = initFileName <- value'
    val mutable hasRead : bool = false
    method hasRead = hasRead
    method set_hasRead value' = hasRead <- value'
    
    

    method getUrl () : string =
        begin
        let url : string ref = ref ((super#getUrl ())) in ();
        if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADER)) then begin
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (httpData#uRL_LABEL)) ^ !url), self, gET_URL))))
        end;
        !url
        end [@@warning "-7"]
    

    method write () : unit =
        begin
        let pATH : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr ((URLGLOBALS.getWebappPath ()))) ^ pACKAGE), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
        ignore (directory#create (!pATH));
        let fILEABPATH : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr ((URLGLOBALS.getWebappPath ()))) ^ pACKAGE), initFileName)) :> AbPath.abPath)) in ();
        (try
            let newFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (!fILEABPATH)))))) in ();
            ignore ((Obj.magic !newFile)#createNewFile ());
            let dataOutputStream : AbDataOutputStream.abDataOutputStream ref = ref ((((Obj.magic (java_call_static "DataOutputStreamFactory.getInstance" (Obj.repr ())))#getInstanceForAbFile ((Obj.magic !newFile))) :> AbDataOutputStream.abDataOutputStream)) in ();
            Fun.protect ~finally:(fun () -> 
                ignore ((StreamUtil.getInstance ())#close (!dataOutputStream))
            ) (fun () -> (try
                let cryptedJdbcDriver : int array ref = ref ((((new WeakCrypt.weakCrypt (1))#encrypt ((self#getJdbcDriver ())))#getBytes ())) in ();
                let cryptedName : int array ref = ref ((((new WeakCrypt.weakCrypt (2))#encrypt ((self#getName ())))#getBytes ())) in ();
                let cryptedUserName : int array ref = ref ((((new WeakCrypt.weakCrypt (3))#encrypt ((self#getUserName ())))#getBytes ())) in ();
                let cryptedPassword : int array ref = ref ((((new WeakCrypt.weakCrypt (4))#encrypt ((self#getPassword ())))#getBytes ())) in ();
                let cryptedSchema : int array ref = ref ((((new WeakCrypt.weakCrypt (5))#encrypt ((self#getSchema ())))#getBytes ())) in ();
                let cryptedServer : int array ref = ref ((((new WeakCrypt.weakCrypt (6))#encrypt ((self#getServer ())))#getBytes ())) in ();
                let cryptedPort : int array ref = ref ((((new WeakCrypt.weakCrypt (7))#encrypt ((self#getPort ())))#getBytes ())) in ();
                ignore (!dataOutputStream#writeUTF ((DatabaseEncoder.encode (!cryptedJdbcDriver))));
                ignore (!dataOutputStream#writeUTF ((DatabaseEncoder.encode (!cryptedName))));
                ignore (!dataOutputStream#writeUTF ((DatabaseEncoder.encode (!cryptedUserName))));
                ignore (!dataOutputStream#writeUTF ((DatabaseEncoder.encode (!cryptedPassword))));
                ignore (!dataOutputStream#writeUTF ((DatabaseEncoder.encode (!cryptedSchema))));
                ignore (!dataOutputStream#writeUTF ((DatabaseEncoder.encode (!cryptedServer))));
                ignore (!dataOutputStream#writeUTF ((DatabaseEncoder.encode (!cryptedPort))));
                hasRead <- false
            with exception_value -> raise exception_value))
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADERERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (("Failed Write: " ^ (java_string_of (Obj.repr !fILEABPATH))), self, "write", e))))
            end
        end)
        end [@@warning "-7"]
    

    method load () : unit =
        begin
        let fILEABPATH : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr ((URLGLOBALS.getWebappPath ()))) ^ pACKAGE), initFileName)) :> AbPath.abPath)) in ();
        (try
            let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (!fILEABPATH)))))) in ();
            if ((Obj.magic !file)#isFile ()) then begin
                let iFile : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "AbFileInputStream" (Obj.repr ((Obj.magic !file))))))) in ();
                let iData : AbDataInputStream.abDataInputStream ref = ref (((new AbDataInputStream.abDataInputStream ((Obj.magic !iFile))) :> AbDataInputStream.abDataInputStream)) in ();
                Fun.protect ~finally:(fun () -> 
                    ignore ((StreamUtil.getInstance ())#close (!iData))
                ) (fun () -> (try
                    let decryptedJdbcDriver : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((DatabaseEncoder.decode ((!iData#readUTF ())))))))) in ();
                    let decryptedName : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((DatabaseEncoder.decode ((!iData#readUTF ())))))))) in ();
                    let decryptedUserName : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((DatabaseEncoder.decode ((!iData#readUTF ())))))))) in ();
                    let decryptedPassword : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((DatabaseEncoder.decode ((!iData#readUTF ())))))))) in ();
                    let decryptedSchema : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((DatabaseEncoder.decode ((!iData#readUTF ())))))))) in ();
                    let decryptedServer : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((DatabaseEncoder.decode ((!iData#readUTF ())))))))) in ();
                    let decryptedPort : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((DatabaseEncoder.decode ((!iData#readUTF ())))))))) in ();
                    ignore (self#setJdbcDriver (((new WeakCrypt.weakCrypt (1))#decrypt (!decryptedJdbcDriver))));
                    ignore (self#setName (((new WeakCrypt.weakCrypt (2))#decrypt (!decryptedName))));
                    ignore (self#setUserName (((new WeakCrypt.weakCrypt (3))#decrypt (!decryptedUserName))));
                    ignore (self#setPassword (((new WeakCrypt.weakCrypt (4))#decrypt (!decryptedPassword))));
                    ignore (self#setSchema (((new WeakCrypt.weakCrypt (5))#decrypt (!decryptedSchema))));
                    ignore (self#setServer (((new WeakCrypt.weakCrypt (6))#decrypt (!decryptedServer))));
                    ignore (self#setPort (((new WeakCrypt.weakCrypt (7))#decrypt (!decryptedPort))));
                    let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ()
                with exception_value -> raise exception_value))
            end else begin
                hasRead <- false;
                if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADER)) then begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("Not a File - Failed Loading: " ^ (java_string_of (Obj.repr !fILEABPATH))), self, commonStrings#lOAD))))
                end
            end
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADERERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (("Failed Loading: " ^ (java_string_of (Obj.repr !fILEABPATH))), self, commonStrings#lOAD, e))))
            end
        end)
        end [@@warning "-7"]
    

    method setHasRead ((value : bool)) : unit =
        begin
        hasRead <- value
        end [@@warning "-7"]
    

    method updateIfNeeded () : unit =
        begin
        (try
            if (not hasRead) then begin
                hasRead <- true;
                (self#load ())
            end
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADERERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, self, "updateIfNeeded", e))))
            end
        end)
        end [@@warning "-7"]
    

    method getName () : string =
        begin
        (self#updateIfNeeded ());
        if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADER)) then begin
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("Name: " ^ (super#getName ())), self, "getName"))))
        end;
        (super#getName ())
        end [@@warning "-7"]
    

    method getUserName () : string =
        begin
        (self#updateIfNeeded ());
        if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADER)) then begin
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (("Name: " ^ java_string_of (Obj.repr ((super#getUserName ())))), self, "getUserName"))))
        end;
        (super#getUserName ())
        end [@@warning "-7"]
    

    method getPassword () : string =
        begin
        (self#updateIfNeeded ());
        (super#getPassword ())
        end [@@warning "-7"]
    

    method getSchema () : string =
        begin
        (self#updateIfNeeded ());
        (super#getSchema ())
        end [@@warning "-7"]
    

    method getServer () : string =
        begin
        (self#updateIfNeeded ());
        (super#getServer ())
        end [@@warning "-7"]
    

    method getPort () : string =
        begin
        (self#updateIfNeeded ());
        (super#getPort ())
        end [@@warning "-7"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        directory <- ((Directory.getInstance ()) :> Directory.directory);
        httpData <- ((HttpData.getInstance ()) :> HttpData.httpData);
        gET_URL <- "getUrl";
        pACKAGE <- (FREEBLISKET_PATH_GLOBALS.getInstance ())#dBINITPATH;
        ();
        hasRead <- false;
        ();
        (* super(...) is the inherit clause *) ();
        initFileName <- initFileName_arg;
        if read then begin
            (self#updateIfNeeded ())
        end else begin
            (self#setHasRead (true))
        end
      end
  end
let () = java_register_constructor "DbInitInfo" (fun arguments -> Obj.repr (new dbInitInfo (Obj.obj arguments)))


