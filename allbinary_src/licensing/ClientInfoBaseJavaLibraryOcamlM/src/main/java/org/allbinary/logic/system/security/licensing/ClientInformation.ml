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
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.hardware.HardwareInterface *)
(* import org.allbinary.logic.system.hardware.SystemHardwareFactory *)
(* import org.allbinary.logic.system.os.GenericOperatingSystem *)
(* import org.allbinary.logic.system.os.NoOperatingSystem *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)

class clientInformation ((name_arg : string), (version_arg : string), (specialName_arg : string), (shortName_arg : string)) =
  object (self)
    val mutable operatingSystemInterface : GenericOperatingSystem.genericOperatingSystem = (Obj.magic 0)
    method operatingSystemInterface = operatingSystemInterface
    method set_operatingSystemInterface value' = operatingSystemInterface <- value'
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable shortName : string = ""
    method shortName = shortName
    method set_shortName value' = shortName <- value'
    val mutable version : string = ""
    method version = version
    method set_version value' = version <- value'
    val mutable specialName : string = ""
    method specialName = specialName
    method set_specialName value' = specialName <- value'
    val mutable hardSale : bool = false
    method hardSale = hardSale
    method set_hardSale value' = hardSale <- value'
    val mutable licenseId : string = ""
    method licenseId = licenseId
    method set_licenseId value' = licenseId <- value'
    val mutable licenseServers : BasicArrayList.basicArrayList = (Obj.magic 0)
    method licenseServers = licenseServers
    method set_licenseServers value' = licenseServers <- value'
    
    

    method init () : unit =
        begin
        ()
        end
    

    method getOperatingSystemInterface () : GenericOperatingSystem.genericOperatingSystem =
        begin
        (operatingSystemInterface :> GenericOperatingSystem.genericOperatingSystem)
        end
    

    method getName () : string =
        begin
        name
        end
    

    method getSpecialName () : string =
        begin
        specialName
        end
    

    method getVersion () : string =
        begin
        version
        end
    

    method getLicenseId () : string =
        begin
        licenseId
        end
    

    method getLicenseServers () : BasicArrayList.basicArrayList =
        begin
        (licenseServers :> BasicArrayList.basicArrayList)
        end
    

    method getLicenseServer ((index : int)) : string =
        begin
        (Obj.magic licenseServers#objectArray.(index))
        end
    

    method getNumberOfLicenseServers () : int =
        begin
        (licenseServers#size ())
        end
    

    method toHashtable : 'return. unit -> 'return = fun () ->
        begin
        let abeClientInformationData : AbeClientInformationData.abeClientInformationData ref = ref (((AbeClientInformationData.getInstance ()) :> AbeClientInformationData.abeClientInformationData)) in ();
        let genericOperatingSystem : GenericOperatingSystem.genericOperatingSystem ref = ref (((self#getOperatingSystemInterface ()) :> GenericOperatingSystem.genericOperatingSystem)) in ();
        let clientInfoHashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()))) in ();
        ignore ((Obj.magic !clientInfoHashtable)#put (!abeClientInformationData#nAME, name));
        ignore ((Obj.magic !clientInfoHashtable)#put (!abeClientInformationData#vERSION, version));
        ignore ((Obj.magic !clientInfoHashtable)#put (!abeClientInformationData#sPECIALNAME, specialName));
        ignore ((Obj.magic !clientInfoHashtable)#put (!abeClientInformationData#lICENSEID, (self#getLicenseId ())));
        ignore ((Obj.magic !clientInfoHashtable)#put (!abeClientInformationData#oSNAME, (!genericOperatingSystem#getName ())));
        ignore ((Obj.magic !clientInfoHashtable)#put (!abeClientInformationData#oSARCH, (!genericOperatingSystem#getArch ())));
        ignore ((Obj.magic !clientInfoHashtable)#put (!abeClientInformationData#oSVERSION, (!genericOperatingSystem#getVersion ())));
        ignore ((Obj.magic !clientInfoHashtable)#put (!abeClientInformationData#oS, (java_string_of (Obj.repr !genericOperatingSystem))));
        let hardwareInterface : HardwareInterface.hardwareInterface ref = ref ((((SystemHardwareFactory.getInstance ())#getInstance (!genericOperatingSystem)) :> HardwareInterface.hardwareInterface)) in ();
        let hardwareString : string ref = ref ((java_string_of (Obj.repr !hardwareInterface))) in ();
        ignore ((Obj.magic !clientInfoHashtable)#put (!abeClientInformationData#hARDWARE, !hardwareString));
        (Obj.magic ((Obj.magic !clientInfoHashtable)))
        end
    

    method isSameId ((alicenseId : string)) : bool =
        try
        begin
        if (((Obj.magic tsUtil)#compareTo ((self#getLicenseId ()), alicenseId)) == 0) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method isLargerOrDifferentServerList : 'any1. 'any1 -> bool = fun (list) ->
        let list = Obj.repr list in
        try
        begin
        let size : int ref = ref ((((Obj.magic list)#size ()) - 1)) in ();
        let currentSize : int ref = ref (((licenseServers#size ()) - 1)) in ();
        if (!size > !currentSize) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        for index = !size downto 0 do
            let newServerName : string ref = ref ((Obj.magic (Obj.magic list)#objectArray.(index))) in ();
            for _index2 = !currentSize downto 0 do
                let nextOldServerName : string ref = ref ((Obj.magic licenseServers#objectArray.(index))) in ();
                if (((Obj.magic tsUtil)#compareTo (!newServerName, !nextOldServerName)) != 0) then begin
                    raise (Java_return (Obj.repr (true)))
                end
            done
        done;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method setHardSale ((hardSale_arg : bool)) : unit =
        begin
        hardSale <- hardSale_arg
        end
    

    method isHardSale () : bool =
        begin
        hardSale
        end
    

    method setOperatingSystemInterface : 'any1. 'any1 -> unit = fun (operatingSystemInterface_arg) ->
        let operatingSystemInterface_arg = Obj.repr operatingSystemInterface_arg in
        begin
        operatingSystemInterface <- (Obj.magic operatingSystemInterface_arg)
        end [@@warning "-20"]
    

    method setLicenseId ((licenseId_arg : string)) : unit =
        begin
        licenseId <- licenseId_arg
        end
    

    method setLicenseServers : 'any1. 'any1 -> unit = fun (licenseServers_arg) ->
        let licenseServers_arg = Obj.repr licenseServers_arg in
        begin
        licenseServers <- (Obj.magic licenseServers_arg)
        end [@@warning "-20"]
    

    method toShortString () : string =
        begin
        shortName
        end

    initializer
      begin
        operatingSystemInterface <- ((NoOperatingSystem.get_nO_OPERATING_SYSTEM ()) :> GenericOperatingSystem.genericOperatingSystem);
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        hardSale <- true;
        licenseId <- (StringUtil.getInstance ())#eMPTY_STRING;
        licenseServers <- (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()) :> BasicArrayList.basicArrayList);
        ();
        name <- name_arg;
        version <- version_arg;
        specialName <- specialName_arg;
        shortName <- (java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (shortName_arg))#append ((CommonSeps.getInstance ())#uNDERSCORE))#append (version_arg))));
        (self#init ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "ClientInformation" (fun arguments -> Obj.repr (new clientInformation (Obj.obj arguments)))


