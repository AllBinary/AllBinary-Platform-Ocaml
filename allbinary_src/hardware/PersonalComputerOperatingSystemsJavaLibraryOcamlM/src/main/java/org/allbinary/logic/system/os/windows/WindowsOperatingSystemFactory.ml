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
(* package org.allbinary.logic.system.os.windows *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypes *)
(* import org.allbinary.logic.system.os.GenericOperatingSystem *)
(* import org.allbinary.logic.system.os.NoOperatingSystem *)
(* import org.allbinary.logic.system.os.OperatingSystems *)
(* import org.allbinary.logic.system.os.SystemProperties *)
(* import org.allbinary.string.CommonStrings *)

class windowsOperatingSystemFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method getOperatingSystemInstance () : GenericOperatingSystem.genericOperatingSystem =
        begin
        (try
            let operatingSystems : OperatingSystems.operatingSystems ref = ref (((OperatingSystems.getInstance ()) :> OperatingSystems.operatingSystems)) in ();
            let osName : string ref = ref (((Obj.magic (java_call_static "SystemProperties.getInstance" (Obj.repr ())))#getName ())) in ();
            let operatingSystemInterface : GenericOperatingSystem.genericOperatingSystem ref = ref (((Obj.magic 0) :> GenericOperatingSystem.genericOperatingSystem)) in ();
            if ((String.compare !osName (!operatingSystems#wINDOWS_NT)) == 0) then begin
                operatingSystemInterface := (new WindowsOS.windowsOS ())
            end else if ((String.compare !osName (!operatingSystems#wINDOWS_10)) == 0) then begin
                operatingSystemInterface := (new WindowsOS.windowsOS ())
            end else if ((String.compare !osName (!operatingSystems#wINDOWS_11)) == 0) then begin
                operatingSystemInterface := (new WindowsOS.windowsOS ())
            end else if ((String.compare !osName (!operatingSystems#wINDOWS2000)) == 0) then begin
                operatingSystemInterface := (new WindowsOS.windowsOS ())
            end else if ((String.compare !osName (!operatingSystems#wINDOWS_XP)) == 0) then begin
                operatingSystemInterface := (new WindowsOS.windowsOS ())
            end else if ((String.compare !osName (!operatingSystems#wINDOWS_VISTA)) == 0) then begin
                operatingSystemInterface := (new WindowsOS.windowsOS ())
            end else begin
                if (!operatingSystems#isUnknownSpecificOSAllowed ()) then begin
                    operatingSystemInterface := (new WindowsOS.windowsOS ())
                end else begin
                    raise (Failure (("Specific Windows OS Not Supported: " ^ !osName)))
                end
            end;
            (!operatingSystemInterface :> GenericOperatingSystem.genericOperatingSystem)
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#fACTORYERROR)) then begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#gET_INSTANCE, e))
            end;
            ((NoOperatingSystem.get_nO_OPERATING_SYSTEM ()) :> GenericOperatingSystem.genericOperatingSystem)
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "WindowsOperatingSystemFactory" (fun arguments -> Obj.repr (new windowsOperatingSystemFactory (Obj.obj arguments)))

let instance = (new windowsOperatingSystemFactory ())
let get_instance () = instance
let () = java_register_static "WindowsOperatingSystemFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "WindowsOperatingSystemFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


