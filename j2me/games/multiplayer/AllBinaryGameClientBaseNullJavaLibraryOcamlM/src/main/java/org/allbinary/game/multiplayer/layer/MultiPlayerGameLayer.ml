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
[@@@warning "-20"]
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.view.ViewPositionBase *)

class multiPlayerGameLayer (_remoteInfo, groupInterface, (name : string), layerInfo, (viewPosition : ViewPositionBase.viewPositionBase)) =
  object
    inherit CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer (groupInterface, name, layerInfo, viewPosition)
    
    

    method getMultiplayerBehavior : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "MultiplayerBehavior.get_nULL_MULTIPLAYER_BEHAVIOR" (Obj.repr ())))))
        end [@@warning "-7"]
    

    method setPingInfo ((_show : bool)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setFiring ((_firing : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getFiring () : int =
        begin
        0
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "MultiPlayerGameLayer" (fun arguments -> Obj.repr (new multiPlayerGameLayer (Obj.obj arguments)))


