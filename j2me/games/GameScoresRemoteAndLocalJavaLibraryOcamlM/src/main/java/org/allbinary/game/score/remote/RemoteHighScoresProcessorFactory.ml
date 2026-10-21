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
(* package org.allbinary.game.score.remote *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let sINGLETON : Obj.t = (Obj.repr (new RemoteHighScoresProcessor.remoteHighScoresProcessor ()))
let get_sINGLETON () = Obj.magic sINGLETON
let () = java_register_static "RemoteHighScoresProcessorFactory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic sINGLETON)))
        end

let () = java_register_static "RemoteHighScoresProcessorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class remoteHighScoresProcessorFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "RemoteHighScoresProcessorFactory" (fun arguments -> Obj.repr (new remoteHighScoresProcessorFactory (Obj.obj arguments)))


