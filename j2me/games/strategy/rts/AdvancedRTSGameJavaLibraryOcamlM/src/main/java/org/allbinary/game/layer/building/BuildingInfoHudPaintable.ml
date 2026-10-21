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
(* package org.allbinary.game.layer.building *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.ag.layer.hud.basic.NumberStringHud *)
(* import org.allbinary.game.ag.layer.hud.basic.NumberStringHudFactory *)
(* import org.allbinary.game.layer.SelectionHudPaintable *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.game.graphics.hud.BasicHudFactory *)
(* import org.allbinary.game.layer.NullPathFindingLayer *)
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.logic.math.MathUtil *)

class buildingInfoHudPaintable () =
  object (self)
    inherit SelectionHudPaintable.selectionHudPaintable () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable hEALTH : string = ""
    method hEALTH = hEALTH
    method set_hEALTH value' = hEALTH <- value'
    val mutable productivityHud : NumberStringHud.numberStringHud = (Obj.magic 0)
    method productivityHud = productivityHud
    method set_productivityHud value' = productivityHud <- value'
    val mutable efficiencyHud : NumberStringHud.numberStringHud = (Obj.magic 0)
    method efficiencyHud = efficiencyHud
    method set_efficiencyHud value' = efficiencyHud <- value'
    val mutable healthHud : NumberStringHud.numberStringHud = (Obj.magic 0)
    method healthHud = healthHud
    method set_healthHud value' = healthHud <- value'
    val mutable maxHealthHud : NumberStringHud.numberStringHud = (Obj.magic 0)
    method maxHealthHud = maxHealthHud
    method set_maxHealthHud value' = maxHealthHud <- value'
    val mutable rtsLayer : PathFindingLayerInterface.pathFindingLayerInterface = (Obj.magic 0)
    method rtsLayer = rtsLayer
    method set_rtsLayer value' = rtsLayer <- value'
    val mutable currentHealth : int = 0
    method currentHealth = currentHealth
    method set_currentHealth value' = currentHealth <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        let totalLength : int ref = ref (((String.length hEALTH) + ((MathUtil.getInstance ())#getTotalDigits (currentHealth)))) in ();
        ignore (maxHealthHud#setX ((textX + (MyFontProcessor.defaultStringWidth ((Obj.magic !font), !totalLength)))));
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        ignore (super#setBasicColorP ((Obj.magic basicColor)));
        ignore (productivityHud#setBasicColorP ((Obj.magic basicColor)));
        ignore (efficiencyHud#setBasicColorP ((Obj.magic basicColor)));
        ignore (healthHud#setBasicColorP ((Obj.magic basicColor)));
        ignore (maxHealthHud#setBasicColorP ((Obj.magic basicColor)))
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paint ((Obj.magic graphics)));
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore (productivityHud#paint ((Obj.magic graphics)));
        ignore (efficiencyHud#paint ((Obj.magic graphics)));
        ignore (healthHud#paint ((Obj.magic graphics)));
        ignore (maxHealthHud#paint ((Obj.magic graphics)));
        ignore ((self#getAnimationInterface ())#paintXY ((Obj.magic graphics), imageX, y))
        end [@@warning "-7-20"]
    

    method updateSelectionInfo () : unit =
        begin
        let buildingLayer : Obj.t ref = ref ((Obj.repr (Obj.magic rtsLayer))) in ();
        ignore (self#setName (((Obj.magic !buildingLayer)#getName ())));
        ignore (self#setAnimationInterface (((Obj.magic !buildingLayer)#getVerticleBuildAnimationInterface ())));
        ignore (productivityHud#set (((Obj.magic !buildingLayer)#getProductivity ())));
        ignore (efficiencyHud#set ((((Obj.magic !buildingLayer)#getEfficiency ()) / 100)));
        currentHealth <- (((Obj.magic !buildingLayer)#getHealthInterface ())#getHealth ());
        ignore (healthHud#set (currentHealth));
        myFontProcessor <- updateMyFontProcessor;
        ignore (maxHealthHud#set ((((Obj.magic !buildingLayer)#getHealthInterface ())#getMaxHealth ())))
        end [@@warning "-7"]
    

    method setRtsLayer : 'any1. 'any1 -> unit = fun (rtsLayer_arg) ->
        let rtsLayer_arg = Obj.repr rtsLayer_arg in
        begin
        rtsLayer <- (Obj.magic rtsLayer_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        hEALTH <- "Health:";
        ();
        ();
        ();
        ();
        rtsLayer <- ((NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER ()) :> PathFindingLayerInterface.pathFindingLayerInterface);
        currentHealth <- 0;
        ();
        let numberStringHudFactory : NumberStringHudFactory.numberStringHudFactory ref = ref (((NumberStringHudFactory.getInstance ()) :> NumberStringHudFactory.numberStringHudFactory)) in ();
        let productivityHud_arg : NumberStringHud.numberStringHud ref = ref ((!numberStringHudFactory#nULL_NUMBER_STRING_HUD :> NumberStringHud.numberStringHud)) in ();
        let efficiencyHud_arg : NumberStringHud.numberStringHud ref = ref ((!numberStringHudFactory#nULL_NUMBER_STRING_HUD :> NumberStringHud.numberStringHud)) in ();
        let healthHud_arg : NumberStringHud.numberStringHud ref = ref ((!numberStringHudFactory#nULL_NUMBER_STRING_HUD :> NumberStringHud.numberStringHud)) in ();
        let maxHealthHud_arg : NumberStringHud.numberStringHud ref = ref ((!numberStringHudFactory#nULL_NUMBER_STRING_HUD :> NumberStringHud.numberStringHud)) in ();
        (try
            let index : int ref = ref (0) in ();
            let basicHudFactory : BasicHudFactory.basicHudFactory ref = ref (((BasicHudFactory.getInstance ()) :> BasicHudFactory.basicHudFactory)) in ();
            let basicColor : BasicColor.basicColor ref = ref (((self#getBasicColorP ()) :> BasicColor.basicColor)) in ();
            let textX : int ref = ref (textX) in ();
            let y : int ref = ref (y) in ();
            let firstIndex : int ref = ref (!index) in ();
            (* Java nested class ProductivityNumberStringHud: move it to its own module *) ();
            productivityHud_arg := (new ProductivityNumberStringHud.productivityNumberStringHud ());
            index := !index + 1;
            let secondIndex : int ref = ref (!index) in ();
            (* Java nested class EfficiencyNumberStringHud: move it to its own module *) ();
            efficiencyHud_arg := (new EfficiencyNumberStringHud.efficiencyNumberStringHud ());
            index := !index + 1;
            let hEALTH_arg : string ref = ref (hEALTH) in ();
            let thirdIndex : int ref = ref (!index) in ();
            (* Java nested class HealthNumberStringHud: move it to its own module *) ();
            let totalLength : int ref = ref (((String.length !hEALTH_arg) + 1)) in ();
            healthHud_arg := (new HealthNumberStringHud.healthNumberStringHud ());
            let fourthIndex : int ref = ref (!index) in ();
            (* Java nested class MaxHealthNumberStringHud: move it to its own module *) ();
            maxHealthHud_arg := (new MaxHealthNumberStringHud.maxHealthNumberStringHud ())
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#cONSTRUCTOR, e))
        end);
        productivityHud <- !productivityHud_arg;
        efficiencyHud <- !efficiencyHud_arg;
        healthHud <- !healthHud_arg;
        maxHealthHud <- !maxHealthHud_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "BuildingInfoHudPaintable" (fun arguments -> Obj.repr (new buildingInfoHudPaintable (Obj.obj arguments)))

let instance = (new buildingInfoHudPaintable ())
let get_instance () = instance
let () = java_register_static "BuildingInfoHudPaintable.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BuildingInfoHudPaintable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


