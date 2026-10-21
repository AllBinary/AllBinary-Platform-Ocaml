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
(* package org.allbinary.game.init *)

open Allbinary_java [@@warning "-33"]

class basicBuildGameInitializerFactory () =
  object
    

    method getInstance () : GameInitializationInterface.gameInitializationInterface =
        begin
        ((BaseGameInitialization.get_nULL_BASE_GAME_INITIALIZATION ()) :> GameInitializationInterface.gameInitializationInterface)
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BasicBuildGameInitializerFactory" (fun arguments -> Obj.repr (new basicBuildGameInitializerFactory (Obj.obj arguments)))

let nULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = ref ((new basicBuildGameInitializerFactory ()))
let get_nULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY () = !nULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY
let set_nULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY value' = nULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY := value'
let () = java_register_static "BasicBuildGameInitializerFactory.get_nULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY" (fun _ -> Obj.repr (get_nULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY ()))


