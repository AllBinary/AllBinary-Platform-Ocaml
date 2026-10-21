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
(* import org.allbinary.logic.system.os.android.AndroidOperatingSystemFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)

class operatingSystemFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable genericOperatingSystem : GenericOperatingSystem.genericOperatingSystem = (Obj.magic 0)
    method genericOperatingSystem = genericOperatingSystem
    method set_genericOperatingSystem value' = genericOperatingSystem <- value'
    val mutable hasDetected : bool = false
    method hasDetected = hasDetected
    method set_hasDetected value' = hasDetected <- value'
    
    

    method getOperatingSystemInstance () : GenericOperatingSystem.genericOperatingSystem =
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        (try
            let systemProperties : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "SystemProperties.getInstance" (Obj.repr ()))))) in ();
            let osName : string ref = ref (((Obj.magic !systemProperties)#getName ())) in ();
            if (not hasDetected) then begin
                hasDetected <- true;
                if ((java_string_index_of !osName (Obj.repr ((OperatingSystems.getInstance ())#aNDROID))) >= 0) then begin
                    ignore ((Obj.magic logUtil)#putF ("Found a Android OS", self, !commonStrings#gET_INSTANCE));
                    genericOperatingSystem <- ((AndroidOperatingSystemFactory.getInstance ())#getOperatingSystemInstance ());
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Operating System Info: "))#append ((java_string_of (Obj.repr genericOperatingSystem)))))), self, !commonStrings#gET_INSTANCE))
                end else if ((java_string_index_of !osName (Obj.repr ((OperatingSystems.getInstance ())#hARMONY))) >= 0) then begin
                    ignore ((Obj.magic logUtil)#putF ("Found a Harmony OS", self, !commonStrings#gET_INSTANCE));
                    genericOperatingSystem <- ((AndroidOperatingSystemFactory.getInstance ())#getOperatingSystemInstance ());
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Operating System Info: "))#append ((java_string_of (Obj.repr genericOperatingSystem)))))), self, !commonStrings#gET_INSTANCE))
                end else begin
                    raise (Failure ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("OS Not Supported: "))#append (!osName))))))
                end
            end
        with e -> begin
            genericOperatingSystem <- (NoOperatingSystem.get_nO_OPERATING_SYSTEM ());
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#gET_INSTANCE, e))
        end);
        (genericOperatingSystem :> GenericOperatingSystem.genericOperatingSystem)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
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


