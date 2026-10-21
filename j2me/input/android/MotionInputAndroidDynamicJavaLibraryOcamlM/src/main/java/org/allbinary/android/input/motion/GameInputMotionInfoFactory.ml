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
(* package org.allbinary.android.input.motion *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.android.AndroidInfoFactory *)
(* import org.allbinary.android.input.motion.api1.GameInputMotionInfoAPI1 *)
(* import org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5 *)


let getInstance () : GameInputMotionInfo.gameInputMotionInfo =
        try
        begin
        let sDK_VERSION : int ref = ref (((AndroidInfoFactory.getInstance ())#getVersion ())) in ();
        if (!sDK_VERSION <= 4) then begin
            raise (Java_return (Obj.repr ((GameInputMotionInfoAPI1.getInstance ()))))
        end else begin
            raise (Java_return (Obj.repr ((GameInputMotionInfoAPI5.getInstance ()))))
        end
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "GameInputMotionInfoFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class gameInputMotionInfoFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "GameInputMotionInfoFactory" (fun arguments -> Obj.repr (new gameInputMotionInfoFactory (Obj.obj arguments)))


