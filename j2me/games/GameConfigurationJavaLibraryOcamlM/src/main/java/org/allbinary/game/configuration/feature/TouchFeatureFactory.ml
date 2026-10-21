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

class touchFeatureFactory () =
  object
    val mutable tOUCH_ENABLED : TouchFeature.touchFeature = (Obj.magic 0)
    method tOUCH_ENABLED = tOUCH_ENABLED
    method set_tOUCH_ENABLED value' = tOUCH_ENABLED <- value'
    val mutable sHOW_SCREEN_BUTTONS : TouchFeature.touchFeature = (Obj.magic 0)
    method sHOW_SCREEN_BUTTONS = sHOW_SCREEN_BUTTONS
    method set_sHOW_SCREEN_BUTTONS value' = sHOW_SCREEN_BUTTONS <- value'
    val mutable aUTO_HIDE_SHOW_SCREEN_BUTTONS : TouchFeature.touchFeature = (Obj.magic 0)
    method aUTO_HIDE_SHOW_SCREEN_BUTTONS = aUTO_HIDE_SHOW_SCREEN_BUTTONS
    method set_aUTO_HIDE_SHOW_SCREEN_BUTTONS value' = aUTO_HIDE_SHOW_SCREEN_BUTTONS <- value'
    val mutable hIDE_SCREEN_BUTTONS : TouchFeature.touchFeature = (Obj.magic 0)
    method hIDE_SCREEN_BUTTONS = hIDE_SCREEN_BUTTONS
    method set_hIDE_SCREEN_BUTTONS value' = hIDE_SCREEN_BUTTONS <- value'
    

    initializer
      begin
        tOUCH_ENABLED <- ((new TouchFeature.touchFeature ("Touch Enabled")) :> TouchFeature.touchFeature);
        sHOW_SCREEN_BUTTONS <- ((new TouchFeature.touchFeature ("Show")) :> TouchFeature.touchFeature);
        aUTO_HIDE_SHOW_SCREEN_BUTTONS <- ((new TouchFeature.touchFeature ("Auto Hide (One Level)")) :> TouchFeature.touchFeature);
        hIDE_SCREEN_BUTTONS <- ((new TouchFeature.touchFeature ("Hide")) :> TouchFeature.touchFeature);
        ();
        ()
      end
  end
let () = java_register_constructor "TouchFeatureFactory" (fun arguments -> Obj.repr (new touchFeatureFactory (Obj.obj arguments)))

let instance = (new touchFeatureFactory ())
let get_instance () = instance
let () = java_register_static "TouchFeatureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TouchFeatureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


