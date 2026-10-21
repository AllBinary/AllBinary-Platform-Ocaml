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
(* import org.allbinary.media.graphics.geography.map.GeographicMapInterface *)

class virtual raceTrackGeographicMapInterface =
  object
    inherit GeographicMapInterface.geographicMapInterface
    method virtual getRaceTrackInfo : unit -> RaceTrackInfo.raceTrackInfo
    method virtual setRaceTrackInfo : 'any1 . 'any1 -> unit
    method virtual getRaceTrackData : unit -> RaceTrackData.raceTrackData
    method virtual setRaceTrackData : 'any1 . 'any1 -> unit
  end


