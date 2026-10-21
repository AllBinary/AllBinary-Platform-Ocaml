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
(* package org.allbinary.logic.system.os *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.Log *)
(* import org.allbinary.logic.communication.log.LogFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypes *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.os.linux.LinuxOperatingSystemFactory *)
(* import org.allbinary.logic.system.os.solaris.SolarisOperatingSystemFactory *)
(* import org.allbinary.logic.system.os.windows.WindowsOperatingSystemFactory *)
(* import org.allbinary.string.CommonStrings *)

class operatingSystemFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable genericOperatingSystem : GenericOperatingSystem.genericOperatingSystem = (Obj.magic 0)
    method genericOperatingSystem = genericOperatingSystem
    method set_genericOperatingSystem value' = genericOperatingSystem <- value'
    val mutable hasDetected : bool = false
    method hasDetected = hasDetected
    method set_hasDetected value' = hasDetected <- value'
    
    

    method getOperatingSystemInstance () : GenericOperatingSystem.genericOperatingSystem =
        begin
        (try
            let operatingSystems : OperatingSystems.operatingSystems ref = ref (((OperatingSystems.getInstance ()) :> OperatingSystems.operatingSystems)) in ();
            let systemProperties : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "SystemProperties.getInstance" (Obj.repr ()))))) in ();
            let osName : string ref = ref (((Obj.magic !systemProperties)#getName ())) in ();
            let osArch : string ref = ref (((Obj.magic !systemProperties)#getArch ())) in ();
            let osVersion : string ref = ref (((Obj.magic !systemProperties)#getVersion ())) in ();
            if (not hasDetected) then begin
                ignore ((Obj.magic logUtil)#putF (("osName: " ^ !osName), self, commonStrings#gET_INSTANCE));
                hasDetected <- true;
                if ((java_string_index_of !osName (Obj.repr (!operatingSystems#lINUX))) >= 0) then begin
                    if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#fACTORYERROR)) then begin
                        ignore ((Obj.magic logUtil)#putF ("Found a Linux OS", self, commonStrings#gET_INSTANCE))
                    end;
                    genericOperatingSystem <- ((LinuxOperatingSystemFactory.getInstance ())#getOperatingSystemInstance ())
                end else if ((java_string_index_of !osName (Obj.repr (!operatingSystems#wINDOWS))) >= 0) then begin
                    if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#fACTORYERROR)) then begin
                        ignore ((Obj.magic logUtil)#putF ("Found a Windows OS", self, commonStrings#gET_INSTANCE))
                    end;
                    genericOperatingSystem <- ((WindowsOperatingSystemFactory.getInstance ())#getOperatingSystemInstance ())
                end else if ((java_string_index_of !osName (Obj.repr (!operatingSystems#sOLARIS))) >= 0) then begin
                    if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#fACTORYERROR)) then begin
                        ignore ((Obj.magic logUtil)#putF ("Found a Solaris OS", self, commonStrings#gET_INSTANCE))
                    end;
                    genericOperatingSystem <- ((SolarisOperatingSystemFactory.getInstance ())#getOperatingSystemInstance ())
                end else begin
                    raise (Failure ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("OS Not Supported: "))#append (!osName))))))
                end;
                let log : Log.log ref = ref (((Obj.magic (java_call_static "LogFactory.getInstanceF" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("OperatingSystem Info: "))#append (((StringUtil.getInstance ())#toString (genericOperatingSystem)))))), self, commonStrings#gET_INSTANCE)))) :> Log.log)) in ();
                (print_endline (java_string_of (Obj.repr ((java_string_of (Obj.repr !log))))));
                ignore ((Obj.magic logUtil)#putL (!log))
            end;
            (genericOperatingSystem :> GenericOperatingSystem.genericOperatingSystem)
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#fACTORYERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#gET_INSTANCE, e))
            end;
            ((NoOperatingSystem.get_nO_OPERATING_SYSTEM ()) :> GenericOperatingSystem.genericOperatingSystem)
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        genericOperatingSystem <- ((NoOperatingSystem.get_nO_OPERATING_SYSTEM ()) :> GenericOperatingSystem.genericOperatingSystem);
        hasDetected <- false;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "OperatingSystemFactory" (fun arguments -> Obj.repr (new operatingSystemFactory (Obj.obj arguments)))

let instance = (new operatingSystemFactory ())
let get_instance () = instance
let () = java_register_static "OperatingSystemFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OperatingSystemFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


