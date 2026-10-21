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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class tiledLayerUtil () =
  object
    

    method keepOnBorderdMapX : 'any1. 'any1 * int * int * int -> int = fun (terrainTiledLayer, (x : int), (width : int), (mapBorderBufferWidth : int)) ->
        let terrainTiledLayer = Obj.repr terrainTiledLayer in
        begin
        let newX : int ref = ref (x) in ();
        let maxRight : int ref = ref (((((Obj.magic terrainTiledLayer)#getWidth ()) - width) - mapBorderBufferWidth)) in ();
        if ((x + width) > !maxRight) then begin
            newX := !maxRight
        end;
        if (x < mapBorderBufferWidth) then begin
            newX := mapBorderBufferWidth
        end;
        !newX
        end [@@warning "-20"]
    

    method keepOnBorderdMapY : 'any1. 'any1 * int * int * int -> int = fun (terrainTiledLayer, (y : int), (height : int), (mapBorderBufferHeight : int)) ->
        let terrainTiledLayer = Obj.repr terrainTiledLayer in
        begin
        let newY : int ref = ref (y) in ();
        let maxBottom : int ref = ref (((((Obj.magic terrainTiledLayer)#getHeight ()) - height) - mapBorderBufferHeight)) in ();
        if ((y + height) > !maxBottom) then begin
            newY := !maxBottom
        end;
        if (y < mapBorderBufferHeight) then begin
            newY := mapBorderBufferHeight
        end;
        !newY
        end [@@warning "-20"]
    

    method keepOnMapX : 'any1. 'any1 * int * int -> int = fun (terrainTiledLayer, (x : int), (width : int)) ->
        let terrainTiledLayer = Obj.repr terrainTiledLayer in
        begin
        let newX : int ref = ref (x) in ();
        let maxRight : int ref = ref ((((Obj.magic terrainTiledLayer)#getWidth ()) - width)) in ();
        if (x >= !maxRight) then begin
            newX := !maxRight
        end;
        if (x < 0) then begin
            newX := 0
        end;
        !newX
        end [@@warning "-20"]
    

    method keepOnMapY : 'any1. 'any1 * int * int -> int = fun (terrainTiledLayer, (y : int), (height : int)) ->
        let terrainTiledLayer = Obj.repr terrainTiledLayer in
        begin
        let newY : int ref = ref (y) in ();
        let maxBottom : int ref = ref ((((Obj.magic terrainTiledLayer)#getHeight ()) - height)) in ();
        if (y >= !maxBottom) then begin
            newY := !maxBottom
        end;
        if (y < 0) then begin
            newY := 0
        end;
        !newY
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TiledLayerUtil" (fun arguments -> Obj.repr (new tiledLayerUtil (Obj.obj arguments)))

let instance = (new tiledLayerUtil ())
let get_instance () = instance
let () = java_register_static "TiledLayerUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TiledLayerUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


