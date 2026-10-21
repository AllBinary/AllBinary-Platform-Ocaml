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
(* import org.allbinary.game.identification.GroupCommonFactory *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.direction.DirectionFactory *)
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.game.combat.weapon.WeaponProperties *)
(* import org.allbinary.game.identification.BasicGroupFactory *)
(* import org.allbinary.game.part.PartInterface *)
(* import org.allbinary.game.part.weapon.BasicWeaponPart *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap *)
(* import org.allbinary.util.ABHashtable *)

class rTSLayerUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable groupCommonFactory : GroupCommonFactory.groupCommonFactory = (Obj.magic 0)
    method groupCommonFactory = groupCommonFactory
    method set_groupCommonFactory value' = groupCommonFactory <- value'
    val mutable mAX_RELOAD_TIME : int = 0
    method mAX_RELOAD_TIME = mAX_RELOAD_TIME
    method set_mAX_RELOAD_TIME value' = mAX_RELOAD_TIME <- value'
    

    method createWeaponProperties : 'any1. 'any1 * int * int -> WeaponProperties.weaponProperties = fun (weaponProperties, (currentLevel : int), (lastLevel : int)) ->
        let weaponProperties = Obj.repr weaponProperties in
        begin
        let reloadTime : int ref = ref (((Obj.magic weaponProperties)#getReloadTime ())) in ();
        if (lastLevel > currentLevel) then begin
            reloadTime := (!reloadTime + 50)
        end else if (lastLevel < currentLevel) then begin
            reloadTime := (!reloadTime - 50)
        end;
        let newWeaponProperties : WeaponProperties.weaponProperties ref = ref (((new WeaponProperties.weaponProperties (!reloadTime, ((Obj.magic weaponProperties)#getTargetingTime ()), (((Obj.magic weaponProperties)#getSpeed ())#getUnscaled ()), ((((Obj.magic weaponProperties)#getDamage ()) / lastLevel) * currentLevel), ((Obj.magic weaponProperties)#getDissipation ()))) :> WeaponProperties.weaponProperties)) in ();
        (!newWeaponProperties :> WeaponProperties.weaponProperties)
        end [@@warning "-20"]
    

    method downgrade : 'any1. 'any1 -> unit = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        ignore ((Obj.magic rtsLayer)#setLevel ((((Obj.magic rtsLayer)#getLevel ()) - 1)));
        let partInterfaceArray : PartInterface.partInterface array ref = ref (((Obj.magic rtsLayer)#getPartInterfaceArray ())) in ();
        let size : int ref = ref ((Array.length !partInterfaceArray)) in ();
        let partInterface : BasicWeaponPart.basicWeaponPart ref = ref (((Obj.magic 0) :> BasicWeaponPart.basicWeaponPart)) in ();
        let index : int ref = ref (!size) in ();
        while ((index := !index - 1; !index) >= 0) do
            partInterface := (Obj.magic !partInterfaceArray.(!index));
            ignore (!partInterface#setWeaponProperties ((self#createWeaponProperties ((!partInterface#getWeaponProperties ()), ((Obj.magic rtsLayer)#getLevel ()), (((Obj.magic rtsLayer)#getLevel ()) + 1)))))
        done;
        ignore ((Obj.magic rtsLayer)#select ())
        end [@@warning "-20"]
    

    method upgrade : 'any1. 'any1 -> unit = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        ignore ((Obj.magic rtsLayer)#setLevel ((((Obj.magic rtsLayer)#getLevel ()) + 1)));
        let partInterfaceArray : PartInterface.partInterface array ref = ref (((Obj.magic rtsLayer)#getPartInterfaceArray ())) in ();
        let size : int ref = ref ((Array.length !partInterfaceArray)) in ();
        let partInterface : BasicWeaponPart.basicWeaponPart ref = ref (((Obj.magic 0) :> BasicWeaponPart.basicWeaponPart)) in ();
        let index : int ref = ref (!size) in ();
        while ((index := !index - 1; !index) >= 0) do
            partInterface := (Obj.magic !partInterfaceArray.(!index));
            ignore (!partInterface#setWeaponProperties ((self#createWeaponProperties ((!partInterface#getWeaponProperties ()), ((Obj.magic rtsLayer)#getLevel ()), (((Obj.magic rtsLayer)#getLevel ()) - 1)))))
        done;
        ignore ((Obj.magic rtsLayer)#select ())
        end [@@warning "-20"]
    

    method getCostExponential ((cost : int)) : int =
        begin
        (((((cost * cost) * cost)) / ((cost * 1000))))
        end
    

    method getWeaponPropertiesCost : 'any1. 'any1 -> int = fun (weaponProperties) ->
        let weaponProperties = Obj.repr weaponProperties in
        begin
        let cost : int ref = ref ((((((Obj.magic weaponProperties)#getDamage ()) + ((Obj.magic weaponProperties)#getRange ())) + ((((mAX_RELOAD_TIME / ((Obj.magic weaponProperties)#getReloadTime ()))) asr 1))))) in ();
        cost := (self#getCostExponential (!cost));
        !cost
        end [@@warning "-20"]
    

    method getCost : 'any1. 'any1 -> int = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        let total : int ref = ref (0) in ();
        let partInterfaceArray : PartInterface.partInterface array ref = ref (((Obj.magic rtsLayer)#getPartInterfaceArray ())) in ();
        let size : int ref = ref ((Array.length !partInterfaceArray)) in ();
        let partInterface : BasicWeaponPart.basicWeaponPart ref = ref (((Obj.magic 0) :> BasicWeaponPart.basicWeaponPart)) in ();
        let weaponProperties : WeaponProperties.weaponProperties ref = ref (((Obj.magic 0) :> WeaponProperties.weaponProperties)) in ();
        for index = (!size - 1) downto 0 do
            partInterface := (Obj.magic !partInterfaceArray.(index));
            weaponProperties := (!partInterface#getWeaponProperties ());
            total := (!total + (self#getWeaponPropertiesCost (!weaponProperties)))
        done;
        !total
        end [@@warning "-20"]
    

    method getDowngradeCost : 'any1. 'any1 -> int = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        let partInterfaceArray : PartInterface.partInterface array ref = ref (((Obj.magic rtsLayer)#getPartInterfaceArray ())) in ();
        let size : int ref = ref ((Array.length !partInterfaceArray)) in ();
        let downgradeCost : int ref = ref (0) in ();
        let partInterface : BasicWeaponPart.basicWeaponPart ref = ref (((Obj.magic 0) :> BasicWeaponPart.basicWeaponPart)) in ();
        let weaponProperties : WeaponProperties.weaponProperties ref = ref (((Obj.magic 0) :> WeaponProperties.weaponProperties)) in ();
        let downgradeWeaponCost : int ref = ref (0) in ();
        let currentWeaponCost : int ref = ref (0) in ();
        for index = (!size - 1) downto 0 do
            partInterface := (Obj.magic !partInterfaceArray.(index));
            weaponProperties := (!partInterface#getWeaponProperties ());
            downgradeWeaponCost := (self#getWeaponPropertiesCost ((self#createWeaponProperties (!weaponProperties, (((Obj.magic rtsLayer)#getLevel ()) - 1), ((Obj.magic rtsLayer)#getLevel ())))));
            currentWeaponCost := (self#getWeaponPropertiesCost (!weaponProperties));
            downgradeCost := (!downgradeCost + ((!currentWeaponCost - !downgradeWeaponCost)))
        done;
        downgradeCost := ((!downgradeCost * 9) / 10);
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Total Cost: "))#appendint (!downgradeCost)))), self, "getDowngradeCost"));
        !downgradeCost
        end [@@warning "-20"]
    

    method getUpgradeCost : 'any1. 'any1 -> int = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        let upgradeCost : int ref = ref (0) in ();
        let partInterfaceArray : PartInterface.partInterface array ref = ref (((Obj.magic rtsLayer)#getPartInterfaceArray ())) in ();
        let size : int ref = ref ((Array.length !partInterfaceArray)) in ();
        let partInterface : BasicWeaponPart.basicWeaponPart ref = ref (((Obj.magic 0) :> BasicWeaponPart.basicWeaponPart)) in ();
        let weaponProperties : WeaponProperties.weaponProperties ref = ref (((Obj.magic 0) :> WeaponProperties.weaponProperties)) in ();
        let upgradedWeaponCost : int ref = ref (0) in ();
        let currentWeaponCost : int ref = ref (0) in ();
        for index = (!size - 1) downto 0 do
            partInterface := (Obj.magic !partInterfaceArray.(index));
            weaponProperties := (!partInterface#getWeaponProperties ());
            upgradedWeaponCost := (self#getWeaponPropertiesCost ((self#createWeaponProperties (!weaponProperties, (((Obj.magic rtsLayer)#getLevel ()) + 1), ((Obj.magic rtsLayer)#getLevel ())))));
            currentWeaponCost := (self#getWeaponPropertiesCost (!weaponProperties));
            upgradeCost := (!upgradeCost + ((!upgradedWeaponCost - !currentWeaponCost)))
        done;
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Total Cost: "))#appendint (!upgradeCost)))), self, "getUpgradeCost"));
        !upgradeCost
        end [@@warning "-20"]
    

    method destroyAndClear : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        let rtsLayer : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = (((Obj.magic list)#size ()) - 1) downto 0 do
            rtsLayer := Obj.repr ((Obj.magic ((Obj.magic list)#get (index))));
            ignore ((Obj.magic !rtsLayer)#setDestroyed (true))
        done;
        ignore ((Obj.magic list)#clear ())
        end [@@warning "-20"]
    

    method createFakeRTSLayerHashtable : 'any1 'return. 'any1 -> 'return = fun (baseRaceTrackGeographicMap) ->
        let baseRaceTrackGeographicMap = Obj.repr baseRaceTrackGeographicMap in
        begin
        let hashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()))) in ();
        let layerManager : FakeLayerManager.fakeLayerManager ref = ref (((new FakeLayerManager.fakeLayerManager ((GameInfo.get_nONE ()))) :> FakeLayerManager.fakeLayerManager)) in ();
        ignore (!layerManager#setGeographicMapInterface ([| (Obj.magic baseRaceTrackGeographicMap) |]));
        ignore ((Obj.magic !hashtable)#put ((AllBinaryGameLayerManager.get_iD ()), !layerManager));
        ignore ((Obj.magic !hashtable)#put ((DirectionFactory.getInstance ())#nAME, (DirectionFactory.getInstance ())#lEFT));
        ignore ((Obj.magic !hashtable)#put (groupCommonFactory#iD, (BasicGroupFactory.getInstance ())#nONE_ARRAY));
        (Obj.magic ((Obj.magic !hashtable)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        groupCommonFactory <- ((GroupCommonFactory.getInstance ()) :> GroupCommonFactory.groupCommonFactory);
        mAX_RELOAD_TIME <- ((java_to_int (Obj.repr (2147483647))) / 100000);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "RTSLayerUtil" (fun arguments -> Obj.repr (new rTSLayerUtil (Obj.obj arguments)))

let instance = (new rTSLayerUtil ())
let get_instance () = instance
let () = java_register_static "RTSLayerUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "RTSLayerUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


