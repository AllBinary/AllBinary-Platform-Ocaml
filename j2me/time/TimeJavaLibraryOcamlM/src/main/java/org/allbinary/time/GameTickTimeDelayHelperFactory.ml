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
(* package org.allbinary.time *)

open Allbinary_java [@@warning "-33"]

let instance : GameTickTimeDelayHelper.gameTickTimeDelayHelper = ((new GameTickTimeDelayHelper.gameTickTimeDelayHelper ((-1))) :> GameTickTimeDelayHelper.gameTickTimeDelayHelper)
let get_instance () = instance
let () = java_register_static "GameTickTimeDelayHelperFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : GameTickTimeDelayHelper.gameTickTimeDelayHelper =
        begin
        (instance :> GameTickTimeDelayHelper.gameTickTimeDelayHelper)
        end

let () = java_register_static "GameTickTimeDelayHelperFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class gameTickTimeDelayHelperFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GameTickTimeDelayHelperFactory" (fun arguments -> Obj.repr (new gameTickTimeDelayHelperFactory (Obj.obj arguments)))


