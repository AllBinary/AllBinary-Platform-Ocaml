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
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Screen *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.graphics.form.item.ABCustomItemInterface *)
(* import org.allbinary.graphics.color.BasicColor *)

class tileLayerItem ((label : string), (tiledLayer_arg : AllBinaryTiledLayer.allBinaryTiledLayer), (_layout : int), (_altText : string), (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object
    inherit ABCustomItem.aBCustomItem (label, backgroundBasicColor, foregroundBasicColor)
    val mutable tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer = (Obj.magic 0)
    method tiledLayer = tiledLayer
    method set_tiledLayer value' = tiledLayer <- value'
    
    

    method setOwner : 'any1. 'any1 -> unit = fun (_owner) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getMinimumWidth () : int =
        begin
        (tiledLayer#getWidth ())
        end [@@warning "-7"]
    

    method getMinimumHeight () : int =
        begin
        (tiledLayer#getHeight ())
        end [@@warning "-7"]
    

    method getMinContentHeight () : int =
        begin
        (tiledLayer#getHeight ())
        end [@@warning "-7"]
    

    method getMinContentWidth () : int =
        begin
        (tiledLayer#getWidth ())
        end [@@warning "-7"]
    

    method getPrefContentHeight ((_width : int)) : int =
        begin
        (tiledLayer#getHeight ())
        end [@@warning "-7"]
    

    method getPrefContentWidth ((_height : int)) : int =
        begin
        (tiledLayer#getWidth ())
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (tiledLayer#setPosition (x, y, (tiledLayer#getZP ())));
        ignore (tiledLayer#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method paintUnselected : 'any1. 'any1 * int * int -> unit = fun (_graphics, (_x : int), (_y : int)) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        tiledLayer <- tiledLayer_arg
      end
  end
let () = java_register_constructor "TileLayerItem" (fun arguments -> Obj.repr (new tileLayerItem (Obj.obj arguments)))


