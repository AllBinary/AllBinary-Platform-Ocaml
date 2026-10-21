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
(* package org.allbinary.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

let max : int ref = ref (100)
let get_max () = !max
let set_max value' = max := value'
let () = java_register_static "AllBinarySensor.get_max" (fun _ -> Obj.repr (get_max ()))

let setMax ((max_arg : int)) : unit =
        begin
        max := max_arg
        end

and getMax () : int =
        begin
        !max
        end

let () = java_register_static "AllBinarySensor.setMax" (fun arguments -> Obj.repr (setMax (Obj.obj arguments)))
let () = java_register_static "AllBinarySensor.getMax" (fun arguments -> Obj.repr (getMax (Obj.obj arguments)))
class allBinarySensor () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method init () : unit =
        begin
        ()
        end
    

    method update () : unit =
        begin
        ()
        end
    

    method getId () : int =
        begin
        (getMax ())
        end
    

    method shutdown () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "shutdown"))
        end
    

    method onSensorChange () : unit =
        begin
        ignore (ForcedLogUtil.log (commonStrings#nOT_IMPLEMENTED, self))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllBinarySensor" (fun arguments -> Obj.repr (new allBinarySensor (Obj.obj arguments)))

let nULL_ALLBINARY_SENSOR = (new allBinarySensor ())
let get_nULL_ALLBINARY_SENSOR () = nULL_ALLBINARY_SENSOR
let () = java_register_static "AllBinarySensor.get_nULL_ALLBINARY_SENSOR" (fun _ -> Obj.repr (get_nULL_ALLBINARY_SENSOR ()))


