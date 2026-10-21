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
(* package org.allbinary.game.multiplayer.layer *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringUtil *)

class multiplayerBehavior ((_username : string)) =
  object
    
    

    method startTick () : unit =
        begin
        ()
        end
    

    method endTick () : unit =
        begin
        ()
        end
    

    method getApproximateElapsed () : int =
        begin
        0
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "MultiplayerBehavior" (fun arguments -> Obj.repr (new multiplayerBehavior (Obj.obj arguments)))

let nULL_MULTIPLAYER_BEHAVIOR = (new multiplayerBehavior ((StringUtil.getInstance ())#eMPTY_STRING))
let get_nULL_MULTIPLAYER_BEHAVIOR () = nULL_MULTIPLAYER_BEHAVIOR
let () = java_register_static "MultiplayerBehavior.get_nULL_MULTIPLAYER_BEHAVIOR" (fun _ -> Obj.repr (get_nULL_MULTIPLAYER_BEHAVIOR ()))


