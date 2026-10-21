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
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]

let sINGLETON : PlayerQueue.playerQueue = ((new PlayerQueue.playerQueue (4)) :> PlayerQueue.playerQueue)
let get_sINGLETON () = sINGLETON
let () = java_register_static "PrimaryPlayerQueueFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () : PlayerQueue.playerQueue =
        begin
        (sINGLETON :> PlayerQueue.playerQueue)
        end

let () = java_register_static "PrimaryPlayerQueueFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class primaryPlayerQueueFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PrimaryPlayerQueueFactory" (fun arguments -> Obj.repr (new primaryPlayerQueueFactory (Obj.obj arguments)))


