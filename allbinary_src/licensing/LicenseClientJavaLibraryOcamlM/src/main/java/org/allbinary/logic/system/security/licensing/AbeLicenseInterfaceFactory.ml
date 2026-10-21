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
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.IOException *)
(* import java.util.Calendar *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.client.AbeLicenseClient *)
(* import org.allbinary.string.CommonStrings *)

class abeLicenseInterfaceFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable time : int = 0
    method time = time
    method set_time value' = time <- value'
    val mutable check : bool = false
    method check = check
    method set_check value' = check <- value'
    val mutable checkPeriod : int = 0
    method checkPeriod = checkPeriod
    method set_checkPeriod value' = checkPeriod <- value'
    val mutable abeLicenseInterface : AbeLicenseInterface.abeLicenseInterface = (Obj.magic 0)
    method abeLicenseInterface = abeLicenseInterface
    method set_abeLicenseInterface value' = abeLicenseInterface <- value'
    
    

    method getLicenseInstance : 'any1. 'any1 -> AbeLicenseInterface.abeLicenseInterface = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        try
        begin
        if (self#isTimeToGetKey ()) then begin
            raise (Java_return (Obj.repr ((self#get ((Obj.magic abeClientInformation))))))
        end else begin
            raise (Java_return (Obj.repr (abeLicenseInterface)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method get : 'any1. 'any1 -> AbeLicenseInterface.abeLicenseInterface = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        (try
            ignore ((Obj.magic logUtil)#putF ("Getting Keys", self, commonStrings#gET));
            abeLicenseInterface <- (AbeNoLicense.getInstance ());
            let licenseClient : AbeLicenseClient.abeLicenseClient ref = ref (((new AbeLicenseClient.abeLicenseClient ()) :> AbeLicenseClient.abeLicenseClient)) in ();
            abeLicenseInterface <- (!licenseClient#get ((Obj.magic abeClientInformation)));
            if (abeLicenseInterface != (Obj.magic 0)) then begin
                ignore ((Obj.magic logUtil)#putF (("Default Key: " ^ java_string_of (Obj.repr ((abeLicenseInterface#getKey ((AbeClientInformationData.getInstance ())#kEY))))), self, commonStrings#gET))
            end;
            (abeLicenseInterface :> AbeLicenseInterface.abeLicenseInterface)
        with e -> begin
            ignore ((Obj.magic logUtil)#put ("Licensing IO Error", self, commonStrings#gET, e));
            raise (Failure ("License Server Connection Error"))
        end)
        end [@@warning "-20"]
    

    method isTimeToGetKey () : bool =
        try
        begin
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let currentTime : int ref = ref ((!calendar#getTimeInMillis ())) in ();
        if (((((abeLicenseInterface == (Obj.magic 0)) || ((Obj.repr abeLicenseInterface) == (Obj.repr (AbeNoLicense.getInstance ())))) || (not (abeLicenseInterface#hasKey ()))) || (self#isCheck ())) || ((!currentTime - checkPeriod) > time)) then begin
            abeLicenseInterface <- (Obj.magic 0);
            time <- !currentTime;
            raise (Java_return (Obj.repr (true)))
        end else begin
            false
        end
        end
        with Java_return value -> Obj.obj value
    

    method setCheck ((check_arg : bool)) : unit =
        begin
        check <- check_arg
        end
    

    method isCheck () : bool =
        begin
        check
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        time <- 0;
        check <- false;
        checkPeriod <- 36000000;
        abeLicenseInterface <- ((Obj.magic 0) :> AbeLicenseInterface.abeLicenseInterface);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbeLicenseInterfaceFactory" (fun arguments -> Obj.repr (new abeLicenseInterfaceFactory (Obj.obj arguments)))

let sINGLETON = (new abeLicenseInterfaceFactory ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "AbeLicenseInterfaceFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "AbeLicenseInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


