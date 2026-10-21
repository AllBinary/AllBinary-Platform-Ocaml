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
(* package org.allbinary.media.graphics.geography.map.racetrack.threed *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo *)

class allBinaryThreedTiledLayerFactory () =
  object
    

    (* Java overload getInstance(RaceTrackInfo, RaceTrackData) is not converted: OCaml has one method per name *)

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AllBinaryThreedTiledLayerFactory" (fun arguments -> Obj.repr (new allBinaryThreedTiledLayerFactory (Obj.obj arguments)))

let instance = (new allBinaryThreedTiledLayerFactory ())
let get_instance () = instance
let () = java_register_static "AllBinaryThreedTiledLayerFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AllBinaryThreedTiledLayerFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


