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
(* package org.allbinary.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]

class virtual multiLevelRaceTrackGeographicMapInterfaceFactoryInterface =
  object
    inherit RaceTrackGeographicMapInterfaceFactoryInterface.raceTrackGeographicMapInterfaceFactoryInterface
    method virtual getFirstWaveWithTrack : int -> int
    method virtual getTotalTracks : unit -> int
    method virtual getTotalLevels : unit -> int
  end


