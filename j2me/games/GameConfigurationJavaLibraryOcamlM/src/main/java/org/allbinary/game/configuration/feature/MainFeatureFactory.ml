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

class mainFeatureFactory () =
  object
    val mutable fULL_SCREEN : Feature.feature = (Obj.magic 0)
    method fULL_SCREEN = fULL_SCREEN
    method set_fULL_SCREEN value' = fULL_SCREEN <- value'
    val mutable tITLE_BAR : Feature.feature = (Obj.magic 0)
    method tITLE_BAR = tITLE_BAR
    method set_tITLE_BAR value' = tITLE_BAR <- value'
    val mutable sTATIC : Feature.feature = (Obj.magic 0)
    method sTATIC = sTATIC
    method set_sTATIC value' = sTATIC <- value'
    val mutable lOAD_ONDEMAND : Feature.feature = (Obj.magic 0)
    method lOAD_ONDEMAND = lOAD_ONDEMAND
    method set_lOAD_ONDEMAND value' = lOAD_ONDEMAND <- value'
    val mutable lOAD_ALL : Feature.feature = (Obj.magic 0)
    method lOAD_ALL = lOAD_ALL
    method set_lOAD_ALL value' = lOAD_ALL <- value'

    initializer
      begin
        fULL_SCREEN <- ((new Feature.feature ("Full Screen")) :> Feature.feature);
        tITLE_BAR <- ((new Feature.feature ("Title Bar")) :> Feature.feature);
        sTATIC <- ((new Feature.feature ("Static Dependent Feature")) :> Feature.feature);
        lOAD_ONDEMAND <- ((new Feature.feature ("Load OnDemand")) :> Feature.feature);
        lOAD_ALL <- ((new Feature.feature ("Load All")) :> Feature.feature);
        ()
      end
  end
let () = java_register_constructor "MainFeatureFactory" (fun arguments -> Obj.repr (new mainFeatureFactory (Obj.obj arguments)))

let instance = (new mainFeatureFactory ())
let get_instance () = instance
let () = java_register_static "MainFeatureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MainFeatureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


