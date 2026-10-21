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
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.layer.LayerManager *)
(* import org.allbinary.layer.LayerProcessor *)

class optimizedAllBinaryCollisionLayerProcessorForCollidableLayer () =
  object (self)
    inherit LayerProcessor.layerProcessor ((new OptimizedAllBinaryCollisionLayerManager.optimizedAllBinaryCollisionLayerManager ()))
    
    

    method processAt : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (_allBinaryLayerManager, layerInterface, (startIndex : int)) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        let collidableInterfaceCompositeInterface : CollidableCompositeLayer.collidableCompositeLayer ref = ref (((Obj.magic (Obj.magic layerInterface)) :> CollidableCompositeLayer.collidableCompositeLayer)) in ();
        let collidableBase : CollidableBaseBehavior.collidableBaseBehavior ref = ref (((!collidableInterfaceCompositeInterface#getCollidableInferface ()) :> CollidableBaseBehavior.collidableBaseBehavior)) in ();
        if (!collidableBase#isCollidable (!collidableInterfaceCompositeInterface)) then begin
            let layerManager : Obj.t ref = ref ((Obj.repr (self#getLayerManager ()))) in ();
            let size : int ref = ref (((Obj.magic !layerManager)#getSize ())) in ();
            let collidableInterfaceCompositeInterface2 : CollidableCompositeLayer.collidableCompositeLayer ref = ref (((Obj.magic 0) :> CollidableCompositeLayer.collidableCompositeLayer)) in ();
            let collidableBase2 : CollidableBaseBehavior.collidableBaseBehavior ref = ref (((Obj.magic 0) :> CollidableBaseBehavior.collidableBaseBehavior)) in ();
            for index = (startIndex + 1) to !size - 1 do
                collidableInterfaceCompositeInterface2 := (Obj.magic ((Obj.magic !layerManager)#getLayerAt (index)));
                collidableBase2 := (!collidableInterfaceCompositeInterface2#getCollidableInferface ());
                if ((!collidableBase2#isCollidable (!collidableInterfaceCompositeInterface)) && (!collidableBase#isCollision (!collidableInterfaceCompositeInterface, !collidableInterfaceCompositeInterface2))) then begin
                    ignore (!collidableBase#collide (!collidableInterfaceCompositeInterface, !collidableInterfaceCompositeInterface2));
                    ignore (!collidableBase2#collide (!collidableInterfaceCompositeInterface2, !collidableInterfaceCompositeInterface))
                end
            done
        end
        end [@@warning "-7-20"]
    

    method isProcessorLayer : 'any1. 'any1 -> bool = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        try
        begin
        if ((Obj.magic layerInterface)#implmentsCollidableInterface ()) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "OptimizedAllBinaryCollisionLayerProcessorForCollidableLayer" (fun arguments -> Obj.repr (new optimizedAllBinaryCollisionLayerProcessorForCollidableLayer (Obj.obj arguments)))


