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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class advancedPlayerOwnedRTSLayers () =
  object (self)
    inherit PlayerOwnedRTSLayers.playerOwnedRTSLayers ()
    val mutable unitsList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method unitsList = unitsList
    method set_unitsList value' = unitsList <- value'
    val mutable waypointsList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method waypointsList = waypointsList
    method set_waypointsList value' = waypointsList <- value'
    val mutable buildingList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method buildingList = buildingList
    method set_buildingList value' = buildingList <- value'
    val mutable baseList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method baseList = baseList
    method set_baseList value' = baseList <- value'
    val mutable garrisonList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method garrisonList = garrisonList
    method set_garrisonList value' = garrisonList <- value'
    val mutable houseList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method houseList = houseList
    method set_houseList value' = houseList <- value'
    val mutable labList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method labList = labList
    method set_labList value' = labList <- value'
    val mutable factoryList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method factoryList = factoryList
    method set_factoryList value' = factoryList <- value'
    

    method addUnit : 'any1. 'any1 -> unit = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        ignore (unitsList#add ((Obj.magic rtsLayer)));
        ignore (rtsLayerList#add ((Obj.magic rtsLayer)))
        end [@@warning "-7-20"]
    

    method addWaypoint : 'any1. 'any1 -> unit = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        ignore (waypointsList#add ((Obj.magic rtsLayer)));
        ignore (rtsLayerList#add ((Obj.magic rtsLayer)))
        end [@@warning "-7-20"]
    

    method addBase : 'any1. 'any1 -> unit = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        ignore (baseList#add ((Obj.magic rtsLayer)));
        ignore (buildingList#add ((Obj.magic rtsLayer)));
        ignore (rtsLayerList#add ((Obj.magic rtsLayer)))
        end [@@warning "-7-20"]
    

    method addGarrison : 'any1. 'any1 -> unit = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        ignore (garrisonList#add ((Obj.magic rtsLayer)));
        ignore (buildingList#add ((Obj.magic rtsLayer)));
        ignore (rtsLayerList#add ((Obj.magic rtsLayer)))
        end [@@warning "-7-20"]
    

    method addHouse : 'any1. 'any1 -> unit = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        ignore (houseList#add ((Obj.magic rtsLayer)));
        ignore (buildingList#add ((Obj.magic rtsLayer)));
        ignore (rtsLayerList#add ((Obj.magic rtsLayer)))
        end [@@warning "-7-20"]
    

    method addLab : 'any1. 'any1 -> unit = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        ignore (labList#add ((Obj.magic rtsLayer)));
        ignore (buildingList#add ((Obj.magic rtsLayer)));
        ignore (rtsLayerList#add ((Obj.magic rtsLayer)))
        end [@@warning "-7-20"]
    

    method addFactory : 'any1. 'any1 -> unit = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        ignore (factoryList#add ((Obj.magic rtsLayer)));
        ignore (buildingList#add ((Obj.magic rtsLayer)));
        ignore (rtsLayerList#add ((Obj.magic rtsLayer)))
        end [@@warning "-7-20"]
    

    method removeUnit : 'any1. 'any1 -> unit = fun (gameLayer) ->
        let gameLayer = Obj.repr gameLayer in
        begin
        ignore (unitsList#remove ((Obj.magic gameLayer)));
        ignore (rtsLayerList#remove ((Obj.magic gameLayer)))
        end [@@warning "-7-20"]
    

    method removeWaypoint : 'any1. 'any1 -> unit = fun (gameLayer) ->
        let gameLayer = Obj.repr gameLayer in
        begin
        ignore (waypointsList#remove ((Obj.magic gameLayer)));
        ignore (rtsLayerList#remove ((Obj.magic gameLayer)))
        end [@@warning "-7-20"]
    

    method getUnitsList () : BasicArrayList.basicArrayList =
        begin
        (unitsList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getWaypointsList () : BasicArrayList.basicArrayList =
        begin
        (waypointsList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getBaseList () : BasicArrayList.basicArrayList =
        begin
        (baseList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getGarrisonList () : BasicArrayList.basicArrayList =
        begin
        (garrisonList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getHouseList () : BasicArrayList.basicArrayList =
        begin
        (houseList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getLabList () : BasicArrayList.basicArrayList =
        begin
        (labList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getFactoryList () : BasicArrayList.basicArrayList =
        begin
        (factoryList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getTotalBuildings () : int =
        begin
        (((((baseList#size ()) + (garrisonList#size ())) + (houseList#size ())) + (labList#size ())) + (factoryList#size ()))
        end [@@warning "-7"]
    

    method removeBuilding : 'any1. 'any1 -> unit = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        ignore (buildingList#add ((Obj.magic layerInterface)));
        if ((self#getBaseList ())#remove ((Obj.magic layerInterface))) then begin
            ignore (rtsLayerList#remove ((Obj.magic layerInterface)))
        end else if ((self#getFactoryList ())#remove ((Obj.magic layerInterface))) then begin
            ignore (rtsLayerList#remove ((Obj.magic layerInterface)))
        end else if ((self#getGarrisonList ())#remove ((Obj.magic layerInterface))) then begin
            ignore (rtsLayerList#remove ((Obj.magic layerInterface)))
        end else if ((self#getLabList ())#remove ((Obj.magic layerInterface))) then begin
            ignore (rtsLayerList#remove ((Obj.magic layerInterface)))
        end else if ((self#getHouseList ())#remove ((Obj.magic layerInterface))) then begin
            ignore (rtsLayerList#remove ((Obj.magic layerInterface)))
        end
        end [@@warning "-7-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_string_of (Obj.repr super))));
        ignore (!stringBuffer#append (" Bases: "));
        ignore (!stringBuffer#appendint (((self#getBaseList ())#size ())));
        ignore (!stringBuffer#append (" Factory: "));
        ignore (!stringBuffer#appendint (((self#getFactoryList ())#size ())));
        ignore (!stringBuffer#append (" Garrison: "));
        ignore (!stringBuffer#appendint (((self#getGarrisonList ())#size ())));
        ignore (!stringBuffer#append (" Labs: "));
        ignore (!stringBuffer#appendint (((self#getLabList ())#size ())));
        ignore (!stringBuffer#append (" Houses: "));
        ignore (!stringBuffer#appendint (((self#getHouseList ())#size ())));
        ignore (!stringBuffer#append (" Waypoints: "));
        ignore (!stringBuffer#appendint (((self#getWaypointsList ())#size ())));
        ignore (!stringBuffer#append (" Units: "));
        ignore (!stringBuffer#appendint (((self#getUnitsList ())#size ())));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method getBuildingList () : BasicArrayList.basicArrayList =
        begin
        (buildingList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]

    initializer
      begin
        unitsList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        waypointsList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        buildingList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        baseList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        garrisonList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        houseList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        labList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        factoryList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end
let () = java_register_constructor "AdvancedPlayerOwnedRTSLayers" (fun arguments -> Obj.repr (new advancedPlayerOwnedRTSLayers (Obj.obj arguments)))


