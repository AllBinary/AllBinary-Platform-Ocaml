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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.AndroidUtil *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.game.part.weapon.BasicWeaponPart *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)

class rTSLayerHudPaintable () =
  object (self)
    inherit SelectionHudPaintable.selectionHudPaintable () as super
    val mutable weaponProperties : string array = (Obj.magic 0)
    method weaponProperties = weaponProperties
    method set_weaponProperties value' = weaponProperties <- value'
    val mutable rtsLayer : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer = (Obj.magic 0)
    method rtsLayer = rtsLayer
    method set_rtsLayer value' = rtsLayer <- value'
    val mutable costY : int = 0
    method costY = costY
    method set_costY value' = costY <- value'
    val mutable costY1 : int = 0
    method costY1 = costY1
    method set_costY1 value' = costY1 <- value'
    val mutable fontHeight : int = 0
    method fontHeight = fontHeight
    method set_fontHeight value' = fontHeight <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#updateMeasurement ((Obj.magic graphics)));
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        fontHeight <- ((Obj.magic !font)#getHeight ());
        costY1 <- (((self#y) + (((((Array.length weaponProperties) + 1)) * fontHeight))));
        if (not (Obj.magic (java_call_static "AndroidUtil.isAndroid" (Obj.repr ())))) then begin
            costY <- costY1
        end else begin
            costY <- (((self#y) + (((((Array.length weaponProperties) + 2)) * fontHeight))))
        end
        end [@@warning "-7-20"]
    

    method updateSelectionInfo () : unit =
        begin
        ignore (self#setName (((self#getRtsLayer ())#getName ())));
        let partInterface : BasicWeaponPart.basicWeaponPart ref = ref (((Obj.magic ((self#getRtsLayer ())#getPartInterfaceArray ()).(0)) :> BasicWeaponPart.basicWeaponPart)) in ();
        weaponProperties <- ((!partInterface#getWeaponProperties ())#toStringArray ());
        (self#set_myFontProcessor) ((self#updateMyFontProcessor))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paint ((Obj.magic graphics)));
        let size : int ref = ref ((Array.length weaponProperties)) in ();
        for index = 0 to !size - 1 do
            ignore ((Obj.magic graphics)#drawString (weaponProperties.(index), (self#textX), ((self#y) + ((((index + 1)) * fontHeight))), 0))
        done
        end [@@warning "-7-20"]
    

    method setRtsLayer : 'any1. 'any1 -> unit = fun (rtsLayer_arg) ->
        let rtsLayer_arg = Obj.repr rtsLayer_arg in
        begin
        rtsLayer <- (Obj.magic rtsLayer_arg)
        end [@@warning "-7-20"]
    

    method getRtsLayer () : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer =
        begin
        (rtsLayer :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)
        end [@@warning "-7"]

    initializer
      begin
        weaponProperties <- ((StringUtil.getInstance ())#getArrayInstance ());
        rtsLayer <- ((CollidableDestroyableDamageableLayer.getNullInstance ()) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer);
        costY <- 0;
        costY1 <- 0;
        fontHeight <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "RTSLayerHudPaintable" (fun arguments -> Obj.repr (new rTSLayerHudPaintable (Obj.obj arguments)))

let instance = (new rTSLayerHudPaintable ())
let get_instance () = instance
let () = java_register_static "RTSLayerHudPaintable.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "RTSLayerHudPaintable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


