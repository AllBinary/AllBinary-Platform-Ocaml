(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
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
(* import org.allbinary.game.collision.CollisionType *)
(* import org.allbinary.game.collision.CollisionTypeFactory *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior *)

class collidableRTSBehavior ((collidable : bool)) =
  object (self)
    inherit CollidableDestroyableDamageableBehavior.collidableDestroyableDamageableBehavior (collidable) as super
    
    

    method isCollision : 'any1 'any2. 'any1 * 'any2 -> bool = fun (ownerLayer, collidableInterfaceCompositeInterface) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collidableInterfaceCompositeInterface = Obj.repr collidableInterfaceCompositeInterface in
        try
        begin
        let collisionTypeFactory : CollisionTypeFactory.collisionTypeFactory ref = ref (((CollisionTypeFactory.getInstance ()) :> CollisionTypeFactory.collisionTypeFactory)) in ();
        let collisionType : CollisionType.collisionType ref = ref (((((Obj.magic collidableInterfaceCompositeInterface)#getCollidableInferface ())#getCollisionTypeWith ((Obj.magic ownerLayer))) :> CollisionType.collisionType)) in ();
        if ((Obj.repr !collisionType) == (Obj.repr !collisionTypeFactory#pICKUP)) then begin
            ()
        end else if ((Obj.repr !collisionType) == (Obj.repr !collisionTypeFactory#cOLLISION)) then begin
            raise (Java_return (Obj.repr ((super#isCollision ((Obj.magic ownerLayer), (Obj.magic collidableInterfaceCompositeInterface))))))
        end else begin
            if ((((((Obj.magic collidableInterfaceCompositeInterface)#getX2 ()) <= ((Obj.magic ownerLayer)#getXP ())) || (((Obj.magic collidableInterfaceCompositeInterface)#getY2 ()) <= ((Obj.magic ownerLayer)#getYP ()))) || (((Obj.magic collidableInterfaceCompositeInterface)#getYP ()) >= ((Obj.magic ownerLayer)#getY2 ()))) || (((Obj.magic collidableInterfaceCompositeInterface)#getXP ()) >= ((Obj.magic ownerLayer)#getX2 ()))) then begin
                raise (Java_return (Obj.repr (false)))
            end else begin
                raise (Java_return (Obj.repr (true)))
            end
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method collide : 'any1 'any2. 'any1 * 'any2 -> unit = fun (ownerLayer, collidableInterfaceCompositeInterface) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collidableInterfaceCompositeInterface = Obj.repr collidableInterfaceCompositeInterface in
        begin
        let collisionTypeFactory : CollisionTypeFactory.collisionTypeFactory ref = ref (((CollisionTypeFactory.getInstance ()) :> CollisionTypeFactory.collisionTypeFactory)) in ();
        let collisionType : CollisionType.collisionType ref = ref (((((Obj.magic collidableInterfaceCompositeInterface)#getCollidableInferface ())#getCollisionTypeWith ((Obj.magic ownerLayer))) :> CollisionType.collisionType)) in ();
        if ((Obj.repr !collisionType) == (Obj.repr !collisionTypeFactory#pICKUP)) then begin
            ()
        end else if ((Obj.repr !collisionType) == (Obj.repr !collisionTypeFactory#cOLLISION)) then begin
            ignore (super#collide ((Obj.magic ownerLayer), (Obj.magic collidableInterfaceCompositeInterface)))
        end else begin
            (self#collideNone ((Obj.magic ownerLayer), (Obj.magic collidableInterfaceCompositeInterface)))
        end
        end [@@warning "-7-20"]
    

    method collideNone : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_ownerLayer, _collidableInterface) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "CollidableRTSBehavior" (fun arguments -> Obj.repr (new collidableRTSBehavior (Obj.obj arguments)))


