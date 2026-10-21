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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.game.input.NullPlayerGameInputComposite *)
(* import org.allbinary.game.input.PlayerGameInputCompositeInterface *)
(* import org.allbinary.graphics.ItemColorFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.layer.LayerProcessor *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.util.BasicArrayList *)

let nULL_ALLBINARY_LAYER_MANAGER : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_nULL_ALLBINARY_LAYER_MANAGER () = !nULL_ALLBINARY_LAYER_MANAGER
let set_nULL_ALLBINARY_LAYER_MANAGER value' = nULL_ALLBINARY_LAYER_MANAGER := value'
let () = java_register_static "AllBinaryGameLayerManager.get_nULL_ALLBINARY_LAYER_MANAGER" (fun _ -> Obj.repr (get_nULL_ALLBINARY_LAYER_MANAGER ()))
let iD : int = ((SmallIntegerSingletonFactory.getInstance ())#getAt (22))
let get_iD () = iD
let () = java_register_static "AllBinaryGameLayerManager.get_iD" (fun _ -> Obj.repr (get_iD ()))
class allBinaryGameLayerManager ((backgroundBasicColor_arg : BasicColor.basicColor), (foregroundBasicColor_arg : BasicColor.basicColor), (gameInfo_arg : GameInfo.gameInfo)) =
  object (self)
    inherit AllBinaryLayerManager.allBinaryLayerManager ()
    val mutable backgroundBasicColor : BasicColor.basicColor = (Obj.magic 0)
    method backgroundBasicColor = backgroundBasicColor
    method set_backgroundBasicColor value' = backgroundBasicColor <- value'
    val mutable foregroundBasicColor : BasicColor.basicColor = (Obj.magic 0)
    method foregroundBasicColor = foregroundBasicColor
    method set_foregroundBasicColor value' = foregroundBasicColor <- value'
    val mutable gameInfo : GameInfo.gameInfo = (Obj.magic 0)
    method gameInfo = gameInfo
    method set_gameInfo value' = gameInfo <- value'
    val mutable playerGameInputCompositeInterface : PlayerGameInputCompositeInterface.playerGameInputCompositeInterface = (Obj.magic 0)
    method playerGameInputCompositeInterface = playerGameInputCompositeInterface
    method set_playerGameInputCompositeInterface value' = playerGameInputCompositeInterface <- value'
    
    

    method getLayerManager () : AllBinaryLayerManager.allBinaryLayerManager =
        begin
        (self :> AllBinaryLayerManager.allBinaryLayerManager)
        end [@@warning "-7"]
    

    method init () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getBackgroundBasicColor () : BasicColor.basicColor =
        begin
        (backgroundBasicColor :> BasicColor.basicColor)
        end [@@warning "-7"]
    

    method setBackgroundBasicColor : 'any1. 'any1 -> unit = fun (backgroundBasicColor_arg) ->
        let backgroundBasicColor_arg = Obj.repr backgroundBasicColor_arg in
        begin
        backgroundBasicColor <- (Obj.magic backgroundBasicColor_arg);
        (ItemColorFactory.getInstance ())#set_iNVERT_PAINT ((backgroundBasicColor#intValue ()))
        end [@@warning "-7-20"]
    

    method getForegroundBasicColor () : BasicColor.basicColor =
        begin
        (foregroundBasicColor :> BasicColor.basicColor)
        end [@@warning "-7"]
    

    method setForegroundBasicColor : 'any1. 'any1 -> unit = fun (foregroundBasicColor_arg) ->
        let foregroundBasicColor_arg = Obj.repr foregroundBasicColor_arg in
        begin
        foregroundBasicColor <- (Obj.magic foregroundBasicColor_arg);
        (ItemColorFactory.getInstance ())#set_pAINT ((foregroundBasicColor#intValue ()))
        end [@@warning "-7-20"]
    

    method getGameInfo () : GameInfo.gameInfo =
        begin
        (gameInfo :> GameInfo.gameInfo)
        end [@@warning "-7"]
    

    method setGameInfo : 'any1. 'any1 -> unit = fun (gameInfo_arg) ->
        let gameInfo_arg = Obj.repr gameInfo_arg in
        begin
        gameInfo <- (Obj.magic gameInfo_arg)
        end [@@warning "-7-20"]
    

    method setLayerProcessorList : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        let layerProcessorInterfaceArray : LayerProcessor.layerProcessor array ref = ref ((Array.make (((Obj.magic list)#size ())) (Obj.magic 0))) in ();
        let size : int ref = ref ((Array.length !layerProcessorInterfaceArray)) in ();
        for index = 0 to !size - 1 do
            !layerProcessorInterfaceArray.(index) <- ((Obj.magic (Obj.magic list)#objectArray.(index)) :> LayerProcessor.layerProcessor)
        done;
        ignore (self#setLayerProcessorArray (!layerProcessorInterfaceArray))
        end [@@warning "-7-20"]
    

    method setPlayerGameInputCompositeInterface : 'any1. 'any1 -> unit = fun (playerGameInputCompositeInterface_arg) ->
        let playerGameInputCompositeInterface_arg = Obj.repr playerGameInputCompositeInterface_arg in
        begin
        playerGameInputCompositeInterface <- (Obj.magic playerGameInputCompositeInterface_arg)
        end [@@warning "-7-20"]
    

    method getPlayerGameInputCompositeInterface () : PlayerGameInputCompositeInterface.playerGameInputCompositeInterface =
        begin
        (playerGameInputCompositeInterface :> PlayerGameInputCompositeInterface.playerGameInputCompositeInterface)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        playerGameInputCompositeInterface <- ((NullPlayerGameInputComposite.get_nULL_PLAYER_GAME_INPUT_COMPOSITE ()) :> PlayerGameInputCompositeInterface.playerGameInputCompositeInterface);
        ();
        backgroundBasicColor <- backgroundBasicColor_arg;
        foregroundBasicColor <- foregroundBasicColor_arg;
        let itemColorFactory : ItemColorFactory.itemColorFactory ref = ref (((ItemColorFactory.getInstance ()) :> ItemColorFactory.itemColorFactory)) in ();
        !itemColorFactory#set_iNVERT_PAINT ((backgroundBasicColor#intValue ()));
        !itemColorFactory#set_pAINT ((foregroundBasicColor#intValue ()));
        gameInfo <- gameInfo_arg
      end
  end
let () = java_register_constructor "AllBinaryGameLayerManager" (fun arguments -> Obj.repr (new allBinaryGameLayerManager (Obj.obj arguments)))

let getNullInstance () =
        begin
        if ((Obj.repr !nULL_ALLBINARY_LAYER_MANAGER) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            nULL_ALLBINARY_LAYER_MANAGER := (new allBinaryGameLayerManager ((BasicColorFactory.getInstance ())#bLACK, (BasicColorFactory.getInstance ())#wHITE, (GameInfo.get_nONE ())))
        end;
        (Obj.magic !nULL_ALLBINARY_LAYER_MANAGER)
        end
let () = java_register_static "AllBinaryGameLayerManager.getNullInstance" (fun arguments -> Obj.repr (getNullInstance (Obj.obj arguments)))


