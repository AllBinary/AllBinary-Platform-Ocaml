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
(* package org.allbinary.game.configuration.feature *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class gameFeatureFactory () =
  object
    val mutable sOUND : GameFeature.gameFeature = (Obj.magic 0)
    method sOUND = sOUND
    method set_sOUND value' = sOUND <- value'
    val mutable mUSIC : GameFeature.gameFeature = (Obj.magic 0)
    method mUSIC = mUSIC
    method set_mUSIC value' = mUSIC <- value'
    val mutable sCREEN_SHAKE : Feature.feature = (Obj.magic 0)
    method sCREEN_SHAKE = sCREEN_SHAKE
    method set_sCREEN_SHAKE value' = sCREEN_SHAKE <- value'
    val mutable pOST_IMAGE_LOADING_MODIFICATION : Feature.feature = (Obj.magic 0)
    method pOST_IMAGE_LOADING_MODIFICATION = pOST_IMAGE_LOADING_MODIFICATION
    method set_pOST_IMAGE_LOADING_MODIFICATION value' = pOST_IMAGE_LOADING_MODIFICATION <- value'
    val mutable hEALTH_BARS : GameFeature.gameFeature = (Obj.magic 0)
    method hEALTH_BARS = hEALTH_BARS
    method set_hEALTH_BARS value' = hEALTH_BARS <- value'
    val mutable dAMAGE_FLOATERS : GameFeature.gameFeature = (Obj.magic 0)
    method dAMAGE_FLOATERS = dAMAGE_FLOATERS
    method set_dAMAGE_FLOATERS value' = dAMAGE_FLOATERS <- value'
    val mutable gAME_INPUT_LAYER_PROCESSOR : GameFeature.gameFeature = (Obj.magic 0)
    method gAME_INPUT_LAYER_PROCESSOR = gAME_INPUT_LAYER_PROCESSOR
    method set_gAME_INPUT_LAYER_PROCESSOR value' = gAME_INPUT_LAYER_PROCESSOR <- value'
    val mutable aRTIFICIAL_INTELLEGENCE_PROCESSOR : GameFeature.gameFeature = (Obj.magic 0)
    method aRTIFICIAL_INTELLEGENCE_PROCESSOR = aRTIFICIAL_INTELLEGENCE_PROCESSOR
    method set_aRTIFICIAL_INTELLEGENCE_PROCESSOR value' = aRTIFICIAL_INTELLEGENCE_PROCESSOR <- value'
    val mutable cOLLIDABLE_INTERFACE_LAYER_PROCESSOR : GameFeature.gameFeature = (Obj.magic 0)
    method cOLLIDABLE_INTERFACE_LAYER_PROCESSOR = cOLLIDABLE_INTERFACE_LAYER_PROCESSOR
    method set_cOLLIDABLE_INTERFACE_LAYER_PROCESSOR value' = cOLLIDABLE_INTERFACE_LAYER_PROCESSOR <- value'
    val mutable tICKABLE_LAYER_PROCESSOR : GameFeature.gameFeature = (Obj.magic 0)
    method tICKABLE_LAYER_PROCESSOR = tICKABLE_LAYER_PROCESSOR
    method set_tICKABLE_LAYER_PROCESSOR value' = tICKABLE_LAYER_PROCESSOR <- value'
    val mutable cHEATING : GameFeature.gameFeature = (Obj.magic 0)
    method cHEATING = cHEATING
    method set_cHEATING value' = cHEATING <- value'
    val mutable dROPPED_ITEMS : GameFeature.gameFeature = (Obj.magic 0)
    method dROPPED_ITEMS = dROPPED_ITEMS
    method set_dROPPED_ITEMS value' = dROPPED_ITEMS <- value'
    val mutable dROPPED_ITEMS_FROM_DEATH : GameFeature.gameFeature = (Obj.magic 0)
    method dROPPED_ITEMS_FROM_DEATH = dROPPED_ITEMS_FROM_DEATH
    method set_dROPPED_ITEMS_FROM_DEATH value' = dROPPED_ITEMS_FROM_DEATH <- value'
    val mutable tEST_DESTROYED_LAYER_PROCESSOR : GameFeature.gameFeature = (Obj.magic 0)
    method tEST_DESTROYED_LAYER_PROCESSOR = tEST_DESTROYED_LAYER_PROCESSOR
    method set_tEST_DESTROYED_LAYER_PROCESSOR value' = tEST_DESTROYED_LAYER_PROCESSOR <- value'
    val mutable cOLLISIONS_WITH_SOURCE : GameFeature.gameFeature = (Obj.magic 0)
    method cOLLISIONS_WITH_SOURCE = cOLLISIONS_WITH_SOURCE
    method set_cOLLISIONS_WITH_SOURCE value' = cOLLISIONS_WITH_SOURCE <- value'
    val mutable cOLLISIONS_FORCED_TWO_DIMENSIONAL : GameFeature.gameFeature = (Obj.magic 0)
    method cOLLISIONS_FORCED_TWO_DIMENSIONAL = cOLLISIONS_FORCED_TWO_DIMENSIONAL
    method set_cOLLISIONS_FORCED_TWO_DIMENSIONAL value' = cOLLISIONS_FORCED_TWO_DIMENSIONAL <- value'
    

    initializer
      begin
        sOUND <- ((new GameFeature.gameFeature ("Sound")) :> GameFeature.gameFeature);
        mUSIC <- ((new GameFeature.gameFeature ("Music")) :> GameFeature.gameFeature);
        sCREEN_SHAKE <- ((new Feature.feature ("Screen Shake")) :> Feature.feature);
        pOST_IMAGE_LOADING_MODIFICATION <- ((new Feature.feature ("Post Image Loading Modification (Scaling, Rotation, or Other)")) :> Feature.feature);
        hEALTH_BARS <- ((new GameFeature.gameFeature ("Health Bars")) :> GameFeature.gameFeature);
        dAMAGE_FLOATERS <- ((new GameFeature.gameFeature ("Damage Floaters")) :> GameFeature.gameFeature);
        gAME_INPUT_LAYER_PROCESSOR <- ((new GameFeature.gameFeature ("Game Input Layer Processor")) :> GameFeature.gameFeature);
        aRTIFICIAL_INTELLEGENCE_PROCESSOR <- ((new GameFeature.gameFeature ("Artificial Intelligence Layer Processor")) :> GameFeature.gameFeature);
        cOLLIDABLE_INTERFACE_LAYER_PROCESSOR <- ((new GameFeature.gameFeature ("Collidable Interface Layer Processor")) :> GameFeature.gameFeature);
        tICKABLE_LAYER_PROCESSOR <- ((new GameFeature.gameFeature ("Tickable Layer Processor")) :> GameFeature.gameFeature);
        cHEATING <- ((new GameFeature.gameFeature ("Cheating")) :> GameFeature.gameFeature);
        dROPPED_ITEMS <- ((new GameFeature.gameFeature ("Drops")) :> GameFeature.gameFeature);
        dROPPED_ITEMS_FROM_DEATH <- ((new GameFeature.gameFeature ("Drops from Dead")) :> GameFeature.gameFeature);
        tEST_DESTROYED_LAYER_PROCESSOR <- ((new GameFeature.gameFeature ("Destroyed Layer Processor")) :> GameFeature.gameFeature);
        cOLLISIONS_WITH_SOURCE <- ((new GameFeature.gameFeature ("Allow Collisions With Source")) :> GameFeature.gameFeature);
        cOLLISIONS_FORCED_TWO_DIMENSIONAL <- ((new GameFeature.gameFeature ("Collisions Forced Two Dimensional")) :> GameFeature.gameFeature);
        ();
        ()
      end
  end
let () = java_register_constructor "GameFeatureFactory" (fun arguments -> Obj.repr (new gameFeatureFactory (Obj.obj arguments)))

let instance = (new gameFeatureFactory ())
let get_instance () = instance
let () = java_register_static "GameFeatureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameFeatureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


