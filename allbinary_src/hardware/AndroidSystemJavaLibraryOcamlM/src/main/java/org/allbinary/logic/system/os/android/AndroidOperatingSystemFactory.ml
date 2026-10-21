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
(* package org.allbinary.logic.system.os.android *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.os.GenericOperatingSystem *)
(* import org.allbinary.logic.system.os.NoOperatingSystem *)
(* import org.allbinary.logic.system.os.OperatingSystems *)
(* import org.allbinary.logic.system.os.SystemProperties *)
(* import org.allbinary.string.CommonStrings *)

class androidOperatingSystemFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    
    

    method getOperatingSystemInstance () : GenericOperatingSystem.genericOperatingSystem =
        begin
        (try
            let genericOperatingSystem : GenericOperatingSystem.genericOperatingSystem ref = ref (((Obj.magic 0) :> GenericOperatingSystem.genericOperatingSystem)) in ();
            let systemProperties : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "SystemProperties.getInstance" (Obj.repr ()))))) in ();
            let osName : string ref = ref (((Obj.magic !systemProperties)#getName ())) in ();
            if (((Obj.magic tsUtil)#compareTo (!osName, (OperatingSystems.getInstance ())#aNDROID)) == 0) then begin
                genericOperatingSystem := (new AndroidOS.androidOS ())
            end else begin
                if ((OperatingSystems.getInstance ())#isUnknownSpecificOSAllowed ()) then begin
                    genericOperatingSystem := (new AndroidOS.androidOS ())
                end else begin
                    raise (Failure (("Specific Android OS Not Supported: " ^ !osName)))
                end
            end;
            (!genericOperatingSystem :> GenericOperatingSystem.genericOperatingSystem)
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put ("Failed to get OperatingSystem returning NoOperatingSystem", self, !commonStrings#gET_INSTANCE, e));
            ((NoOperatingSystem.get_nO_OPERATING_SYSTEM ()) :> GenericOperatingSystem.genericOperatingSystem)
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AndroidOperatingSystemFactory" (fun arguments -> Obj.repr (new androidOperatingSystemFactory (Obj.obj arguments)))

let instance = (new androidOperatingSystemFactory ())
let get_instance () = instance
let () = java_register_static "AndroidOperatingSystemFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AndroidOperatingSystemFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


