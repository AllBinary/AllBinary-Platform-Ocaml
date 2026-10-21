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

class collisionTypeFactory () =
  object
    val mutable nONE : CollisionType.collisionType = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable dAMAGE : CollisionType.collisionType = (Obj.magic 0)
    method dAMAGE = dAMAGE
    method set_dAMAGE value' = dAMAGE <- value'
    val mutable pICKUP : CollisionType.collisionType = (Obj.magic 0)
    method pICKUP = pICKUP
    method set_pICKUP value' = pICKUP <- value'
    val mutable cOLLISION : CollisionType.collisionType = (Obj.magic 0)
    method cOLLISION = cOLLISION
    method set_cOLLISION value' = cOLLISION <- value'

    initializer
      begin
        nONE <- ((new CollisionType.collisionType ("None")) :> CollisionType.collisionType);
        dAMAGE <- ((new CollisionType.collisionType ("Damage")) :> CollisionType.collisionType);
        pICKUP <- ((new CollisionType.collisionType ("Pickup")) :> CollisionType.collisionType);
        cOLLISION <- ((new CollisionType.collisionType ("Collision")) :> CollisionType.collisionType);
        ()
      end
  end
let () = java_register_constructor "CollisionTypeFactory" (fun arguments -> Obj.repr (new collisionTypeFactory (Obj.obj arguments)))

let sINGLETON = ref ((new collisionTypeFactory ()))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "CollisionTypeFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        !sINGLETON
        end
let () = java_register_static "CollisionTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


