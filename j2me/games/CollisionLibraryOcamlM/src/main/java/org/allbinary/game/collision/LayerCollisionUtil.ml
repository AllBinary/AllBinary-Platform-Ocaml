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
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureFactory *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureUtil *)
(* import org.allbinary.layer.AllBinaryLayer *)

class layerCollisionUtil () =
  object
    val mutable collisionProcessor : CollisionProcessor.collisionProcessor = (Obj.magic 0)
    method collisionProcessor = collisionProcessor
    method set_collisionProcessor value' = collisionProcessor <- value'
    
    

    method isCollision : 'any1 'any2. 'any1 * 'any2 -> bool = fun (myLayer, myLayer2) ->
        let myLayer = Obj.repr myLayer in
        let myLayer2 = Obj.repr myLayer2 in
        begin
        (collisionProcessor#isCollision ((Obj.magic myLayer), (Obj.magic myLayer2)))
        end [@@warning "-20"]

    initializer
      begin
        collisionProcessor <- ((Obj.magic 0) :> CollisionProcessor.collisionProcessor);
        ();
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let gameFeatureFactory : GameFeatureFactory.gameFeatureFactory ref = ref (((GameFeatureFactory.getInstance ()) :> GameFeatureFactory.gameFeatureFactory)) in ();
        if (((Obj.magic (java_call_static "OpenGLFeatureUtil.getInstance" (Obj.repr ())))#isAnyThreed ()) && (not (!features#isFeature (!gameFeatureFactory#cOLLISIONS_FORCED_TWO_DIMENSIONAL)))) then begin
            collisionProcessor <- (new CollisionThreedProcessor.collisionThreedProcessor ())
        end else begin
            collisionProcessor <- (new Collision2DProcessor.collision2DProcessor ())
        end
      end
  end
let () = java_register_constructor "LayerCollisionUtil" (fun arguments -> Obj.repr (new layerCollisionUtil (Obj.obj arguments)))

let instance = (new layerCollisionUtil ())
let get_instance () = instance
let () = java_register_static "LayerCollisionUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LayerCollisionUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


