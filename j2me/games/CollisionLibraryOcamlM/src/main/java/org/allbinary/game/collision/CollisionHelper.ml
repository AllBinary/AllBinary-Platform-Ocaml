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
(* package org.allbinary.game.collision *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.CollidableCompositeLayer *)
(* import org.allbinary.layer.AllBinaryLayer *)

class collisionHelper ((sourceLayerInterface_arg : AllBinaryLayer.allBinaryLayer)) =
  object
    val mutable sourceLayerInterface : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method sourceLayerInterface = sourceLayerInterface
    method set_sourceLayerInterface value' = sourceLayerInterface <- value'
    
    

    method isCollidable : 'any1. 'any1 -> bool = fun (_layerInterface) ->
        begin
        true
        end [@@warning "-20"]
    

    method getOwnerLayerInterface () : AllBinaryLayer.allBinaryLayer =
        begin
        (sourceLayerInterface :> AllBinaryLayer.allBinaryLayer)
        end
    

    method setOwnerLayerInterface : 'any1. 'any1 -> unit = fun (sourceLayerInterface_arg) ->
        let sourceLayerInterface_arg = Obj.repr sourceLayerInterface_arg in
        begin
        sourceLayerInterface <- (Obj.magic sourceLayerInterface_arg)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        sourceLayerInterface <- sourceLayerInterface_arg
      end
  end
let () = java_register_constructor "CollisionHelper" (fun arguments -> Obj.repr (new collisionHelper (Obj.obj arguments)))


