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
(* import org.allbinary.business.advertisement.GameAdStateBase *)
(* import org.allbinary.business.advertisement.AdConfiguration *)
(* import org.allbinary.input.event.VirtualKeyboardEvent *)
(* import org.allbinary.input.event.VirtualKeyboardEventHandler *)
(* import org.allbinary.input.event.VirtualKeyboardEventListenerInterface *)

class gameAdState ((adConfiguration : AdConfiguration.adConfiguration)) =
  object (self)
    inherit GameAdStateBase.gameAdStateBase (adConfiguration)
    
    

    method onVirtualKeyboardEvent : 'any1. 'any1 -> unit = fun (_virtualKeyboardEvent) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((VirtualKeyboardEventHandler.getInstance ())#addListenerInterface (self))
      end
  end
let () = java_register_constructor "GameAdState" (fun arguments -> Obj.repr (new gameAdState (Obj.obj arguments)))


