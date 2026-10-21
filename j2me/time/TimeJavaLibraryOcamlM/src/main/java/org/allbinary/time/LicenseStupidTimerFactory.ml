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

let instance : StupidTimer.stupidTimer = ((new StupidTimer.stupidTimer ()) :> StupidTimer.stupidTimer)
let get_instance () = instance
let () = java_register_static "LicenseStupidTimerFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : StupidTimer.stupidTimer =
        begin
        (instance :> StupidTimer.stupidTimer)
        end

let () = java_register_static "LicenseStupidTimerFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class licenseStupidTimerFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LicenseStupidTimerFactory" (fun arguments -> Obj.repr (new licenseStupidTimerFactory (Obj.obj arguments)))


