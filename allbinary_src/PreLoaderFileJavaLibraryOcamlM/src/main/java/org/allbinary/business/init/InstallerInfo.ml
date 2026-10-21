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
(* import org.allbinary.globals.PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.AbDataInputStream *)
(* import org.allbinary.logic.io.AbDataOutputStream *)
(* import org.allbinary.logic.io.AbFileLocalInputStream *)
(* import org.allbinary.logic.io.DataOutputStreamFactory *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.crypt.DatabaseEncoder *)
(* import org.allbinary.logic.system.security.crypt.WeakCrypt *)

let iNITFILENAME : string = "installerdata.dat"
let get_iNITFILENAME () = iNITFILENAME
let () = java_register_static "InstallerInfo.get_iNITFILENAME" (fun _ -> Obj.repr (get_iNITFILENAME ()))
let pACKAGE : string = (PATH_GLOBALS.getInstance ())#iNIT_PATH
let get_pACKAGE () = pACKAGE
let () = java_register_static "InstallerInfo.get_pACKAGE" (fun _ -> Obj.repr (get_pACKAGE ()))
let userName : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING)
let get_userName () = !userName
let set_userName value' = userName := value'
let () = java_register_static "InstallerInfo.get_userName" (fun _ -> Obj.repr (get_userName ()))
let password : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING)
let get_password () = !password
let set_password value' = password := value'
let () = java_register_static "InstallerInfo.get_password" (fun _ -> Obj.repr (get_password ()))
let hasRead : bool ref = ref (false)
let get_hasRead () = !hasRead
let set_hasRead value' = hasRead := value'
let () = java_register_static "InstallerInfo.get_hasRead" (fun _ -> Obj.repr (get_hasRead ()))

let setHasRead ((value : bool)) : unit =
        begin
        hasRead := value
        end

let () = java_register_static "InstallerInfo.setHasRead" (fun arguments -> Obj.repr (setHasRead (Obj.obj arguments)))
class installerInfo () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method write () : unit =
        begin
        let fILEABPATH : AbPath.abPath ref = ref (((new AbPath.abPath (((URLGLOBALS.getMainPath ()) + pACKAGE), iNITFILENAME)) :> AbPath.abPath)) in ();
        (try
            let newFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (!fILEABPATH)))))) in ();
            ignore ((Obj.magic !newFile)#createNewFile ());
            let dataOutputStream : AbDataOutputStream.abDataOutputStream ref = ref ((((Obj.magic (java_call_static "DataOutputStreamFactory.getInstance" (Obj.repr ())))#getInstanceForAbFile ((Obj.magic !newFile))) :> AbDataOutputStream.abDataOutputStream)) in ();
            let cryptedUserName : int array ref = ref ((((new WeakCrypt.weakCrypt (1))#encrypt ((self#getUserName ())))#getBytes ())) in ();
            let cryptedPassword : int array ref = ref ((((new WeakCrypt.weakCrypt (2))#encrypt ((self#getPassword ())))#getBytes ())) in ();
            ignore (!dataOutputStream#writeUTF ((DatabaseEncoder.encode (!cryptedUserName))));
            ignore (!dataOutputStream#writeUTF ((DatabaseEncoder.encode (!cryptedPassword))));
            hasRead := false
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRELOADERERROR)) then begin
                ignore ((Obj.magic logUtil)#putF ("Failed", self, "write"))
            end;
            raise e
        end)
        end
    

    method read () : unit =
        begin
        let fILEABPATH : AbPath.abPath ref = ref (((new AbPath.abPath (((URLGLOBALS.getMainPath ()) + pACKAGE), iNITFILENAME)) :> AbPath.abPath)) in ();
        (try
            let file : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFileFromAbPath" (Obj.repr (!fILEABPATH)))))) in ();
            if ((Obj.magic !file)#isFile ()) then begin
                let iFile : AbFileLocalInputStream.abFileLocalInputStream ref = ref (((new AbFileLocalInputStream.abFileLocalInputStream ((Obj.magic !file))) :> AbFileLocalInputStream.abFileLocalInputStream)) in ();
                let iData : AbDataInputStream.abDataInputStream ref = ref (((new AbDataInputStream.abDataInputStream (!iFile)) :> AbDataInputStream.abDataInputStream)) in ();
                let decryptedUserName : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((DatabaseEncoder.decode ((!iData#readUTF ())))))))) in ();
                let decryptedPassword : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((DatabaseEncoder.decode ((!iData#readUTF ())))))))) in ();
                (self#setUserName (((new WeakCrypt.weakCrypt (1))#decrypt (!decryptedUserName))));
                (self#setPassword (((new WeakCrypt.weakCrypt (2))#decrypt (!decryptedPassword))))
            end else begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRELOADER)) then begin
                    ignore ((Obj.magic logUtil)#putF (("Not a File - Failed Loading: " ^ (java_string_of (Obj.repr !fILEABPATH))), self, "read"))
                end
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRELOADERERROR)) then begin
                ignore ((Obj.magic logUtil)#putF ("Failed", self, "read"))
            end
        end)
        end
    

    method setUserName ((userName_arg : string)) : unit =
        begin
        userName := userName_arg
        end
    

    method setPassword ((password_arg : string)) : unit =
        begin
        password := password_arg
        end
    

    method updateIfNeeded () : unit =
        begin
        if (not !hasRead) then begin
            hasRead := true;
            (self#read ());
            if ((!userName == (Obj.magic 0)) || (!password == (Obj.magic 0))) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRELOADER)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Failed", self, "updateIfNeeded"))
                end
            end
        end
        end
    

    method getUserName () : string =
        begin
        (self#updateIfNeeded ());
        !userName
        end
    

    method getPassword () : string =
        begin
        (self#updateIfNeeded ());
        !password
        end
    

    method isValid ((userName_arg : string), (password_arg : string)) : bool =
        try
        begin
        (self#updateIfNeeded ());
        if ((((userName <> (Obj.magic 0)) && ((String.compare userName (userName_arg)) == 0)) && (password <> (Obj.magic 0))) && ((String.compare password (password_arg)) == 0)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InstallerInfo" (fun arguments -> Obj.repr (new installerInfo (Obj.obj arguments)))

let instance = (new installerInfo ())
let get_instance () = instance
let () = java_register_static "InstallerInfo.get_instance" (fun _ -> Obj.repr (get_instance ()))


