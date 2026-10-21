(* Generated Code Do Not Modify *)
(* package org.allbinary.game.collision *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.layer.AllBinaryLayer *)

class collisionThreedProcessor () =
  object
    inherit CollisionProcessor.collisionProcessor ()
    

    method isCollision : 'any1 'any2. 'any1 * 'any2 -> bool = fun (myLayer, myLayer2) ->
        let myLayer = Obj.repr myLayer in
        let myLayer2 = Obj.repr myLayer2 in
        try
        begin
        if ((((((((Obj.magic myLayer2)#getXP ()) >= ((Obj.magic myLayer)#getX2 ())) || (((Obj.magic myLayer2)#getYP ()) >= ((Obj.magic myLayer)#getY2 ()))) || (((Obj.magic myLayer2)#getX2 ()) <= ((Obj.magic myLayer)#getXP ()))) || (((Obj.magic myLayer2)#getY2 ()) <= ((Obj.magic myLayer)#getYP ()))) || (((Obj.magic myLayer2)#getZP ()) < ((Obj.magic myLayer)#getZ2 ()))) || (((Obj.magic myLayer2)#getZ2 ()) > ((Obj.magic myLayer)#getZP ()))) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "CollisionThreedProcessor" (fun arguments -> Obj.repr (new collisionThreedProcessor (Obj.obj arguments)))


