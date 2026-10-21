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
(* package org.allbinary.business.init *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.TsUtil *)
(* import org.allbinary.globals.PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.AbDataInputStream *)
(* import org.allbinary.logic.io.AbDataOutputStream *)
(* import org.allbinary.logic.io.AbFileInputStream *)
(* import org.allbinary.logic.io.DataOutputStreamFactory *)
(* import org.allbinary.logic.io.FileStreamFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.crypt.DatabaseEncoder *)
(* import org.allbinary.logic.system.security.crypt.WeakCrypt *)
(* import org.allbinary.string.CommonLabels *)

class licenseInitInfoUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable iNITFILENAME : string = ""
    method iNITFILENAME = iNITFILENAME
    method set_iNITFILENAME value' = iNITFILENAME <- value'
    val mutable aBOUT : string = ""
    method aBOUT = aBOUT
    method set_aBOUT value' = aBOUT <- value'
    val mutable pRIVACY_POLICY : string = ""
    method pRIVACY_POLICY = pRIVACY_POLICY
    method set_pRIVACY_POLICY value' = pRIVACY_POLICY <- value'
    val mutable filePath : string = ""
    method filePath = filePath
    method set_filePath value' = filePath <- value'
    

    method setFilePath ((filePath_arg : string)) : unit =
        begin
        filePath <- filePath_arg
        end
    

    method write : 'any1. 'any1 -> unit = fun (initData) ->
        let initData = Obj.repr initData in
        begin
        if (filePath = stringUtil#eMPTY_STRING) then begin
            filePath <- ((URLGLOBALS.getMainPath ()) + (PATH_GLOBALS.getInstance ())#iNIT_PATH)
        end;
        (try
            let tsUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))))) in ();
            let dataOutputStream : AbDataOutputStream.abDataOutputStream ref = ref ((((Obj.magic (java_call_static "DataOutputStreamFactory.getInstance" (Obj.repr ())))#getInstance (filePath, iNITFILENAME)) :> AbDataOutputStream.abDataOutputStream)) in ();
            let licenseIdCrypted : int array ref = ref (((Obj.magic !tsUtil)#getByteArray (((new WeakCrypt.weakCrypt (1))#encrypt (((Obj.magic initData)#getLicenseId ())))))) in ();
            ignore (!dataOutputStream#writeUTF ((DatabaseEncoder.encode (!licenseIdCrypted))));
            let numberOfLicenseServers : int ref = ref (((Obj.magic initData)#getNumberOfServers ())) in ();
            ignore (!dataOutputStream#writeInt (!numberOfLicenseServers));
            let licenseServerCrypted : int array ref = ref ((Obj.magic 0)) in ();
            for index = 0 to !numberOfLicenseServers - 1 do
                licenseServerCrypted := ((Obj.magic !tsUtil)#getByteArray (((new WeakCrypt.weakCrypt (3))#encrypt (((Obj.magic initData)#getServer (index))))));
                ignore (!dataOutputStream#writeUTF ((DatabaseEncoder.encode (!licenseServerCrypted))))
            done
        with e -> begin
            ignore ((Obj.magic logUtil)#put (("Command Failed: " ^ iNITFILENAME), self, "write", e));
            ignore ((Obj.magic (java_call_static "FileStreamFactory.getInstance" (Obj.repr ())))#delete (filePath, iNITFILENAME));
            raise e
        end)
        end [@@warning "-20"]
    

    method read : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((self#readAgain (0))))
        end
    

    method readAgain : 'return. int -> 'return = fun ((_initializeCounter : int)) ->
        try
        begin
        let mETHOD_NAME : string ref = ref ("readAgain") in ();
        if (filePath = stringUtil#eMPTY_STRING) then begin
            filePath <- ((URLGLOBALS.getMainPath ()) + (PATH_GLOBALS.getInstance ())#iNIT_PATH)
        end;
        (try
            ignore ((Obj.magic logUtil)#putF (("LicenseInitInfo File: " ^ iNITFILENAME), self, !mETHOD_NAME));
            let fileStreamFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "FileStreamFactory.getInstance" (Obj.repr ()))))) in ();
            let iFile : Obj.t ref = ref ((Obj.repr ((Obj.magic !fileStreamFactory)#getFileInputStreamInstance (filePath, iNITFILENAME)))) in ();
            if ((Obj.magic !iFile) != (Obj.magic 0)) then begin
                let iData : AbDataInputStream.abDataInputStream ref = ref (((new AbDataInputStream.abDataInputStream ((Obj.magic !iFile))) :> AbDataInputStream.abDataInputStream)) in ();
                let initInfo : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "LicenseInitInfo" (Obj.repr ()))))) in ();
                let decodedByteArray : int array ref = ref ((DatabaseEncoder.decode ((!iData#readUTF ())))) in ();
                let licenseIdDecoded : string ref = ref ((Obj.obj (java_new "String" (Obj.repr (!decodedByteArray))))) in ();
                ignore ((Obj.magic !initInfo)#setLicenseId (((new WeakCrypt.weakCrypt (1))#decrypt (!licenseIdDecoded))));
                let numberOfLicenseServers : int ref = ref ((!iData#readInt ())) in ();
                let nEXT_FILE : string ref = ref ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#nEXT))#append (" License Server From File: "))))) in ();
                let licenseServerDecoded : string ref = ref ("") in ();
                for index = 0 to !numberOfLicenseServers - 1 do
                    decodedByteArray := (DatabaseEncoder.decode ((!iData#readUTF ())));
                    licenseServerDecoded := (Obj.obj (java_new "String" (Obj.repr (!decodedByteArray))));
                    ignore ((Obj.magic !initInfo)#setServer (((new WeakCrypt.weakCrypt (3))#decrypt (!licenseServerDecoded)), index));
                    ignore ((Obj.magic logUtil)#putF ((!nEXT_FILE ^ java_string_of (Obj.repr (((Obj.magic !initInfo)#getServer (index))))), self, !mETHOD_NAME))
                done;
                raise (Java_return (Obj.repr ((Obj.magic !initInfo))))
            end else begin
                raise (Failure (("Could Not Load License InitInfo: " ^ iNITFILENAME)))
            end
        with e -> begin
            (try
                ignore ((Obj.magic logUtil)#put (("Command Failed: " ^ iNITFILENAME), self, !mETHOD_NAME, e))
            with e2 -> begin
                ignore ((Obj.magic logUtil)#put (("LicenseInitInfo Read Retry: " ^ iNITFILENAME), self, "readAgain()", e2))
            end);
            raise (Failure (("LicenseInitInfo Read Error: " ^ iNITFILENAME)))
        end)
        end
        with Java_return value -> Obj.obj value
    

    method getFilePath () : string =
        begin
        filePath
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        iNITFILENAME <- "licenseinitdata.dat";
        aBOUT <- "about";
        pRIVACY_POLICY <- "privacy_policy";
        filePath <- stringUtil#eMPTY_STRING;
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "LicenseInitInfoUtil" (fun arguments -> Obj.repr (new licenseInitInfoUtil (Obj.obj arguments)))

let instance = (new licenseInitInfoUtil ())
let get_instance () = instance
let () = java_register_static "LicenseInitInfoUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LicenseInitInfoUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


