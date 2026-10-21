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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.input.event.DownGameKeyEventHandler *)
(* import org.allbinary.game.input.event.UpGameKeyEventHandler *)


let removeAllListeners () : unit =
        begin
        ignore ((UpGameKeyEventHandler.getInstance ())#removeAllListeners ());
        ignore ((DownGameKeyEventHandler.getInstance ())#removeAllListeners ())
        end

let () = java_register_static "GameEventHandlerUtil.removeAllListeners" (fun arguments -> Obj.repr (removeAllListeners (Obj.obj arguments)))
class gameEventHandlerUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "GameEventHandlerUtil" (fun arguments -> Obj.repr (new gameEventHandlerUtil (Obj.obj arguments)))


