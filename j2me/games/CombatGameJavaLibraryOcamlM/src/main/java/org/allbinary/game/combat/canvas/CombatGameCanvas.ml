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
(* package org.allbinary.game.combat.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.CommandListener *)
(* import org.allbinary.game.combat.destroy.DestroyedLayerProcessor *)
(* import org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool *)
(* import org.allbinary.game.combat.destroy.event.DestroyedEventHandler *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureFactory *)
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas *)
(* import org.allbinary.game.init.BasicBuildGameInitializerFactory *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.drop.DropLayerProcessor *)
(* import org.allbinary.game.layer.identification.GroupLayerManagerListener *)
(* import org.allbinary.game.score.HighScoresFactoryInterface *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.layer.BasicLayerProcessor *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)

let basicLayerProcessor : BasicLayerProcessor.basicLayerProcessor array ref = ref ((Array.make (0) (Obj.magic 0)))
let get_basicLayerProcessor () = !basicLayerProcessor
let set_basicLayerProcessor value' = basicLayerProcessor := value'
let () = java_register_static "CombatGameCanvas.get_basicLayerProcessor" (fun _ -> Obj.repr (get_basicLayerProcessor ()))
class combatGameCanvas (cmdListener, (gameLayerManager : AllBinaryGameLayerManager.allBinaryGameLayerManager), (highScoresFactoryInterface : HighScoresFactoryInterface.highScoresFactoryInterface), (gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory.basicBuildGameInitializerFactory), (buffered : bool)) =
  object (self)
    inherit AllBinaryGameCanvas.allBinaryGameCanvas (cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered) as super
    
    

    method combatGameCanvas_init () : unit =
        begin
        ignore ((DestroyEventCircularStaticPool.getInstance ())#init (self));
        ignore ((ProgressCanvasFactory.getInstance ())#addNormalPortion (50, "Destroy Events"))
        end [@@warning "-7"]
    

    method initApp : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        (self#combatGameCanvas_init ());
        ignore (super#initApp ((Obj.magic abeClientInformation)))
        end [@@warning "-7-20"]
    

    method initConfigurablePortion ((portion : int)) : unit =
        begin
        ignore (DestroyedLayerProcessor.init ());
        ignore ((ProgressCanvasFactory.getInstance ())#addNormalPortion (portion, "Basic Processors"));
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let gameFeatureFactory : GameFeatureFactory.gameFeatureFactory ref = ref (((GameFeatureFactory.getInstance ()) :> GameFeatureFactory.gameFeatureFactory)) in ();
        if ((!features#isFeature (!gameFeatureFactory#dROPPED_ITEMS)) && (!features#isFeature (!gameFeatureFactory#dROPPED_ITEMS_FROM_DEATH))) then begin
            basicLayerProcessor := (Array.make (2) (Obj.magic 0));
            !basicLayerProcessor.(0) <- (DestroyedLayerProcessor.getInstance ());
            !basicLayerProcessor.(1) <- (DropLayerProcessor.getInstance ())
        end else begin
            basicLayerProcessor := (Array.make (1) (Obj.magic 0));
            !basicLayerProcessor.(0) <- (DestroyedLayerProcessor.getInstance ())
        end
        end [@@warning "-7"]
    

    method processPlayingGame () : unit =
        begin
        ignore (super#processPlayingGame ());
        let index : int ref = ref ((Array.length !basicLayerProcessor)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (!basicLayerProcessor.(!index)#process ((self#gameLayerManager)))
        done
        end [@@warning "-7"]
    

    method cleanupGame () : unit =
        begin
        ignore (super#cleanupGame ());
        let index : int ref = ref ((Array.length !basicLayerProcessor)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore ((!basicLayerProcessor.(!index)#getList ())#clear ())
        done;
        ignore ((GroupLayerManagerListener.getInstance ())#clear ());
        ignore ((GroupLayerManagerListener.getInstance ())#log ());
        ignore ((DestroyedEventHandler.getInstance ())#removeAllListeners ());
        (self#cleanupManager ())
        end [@@warning "-7"]
    

    method cleanupManager () : unit =
        begin
        ignore ((self#gameLayerManager)#cleanup ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "CombatGameCanvas" (fun arguments -> Obj.repr (new combatGameCanvas (Obj.obj arguments)))


