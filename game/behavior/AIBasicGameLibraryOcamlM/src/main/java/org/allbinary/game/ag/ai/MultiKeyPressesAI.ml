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
(* import org.allbinary.time.GameTickTimeDelayHelper *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.ABHashtable *)

class multiKeyPressesAI (hashtable, (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit KeyPressesAI.keyPressesAI (hashtable, ownerLayerInterface, gameInput) as super
    val mutable toggleTimeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method toggleTimeHelper = toggleTimeHelper
    method set_toggleTimeHelper value' = toggleTimeHelper <- value'
    val mutable gameTickTimeDelayHelper : GameTickTimeDelayHelper.gameTickTimeDelayHelper = (Obj.magic 0)
    method gameTickTimeDelayHelper = gameTickTimeDelayHelper
    method set_gameTickTimeDelayHelper value' = gameTickTimeDelayHelper <- value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method update () : unit =
        begin
        let gameInput : GameInput.gameInput ref = ref (((self#getGameInput ()) :> GameInput.gameInput)) in ();
        let keys : int array ref = ref ((self#keys)) in ();
        let size : int ref = ref ((Array.length !keys)) in ();
        if (self#isOn ()) then begin
            for index = 0 to !size - 1 do
                let key : int ref = ref ((!keys.(index)#intValue ())) in ();
                if (!key <> (-1)) then begin
                    ignore (!gameInput#add (((self#gameKeyEventFactory)#getInstanceForKey (self, !key))))
                end
            done
        end else begin
            for index = 0 to !size - 1 do
                let key : int ref = ref ((!keys.(index)#intValue ())) in ();
                if (!key <> (-1)) then begin
                    ignore (!gameInput#addForRemoval (((self#gameKeyEventFactory)#getInstanceForKey (self, !key))))
                end
            done
        end
        end [@@warning "-7"]
    

    method toggle () : unit =
        begin
        if (toggleTimeHelper#isTime (gameTickTimeDelayHelper#startTime)) then begin
            ignore (super#toggle ());
            (self#update ())
        end
        end [@@warning "-7"]
    

    method disable () : unit =
        begin
        if (toggleTimeHelper#isTime (gameTickTimeDelayHelper#startTime)) then begin
            ignore (super#disable ());
            (self#update ())
        end
        end [@@warning "-7"]
    

    method enable () : unit =
        begin
        if (toggleTimeHelper#isTime (gameTickTimeDelayHelper#startTime)) then begin
            ignore (super#enable ());
            (self#update ())
        end
        end [@@warning "-7"]

    initializer
      begin
        toggleTimeHelper <- ((new TimeDelayHelper.timeDelayHelper (600)) :> TimeDelayHelper.timeDelayHelper);
        gameTickTimeDelayHelper <- ((GameTickTimeDelayHelperFactory.getInstance ()) :> GameTickTimeDelayHelper.gameTickTimeDelayHelper);
        ();
        (* super(...) is the inherit clause *) ();
        (self#update ())
      end
  end
let () = java_register_constructor "MultiKeyPressesAI" (fun arguments -> Obj.repr (new multiKeyPressesAI (Obj.obj arguments)))


