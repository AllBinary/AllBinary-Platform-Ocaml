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
(* package org.allbinary.logic.system.hardware *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.hardware.android.AndroidHardware *)
(* import org.allbinary.logic.system.os.GenericOperatingSystem *)
(* import org.allbinary.logic.system.os.OperatingSystems *)
(* import org.allbinary.string.CommonStrings *)

class hardwareFactory () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    
    

    (* Java overload getInstance(GenericOperatingSystem) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "HardwareFactory" (fun arguments -> Obj.repr (new hardwareFactory (Obj.obj arguments)))

let instance = (new hardwareFactory ())
let get_instance () = instance
let () = java_register_static "HardwareFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HardwareFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


