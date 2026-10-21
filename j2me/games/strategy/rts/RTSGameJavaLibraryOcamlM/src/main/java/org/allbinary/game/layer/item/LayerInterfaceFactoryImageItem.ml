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
(* package org.allbinary.game.layer.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.graphics.form.item.ABCustomImageItem *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.layer.LayerInterfaceFactoryInterface *)

class layerInterfaceFactoryImageItem ((label : string), img, (layout : int), (altText : string), (basicColor : BasicColor.basicColor), animationArray_arg, (layerInterfaceFactoryInterface_arg : LayerInterfaceFactoryInterface.layerInterfaceFactoryInterface)) =
  object
    inherit ABCustomImageItem.aBCustomImageItem (label, img, layout, altText, basicColor, 0) as super
    val mutable animationArray : Obj.t = Obj.repr 0
    method animationArray : 'r. 'r = Obj.magic animationArray
    method set_animationArray : 'v. 'v -> unit = fun value' -> animationArray <- Obj.repr value'
    val mutable layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface.layerInterfaceFactoryInterface = (Obj.magic 0)
    method layerInterfaceFactoryInterface = layerInterfaceFactoryInterface
    method set_layerInterfaceFactoryInterface value' = layerInterfaceFactoryInterface <- value'
    
    

    method getLayerInterfaceFactoryInterface () : LayerInterfaceFactoryInterface.layerInterfaceFactoryInterface =
        begin
        (layerInterfaceFactoryInterface :> LayerInterfaceFactoryInterface.layerInterfaceFactoryInterface)
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paintXY ((Obj.magic graphics), x, y));
        let index : int ref = ref ((Array.length (Obj.magic animationArray))) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore ((Obj.magic animationArray).(!index)#paintXY ((Obj.magic graphics), x, y))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        animationArray <- Obj.repr (animationArray_arg);
        layerInterfaceFactoryInterface <- layerInterfaceFactoryInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "LayerInterfaceFactoryImageItem" (fun arguments -> Obj.repr (new layerInterfaceFactoryImageItem (Obj.obj arguments)))


