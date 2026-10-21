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
(* package org.allbinary.game.layer.unit *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.ImageItem *)
(* import org.allbinary.game.layer.RTSGameStrings *)
(* import org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem *)
(* import org.allbinary.game.layer.item.RTSLayerTextAnimation *)
(* import org.allbinary.game.layer.resources.BasicGameResources *)
(* import org.allbinary.game.layer.waypoint.FlagGameResources *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.image.GameFeatureImageCacheFactory *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.form.item.CustomItemUtil *)
(* import org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface *)
(* import org.allbinary.image.ImageCache *)
(* import org.allbinary.layer.LayerInterfaceFactoryInterface *)

let iTEMS : Obj.t = (Obj.repr (CustomItemUtil.getInstance ())#cUSTOM_ITEM_ARRAY)
let get_iTEMS () = Obj.magic iTEMS
let () = java_register_static "UnitItemArrayFactory.get_iTEMS" (fun _ -> Obj.repr (get_iTEMS ()))
class unitItemArrayFactory ((resources_arg : BasicGameResources.basicGameResources array)) =
  object (self)
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable resources : BasicGameResources.basicGameResources array = (Obj.magic 0)
    method resources = resources
    method set_resources value' = resources <- value'
    
    

    method createFlagItem : 'any1 'any2 'return. 'any1 * 'any2 -> 'return = fun (flagResources, layerInterfaceFactoryInterface) ->
        let flagResources = Obj.repr flagResources in
        let layerInterfaceFactoryInterface = Obj.repr layerInterfaceFactoryInterface in
        begin
        let name : string ref = ref ((Obj.magic flagResources)#nAME) in ();
        let index : int ref = ref ((java_string_index_of !name (Obj.repr (commonSeps#sPACE)))) in ();
        if (!index >= 0) then begin
            name := (String.sub !name (!index) (String.length !name - (!index)))
        end;
        (Obj.magic ((self#createNamedFlagItem ((Obj.magic flagResources), !name, (Obj.magic layerInterfaceFactoryInterface)))))
        end [@@warning "-20"]
    

    method createNamedFlagItem : 'any1 'any3 'return. 'any1 * string * 'any3 -> 'return = fun (flagResources, (name : string), layerInterfaceFactoryInterface) ->
        let flagResources = Obj.repr flagResources in
        let layerInterfaceFactoryInterface = Obj.repr layerInterfaceFactoryInterface in
        begin
        let iMAGE_CACHE : Obj.t ref = ref ((Obj.repr (GameFeatureImageCacheFactory.getInstance ()))) in ();
        let image : Obj.t ref = ref ((Obj.repr ((Obj.magic !iMAGE_CACHE)#getWithKey ((Obj.magic flagResources)#rESOURCE_ICON)))) in ();
        let item : Obj.t ref = ref ((Obj.repr (new LayerInterfaceFactoryImageItem.layerInterfaceFactoryImageItem (name, (Obj.magic !image), (Obj.magic (java_call_static "ImageItem.get_lAYOUT_DEFAULT" (Obj.repr ()))), (Obj.magic flagResources)#nAME, basicColor, [| (new RTSLayerTextAnimation.rTSLayerTextAnimation ((RTSGameStrings.getInstance ())#dRAGGABLE, (Obj.magic !image))) |], (Obj.magic layerInterfaceFactoryInterface))))) in ();
        (Obj.magic ((Obj.magic !item)))
        end [@@warning "-20"]
    

    method getItems : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic iTEMS)))
        end
    

    method getResources () : BasicGameResources.basicGameResources array =
        begin
        resources
        end
    

    method indexOf : 'any1. 'any1 -> int = fun (basicGameResources) ->
        let basicGameResources = Obj.repr basicGameResources in
        try
        begin
        for index = ((Array.length resources) - 1) downto 0 do
            if ((Obj.repr resources.(index)) == (Obj.repr (Obj.magic basicGameResources))) then begin
                raise (Java_return (Obj.repr (index)))
            end
        done;
        (-1)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        basicColor <- ((BasicColorFactory.getInstance ())#wHITE :> BasicColor.basicColor);
        ();
        ();
        resources <- resources_arg
      end
  end
let () = java_register_constructor "UnitItemArrayFactory" (fun arguments -> Obj.repr (new unitItemArrayFactory (Obj.obj arguments)))


