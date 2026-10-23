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
(* package org.allbinary.game.ag.ai.scroller *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.game.rand.MyRandomFactory *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.util.ABHashtable *)

class randomPatrolAI (hashtable, (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit BasePatrolAI.basePatrolAI (hashtable, ownerLayerInterface, gameInput) as super
    val mutable changedDirection : bool = false
    method changedDirection = changedDirection
    method set_changedDirection value' = changedDirection <- value'
    
    

    method updateRandomDistance () : unit =
        begin
        (self#set_currentDistance) (((MyRandomFactory.getInstance ())#getAbsoluteNextInt (((self#maxDistance)#intValue ()))))
        end [@@warning "-7"]
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        ignore (super#update ());
        ignore (super#processKeyAI ((self#keyDirection)));
        if changedDirection then begin
            ignore (super#processKeyAI ((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))));
            (self#updateRandomDistance ());
            changedDirection <- false
        end
        end [@@warning "-7-20"]
    

    method nextDirection () : unit =
        begin
        ignore (super#nextDirection ());
        changedDirection <- true
        end [@@warning "-7"]

    initializer
      begin
        changedDirection <- true;
        ();
        (* super(...) is the inherit clause *) ();
        (self#updateRandomDistance ())
      end
  end
let () = java_register_constructor "RandomPatrolAI" (fun arguments -> Obj.repr (new randomPatrolAI (Obj.obj arguments)))


