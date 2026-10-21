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
(* package org.allbinary.input.motion.gesture.configuration *)

open Allbinary_java [@@warning "-33"]

let config : MotionGestureConfiguration.motionGestureConfiguration ref = ref (((new MotionGestureConfiguration.motionGestureConfiguration ()) :> MotionGestureConfiguration.motionGestureConfiguration))
let get_config () = !config
let set_config value' = config := value'
let () = java_register_static "MotionGestureConfigurationFactory.get_config" (fun _ -> Obj.repr (get_config ()))

let getInstance () : MotionGestureConfiguration.motionGestureConfiguration =
        begin
        (!config :> MotionGestureConfiguration.motionGestureConfiguration)
        end

let () = java_register_static "MotionGestureConfigurationFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class motionGestureConfigurationFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "MotionGestureConfigurationFactory" (fun arguments -> Obj.repr (new motionGestureConfigurationFactory (Obj.obj arguments)))


