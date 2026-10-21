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
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureFactory *)
(* import org.allbinary.layer.AllBinaryLayer *)


let getInstance () : CollisionHelper.collisionHelper =
        try
        begin
        if ((Features.getInstance ())#isFeature ((GameFeatureFactory.getInstance ())#cOLLISIONS_WITH_SOURCE)) then begin
            raise (Java_return (Obj.repr ((new CollisionHelper.collisionHelper ((AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()))))))
        end else begin
            raise (Java_return (Obj.repr ((new SourceCollisionHelper.sourceCollisionHelper ((AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()))))))
        end
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "CollidableHelperFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class collidableHelperFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "CollidableHelperFactory" (fun arguments -> Obj.repr (new collidableHelperFactory (Obj.obj arguments)))


