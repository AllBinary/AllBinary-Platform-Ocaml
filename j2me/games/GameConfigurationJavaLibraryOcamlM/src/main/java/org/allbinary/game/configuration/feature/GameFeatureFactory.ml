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

let instance_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_instance : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !instance_cell with Lazy.Undefined -> java_null)
let set_instance value' = instance_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "GameFeatureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
let () = java_register_static "GameFeatureFactory.set_instance" (fun value' -> set_instance value'; Obj.repr ())
class gameFeatureFactory () =
  object
    val mutable sOUND : Obj.t = Obj.repr 0
    method sOUND : 'r. 'r = Obj.magic sOUND
    method set_sOUND : 'v. 'v -> unit = fun value' -> sOUND <- Obj.repr value'
    val mutable mUSIC : Obj.t = Obj.repr 0
    method mUSIC : 'r. 'r = Obj.magic mUSIC
    method set_mUSIC : 'v. 'v -> unit = fun value' -> mUSIC <- Obj.repr value'
    val mutable sCREEN_SHAKE : Obj.t = Obj.repr 0
    method sCREEN_SHAKE : 'r. 'r = Obj.magic sCREEN_SHAKE
    method set_sCREEN_SHAKE : 'v. 'v -> unit = fun value' -> sCREEN_SHAKE <- Obj.repr value'
    val mutable pOST_IMAGE_LOADING_MODIFICATION : Obj.t = Obj.repr 0
    method pOST_IMAGE_LOADING_MODIFICATION : 'r. 'r = Obj.magic pOST_IMAGE_LOADING_MODIFICATION
    method set_pOST_IMAGE_LOADING_MODIFICATION : 'v. 'v -> unit = fun value' -> pOST_IMAGE_LOADING_MODIFICATION <- Obj.repr value'
    val mutable hEALTH_BARS : Obj.t = Obj.repr 0
    method hEALTH_BARS : 'r. 'r = Obj.magic hEALTH_BARS
    method set_hEALTH_BARS : 'v. 'v -> unit = fun value' -> hEALTH_BARS <- Obj.repr value'
    val mutable dAMAGE_FLOATERS : Obj.t = Obj.repr 0
    method dAMAGE_FLOATERS : 'r. 'r = Obj.magic dAMAGE_FLOATERS
    method set_dAMAGE_FLOATERS : 'v. 'v -> unit = fun value' -> dAMAGE_FLOATERS <- Obj.repr value'
    val mutable gAME_INPUT_LAYER_PROCESSOR : Obj.t = Obj.repr 0
    method gAME_INPUT_LAYER_PROCESSOR : 'r. 'r = Obj.magic gAME_INPUT_LAYER_PROCESSOR
    method set_gAME_INPUT_LAYER_PROCESSOR : 'v. 'v -> unit = fun value' -> gAME_INPUT_LAYER_PROCESSOR <- Obj.repr value'
    val mutable aRTIFICIAL_INTELLEGENCE_PROCESSOR : Obj.t = Obj.repr 0
    method aRTIFICIAL_INTELLEGENCE_PROCESSOR : 'r. 'r = Obj.magic aRTIFICIAL_INTELLEGENCE_PROCESSOR
    method set_aRTIFICIAL_INTELLEGENCE_PROCESSOR : 'v. 'v -> unit = fun value' -> aRTIFICIAL_INTELLEGENCE_PROCESSOR <- Obj.repr value'
    val mutable cOLLIDABLE_INTERFACE_LAYER_PROCESSOR : Obj.t = Obj.repr 0
    method cOLLIDABLE_INTERFACE_LAYER_PROCESSOR : 'r. 'r = Obj.magic cOLLIDABLE_INTERFACE_LAYER_PROCESSOR
    method set_cOLLIDABLE_INTERFACE_LAYER_PROCESSOR : 'v. 'v -> unit = fun value' -> cOLLIDABLE_INTERFACE_LAYER_PROCESSOR <- Obj.repr value'
    val mutable tICKABLE_LAYER_PROCESSOR : Obj.t = Obj.repr 0
    method tICKABLE_LAYER_PROCESSOR : 'r. 'r = Obj.magic tICKABLE_LAYER_PROCESSOR
    method set_tICKABLE_LAYER_PROCESSOR : 'v. 'v -> unit = fun value' -> tICKABLE_LAYER_PROCESSOR <- Obj.repr value'
    val mutable cHEATING : Obj.t = Obj.repr 0
    method cHEATING : 'r. 'r = Obj.magic cHEATING
    method set_cHEATING : 'v. 'v -> unit = fun value' -> cHEATING <- Obj.repr value'
    val mutable dROPPED_ITEMS : Obj.t = Obj.repr 0
    method dROPPED_ITEMS : 'r. 'r = Obj.magic dROPPED_ITEMS
    method set_dROPPED_ITEMS : 'v. 'v -> unit = fun value' -> dROPPED_ITEMS <- Obj.repr value'
    val mutable dROPPED_ITEMS_FROM_DEATH : Obj.t = Obj.repr 0
    method dROPPED_ITEMS_FROM_DEATH : 'r. 'r = Obj.magic dROPPED_ITEMS_FROM_DEATH
    method set_dROPPED_ITEMS_FROM_DEATH : 'v. 'v -> unit = fun value' -> dROPPED_ITEMS_FROM_DEATH <- Obj.repr value'
    val mutable tEST_DESTROYED_LAYER_PROCESSOR : Obj.t = Obj.repr 0
    method tEST_DESTROYED_LAYER_PROCESSOR : 'r. 'r = Obj.magic tEST_DESTROYED_LAYER_PROCESSOR
    method set_tEST_DESTROYED_LAYER_PROCESSOR : 'v. 'v -> unit = fun value' -> tEST_DESTROYED_LAYER_PROCESSOR <- Obj.repr value'
    val mutable cOLLISIONS_WITH_SOURCE : Obj.t = Obj.repr 0
    method cOLLISIONS_WITH_SOURCE : 'r. 'r = Obj.magic cOLLISIONS_WITH_SOURCE
    method set_cOLLISIONS_WITH_SOURCE : 'v. 'v -> unit = fun value' -> cOLLISIONS_WITH_SOURCE <- Obj.repr value'
    val mutable cOLLISIONS_FORCED_TWO_DIMENSIONAL : Obj.t = Obj.repr 0
    method cOLLISIONS_FORCED_TWO_DIMENSIONAL : 'r. 'r = Obj.magic cOLLISIONS_FORCED_TWO_DIMENSIONAL
    method set_cOLLISIONS_FORCED_TWO_DIMENSIONAL : 'v. 'v -> unit = fun value' -> cOLLISIONS_FORCED_TWO_DIMENSIONAL <- Obj.repr value'
    

    initializer
      begin
        sOUND <- (Obj.repr (Obj.obj (java_new "GameFeature" (Obj.repr ("Sound")))));
        mUSIC <- (Obj.repr (Obj.obj (java_new "GameFeature" (Obj.repr ("Music")))));
        sCREEN_SHAKE <- (Obj.repr (Obj.obj (java_new "Feature" (Obj.repr ("Screen Shake")))));
        pOST_IMAGE_LOADING_MODIFICATION <- (Obj.repr (Obj.obj (java_new "Feature" (Obj.repr ("Post Image Loading Modification (Scaling, Rotation, or Other)")))));
        hEALTH_BARS <- (Obj.repr (Obj.obj (java_new "GameFeature" (Obj.repr ("Health Bars")))));
        dAMAGE_FLOATERS <- (Obj.repr (Obj.obj (java_new "GameFeature" (Obj.repr ("Damage Floaters")))));
        gAME_INPUT_LAYER_PROCESSOR <- (Obj.repr (Obj.obj (java_new "GameFeature" (Obj.repr ("Game Input Layer Processor")))));
        aRTIFICIAL_INTELLEGENCE_PROCESSOR <- (Obj.repr (Obj.obj (java_new "GameFeature" (Obj.repr ("Artificial Intelligence Layer Processor")))));
        cOLLIDABLE_INTERFACE_LAYER_PROCESSOR <- (Obj.repr (Obj.obj (java_new "GameFeature" (Obj.repr ("Collidable Interface Layer Processor")))));
        tICKABLE_LAYER_PROCESSOR <- (Obj.repr (Obj.obj (java_new "GameFeature" (Obj.repr ("Tickable Layer Processor")))));
        cHEATING <- (Obj.repr (Obj.obj (java_new "GameFeature" (Obj.repr ("Cheating")))));
        dROPPED_ITEMS <- (Obj.repr (Obj.obj (java_new "GameFeature" (Obj.repr ("Drops")))));
        dROPPED_ITEMS_FROM_DEATH <- (Obj.repr (Obj.obj (java_new "GameFeature" (Obj.repr ("Drops from Dead")))));
        tEST_DESTROYED_LAYER_PROCESSOR <- (Obj.repr (Obj.obj (java_new "GameFeature" (Obj.repr ("Destroyed Layer Processor")))));
        cOLLISIONS_WITH_SOURCE <- (Obj.repr (Obj.obj (java_new "GameFeature" (Obj.repr ("Allow Collisions With Source")))));
        cOLLISIONS_FORCED_TWO_DIMENSIONAL <- (Obj.repr (Obj.obj (java_new "GameFeature" (Obj.repr ("Collisions Forced Two Dimensional")))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameFeatureFactory" (fun arguments -> Obj.repr (new gameFeatureFactory (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_instance ()))))
        end
let () = java_register_static "GameFeatureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = instance_cell := lazy (Obj.repr ((new gameFeatureFactory ())))


