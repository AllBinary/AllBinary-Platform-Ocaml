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
(* package org.allbinary.logic.system.security *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.AbeLicenseInterfaceFactory *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class abKeys () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method getKey : 'any1. 'any1 * string -> string = fun (abeClientInformation, (keyName : string)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        try
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (("Getting Key: " ^ keyName), self, "getKey"));
            if (((((String.compare keyName ("DirectX 8")) == 0) || ((String.compare keyName ("DirectX")) == 0)) || ((String.compare keyName ("Low Level")) == 0)) || ((String.compare keyName ("System Drivers")) == 0)) then begin
                raise (Java_return (Obj.repr ("Temp For Input Library")))
            end;
            (((AbeLicenseInterfaceFactory.getInstance ())#getLicenseInstance ((Obj.magic abeClientInformation)))#getKey (keyName))
        with e -> begin
            raise e
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbKeys" (fun arguments -> Obj.repr (new abKeys (Obj.obj arguments)))

let instance = (new abKeys ())
let get_instance () = instance
let () = java_register_static "AbKeys.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AbKeys.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


