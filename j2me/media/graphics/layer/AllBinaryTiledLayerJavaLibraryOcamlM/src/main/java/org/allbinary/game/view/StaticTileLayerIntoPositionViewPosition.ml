(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
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
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.Layer *)
(* import org.allbinary.layer.NullLayer *)
(* import org.allbinary.view.ViewPosition *)

let tiledLayer : Obj.t ref = ref ((Obj.repr (NullLayer.getInstance ())))
let get_tiledLayer () = Obj.magic !tiledLayer
let set_tiledLayer value' = tiledLayer := Obj.repr value'
let () = java_register_static "StaticTileLayerIntoPositionViewPosition.get_tiledLayer" (fun _ -> Obj.repr (get_tiledLayer ()))
let layer : AllBinaryLayer.allBinaryLayer ref = ref (((AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()) :> AllBinaryLayer.allBinaryLayer))
let get_layer () = !layer
let set_layer value' = layer := value'
let () = java_register_static "StaticTileLayerIntoPositionViewPosition.get_layer" (fun _ -> Obj.repr (get_layer ()))

let setTiledLayer : 'any1. 'any1 -> unit = fun (tiledLayer_arg) ->
        let tiledLayer_arg = Obj.repr tiledLayer_arg in
        begin
        tiledLayer := Obj.repr ((Obj.magic tiledLayer_arg))
        end [@@warning "-20"]

let () = java_register_static "StaticTileLayerIntoPositionViewPosition.setTiledLayer" (fun arguments -> Obj.repr (setTiledLayer (Obj.obj arguments)))
class staticTileLayerIntoPositionViewPosition () =
  object
    inherit ViewPosition.viewPosition (0, 0, 0) as super
    
    

    method getX () : int =
        begin
        ((super#getX ()) - ((Obj.magic !tiledLayer)#getXP ()))
        end [@@warning "-7"]
    

    method getY () : int =
        begin
        ((super#getY ()) - ((Obj.magic !tiledLayer)#getYP ()))
        end [@@warning "-7"]
    

    method getZ () : int =
        begin
        ((super#getZ ()) - ((Obj.magic !tiledLayer)#getZP ()))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "StaticTileLayerIntoPositionViewPosition" (fun arguments -> Obj.repr (new staticTileLayerIntoPositionViewPosition (Obj.obj arguments)))


