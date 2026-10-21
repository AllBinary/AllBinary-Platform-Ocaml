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
(* package org.allbinary.game.combat.damage *)

open Allbinary_java [@@warning "-33"]

class damageableBaseBehavior () =
  object (self)
    

    method getName () : string =
        begin
        (java_get_class (Obj.repr self))
        end
    

    method damage ((_damage : int), (_damageType : int)) : unit =
        begin
        ()
        end
    

    method getDamage ((_damageType : int)) : int =
        begin
        6000
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "DamageableBaseBehavior" (fun arguments -> Obj.repr (new damageableBaseBehavior (Obj.obj arguments)))

let instance = (new damageableBaseBehavior ())
let get_instance () = instance
let () = java_register_static "DamageableBaseBehavior.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DamageableBaseBehavior.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


