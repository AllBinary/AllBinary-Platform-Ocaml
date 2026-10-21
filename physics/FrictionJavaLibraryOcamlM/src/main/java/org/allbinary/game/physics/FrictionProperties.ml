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
(* package org.allbinary.game.physics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.physics.friction.FrictionData *)
(* import org.allbinary.game.physics.velocity.DragVelocityBehavior *)
(* import org.allbinary.game.physics.velocity.VelocityProperties *)

class frictionProperties () =
  object
    
    

    method friction : 'any1. 'any1 * int -> unit = fun (velocityProperties, (nominator : int)) ->
        let velocityProperties = Obj.repr velocityProperties in
        begin
        ignore ((DragVelocityBehavior.get_instance ())#reduce ((Obj.magic velocityProperties), nominator, (FrictionData.getFrictionDenominator ())))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "FrictionProperties" (fun arguments -> Obj.repr (new frictionProperties (Obj.obj arguments)))


