(*

  AllBinary Open License Version 1
  Copyright (c) 2009 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.android.input.motion.api1 *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.android.input.motion.GameInputMotionInfo *)

class gameInputMotionInfoAPI1 () =
  object
    inherit GameInputMotionInfo.gameInputMotionInfo (4, 1)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "GameInputMotionInfoAPI1" (fun arguments -> Obj.repr (new gameInputMotionInfoAPI1 (Obj.obj arguments)))

let instance = (new gameInputMotionInfoAPI1 ())
let get_instance () = instance
let () = java_register_static "GameInputMotionInfoAPI1.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameInputMotionInfoAPI1.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


