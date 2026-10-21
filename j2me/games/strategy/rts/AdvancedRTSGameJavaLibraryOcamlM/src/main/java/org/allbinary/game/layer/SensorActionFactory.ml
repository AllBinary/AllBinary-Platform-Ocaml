(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class sensorActionFactory () =
  object
    val mutable aTTACK : SensorAction.sensorAction = (Obj.magic 0)
    method aTTACK = aTTACK
    method set_aTTACK value' = aTTACK <- value'
    val mutable eVADE : SensorAction.sensorAction = (Obj.magic 0)
    method eVADE = eVADE
    method set_eVADE value' = eVADE <- value'
    

    initializer
      begin
        aTTACK <- ((new SensorAction.sensorAction ("Attack")) :> SensorAction.sensorAction);
        eVADE <- ((new SensorAction.sensorAction ("Evade")) :> SensorAction.sensorAction);
        ();
        ()
      end
  end
let () = java_register_constructor "SensorActionFactory" (fun arguments -> Obj.repr (new sensorActionFactory (Obj.obj arguments)))

let instance = (new sensorActionFactory ())
let get_instance () = instance
let () = java_register_static "SensorActionFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SensorActionFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


