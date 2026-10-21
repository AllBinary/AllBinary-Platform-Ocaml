(* Generated Code Do Not Modify *)
(* package org.allbinary.business.advertisement *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringUtil *)

class appNameLicensingAdConfiguration () =
  object
    inherit AdConfiguration.adConfiguration ([| (StringUtil.getInstance ())#eMPTY_STRING; (StringUtil.getInstance ())#eMPTY_STRING; (StringUtil.getInstance ())#eMPTY_STRING |])
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "AppNameLicensingAdConfiguration" (fun arguments -> Obj.repr (new appNameLicensingAdConfiguration (Obj.obj arguments)))


