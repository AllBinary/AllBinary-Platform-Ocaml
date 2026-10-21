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
(* package org.allbinary.game.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureChoiceGroups *)
(* import org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups *)
(* import org.allbinary.game.configuration.feature.SensorFeatureFactory *)
(* import org.allbinary.game.configuration.feature.TouchFeatureFactory *)
(* import org.allbinary.init.Init *)
(* import org.allbinary.input.gyro.OrientationData *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class inGameFeatures () =
  object (self)
    inherit Init.init ()
    

    method init () : unit =
        begin
        let lABEL : string ref = ref ("Screen Buttons") in ();
        let orientationData : OrientationData.orientationData ref = ref (((OrientationData.getInstance ()) :> OrientationData.orientationData)) in ();
        let exclusiveOrientationSensorVector : BasicArrayList.basicArrayList ref = ref (((Obj.magic (((GameFeatureChoiceGroups.getExclusiveInstance ())#get ())#get ((Obj.magic !orientationData#oRIENTATION_SENSOR_INPUT)))) :> BasicArrayList.basicArrayList)) in ();
        let inGameFeatureChoiceGroups : InGameFeatureChoiceGroups.inGameFeatureChoiceGroups ref = ref (((InGameFeatureChoiceGroups.getExclusiveInstance ()) :> InGameFeatureChoiceGroups.inGameFeatureChoiceGroups)) in ();
        if (!exclusiveOrientationSensorVector != (Obj.magic 0)) then begin
            let inGameExclusiveOrientationSensorVectorCanBeNull : Obj.t ref = ref ((Obj.repr ((!inGameFeatureChoiceGroups#get ())#get ((Obj.magic !orientationData#oRIENTATION_SENSOR_INPUT))))) in ();
            if (!inGameExclusiveOrientationSensorVectorCanBeNull == (Obj.magic 0)) then begin
                (self#addToInGameMenu ())
            end else begin
                let inGameExclusiveOrientationSensorVector : BasicArrayList.basicArrayList ref = ref (((Obj.magic !inGameExclusiveOrientationSensorVectorCanBeNull) :> BasicArrayList.basicArrayList)) in ();
                if ((!inGameExclusiveOrientationSensorVector#size ()) = 0) then begin
                    (self#addToInGameMenu ())
                end
            end
        end;
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        if (((!features#isFeature ((TouchFeatureFactory.getInstance ())#sHOW_SCREEN_BUTTONS)) || (!features#isFeature ((TouchFeatureFactory.getInstance ())#aUTO_HIDE_SHOW_SCREEN_BUTTONS))) || (!features#isFeature ((TouchFeatureFactory.getInstance ())#hIDE_SCREEN_BUTTONS))) then begin
            let exclusiveScreenButtonsVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let touchFeatureFactory : TouchFeatureFactory.touchFeatureFactory ref = ref (((TouchFeatureFactory.getInstance ()) :> TouchFeatureFactory.touchFeatureFactory)) in ();
            ignore (!exclusiveScreenButtonsVector#add (!touchFeatureFactory#aUTO_HIDE_SHOW_SCREEN_BUTTONS));
            ignore (!exclusiveScreenButtonsVector#add (!touchFeatureFactory#sHOW_SCREEN_BUTTONS));
            ignore (!exclusiveScreenButtonsVector#add (!touchFeatureFactory#hIDE_SCREEN_BUTTONS));
            ignore (!inGameFeatureChoiceGroups#add (!lABEL, !exclusiveScreenButtonsVector))
        end
        end [@@warning "-7"]
    

    method addToInGameMenu () : unit =
        begin
        let orientationData : OrientationData.orientationData ref = ref (((OrientationData.getInstance ()) :> OrientationData.orientationData)) in ();
        let inGameExclusiveOrientationSensorVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!inGameExclusiveOrientationSensorVector#add ((SensorFeatureFactory.getInstance ())#oRIENTATION_SENSORS));
        ignore (!inGameExclusiveOrientationSensorVector#add ((SensorFeatureFactory.getInstance ())#nO_ORIENTATION));
        ignore ((InGameFeatureChoiceGroups.getExclusiveInstance ())#add (!orientationData#oRIENTATION_SENSOR_INPUT, !inGameExclusiveOrientationSensorVector))
        end [@@warning "-7"]
    

    method isAny () : bool =
        try
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let touchFeatureFactory : TouchFeatureFactory.touchFeatureFactory ref = ref (((TouchFeatureFactory.getInstance ()) :> TouchFeatureFactory.touchFeatureFactory)) in ();
        if (((!features#isFeature (!touchFeatureFactory#sHOW_SCREEN_BUTTONS)) || (!features#isFeature (!touchFeatureFactory#aUTO_HIDE_SHOW_SCREEN_BUTTONS))) || (!features#isFeature (!touchFeatureFactory#hIDE_SCREEN_BUTTONS))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        let exclusiveOrientationSensorVector : BasicArrayList.basicArrayList ref = ref (((Obj.magic (((GameFeatureChoiceGroups.getExclusiveInstance ())#get ())#get ((Obj.magic (OrientationData.getInstance ())#oRIENTATION_SENSOR_INPUT)))) :> BasicArrayList.basicArrayList)) in ();
        if (!exclusiveOrientationSensorVector != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "InGameFeatures" (fun arguments -> Obj.repr (new inGameFeatures (Obj.obj arguments)))


