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
(* package org.allbinary.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.game.TiledLayer *)

class tiledLayerFactory () =
  object
    

    method getInstance : 'any1 'return. 'any1 -> 'return = fun (raceTrackData) ->
        let raceTrackData = Obj.repr raceTrackData in
        begin
        let mapArray : int array array ref = ref (((Obj.magic raceTrackData)#getMapArray ())) in ();
        (Obj.magic ((Obj.obj (java_new "TiledLayer" (Obj.repr ((Array.length !mapArray.(0)), (Array.length !mapArray), ((Obj.magic raceTrackData)#getTileSetImage ()), ((Obj.magic raceTrackData)#getCellWidth ()), ((Obj.magic raceTrackData)#getCellHeight ())))))))
        end [@@warning "-20"]
    

    method getMiniInstance : 'any1 'return. 'any1 -> 'return = fun (raceTrackData) ->
        let raceTrackData = Obj.repr raceTrackData in
        begin
        let mapArray : int array array ref = ref (((Obj.magic raceTrackData)#getMapArray ())) in ();
        (Obj.magic ((Obj.obj (java_new "TiledLayer" (Obj.repr ((Array.length !mapArray.(0)), (Array.length !mapArray), ((Obj.magic raceTrackData)#getMiniTileSetImage ()), ((Obj.magic raceTrackData)#getMiniCellWidth ()), ((Obj.magic raceTrackData)#getMiniCellHeight ())))))))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TiledLayerFactory" (fun arguments -> Obj.repr (new tiledLayerFactory (Obj.obj arguments)))


