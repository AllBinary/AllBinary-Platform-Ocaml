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
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class upgradableWideRTSLayerPaintable (upgradableRTSLayerHudPaintable) =
  object (self)
    inherit RTSLayerCompositePaintable.rTSLayerCompositePaintable (upgradableRTSLayerHudPaintable) as super
    val mutable cost : string = ""
    method cost = cost
    method set_cost value' = cost <- value'
    
    

    method update : 'any1. 'any1 -> unit = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        ignore (super#update ((Obj.magic rtsLayer)));
        (self#setCost ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ((self#getUpgradeCost ())))#append ((CommonSeps.getInstance ())#sPACE))#append ((self#getDownGradeCost ())))))))
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#drawString ((self#getCost ()), upgradableRTSLayerHudPaintable#textX, upgradableRTSLayerHudPaintable#costY, 0))
        end [@@warning "-7-20"]
    

    method setCost ((cost_arg : string)) : unit =
        begin
        cost <- cost_arg
        end [@@warning "-7"]
    

    method getCost () : string =
        begin
        cost
        end [@@warning "-7"]

    initializer
      begin
        cost <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "UpgradableWideRTSLayerPaintable" (fun arguments -> Obj.repr (new upgradableWideRTSLayerPaintable (Obj.obj arguments)))


