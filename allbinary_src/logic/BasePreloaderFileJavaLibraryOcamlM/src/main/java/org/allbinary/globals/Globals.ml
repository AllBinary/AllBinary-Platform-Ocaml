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
(* package org.allbinary.globals *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.system.loader.WebappClassLoaderInfo *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class globals () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method init : 'any1. 'any1 * string -> unit = fun (classLoader, (pathString : string)) ->
        let classLoader = Obj.repr classLoader in
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let appUrlGlobals : AppUrlGlobals.appUrlGlobals ref = ref (((new AppUrlGlobals.appUrlGlobals ()) :> AppUrlGlobals.appUrlGlobals)) in ();
        ignore (!appUrlGlobals#setWebappPath (pathString));
        ignore (uRLGLOBALS#init (!appUrlGlobals));
        ignore (WebappClassLoaderInfo.setLoader ((Obj.magic classLoader)));
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Setting Up AllBinary System Configuration Args: "));
        ignore (!stringBuffer#append (pathString));
        ignore (!stringBuffer#append (" ClassLoader: "));
        ignore (!stringBuffer#append ((java_get_class (Obj.repr (Obj.magic classLoader)))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !commonStrings#iNIT));
        let stringValidationUtil : StringValidationUtil.stringValidationUtil ref = ref (((StringValidationUtil.getInstance ()) :> StringValidationUtil.stringValidationUtil)) in ();
        if (!stringValidationUtil#isEmpty (pathString)) then begin
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append ("No Path Provided. Using Process Path: "));
            ignore (!stringBuffer#append (pathString));
            ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
            ignore (!stringBuffer#append ((CommonSeps.getInstance ())#eQUALS));
            ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
            ignore (!stringBuffer#append ((uRLGLOBALS#getWebappPath ())));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !commonStrings#iNIT))
        end;
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append ("Webapp Path Set To: "));
        ignore (!stringBuffer#append ((uRLGLOBALS#getWebappPath ())));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !commonStrings#iNIT))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "Globals" (fun arguments -> Obj.repr (new globals (Obj.obj arguments)))

let instance = (new globals ())
let get_instance () = instance
let () = java_register_static "Globals.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "Globals.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


