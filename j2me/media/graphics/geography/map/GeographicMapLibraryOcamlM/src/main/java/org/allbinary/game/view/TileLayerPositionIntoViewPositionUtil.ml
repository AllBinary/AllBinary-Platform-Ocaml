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
(* package org.allbinary.game.view *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.view.TileLayerPositionIntoViewPosition *)
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)


let init : 'any1 'any2. 'any1 * 'any2 -> unit = fun (gameCanvasInterface, viewPosition) ->
        let gameCanvasInterface = Obj.repr gameCanvasInterface in
        let viewPosition = Obj.repr viewPosition in
        begin
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic ((Obj.magic gameCanvasInterface)#getLayerManager ())) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((!geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        ignore ((Obj.magic viewPosition)#setTiledLayer (!tiledLayer))
        end [@@warning "-20"]

let () = java_register_static "TileLayerPositionIntoViewPositionUtil.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
class tileLayerPositionIntoViewPositionUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TileLayerPositionIntoViewPositionUtil" (fun arguments -> Obj.repr (new tileLayerPositionIntoViewPositionUtil (Obj.obj arguments)))


