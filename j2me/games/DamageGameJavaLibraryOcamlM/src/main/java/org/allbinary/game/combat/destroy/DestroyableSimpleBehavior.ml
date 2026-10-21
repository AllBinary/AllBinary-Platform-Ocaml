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
(* package org.allbinary.game.combat.destroy *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.CollidableCompositeLayer *)

class destroyableSimpleBehavior ((ownerLayer_arg : CollidableCompositeLayer.collidableCompositeLayer)) =
  object (self)
    inherit DestroyableBaseBehavior.destroyableBaseBehavior ()
    val mutable ownerLayer : CollidableCompositeLayer.collidableCompositeLayer = (Obj.magic 0)
    method ownerLayer = ownerLayer
    method set_ownerLayer value' = ownerLayer <- value'
    val mutable destroyed : bool = false
    method destroyed = destroyed
    method set_destroyed value' = destroyed <- value'
    
    

    method isDestroyed () : bool =
        begin
        destroyed
        end [@@warning "-7"]
    

    method setDestroyed ((destroyed_arg : bool)) : unit =
        begin
        destroyed <- destroyed_arg;
        if (self#isDestroyed ()) then begin
            ignore ((DestroyedLayerProcessor.getInstance ())#add (ownerLayer))
        end
        end [@@warning "-7"]

    initializer
      begin
        ();
        destroyed <- false;
        ();
        ownerLayer <- ownerLayer_arg
      end
  end
let () = java_register_constructor "DestroyableSimpleBehavior" (fun arguments -> Obj.repr (new destroyableSimpleBehavior (Obj.obj arguments)))


