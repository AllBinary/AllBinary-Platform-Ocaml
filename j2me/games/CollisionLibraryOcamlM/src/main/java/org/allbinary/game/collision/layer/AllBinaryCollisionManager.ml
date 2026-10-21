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
(* import org.allbinary.game.collision.CollidableBaseBehavior *)
(* import org.allbinary.game.collision.CollidableInterfaceCompositeInterface *)
(* import org.allbinary.game.layer.CollidableCompositeLayer *)
(* import org.allbinary.layer.LayerManager *)

class allBinaryCollisionManager () =
  object (self)
    
    

    method process : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (layerManager, collidableInterfaceCompositeInterface, (startIndex : int)) ->
        let layerManager = Obj.repr layerManager in
        let collidableInterfaceCompositeInterface = Obj.repr collidableInterfaceCompositeInterface in
        begin
        let size : int ref = ref (((Obj.magic layerManager)#getSize ())) in ();
        for index = (startIndex + 1) to !size - 1 do
            let collidableInterfaceCompositeInterface2 : CollidableInterfaceCompositeInterface.collidableInterfaceCompositeInterface ref = ref (((Obj.magic ((Obj.magic layerManager)#getLayerAt (index))) :> CollidableInterfaceCompositeInterface.collidableInterfaceCompositeInterface)) in ();
            (self#collide ((Obj.magic layerManager), (Obj.magic collidableInterfaceCompositeInterface), !collidableInterfaceCompositeInterface2))
        done
        end [@@warning "-20"]
    

    method collide : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (_layerManager, collidableInterfaceCompositeInterface, collidableInterfaceCompositeInterface2) ->
        let collidableInterfaceCompositeInterface = Obj.repr collidableInterfaceCompositeInterface in
        let collidableInterfaceCompositeInterface2 = Obj.repr collidableInterfaceCompositeInterface2 in
        begin
        let collidableBase2 : CollidableBaseBehavior.collidableBaseBehavior ref = ref ((((Obj.magic collidableInterfaceCompositeInterface2)#getCollidableInferface ()) :> CollidableBaseBehavior.collidableBaseBehavior)) in ();
        let collidableBase : CollidableBaseBehavior.collidableBaseBehavior ref = ref ((((Obj.magic collidableInterfaceCompositeInterface)#getCollidableInferface ()) :> CollidableBaseBehavior.collidableBaseBehavior)) in ();
        if (!collidableBase2#isCollidable ((Obj.magic (Obj.magic collidableInterfaceCompositeInterface)))) then begin
            if (!collidableBase#isCollisionInterface ((Obj.magic (Obj.magic collidableInterfaceCompositeInterface)), (Obj.magic collidableInterfaceCompositeInterface2))) then begin
                ignore (!collidableBase#collideInterface ((Obj.magic (Obj.magic collidableInterfaceCompositeInterface)), (Obj.magic collidableInterfaceCompositeInterface2)));
                ignore (!collidableBase2#collideInterface ((Obj.magic (Obj.magic collidableInterfaceCompositeInterface)), (Obj.magic collidableInterfaceCompositeInterface)))
            end
        end
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AllBinaryCollisionManager" (fun arguments -> Obj.repr (new allBinaryCollisionManager (Obj.obj arguments)))

let allBinaryCollisionManager = ref ((new allBinaryCollisionManager ()))
let get_allBinaryCollisionManager () = !allBinaryCollisionManager
let set_allBinaryCollisionManager value' = allBinaryCollisionManager := value'
let () = java_register_static "AllBinaryCollisionManager.get_allBinaryCollisionManager" (fun _ -> Obj.repr (get_allBinaryCollisionManager ()))

let getInstance () =
        begin
        !allBinaryCollisionManager
        end
let () = java_register_static "AllBinaryCollisionManager.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


