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
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.logic.string.StringMaker *)

class rTSLayerCompositePaintable (upgradableRTSLayerHudPaintable_arg) =
  object (self)
    inherit Paintable.paintable ()
    val mutable upgradeCost : string = ""
    method upgradeCost = upgradeCost
    method set_upgradeCost value' = upgradeCost <- value'
    val mutable downGradeCost : string = ""
    method downGradeCost = downGradeCost
    method set_downGradeCost value' = downGradeCost <- value'
    val mutable uPGRADE : string = ""
    method uPGRADE = uPGRADE
    method set_uPGRADE value' = uPGRADE <- value'
    val mutable dOWNGRADE : string = ""
    method dOWNGRADE = dOWNGRADE
    method set_dOWNGRADE value' = dOWNGRADE <- value'
    val mutable upgradableRTSLayerHudPaintable : Obj.t = Obj.repr 0
    method upgradableRTSLayerHudPaintable : 'r. 'r = Obj.magic upgradableRTSLayerHudPaintable
    method set_upgradableRTSLayerHudPaintable : 'v. 'v -> unit = fun value' -> upgradableRTSLayerHudPaintable <- Obj.repr value'
    
    

    method update : 'any1. 'any1 -> unit = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        if ((Obj.magic rtsLayer)#isUpgradeable ()) then begin
            (self#setUpgradeCost ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (uPGRADE))#appendint ((java_to_int (Obj.repr (((Obj.magic rtsLayer)#getUpgradeCost ()))))))))))
        end else begin
            (self#setUpgradeCost ((StringUtil.getInstance ())#eMPTY_STRING))
        end;
        if ((Obj.magic rtsLayer)#isDowngradeable ()) then begin
            (self#setDownGradeCost ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (dOWNGRADE))#appendint ((java_to_int (Obj.repr (((Obj.magic rtsLayer)#getDowngradeCost ()))))))))))
        end else begin
            (self#setDownGradeCost ((StringUtil.getInstance ())#eMPTY_STRING))
        end
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#drawString ((self#getDownGradeCost ()), (Obj.magic upgradableRTSLayerHudPaintable)#textX, (Obj.magic upgradableRTSLayerHudPaintable)#costY1, 0));
        ignore ((Obj.magic graphics)#drawString ((self#getUpgradeCost ()), (Obj.magic upgradableRTSLayerHudPaintable)#textX, (Obj.magic upgradableRTSLayerHudPaintable)#costY, 0))
        end [@@warning "-7-20"]
    

    method setUpgradeCost ((upgradeCost_arg : string)) : unit =
        begin
        upgradeCost <- upgradeCost_arg
        end [@@warning "-7"]
    

    method getUpgradeCost () : string =
        begin
        upgradeCost
        end [@@warning "-7"]
    

    method setDownGradeCost ((downGradeCost_arg : string)) : unit =
        begin
        downGradeCost <- downGradeCost_arg
        end [@@warning "-7"]
    

    method getDownGradeCost () : string =
        begin
        downGradeCost
        end [@@warning "-7"]

    initializer
      begin
        upgradeCost <- (StringUtil.getInstance ())#eMPTY_STRING;
        downGradeCost <- (StringUtil.getInstance ())#eMPTY_STRING;
        uPGRADE <- "Up: $";
        dOWNGRADE <- "Down: $-";
        ();
        ();
        upgradableRTSLayerHudPaintable <- Obj.repr (upgradableRTSLayerHudPaintable_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "RTSLayerCompositePaintable" (fun arguments -> Obj.repr (new rTSLayerCompositePaintable (Obj.obj arguments)))


