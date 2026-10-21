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
(* package org.allbinary.game.collision.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.collision.CollidableInterfaceCompositeInterface *)
(* import org.allbinary.game.layer.CollidableCompositeLayer *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.layer.LayerProcessor *)

class collidableInterfaceLayerProcessor () =
  object (self)
    inherit LayerProcessor.layerProcessor ((new CollidableInterfaceLayerManager.collidableInterfaceLayerManager ()))
    
    

    method processAt : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (_allBinaryLayerManager, layerInterface, (index : int)) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        let collidableInterfaceCompositeInterface : CollidableInterfaceCompositeInterface.collidableInterfaceCompositeInterface ref = ref (((Obj.magic (Obj.magic layerInterface)) :> CollidableInterfaceCompositeInterface.collidableInterfaceCompositeInterface)) in ();
        if ((!collidableInterfaceCompositeInterface#getCollidableInferface ())#isCollidable ((Obj.magic !collidableInterfaceCompositeInterface))) then begin
            ignore ((AllBinaryCollisionManager.getInstance ())#process ((self#getLayerManager ()), !collidableInterfaceCompositeInterface, index))
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
let () = java_register_constructor "CollidableInterfaceLayerProcessor" (fun arguments -> Obj.repr (new collidableInterfaceLayerProcessor (Obj.obj arguments)))


