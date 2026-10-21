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
[@@@warning "-20"]
(* import org.allbinary.graphics.color.BasicColor *)

class raceTrackInfo ((id_arg : int), (name_arg : string), (raceTrackFrictionProperties_arg : RaceTrackFrictionProperties.raceTrackFrictionProperties), (foregroundBasicColor_arg : BasicColor.basicColor), (backgroundBasicColor_arg : BasicColor.basicColor), (qualifyTime_arg : int), (worstContinuePosition_arg : int), (totalLaps_arg : int)) =
  object
    val mutable id : int = (Obj.magic 0)
    method id = id
    method set_id value' = id <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable raceTrackFrictionProperties : RaceTrackFrictionProperties.raceTrackFrictionProperties = (Obj.magic 0)
    method raceTrackFrictionProperties = raceTrackFrictionProperties
    method set_raceTrackFrictionProperties value' = raceTrackFrictionProperties <- value'
    val mutable foregroundBasicColor : BasicColor.basicColor = (Obj.magic 0)
    method foregroundBasicColor = foregroundBasicColor
    method set_foregroundBasicColor value' = foregroundBasicColor <- value'
    val mutable backgroundBasicColor : BasicColor.basicColor = (Obj.magic 0)
    method backgroundBasicColor = backgroundBasicColor
    method set_backgroundBasicColor value' = backgroundBasicColor <- value'
    val mutable qualifyTime : int = 0
    method qualifyTime = qualifyTime
    method set_qualifyTime value' = qualifyTime <- value'
    val mutable worstContinuePosition : int = 0
    method worstContinuePosition = worstContinuePosition
    method set_worstContinuePosition value' = worstContinuePosition <- value'
    val mutable totalLaps : int = 0
    method totalLaps = totalLaps
    method set_totalLaps value' = totalLaps <- value'
    
    

    method getId () : int =
        begin
        id
        end
    

    method setId ((id_arg : int)) : unit =
        begin
        id <- id_arg
        end
    

    method getName () : string =
        begin
        name
        end
    

    method setName ((name_arg : string)) : unit =
        begin
        name <- name_arg
        end
    

    method getQualifyTime () : int =
        begin
        qualifyTime
        end
    

    method setQualifyTime ((qualifyTime_arg : int)) : unit =
        begin
        qualifyTime <- qualifyTime_arg
        end
    

    method getWorstContinuePosition () : int =
        begin
        worstContinuePosition
        end
    

    method setWorstContinuePosition ((worstContinuePosition_arg : int)) : unit =
        begin
        worstContinuePosition <- worstContinuePosition_arg
        end
    

    method getTotalLaps () : int =
        begin
        totalLaps
        end
    

    method setTotalLaps ((totalLaps_arg : int)) : unit =
        begin
        totalLaps <- totalLaps_arg
        end
    

    method getForegroundBasicColor () : BasicColor.basicColor =
        begin
        (foregroundBasicColor :> BasicColor.basicColor)
        end
    

    method setForegroundBasicColor : 'any1. 'any1 -> unit = fun (foregroundBasicColor_arg) ->
        let foregroundBasicColor_arg = Obj.repr foregroundBasicColor_arg in
        begin
        foregroundBasicColor <- (Obj.magic foregroundBasicColor_arg)
        end [@@warning "-20"]
    

    method getBackgroundBasicColor () : BasicColor.basicColor =
        begin
        (backgroundBasicColor :> BasicColor.basicColor)
        end
    

    method setBackgroundBasicColor : 'any1. 'any1 -> unit = fun (backgroundBasicColor_arg) ->
        let backgroundBasicColor_arg = Obj.repr backgroundBasicColor_arg in
        begin
        backgroundBasicColor <- (Obj.magic backgroundBasicColor_arg)
        end [@@warning "-20"]
    

    method getRaceTrackFrictionProperties () : RaceTrackFrictionProperties.raceTrackFrictionProperties =
        begin
        (raceTrackFrictionProperties :> RaceTrackFrictionProperties.raceTrackFrictionProperties)
        end
    

    method setRaceTrackFrictionProperties : 'any1. 'any1 -> unit = fun (raceTrackFrictionProperties_arg) ->
        let raceTrackFrictionProperties_arg = Obj.repr raceTrackFrictionProperties_arg in
        begin
        raceTrackFrictionProperties <- (Obj.magic raceTrackFrictionProperties_arg)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        id <- id_arg;
        name <- name_arg;
        raceTrackFrictionProperties <- raceTrackFrictionProperties_arg;
        backgroundBasicColor <- backgroundBasicColor_arg;
        foregroundBasicColor <- foregroundBasicColor_arg;
        qualifyTime <- qualifyTime_arg;
        worstContinuePosition <- worstContinuePosition_arg;
        totalLaps <- totalLaps_arg
      end
  end
let () = java_register_constructor "RaceTrackInfo" (fun arguments -> Obj.repr (new raceTrackInfo (Obj.obj arguments)))


