(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input.form *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.LayerPositionFinderInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory *)

class nullRTSGameLayerPositionFinder () =
  object
    
    

    method getLayerInterface : 'any1. 'any1 -> AllBinaryLayer.allBinaryLayer = fun (geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        let layerInterface : AllBinaryLayer.allBinaryLayer ref = ref ((((DropCellPositionHistory.getInstance ())#getLayerInterface ((Obj.magic geographicMapCellPosition))) :> AllBinaryLayer.allBinaryLayer)) in ();
        (!layerInterface :> AllBinaryLayer.allBinaryLayer)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NullRTSGameLayerPositionFinder" (fun arguments -> Obj.repr (new nullRTSGameLayerPositionFinder (Obj.obj arguments)))

let instance = (new nullRTSGameLayerPositionFinder ())
let get_instance () = instance
let () = java_register_static "NullRTSGameLayerPositionFinder.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "NullRTSGameLayerPositionFinder.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


