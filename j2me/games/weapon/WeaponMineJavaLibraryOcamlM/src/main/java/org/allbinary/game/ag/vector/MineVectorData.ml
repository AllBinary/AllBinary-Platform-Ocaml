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
(* package org.allbinary.game.ag.vector *)

open Allbinary_java [@@warning "-33"]

let points : int array array array ref = ref ([| [| [| 10; 5 |]; [| 2; 6 |]; [| 1000; 1000 |]; [| 2; 2 |]; [| 10; 9 |]; [| 1000; 1000 |]; [| 10; 2 |]; [| 2; 9 |]; [| 1000; 1000 |]; [| 2; 5 |]; [| 10; 6 |]; [| 1000; 1000 |]; [| 7; 9 |]; [| 5; 2 |]; [| 1000; 1000 |]; [| 7; 2 |]; [| 5; 9 |]; [| 1000; 1000 |] |] |])
let get_points () = !points
let set_points value' = points := value'
let () = java_register_static "MineVectorData.get_points" (fun _ -> Obj.repr (get_points ()))
class mineVectorData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "MineVectorData" (fun arguments -> Obj.repr (new mineVectorData (Obj.obj arguments)))


