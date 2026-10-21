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
(* package org.allbinary.android.input.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.android.input.motion.event.AnalogControllerConfigurationEvent *)
(* import org.allbinary.android.input.motion.event.AnalogControllerConfigurationEventHandler *)
(* import org.allbinary.logic.math.ScaleFactorFactory *)

class analogControllerConfigurationFactory () =
  object (self)
    val mutable sCALE_FACTOR : int = 0
    method sCALE_FACTOR = sCALE_FACTOR
    method set_sCALE_FACTOR value' = sCALE_FACTOR <- value'
    val mutable sCALE_VALUE : int = 0
    method sCALE_VALUE = sCALE_VALUE
    method set_sCALE_VALUE value' = sCALE_VALUE <- value'
    val mutable available : bool = false
    method available = available
    method set_available value' = available <- value'
    val mutable analogControllerConfigurationEvent : AnalogControllerConfigurationEvent.analogControllerConfigurationEvent = (Obj.magic 0)
    method analogControllerConfigurationEvent = analogControllerConfigurationEvent
    method set_analogControllerConfigurationEvent value' = analogControllerConfigurationEvent <- value'
    
    

    method isAvailable () : bool =
        begin
        available
        end
    

    method setAvailable ((available_arg : bool)) : unit =
        begin
        available <- available_arg;
        ignore ((AnalogControllerConfigurationEventHandler.getInstance ())#fireEvent (analogControllerConfigurationEvent))
        end

    initializer
      begin
        sCALE_FACTOR <- (ScaleFactorFactory.getInstance ())#dEFAULT_SCALE_FACTOR;
        sCALE_VALUE <- (ScaleFactorFactory.getInstance ())#dEFAULT_SCALE_VALUE;
        available <- false;
        analogControllerConfigurationEvent <- ((new AnalogControllerConfigurationEvent.analogControllerConfigurationEvent (self)) :> AnalogControllerConfigurationEvent.analogControllerConfigurationEvent);
        ();
        ()
      end
  end
let () = java_register_constructor "AnalogControllerConfigurationFactory" (fun arguments -> Obj.repr (new analogControllerConfigurationFactory (Obj.obj arguments)))

let instance = (new analogControllerConfigurationFactory ())
let get_instance () = instance
let () = java_register_static "AnalogControllerConfigurationFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AnalogControllerConfigurationFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


