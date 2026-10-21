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
(* package org.allbinary.game.combat.destroy.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface *)

class destroyEventFactory ((combatGameCanvas_arg : AllBinaryGameCanvas.allBinaryGameCanvas)) =
  object
    val mutable combatGameCanvas : AllBinaryGameCanvas.allBinaryGameCanvas = (Obj.magic 0)
    method combatGameCanvas = combatGameCanvas
    method set_combatGameCanvas value' = combatGameCanvas <- value'
    
    

    method getInstance () : AllBinaryEventObject.allBinaryEventObject =
        begin
        ((new DestroyedEvent.destroyedEvent (combatGameCanvas)) :> AllBinaryEventObject.allBinaryEventObject)
        end

    initializer
      begin
        ();
        ();
        combatGameCanvas <- combatGameCanvas_arg
      end
  end
let () = java_register_constructor "DestroyEventFactory" (fun arguments -> Obj.repr (new destroyEventFactory (Obj.obj arguments)))


