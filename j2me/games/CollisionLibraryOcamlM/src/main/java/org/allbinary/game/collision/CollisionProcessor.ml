(* Generated Code Do Not Modify *)
(* package org.allbinary.game.collision *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.layer.AllBinaryLayer *)

class collisionProcessor () =
  object
    

    method isCollision : 'any1 'any2. 'any1 * 'any2 -> bool = fun (_myLayer, _myLayer2) ->
        begin
        false
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "CollisionProcessor" (fun arguments -> Obj.repr (new collisionProcessor (Obj.obj arguments)))


