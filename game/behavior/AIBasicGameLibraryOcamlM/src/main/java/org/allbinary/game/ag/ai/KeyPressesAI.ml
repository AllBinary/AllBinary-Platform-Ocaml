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
(* package org.allbinary.game.ag.ai *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.util.HashtableUtil *)
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.util.ABHashtable *)

class keyPressesAI (hashtable, (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput) as super
    val mutable on : bool = false
    method on = on
    method set_on value' = on <- value'
    val mutable keys : int array = (Obj.magic 0)
    method keys = keys
    method set_keys value' = keys <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        if on then begin
            for index = 0 to (Array.length keys) - 1 do
                ignore (super#processKeyAI ((keys.(index)#intValue ())))
            done
        end
        end [@@warning "-7-20"]
    

    method toggle () : unit =
        begin
        if (self#isOn ()) then begin
            (self#setOn (false))
        end else begin
            (self#setOn (true))
        end
        end [@@warning "-7"]
    

    method disable () : unit =
        begin
        (self#setOn (false))
        end [@@warning "-7"]
    

    method enable () : unit =
        begin
        (self#setOn (true))
        end [@@warning "-7"]
    

    method setOn ((on_arg : bool)) : unit =
        begin
        on <- on_arg
        end [@@warning "-7"]
    

    method isOn () : bool =
        begin
        on
        end [@@warning "-7"]

    initializer
      begin
        on <- true;
        ();
        ();
        (* super(...) is the inherit clause *) ();
        keys <- (Array.make ((hashtable#size ())) (Obj.magic 0));
        let objectArray : Obj.t array ref = ref (((HashtableUtil.getInstance ())#getKeysAsArray (hashtable))) in ();
        let size : int ref = ref ((Array.length !objectArray)) in ();
        for index = 0 to !size - 1 do
            keys.(index) <- (Obj.magic (hashtable#get ((Obj.magic !objectArray.(index)))))
        done
      end
  end
let () = java_register_constructor "KeyPressesAI" (fun arguments -> Obj.repr (new keyPressesAI (Obj.obj arguments)))


