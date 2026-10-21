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
(* package org.allbinary.bundle.logic.system.loader *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayInputStream *)
(* import java.io.InputStream *)
(* import org.allbinary.globals.Globals *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.gui.dialog.BasicTextJDialog *)
(* import org.allbinary.gui.dialog.ExitCloseListener *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.AbCryptUtil *)
(* import org.allbinary.logic.system.security.AbKeys *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.AbeLicenseInterface *)
(* import org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory *)
(* import org.allbinary.logic.system.security.licensing.AbeNoLicense *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import org.allbinary.string.CommonStrings *)

class cryptService () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable abCryptUtil : AbCryptUtil.abCryptUtil = (Obj.magic 0)
    method abCryptUtil = abCryptUtil
    method set_abCryptUtil value' = abCryptUtil <- value'
    
    

    method getDecryptedInputStream : 'any1 'any3 'return. 'any1 * string * 'any3 -> 'return = fun (abeClientInformation, (name : string), inputStream) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let inputStream = Obj.repr inputStream in
        begin
        (try
            let key : string ref = ref (((AbKeys.getInstance ())#getKey ((Obj.magic abeClientInformation), name))) in ();
            let decrypted : int array ref = ref ((abCryptUtil#decrypt ((Obj.magic inputStream), !key))) in ();
            (Obj.magic ((new ByteArrayInputStream.byteArrayInputStream (!decrypted))))
        with e -> begin
            (self#showLicenseDialog ((Obj.magic abeClientInformation), e))
        end);
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-20"]
    

    method showLicenseDialog : 'any1. 'any1 * exn -> unit = fun (abeClientInformation, (e : exn)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        (try
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#iNIT, e));
            let basicTextJDialog : BasicTextJDialog.basicTextJDialog ref = ref (((new BasicTextJDialog.basicTextJDialog ((Printexc.to_string e))) :> BasicTextJDialog.basicTextJDialog)) in ();
            (try
                let abeLicenseInterface : AbeLicenseInterface.abeLicenseInterface ref = ref ((((AbeLicenseInterfaceFactory.getInstance ())#getLicenseInstance ((Obj.magic abeClientInformation))) :> AbeLicenseInterface.abeLicenseInterface)) in ();
                if ((Obj.repr !abeLicenseInterface) != (Obj.repr (AbeNoLicense.getInstance ()))) then begin
                    if (!abeLicenseInterface#isValid ()) then begin
                        ignore (!basicTextJDialog#setText ("Subscription Invalid"))
                    end
                end
            with e2 -> begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#iNIT, e2))
            end);
            ignore (!basicTextJDialog#addCloseListener ((new ExitCloseListener.exitCloseListener ())));
            ignore (!basicTextJDialog#setVisible (true))
        with e3 -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#iNIT, e3))
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        abCryptUtil <- ((AbCryptUtil.getInstance ()) :> AbCryptUtil.abCryptUtil);
        ();
        ignore ((Globals.getInstance ())#init (((java_get_class (Obj.repr self))#getClassLoader ()), "./"));
        ignore ((Obj.magic logUtil)#putF (("Set Globals: " ^ java_string_of (Obj.repr ((URLGLOBALS.getWebappPath ())))), self, commonStrings#cONSTRUCTOR))
      end
  end [@@warning "-20"]
let () = java_register_constructor "CryptService" (fun arguments -> Obj.repr (new cryptService (Obj.obj arguments)))


