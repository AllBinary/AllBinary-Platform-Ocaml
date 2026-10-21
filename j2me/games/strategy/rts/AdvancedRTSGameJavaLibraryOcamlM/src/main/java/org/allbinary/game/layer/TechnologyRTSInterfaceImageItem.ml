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
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.graphics.form.item.ABCustomImageItem *)
(* import org.allbinary.logic.java.character.CharArrayFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.logic.math.PrimitiveLongUtil *)

class technologyRTSInterfaceImageItem ((label : string), img, (layout : int), (altText : string), (basicColor : BasicColor.basicColor), (rtsInterface_arg : RTSInterface.rTSInterface)) =
  object (self)
    inherit ABCustomImageItem.aBCustomImageItem (label, img, layout, altText, basicColor, 0) as super
    val mutable rtsInterface : RTSInterface.rTSInterface = (Obj.magic 0)
    method rtsInterface = rtsInterface
    method set_rtsInterface value' = rtsInterface <- value'
    val mutable primitiveLongUtil : PrimitiveLongUtil.primitiveLongUtil = (Obj.magic 0)
    method primitiveLongUtil = primitiveLongUtil
    method set_primitiveLongUtil value' = primitiveLongUtil <- value'
    val mutable lEVEL : string = ""
    method lEVEL = lEVEL
    method set_lEVEL value' = lEVEL <- value'
    val mutable cOST : string = ""
    method cOST = cOST
    method set_cOST value' = cOST <- value'
    val mutable dOLLAR : string = ""
    method dOLLAR = dOLLAR
    method set_dOLLAR value' = dOLLAR <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable costString : char array = (Obj.magic 0)
    method costString = costString
    method set_costString value' = costString <- value'
    val mutable costLength : int = 0
    method costLength = costLength
    method set_costLength value' = costLength <- value'
    val mutable levelString : char array = (Obj.magic 0)
    method levelString = levelString
    method set_levelString value' = levelString <- value'
    val mutable levelLength : int = 0
    method levelLength = levelLength
    method set_levelLength value' = levelLength <- value'
    val mutable adjustedCostLabelY : int = 0
    method adjustedCostLabelY = adjustedCostLabelY
    method set_adjustedCostLabelY value' = adjustedCostLabelY <- value'
    val mutable adjustedCostX : int = 0
    method adjustedCostX = adjustedCostX
    method set_adjustedCostX value' = adjustedCostX <- value'
    val mutable adjustedCostY : int = 0
    method adjustedCostY = adjustedCostY
    method set_adjustedCostY value' = adjustedCostY <- value'
    val mutable adjustedLevelX : int = 0
    method adjustedLevelX = adjustedLevelX
    method set_adjustedLevelX value' = adjustedLevelX <- value'
    val mutable adjustedLevelY : int = 0
    method adjustedLevelY = adjustedLevelY
    method set_adjustedLevelY value' = adjustedLevelY <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        let fontHeight : int ref = ref (((Obj.magic !font)#getHeight ())) in ();
        let imageHeight : int ref = ref (0) in ();
        let image : Obj.t ref = ref ((Obj.repr (self#getImage ()))) in ();
        if ((Obj.repr (Obj.magic !image)) != (Obj.repr (NullImage.get_nULL_IMAGE ()))) then begin
            imageHeight := ((Obj.magic !image)#getHeight ())
        end;
        adjustedCostLabelY <- (((-yOffset) + !imageHeight) - ((3 * !fontHeight)));
        adjustedCostY <- (((-yOffset) + !imageHeight) - ((2 * !fontHeight)));
        adjustedCostX <- (2 + (((String.length dOLLAR) * ((!fontHeight - 1)))));
        adjustedLevelY <- (((-yOffset) + !imageHeight) - !fontHeight);
        adjustedLevelX <- (2 + (((String.length lEVEL) * ((!fontHeight - 1)))));
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method getRtsInterface () : RTSInterface.rTSInterface =
        begin
        (rtsInterface :> RTSInterface.rTSInterface)
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        costString <- (primitiveLongUtil#getCharArray (((self#getRtsInterface ())#getUpgradeCost ())));
        levelString <- (primitiveLongUtil#getCharArray (((self#getRtsInterface ())#getLevel ())))
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore (super#paintXY ((Obj.magic graphics), x, y));
        let xa : int ref = ref ((x + 2)) in ();
        ignore ((Obj.magic graphics)#drawString (cOST, !xa, (y + adjustedCostLabelY), 0));
        ignore ((Obj.magic graphics)#drawString (dOLLAR, !xa, (y + adjustedCostY), 0));
        ignore ((Obj.magic graphics)#drawChars (costString, 0, costLength, (x + adjustedCostX), (y + adjustedCostY), 0));
        ignore ((Obj.magic graphics)#drawString (lEVEL, !xa, (y + adjustedLevelY), 0));
        ignore ((Obj.magic graphics)#drawChars (levelString, 0, levelLength, (x + adjustedLevelX), (y + adjustedLevelY), 0))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        primitiveLongUtil <- ((PrimitiveLongUtil.createPowerOfTen (10000)) :> PrimitiveLongUtil.primitiveLongUtil);
        lEVEL <- "Level";
        cOST <- "Cost";
        dOLLAR <- "$";
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        costString <- ((CharArrayFactory.getInstance ())#getZeroCharArray ());
        costLength <- 0;
        levelString <- ((CharArrayFactory.getInstance ())#getZeroCharArray ());
        levelLength <- 0;
        adjustedCostLabelY <- 0;
        adjustedCostX <- 0;
        adjustedCostY <- 0;
        adjustedLevelX <- 0;
        adjustedLevelY <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        rtsInterface <- rtsInterface_arg;
        (self#update ())
      end
  end
let () = java_register_constructor "TechnologyRTSInterfaceImageItem" (fun arguments -> Obj.repr (new technologyRTSInterfaceImageItem (Obj.obj arguments)))


