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
(* import org.allbinary.game.ai.BasicAI *)
(* import org.allbinary.game.input.GameInput *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.rand.MyRandomFactory *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.media.audio.PlayerQueue *)
(* import org.allbinary.media.audio.SecondaryPlayerQueueFactory *)
(* import org.allbinary.media.audio.Sound *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.ABHashtable *)

let sOUND : int = ((SmallIntegerSingletonFactory.getInstance ())#getAt (433))
let get_sOUND () = sOUND
let () = java_register_static "HorizontalScreenPatrolAI.get_sOUND" (fun _ -> Obj.repr (get_sOUND ()))
class horizontalScreenPatrolAI (hashtable, (ownerLayerInterface : AllBinaryLayer.allBinaryLayer), (gameInput : GameInput.gameInput)) =
  object (self)
    inherit BasicAI.basicAI (ownerLayerInterface, gameInput) as super
    val mutable keyDirection : int = 0
    method keyDirection = keyDirection
    method set_keyDirection value' = keyDirection <- value'
    val mutable displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfoSingleton = displayInfoSingleton
    method set_displayInfoSingleton value' = displayInfoSingleton <- value'
    val mutable firingX : int = 0
    method firingX = firingX
    method set_firingX value' = firingX <- value'
    val mutable firedIndex : int = 0
    method firedIndex = firedIndex
    method set_firedIndex value' = firedIndex <- value'
    val mutable mAX_FIRE : int = 0
    method mAX_FIRE = mAX_FIRE
    method set_mAX_FIRE value' = mAX_FIRE <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable secondaryPlayerQueue : PlayerQueue.playerQueue = (Obj.magic 0)
    method secondaryPlayerQueue = secondaryPlayerQueue
    method set_secondaryPlayerQueue value' = secondaryPlayerQueue <- value'
    val mutable sound : Obj.t = Obj.repr 0
    method sound : 'r. 'r = Obj.magic sound
    method set_sound : 'v. 'v -> unit = fun value' -> sound <- Obj.repr value'
    
    

    method processAI : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        ignore (super#processKeyAI (keyDirection));
        if (timeDelayHelper#isTimeTNT ()) then begin
            let layerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
            let currentOwnerLayerX : int ref = ref ((!layerInterface#getXP ())) in ();
            if (!currentOwnerLayerX < (-(!layerInterface#getWidth ()))) then begin
                let y : int ref = ref (((MyRandomFactory.getInstance ())#getAbsoluteNextIntAllowZero (50))) in ();
                ignore (!layerInterface#setPosition ((((displayInfoSingleton#getLastWidth ()) + (!layerInterface#getWidth ())) + 50), !y, (!layerInterface#getZP ())));
                firedIndex <- 0;
                firingX <- ((displayInfoSingleton#getLastHalfWidth ()) + ((MyRandomFactory.getInstance ())#getNextInt ((displayInfoSingleton#getLastHalfWidth ()))));
                ignore (secondaryPlayerQueue#add ((Obj.magic sound)))
            end;
            if ((!currentOwnerLayerX < firingX) && (!currentOwnerLayerX > (-(!layerInterface#getWidth ())))) then begin
                ignore (super#processKeyAI ((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))));
                let gameLayerManager : AllBinaryGameLayerManager.allBinaryGameLayerManager ref = ref (((Obj.magic (Obj.magic allBinaryLayerManager)) :> AllBinaryGameLayerManager.allBinaryGameLayerManager)) in ();
                let fIRE : int ref = ref ((((((!gameLayerManager#getGameInfo ())#getCurrentLevel ()) + 12)) asr 2)) in ();
                if (!fIRE > mAX_FIRE) then begin
                    fIRE := mAX_FIRE
                end;
                if (firedIndex > !fIRE) then begin
                    firedIndex <- 0;
                    firingX <- (-2147483648)
                end;
                firedIndex <- firedIndex + 1
            end
        end
        end [@@warning "-7-20"]
    

    method nextDirection () : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        keyDirection <- (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())));
        displayInfoSingleton <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        firingX <- (displayInfoSingleton#getLastHalfWidth ());
        firedIndex <- 0;
        mAX_FIRE <- 28;
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (240)) :> TimeDelayHelper.timeDelayHelper);
        secondaryPlayerQueue <- ((SecondaryPlayerQueueFactory.getInstance ()) :> PlayerQueue.playerQueue);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        sound <- Obj.repr ((Obj.magic (hashtable#get (sOUND))));
        if ((Obj.magic sound) == (Obj.magic 0)) then begin
            raise (Failure ("No Sound Provided!!"))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "HorizontalScreenPatrolAI" (fun arguments -> Obj.repr (new horizontalScreenPatrolAI (Obj.obj arguments)))


