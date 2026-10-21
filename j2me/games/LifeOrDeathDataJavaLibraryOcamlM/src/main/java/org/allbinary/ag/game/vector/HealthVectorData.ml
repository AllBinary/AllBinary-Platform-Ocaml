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
(* package org.allbinary.ag.game.vector *)

open Allbinary_java [@@warning "-33"]

let points : int array array array ref = ref ([| [| [| 2; 1 |]; [| 3; 2 |]; [| 3; 2 |]; [| 4; 1 |]; [| 4; 1 |]; [| 5; 1 |]; [| 5; 1 |]; [| 6; 2 |]; [| 6; 2 |]; [| 6; 3 |]; [| 6; 3 |]; [| 3; 6 |]; [| 3; 6 |]; [| 0; 3 |]; [| 0; 3 |]; [| 0; 2 |]; [| 0; 2 |]; [| 1; 1 |]; [| 1; 1 |]; [| 2; 1 |]; [| 1000; 1000 |] |] |])
let get_points () = !points
let set_points value' = points := value'
let () = java_register_static "HealthVectorData.get_points" (fun _ -> Obj.repr (get_points ()))
class healthVectorData () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "HealthVectorData" (fun arguments -> Obj.repr (new healthVectorData (Obj.obj arguments)))


