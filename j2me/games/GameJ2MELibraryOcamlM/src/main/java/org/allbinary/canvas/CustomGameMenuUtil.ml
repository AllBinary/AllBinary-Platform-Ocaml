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
(* package org.allbinary.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.AppletUtil *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.graphics.displayable.MyCanvas *)


let add : 'any1. 'any1 -> unit = fun (canvas) ->
        let canvas = Obj.repr canvas in
        begin
        let gameCommandsFactory : GameCommandsFactory.gameCommandsFactory ref = ref (((GameCommandsFactory.getInstance ()) :> GameCommandsFactory.gameCommandsFactory)) in ();
        if (Obj.magic (java_call_static "AppletUtil.isAppletLoader" (Obj.repr ((Obj.magic canvas))))) then begin
            ()
        end else if (J2MEUtil.isHTML ()) then begin
            ()
        end else begin
            ignore ((Obj.magic canvas)#addCommand (!gameCommandsFactory#eXIT_COMMAND))
        end
        end [@@warning "-20"]

let () = java_register_static "CustomGameMenuUtil.add" (fun arguments -> Obj.repr (add (Obj.obj arguments)))
class customGameMenuUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "CustomGameMenuUtil" (fun arguments -> Obj.repr (new customGameMenuUtil (Obj.obj arguments)))


