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
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class scrollOverAllowOutsideAtEndAI ((ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput)
    
    

    method processAI : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        let ownerLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        let x : int ref = ref ((!ownerLayerInterface#getXP ())) in ();
        let y : int ref = ref ((!ownerLayerInterface#getYP ())) in ();
        let width : int ref = ref ((!ownerLayerInterface#getWidth ())) in ();
        let height : int ref = ref ((!ownerLayerInterface#getHeight ())) in ();
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        if (!x > (!displayInfo#getLastWidth ())) then begin
            ignore (!ownerLayerInterface#setPosition ((-!width), !y, (!ownerLayerInterface#getZP ())))
        end;
        if (!y > (!displayInfo#getLastHeight ())) then begin
            ignore (!ownerLayerInterface#setPosition (!x, (-!height), (!ownerLayerInterface#getZP ())))
        end;
        if (!x < (-!width)) then begin
            ignore (!ownerLayerInterface#setPosition (((!displayInfo#getLastWidth ()) + !width), !y, (!ownerLayerInterface#getZP ())))
        end;
        if (!y < (-!height)) then begin
            ignore (!ownerLayerInterface#setPosition (!x, ((!displayInfo#getLastHeight ()) + !height), (!ownerLayerInterface#getZP ())))
        end
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ScrollOverAllowOutsideAtEndAI" (fun arguments -> Obj.repr (new scrollOverAllowOutsideAtEndAI (Obj.obj arguments)))


