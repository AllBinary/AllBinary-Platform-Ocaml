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
(* package org.allbinary.game.configuration.persistance *)

open Allbinary_java [@@warning "-33"]

class gameConfigurationPersistanceSingleton () =
  object
    inherit KeyValuePersistance.keyValuePersistance ((GamePersistanceStrings.getInstance ())#sAVED_GAME_CONFIGURATION_RECORD_ID)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "GameConfigurationPersistanceSingleton" (fun arguments -> Obj.repr (new gameConfigurationPersistanceSingleton (Obj.obj arguments)))

let gAME_PERSISTANCE = ref ((new gameConfigurationPersistanceSingleton ()))
let get_gAME_PERSISTANCE () = !gAME_PERSISTANCE
let set_gAME_PERSISTANCE value' = gAME_PERSISTANCE := value'
let () = java_register_static "GameConfigurationPersistanceSingleton.get_gAME_PERSISTANCE" (fun _ -> Obj.repr (get_gAME_PERSISTANCE ()))

let getInstance () =
        begin
        !gAME_PERSISTANCE
        end
let () = java_register_static "GameConfigurationPersistanceSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


