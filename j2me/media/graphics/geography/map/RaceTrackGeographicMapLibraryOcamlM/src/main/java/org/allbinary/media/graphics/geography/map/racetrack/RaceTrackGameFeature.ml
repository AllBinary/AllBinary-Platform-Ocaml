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
(* import org.allbinary.game.configuration.feature.GameFeature *)

class raceTrackGameFeature ((name : string)) =
  object
    inherit GameFeature.gameFeature (name)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "RaceTrackGameFeature" (fun arguments -> Obj.repr (new raceTrackGameFeature (Obj.obj arguments)))

let mINI_MAP : GameFeature.gameFeature = ((new raceTrackGameFeature ("Mini Map")) :> GameFeature.gameFeature)
let get_mINI_MAP () = mINI_MAP
let () = java_register_static "RaceTrackGameFeature.get_mINI_MAP" (fun _ -> Obj.repr (get_mINI_MAP ()))

let aUTO_FINISH_AI : GameFeature.gameFeature = ((new raceTrackGameFeature ("Auto Finish AI")) :> GameFeature.gameFeature)
let get_aUTO_FINISH_AI () = aUTO_FINISH_AI
let () = java_register_static "RaceTrackGameFeature.get_aUTO_FINISH_AI" (fun _ -> Obj.repr (get_aUTO_FINISH_AI ()))


