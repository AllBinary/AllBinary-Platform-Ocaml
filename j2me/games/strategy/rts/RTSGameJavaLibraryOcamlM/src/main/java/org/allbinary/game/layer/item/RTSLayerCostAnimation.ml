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
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.game.layer.CostLayerInterfaceFactoryInterface *)
(* import org.allbinary.game.rts.technology.event.TechEventListenerInterface *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.math.PrimitiveLongUtil *)
(* import org.allbinary.logic.util.event.EventStrings *)

class rTSLayerCostAnimation (image_arg, (layerInterfaceFactoryInterface_arg : CostLayerInterfaceFactoryInterface.costLayerInterfaceFactoryInterface)) =
  object (self)
    inherit Animation.animation () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable primitiveLongUtil : PrimitiveLongUtil.primitiveLongUtil = (Obj.magic 0)
    method primitiveLongUtil = primitiveLongUtil
    method set_primitiveLongUtil value' = primitiveLongUtil <- value'
    val mutable dOLLAR : string = ""
    method dOLLAR = dOLLAR
    method set_dOLLAR value' = dOLLAR <- value'
    val mutable image : Obj.t = Obj.repr 0
    method image : 'r. 'r = Obj.magic image
    method set_image : 'v. 'v -> unit = fun value' -> image <- Obj.repr value'
    val mutable layerInterfaceFactoryInterface : CostLayerInterfaceFactoryInterface.costLayerInterfaceFactoryInterface = (Obj.magic 0)
    method layerInterfaceFactoryInterface = layerInterfaceFactoryInterface
    method set_layerInterfaceFactoryInterface value' = layerInterfaceFactoryInterface <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable costString : char array = (Obj.magic 0)
    method costString = costString
    method set_costString value' = costString <- value'
    val mutable len : int = 0
    method len = len
    method set_len value' = len <- value'
    val mutable adjustedCostX : int = 0
    method adjustedCostX = adjustedCostX
    method set_adjustedCostX value' = adjustedCostX <- value'
    val mutable fontHeight : int = 0
    method fontHeight = fontHeight
    method set_fontHeight value' = fontHeight <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        fontHeight <- ((Obj.magic !font)#getHeight ());
        adjustedCostX <- ((Obj.magic !font)#stringWidth (dOLLAR));
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_event) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method onTechEvent : 'any1. 'any1 -> unit = fun (_event) ->
        begin
        (try
            (self#update ())
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "onTechEvent", e))
        end)
        end [@@warning "-7-20"]
    

    method update () : unit =
        begin
        len <- 0;
        costString <- (primitiveLongUtil#getCharArray ((layerInterfaceFactoryInterface#getCost ())));
        len <- (primitiveLongUtil#getCurrentTotalDigits ())
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore (super#paintXY ((Obj.magic graphics), x, y));
        let adjustedCostY : int ref = ref ((((Obj.magic image)#getHeight ()) - fontHeight)) in ();
        let xa : int ref = ref ((x + 2)) in ();
        ignore ((Obj.magic graphics)#drawString (dOLLAR, !xa, (y + !adjustedCostY), 0));
        ignore ((Obj.magic graphics)#drawChars (costString, 0, len, (x + adjustedCostX), (y + !adjustedCostY), 0))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        primitiveLongUtil <- ((PrimitiveLongUtil.createPowerOfTen (10000)) :> PrimitiveLongUtil.primitiveLongUtil);
        dOLLAR <- "$";
        ();
        ();
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        costString <- (NullUtil.getInstance ())#nULL_CHAR_ARRAY;
        len <- 0;
        adjustedCostX <- 0;
        fontHeight <- 0;
        ();
        image <- Obj.repr (image_arg);
        layerInterfaceFactoryInterface <- layerInterfaceFactoryInterface_arg;
        (self#update ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "RTSLayerCostAnimation" (fun arguments -> Obj.repr (new rTSLayerCostAnimation (Obj.obj arguments)))


