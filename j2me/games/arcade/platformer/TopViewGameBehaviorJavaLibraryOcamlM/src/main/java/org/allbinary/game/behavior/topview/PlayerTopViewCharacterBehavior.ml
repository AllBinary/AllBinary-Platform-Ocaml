(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.behavior.topview *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.game.tracking.TrackingEventCircularStaticPool *)
(* import org.allbinary.game.tracking.TrackingEventHandler *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)

class playerTopViewCharacterBehavior () =
  object
    inherit TopViewCharacterBehavior.topViewCharacterBehavior ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method terrainEvent : 'any1 'any2 'any6. 'any1 * 'any2 * int * int * BasicGeographicMap.basicGeographicMap array * 'any6 -> unit = fun (layer, _direction, (_x : int), (_y : int), (_geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), _geographicMapCellPosition) ->
        let layer = Obj.repr layer in
        begin
        ignore ((TrackingEventHandler.getInstance ())#fireEvent (((TrackingEventCircularStaticPool.getInstance ())#getNextInstance ((Obj.magic layer)))))
        end [@@warning "-7-20"]
    

    method terrainMove : 'any1. 'any1 * BasicGeographicMap.basicGeographicMap array * int * int -> unit = fun (_layer, (geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (x : int), (y : int)) ->
        begin
        let basicGeographicMapUtil : BasicGeographicMapUtil.basicGeographicMapUtil ref = ref (((BasicGeographicMapUtil.getInstance ()) :> BasicGeographicMapUtil.basicGeographicMapUtil)) in ();
        ignore (!basicGeographicMapUtil#setPosition (geographicMapInterfaceArray, x, y))
        end [@@warning "-7-20"]
    

    method moveIfOnScreen : 'any1. 'any1 * int * int -> unit = fun (_layer, (_ax : int), (_ay : int)) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method isTiledLayerMoveable : 'any1. 'any1 * int * int -> bool = fun (terrainTiledLayer, (x : int), (_y : int)) ->
        let terrainTiledLayer = Obj.repr terrainTiledLayer in
        begin
        (((((((Obj.magic terrainTiledLayer)#getXP ()) + ((DisplayInfoSingleton.getInstance ())#getLastWidth ())) < ((Obj.magic terrainTiledLayer)#getWidth ())) || (x < 0))) && (((((Obj.magic terrainTiledLayer)#getXP ()) > 0) || (x > 0))))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PlayerTopViewCharacterBehavior" (fun arguments -> Obj.repr (new playerTopViewCharacterBehavior (Obj.obj arguments)))


