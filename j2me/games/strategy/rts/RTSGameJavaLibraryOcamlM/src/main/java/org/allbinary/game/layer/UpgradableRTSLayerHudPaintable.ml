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
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.logic.java.character.CharArrayFactory *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.input.motion.button.CommonButtons *)

class upgradableRTSLayerHudPaintable () =
  object (self)
    inherit SelectionHudPaintable.selectionHudPaintable () as super
    val mutable pERCENT : string = ""
    method pERCENT = pERCENT
    method set_pERCENT value' = pERCENT <- value'
    val mutable rtsLayer : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer = (Obj.magic 0)
    method rtsLayer = rtsLayer
    method set_rtsLayer value' = rtsLayer <- value'
    val mutable costY : int = 0
    method costY = costY
    method set_costY value' = costY <- value'
    val mutable costY1 : int = 0
    method costY1 = costY1
    method set_costY1 value' = costY1 <- value'
    val mutable percentCompleteX2 : int = 0
    method percentCompleteX2 = percentCompleteX2
    method set_percentCompleteX2 value' = percentCompleteX2 <- value'
    val mutable rtsLayerCompositePaintableLateInit : Obj.t = Obj.repr 0
    method rtsLayerCompositePaintableLateInit : 'r. 'r = Obj.magic rtsLayerCompositePaintableLateInit
    method set_rtsLayerCompositePaintableLateInit : 'v. 'v -> unit = fun value' -> rtsLayerCompositePaintableLateInit <- Obj.repr value'
    val mutable charHeight : int = 0
    method charHeight = charHeight
    method set_charHeight value' = charHeight <- value'
    val mutable charWidth : int = 0
    method charWidth = charWidth
    method set_charWidth value' = charWidth <- value'
    val mutable percentComplete : int = 0
    method percentComplete = percentComplete
    method set_percentComplete value' = percentComplete <- value'
    val mutable percentCompleteX : int = 0
    method percentCompleteX = percentCompleteX
    method set_percentCompleteX value' = percentCompleteX <- value'
    val mutable percentCompleteArray : char array = (Obj.magic 0)
    method percentCompleteArray = percentCompleteArray
    method set_percentCompleteArray value' = percentCompleteArray <- value'
    val mutable currentTotalDigits : int = 0
    method currentTotalDigits = currentTotalDigits
    method set_currentTotalDigits value' = currentTotalDigits <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#updateMeasurement ((Obj.magic graphics)));
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        charHeight <- ((Obj.magic !font)#getHeight ());
        charWidth <- (MyFontProcessor.defaultCharWidth ((Obj.magic !font)))
        end [@@warning "-7-20"]
    

    method update () : unit =
        begin
        ignore (super#update ());
        let commonButtons : CommonButtons.commonButtons ref = ref (((CommonButtons.getInstance ()) :> CommonButtons.commonButtons)) in ();
        costY <- ((y + !commonButtons#sTANDARD_BUTTON_SIZE));
        costY1 <- (((y + !commonButtons#sTANDARD_BUTTON_SIZE) - charHeight));
        percentCompleteX2 <- ((imageX + !commonButtons#sTANDARD_BUTTON_SIZE) - charWidth);
        let displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        if ((!displayInfoSingleton#getLastWidth ()) > 320) then begin
            rtsLayerCompositePaintableLateInit <- Obj.repr ((Obj.obj (java_new "UpgradableWideRTSLayerPaintable" (Obj.repr (self)))))
        end else begin
            rtsLayerCompositePaintableLateInit <- Obj.repr ((Obj.obj (java_new "RTSLayerCompositePaintable" (Obj.repr (self)))))
        end
        end [@@warning "-7"]
    

    method updateSelectionInfo () : unit =
        begin
        let rtsLayer_arg : RTSLayer.rTSLayer ref = ref (((Obj.magic (self#getRtsLayer ())) :> RTSLayer.rTSLayer)) in ();
        ignore ((Obj.magic rtsLayerCompositePaintableLateInit)#update (!rtsLayer_arg));
        ignore (self#setAnimationInterface ((!rtsLayer_arg#getVerticleBuildAnimationInterface ())));
        ignore (self#setName ((!rtsLayer_arg#getName ())))
        end [@@warning "-7"]
    

    method updateInfo () : unit =
        begin
        let rtsLayer_arg : RTSLayer.rTSLayer ref = ref (((Obj.magic (self#getRtsLayer ())) :> RTSLayer.rTSLayer)) in ();
        percentComplete <- (!rtsLayer_arg#getPercentComplete ());
        if (percentComplete < 10) then begin
            percentCompleteX <- 32
        end else if (percentComplete < 100) then begin
            percentCompleteX <- 24
        end else begin
            percentCompleteX <- 16
        end;
        percentCompleteArray <- ((self#getPrimitiveLongUtil ())#getCharArray (percentComplete));
        currentTotalDigits <- ((self#getPrimitiveLongUtil ())#getCurrentTotalDigits ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paint ((Obj.magic graphics)));
        ignore ((Obj.magic rtsLayerCompositePaintableLateInit)#paint ((Obj.magic graphics)));
        ignore ((Obj.magic graphics)#drawChars (percentCompleteArray, 0, currentTotalDigits, (imageX + percentCompleteX), costY, 0));
        ignore ((Obj.magic graphics)#drawString (pERCENT, percentCompleteX2, costY, 0));
        ignore ((self#getAnimationInterface ())#paintXY ((Obj.magic graphics), imageX, y))
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
        pERCENT <- "%";
        rtsLayer <- ((CollidableDestroyableDamageableLayer.getNullInstance ()) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer);
        costY <- 0;
        costY1 <- 0;
        percentCompleteX2 <- 0;
        rtsLayerCompositePaintableLateInit <- (Obj.repr (Obj.magic 0));
        charHeight <- 0;
        charWidth <- 0;
        percentComplete <- 0;
        percentCompleteX <- 0;
        percentCompleteArray <- ((CharArrayFactory.getInstance ())#getZeroCharArray ());
        currentTotalDigits <- 0;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "UpgradableRTSLayerHudPaintable" (fun arguments -> Obj.repr (new upgradableRTSLayerHudPaintable (Obj.obj arguments)))

let instance = (new upgradableRTSLayerHudPaintable ())
let get_instance () = instance
let () = java_register_static "UpgradableRTSLayerHudPaintable.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "UpgradableRTSLayerHudPaintable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


