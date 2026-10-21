(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.business.advertisement *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.GameType *)
(* import org.allbinary.game.state.GameState *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)

class gameAdStateBase ((adConfiguration : AdConfiguration.adConfiguration)) =
  object (self)
    val mutable adConfigurationP : AdConfiguration.adConfiguration = (Obj.magic 0)
    method adConfigurationP = adConfigurationP
    method set_adConfigurationP value' = adConfigurationP <- value'
    val mutable advertisementsP : Advertisements.advertisements = (Obj.magic 0)
    method advertisementsP = advertisementsP
    method set_advertisementsP value' = advertisementsP <- value'
    val mutable okayToShowAdsP : bool = false
    method okayToShowAdsP = okayToShowAdsP
    method set_okayToShowAdsP value' = okayToShowAdsP <- value'
    
    

    method initViewArray ((_viewArray : Obj.t array)) : unit =
        begin
        ()
        end
    

    method onStart : 'any1. 'any1 -> unit = fun (_anyType) ->
        begin
        (self#init ())
        end
    

    method init () : unit =
        begin
        ()
        end
    

    method isShowingAtLocation ((_location : int)) : bool =
        begin
        false
        end
    

    method isShowingAt () : bool =
        begin
        false
        end
    

    method show () : unit =
        begin
        ()
        end
    

    method hide () : unit =
        begin
        ()
        end
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-20"]
    

    method processAdState : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_gameState, _gameType) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processPageAdState () : unit =
        begin
        ()
        end
    

    method playingAdState () : unit =
        begin
        ()
        end
    

    method playingAdStateWH ((_width : int), (_height : int)) : unit =
        begin
        ()
        end
    

    method notPlayingAdState () : unit =
        begin
        ()
        end
    

    method setGameIsReady ((_gameIsReady : bool)) : unit =
        begin
        ()
        end
    

    method isGameIsReady () : bool =
        begin
        false
        end
    

    method getAdvertisements () : Advertisements.advertisements =
        begin
        (advertisementsP :> Advertisements.advertisements)
        end
    

    method getAdConfiguration () : AdConfiguration.adConfiguration =
        begin
        (adConfigurationP :> AdConfiguration.adConfiguration)
        end
    

    method isOkayToShowPageAd () : bool =
        begin
        false
        end
    

    method setOkayToShowAds ((okayToShowAds : bool)) : unit =
        begin
        okayToShowAdsP <- okayToShowAds
        end
    

    method isOkayToShowAds () : bool =
        begin
        okayToShowAdsP
        end
    

    method isEnabled () : bool =
        begin
        false
        end

    initializer
      begin
        ();
        advertisementsP <- ((new Advertisements.advertisements ()) :> Advertisements.advertisements);
        okayToShowAdsP <- false;
        ();
        adConfigurationP <- adConfiguration
      end
  end
let () = java_register_constructor "GameAdStateBase" (fun arguments -> Obj.repr (new gameAdStateBase (Obj.obj arguments)))


