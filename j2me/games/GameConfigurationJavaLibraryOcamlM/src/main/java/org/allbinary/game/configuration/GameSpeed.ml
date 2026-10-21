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
(* package org.allbinary.game.configuration *)

open Allbinary_java [@@warning "-33"]

class gameSpeed () =
  object
    

    method getSpeed () : int =
        begin
        let speedGameConfiguration : GameConfiguration.gameConfiguration ref = ref (((GameConfigurationCentral.getInstance ())#sPEED :> GameConfiguration.gameConfiguration)) in ();
        (((((!speedGameConfiguration#getMaxValue ())#intValue ()) - ((!speedGameConfiguration#getValue ())#intValue ())) + 1))
        end
    

    method getDelay () : int =
        begin
        let speedGameConfiguration : GameConfiguration.gameConfiguration ref = ref (((GameConfigurationCentral.getInstance ())#sPEED :> GameConfiguration.gameConfiguration)) in ();
        (19 * ((((!speedGameConfiguration#getMaxValue ())#intValue ()) - ((!speedGameConfiguration#getValue ())#intValue ()))))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "GameSpeed" (fun arguments -> Obj.repr (new gameSpeed (Obj.obj arguments)))

let instance = (new gameSpeed ())
let get_instance () = instance
let () = java_register_static "GameSpeed.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameSpeed.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


