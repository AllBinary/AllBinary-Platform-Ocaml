(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]

class customMapGeneratorBaseFactory () =
  object
    
    

    method create : 'any1. 'any1 -> CustomMapGeneratorBase.customMapGeneratorBase = fun (_raceTrackGeographicMap) ->
        begin
        ((new CustomMapGeneratorBase.customMapGeneratorBase ()) :> CustomMapGeneratorBase.customMapGeneratorBase)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "CustomMapGeneratorBaseFactory" (fun arguments -> Obj.repr (new customMapGeneratorBaseFactory (Obj.obj arguments)))

let instance = (new customMapGeneratorBaseFactory ())
let get_instance () = instance
let () = java_register_static "CustomMapGeneratorBaseFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CustomMapGeneratorBaseFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


