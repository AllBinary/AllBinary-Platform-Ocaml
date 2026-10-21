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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.os.GenericOperatingSystem *)
(* import org.allbinary.string.CommonStrings *)

class systemHardwareFactory () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable hardwareInterface : HardwareInterface.hardwareInterface = (Obj.magic 0)
    method hardwareInterface = hardwareInterface
    method set_hardwareInterface value' = hardwareInterface <- value'
    
    

    (* Java overload getInstance(GenericOperatingSystem) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        hardwareInterface <- ((NoHardware.getInstance ()) :> HardwareInterface.hardwareInterface);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "SystemHardwareFactory" (fun arguments -> Obj.repr (new systemHardwareFactory (Obj.obj arguments)))

let instance = (new systemHardwareFactory ())
let get_instance () = instance
let () = java_register_static "SystemHardwareFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let rec getInstance () =
        begin
        instance
        end

and static_toString () : string =
        begin
        let systemHardwareFactory : Obj.t ref = ref ((Obj.repr (getInstance ()))) in ();
        let osBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!osBuffer#append ("Hardware Info: \n"));
        if ((Obj.magic !systemHardwareFactory)#hardwareInterface != (Obj.magic 0)) then begin
            ignore (!osBuffer#append ((java_string_of (Obj.repr (Obj.magic !systemHardwareFactory)#hardwareInterface))))
        end else begin
            ignore (!osBuffer#append ((StringUtil.getInstance ())#nULL_STRING))
        end;
        (java_string_of (Obj.repr !osBuffer))
        end
let () = java_register_static "SystemHardwareFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "SystemHardwareFactory.static_toString" (fun arguments -> Obj.repr (static_toString (Obj.obj arguments)))


