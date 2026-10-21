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
(* package org.allbinary.game.physics.friction *)

open Allbinary_java [@@warning "-33"]

let fRICTION_DENOMINATOR : int = 100
let get_fRICTION_DENOMINATOR () = fRICTION_DENOMINATOR
let () = java_register_static "FrictionData.get_fRICTION_DENOMINATOR" (fun _ -> Obj.repr (get_fRICTION_DENOMINATOR ()))

let getFrictionDenominator () : int =
        begin
        fRICTION_DENOMINATOR
        end

let () = java_register_static "FrictionData.getFrictionDenominator" (fun arguments -> Obj.repr (getFrictionDenominator (Obj.obj arguments)))
class frictionData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "FrictionData" (fun arguments -> Obj.repr (new frictionData (Obj.obj arguments)))


