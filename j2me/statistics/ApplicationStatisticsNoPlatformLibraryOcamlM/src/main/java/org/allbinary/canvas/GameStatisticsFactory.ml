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
(* package org.allbinary.canvas *)

open Allbinary_java [@@warning "-33"]

class gameStatisticsFactory () =
  object
    inherit BaseGameStatistics.baseGameStatistics ()
    

    method add ((_string : string)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "GameStatisticsFactory" (fun arguments -> Obj.repr (new gameStatisticsFactory (Obj.obj arguments)))

let instance = (new gameStatisticsFactory ())
let get_instance () = instance
let () = java_register_static "GameStatisticsFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameStatisticsFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


