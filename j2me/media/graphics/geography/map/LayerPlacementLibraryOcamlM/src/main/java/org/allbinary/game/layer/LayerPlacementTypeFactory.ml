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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.direction.DirectionFactory *)

class layerPlacementTypeFactory () =
  object
    val mutable mAP : LayerPlacementType.layerPlacementType = (Obj.magic 0)
    method mAP = mAP
    method set_mAP value' = mAP <- value'
    val mutable lEFT : LayerPlacementType.layerPlacementType = (Obj.magic 0)
    method lEFT = lEFT
    method set_lEFT value' = lEFT <- value'
    val mutable dOWN : LayerPlacementType.layerPlacementType = (Obj.magic 0)
    method dOWN = dOWN
    method set_dOWN value' = dOWN <- value'
    val mutable uP : LayerPlacementType.layerPlacementType = (Obj.magic 0)
    method uP = uP
    method set_uP value' = uP <- value'
    val mutable rIGHT : LayerPlacementType.layerPlacementType = (Obj.magic 0)
    method rIGHT = rIGHT
    method set_rIGHT value' = rIGHT <- value'

    initializer
      begin
        mAP <- ((new LayerPlacementType.layerPlacementType (2147483647)) :> LayerPlacementType.layerPlacementType);
        lEFT <- ((new LayerPlacementType.layerPlacementType (((DirectionFactory.getInstance ())#lEFT#getValue ()))) :> LayerPlacementType.layerPlacementType);
        dOWN <- ((new LayerPlacementType.layerPlacementType (((DirectionFactory.getInstance ())#dOWN#getValue ()))) :> LayerPlacementType.layerPlacementType);
        uP <- ((new LayerPlacementType.layerPlacementType (((DirectionFactory.getInstance ())#uP#getValue ()))) :> LayerPlacementType.layerPlacementType);
        rIGHT <- ((new LayerPlacementType.layerPlacementType (((DirectionFactory.getInstance ())#rIGHT#getValue ()))) :> LayerPlacementType.layerPlacementType);
        ()
      end
  end
let () = java_register_constructor "LayerPlacementTypeFactory" (fun arguments -> Obj.repr (new layerPlacementTypeFactory (Obj.obj arguments)))

let instance = (new layerPlacementTypeFactory ())
let get_instance () = instance
let () = java_register_static "LayerPlacementTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LayerPlacementTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


