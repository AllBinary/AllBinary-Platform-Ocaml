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
[@@@warning "-20"]

class customMapGeneratorFactory () =
  object
    inherit CustomMapGeneratorBaseFactory.customMapGeneratorBaseFactory ()
    

    method create : 'any1. 'any1 -> CustomMapGeneratorBase.customMapGeneratorBase = fun (raceTrackGeographicMap) ->
        let raceTrackGeographicMap = Obj.repr raceTrackGeographicMap in
        begin
        ((new CustomMapGenerator.customMapGenerator ((Obj.magic raceTrackGeographicMap))) :> CustomMapGeneratorBase.customMapGeneratorBase)
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "CustomMapGeneratorFactory" (fun arguments -> Obj.repr (new customMapGeneratorFactory (Obj.obj arguments)))


