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
(* package org.allbinary.game *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class playerTypesFactory () =
  object
    val mutable pLAYER_TYPE_ONE : PlayerType.playerType = (Obj.magic 0)
    method pLAYER_TYPE_ONE = pLAYER_TYPE_ONE
    method set_pLAYER_TYPE_ONE value' = pLAYER_TYPE_ONE <- value'
    val mutable pLAYER_TYPE_TWO : PlayerType.playerType = (Obj.magic 0)
    method pLAYER_TYPE_TWO = pLAYER_TYPE_TWO
    method set_pLAYER_TYPE_TWO value' = pLAYER_TYPE_TWO <- value'
    val mutable pLAYER_TYPE_THREE : PlayerType.playerType = (Obj.magic 0)
    method pLAYER_TYPE_THREE = pLAYER_TYPE_THREE
    method set_pLAYER_TYPE_THREE value' = pLAYER_TYPE_THREE <- value'

    initializer
      begin
        pLAYER_TYPE_ONE <- ((new PlayerType.playerType ("Player Type One", 0)) :> PlayerType.playerType);
        pLAYER_TYPE_TWO <- ((new PlayerType.playerType ("Player Type Two", 1)) :> PlayerType.playerType);
        pLAYER_TYPE_THREE <- ((new PlayerType.playerType ("Player Type Three", 2)) :> PlayerType.playerType);
        ()
      end
  end
let () = java_register_constructor "PlayerTypesFactory" (fun arguments -> Obj.repr (new playerTypesFactory (Obj.obj arguments)))

let sINGLETON = (new playerTypesFactory ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "PlayerTypesFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "PlayerTypesFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


