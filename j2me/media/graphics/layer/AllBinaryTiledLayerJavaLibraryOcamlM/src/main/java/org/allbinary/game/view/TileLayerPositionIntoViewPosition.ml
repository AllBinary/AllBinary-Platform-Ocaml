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
(* import org.allbinary.layer.Layer *)
(* import org.allbinary.layer.NullLayer *)
(* import org.allbinary.view.ViewPosition *)

class tileLayerPositionIntoViewPosition () =
  object
    inherit ViewPosition.viewPosition (0, 0, 0) as super
    val mutable tiledLayer : Obj.t = Obj.repr 0
    method tiledLayer : 'r. 'r = Obj.magic tiledLayer
    method set_tiledLayer : 'v. 'v -> unit = fun value' -> tiledLayer <- Obj.repr value'
    
    

    method getX () : int =
        begin
        ((super#getX ()) - ((Obj.magic tiledLayer)#getXP ()))
        end [@@warning "-7"]
    

    method getY () : int =
        begin
        ((super#getY ()) - ((Obj.magic tiledLayer)#getYP ()))
        end [@@warning "-7"]
    

    method getZ () : int =
        begin
        ((super#getZ ()) - ((Obj.magic tiledLayer)#getZP ()))
        end [@@warning "-7"]
    

    method setTiledLayer : 'any1. 'any1 -> unit = fun (tiledLayer_arg) ->
        let tiledLayer_arg = Obj.repr tiledLayer_arg in
        begin
        tiledLayer <- Obj.repr ((Obj.magic tiledLayer_arg))
        end [@@warning "-7-20"]

    initializer
      begin
        tiledLayer <- (Obj.repr (NullLayer.getInstance ()));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "TileLayerPositionIntoViewPosition" (fun arguments -> Obj.repr (new tileLayerPositionIntoViewPosition (Obj.obj arguments)))


