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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.game.TiledLayer *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo *)
(* import org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory *)

class allBinaryTiledLayerFactory () =
  object
    

    method getInstance : 'any1 'any2. 'any1 * 'any2 -> AllBinaryTiledLayer.allBinaryTiledLayer = fun (_raceTrackInfo, raceTrackData) ->
        let raceTrackData = Obj.repr raceTrackData in
        begin
        let allbinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((Obj.magic 0) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let tiledLayer : Obj.t ref = ref ((Obj.repr ((new TiledLayerFactory.tiledLayerFactory ())#getInstance ((Obj.magic raceTrackData))))) in ();
        allbinaryTiledLayer := (new AllBinaryJ2METiledLayer.allBinaryJ2METiledLayer (((Obj.magic raceTrackData)#getId ()), (Obj.magic !tiledLayer), ((Obj.magic raceTrackData)#getMapArray ()), ((BasicColorFactory.getInstance ())#rED#intValue ())));
        ignore (!allbinaryTiledLayer#setCells (((Obj.magic raceTrackData)#getMapArray ())));
        (!allbinaryTiledLayer :> AllBinaryTiledLayer.allBinaryTiledLayer)
        end [@@warning "-20"]
    

    method getMiniInstance : 'any1. 'any1 -> AllBinaryTiledLayer.allBinaryTiledLayer = fun (raceTrackData) ->
        let raceTrackData = Obj.repr raceTrackData in
        begin
        let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
        let tiledLayer : Obj.t ref = ref ((Obj.repr ((new TiledLayerFactory.tiledLayerFactory ())#getMiniInstance ((Obj.magic raceTrackData))))) in ();
        let allbinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((new AllBinaryJ2METiledLayer.allBinaryJ2METiledLayer ((!smallIntegerSingletonFactory#getAt ((((((Obj.magic raceTrackData)#getId ())#intValue ()) + 100) + 1))), (Obj.magic !tiledLayer), ((Obj.magic raceTrackData)#getMapArray ()), ((BasicColorFactory.getInstance ())#rED#intValue ()))) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        ignore (!allbinaryTiledLayer#setCells (((Obj.magic raceTrackData)#getMapArray ())));
        (!allbinaryTiledLayer :> AllBinaryTiledLayer.allBinaryTiledLayer)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AllBinaryTiledLayerFactory" (fun arguments -> Obj.repr (new allBinaryTiledLayerFactory (Obj.obj arguments)))


