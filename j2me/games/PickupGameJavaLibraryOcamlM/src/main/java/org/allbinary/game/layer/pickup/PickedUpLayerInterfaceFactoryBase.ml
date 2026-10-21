(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.pickup *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.layer.AllBinaryLayer *)

class pickedUpLayerInterfaceFactoryBase () =
  object
    

    method getIconLayer () : AllBinaryLayer.allBinaryLayer =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getAnimationInterface : 'return. unit -> 'return = fun () ->
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getPickedUpLayerType () : PickedUpLayerType.pickedUpLayerType =
        begin
        raise (Failure ("RuntimeException"))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PickedUpLayerInterfaceFactoryBase" (fun arguments -> Obj.repr (new pickedUpLayerInterfaceFactoryBase (Obj.obj arguments)))

let nULL_PICKED_UP_LAYER_FACTORY_BASE = (new pickedUpLayerInterfaceFactoryBase ())
let get_nULL_PICKED_UP_LAYER_FACTORY_BASE () = nULL_PICKED_UP_LAYER_FACTORY_BASE
let () = java_register_static "PickedUpLayerInterfaceFactoryBase.get_nULL_PICKED_UP_LAYER_FACTORY_BASE" (fun _ -> Obj.repr (get_nULL_PICKED_UP_LAYER_FACTORY_BASE ()))


