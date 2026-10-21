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
[@@@warning "-20"]
(* import javax.microedition.media.Player *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.string.CommonStrings *)

class sound ((resource_arg : string)) =
  object (self)
    val mutable resource : string = ""
    method resource = resource
    method set_resource value' = resource <- value'
    val mutable player : Obj.t = Obj.repr 0
    method player : 'r. 'r = Obj.magic player
    method set_player : 'v. 'v -> unit = fun value' -> player <- Obj.repr value'
    
    

    method getResource () : string =
        begin
        resource
        end
    

    method getPlayerP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic player)))
        end
    

    method setPlayerP : 'any1. 'any1 -> unit = fun (player_arg) ->
        let player_arg = Obj.repr player_arg in
        begin
        player <- Obj.repr ((Obj.magic player_arg))
        end [@@warning "-20"]
    

    method init () : unit =
        begin
        ()
        end
    

    method getDuration () : int =
        begin
        (-1)
        end
    

    method run () : unit =
        begin
        (try
            ignore ((Obj.magic player)#start ())
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (!commonStrings#eXCEPTION, self, !commonStrings#rUN))))
        end)
        end

    initializer
      begin
        ();
        player <- (Obj.repr (NoPlayer.get_nO_PLAYER ()));
        ();
        resource <- resource_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "Sound" (fun arguments -> Obj.repr (new sound (Obj.obj arguments)))


