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
(* package org.allbinary.game.layer.special *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.GameInputProcessor *)

class specialGameInputInterfaceProcessor ((collidableDestroyableDamageableLayer : SpecialGameInputInterface.specialGameInputInterface)) =
  object
    inherit GameInputProcessor.gameInputProcessor ()
    val mutable specialGameInputInterface : SpecialGameInputInterface.specialGameInputInterface = (Obj.magic 0)
    method specialGameInputInterface = specialGameInputInterface
    method set_specialGameInputInterface value' = specialGameInputInterface <- value'
    

    initializer
      begin
        ();
        ();
        specialGameInputInterface <- collidableDestroyableDamageableLayer
      end
  end
let () = java_register_constructor "SpecialGameInputInterfaceProcessor" (fun arguments -> Obj.repr (new specialGameInputInterfaceProcessor (Obj.obj arguments)))


