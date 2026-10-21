(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.resources *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.resource.BaseResourceAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.MainFeatureFactory *)
(* import org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory *)
(* import org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface *)
(* import org.allbinary.game.resource.ResourceLoadingLevelFactory *)
(* import org.allbinary.image.ImageCache *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)

class onDemandLoader ((onDemandResourcesFactory_arg : OnDemandResourcesFactory.onDemandResourcesFactory), (gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_arg : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory), (resourceAnimationInterfaceFactoryInterfaceFactory_arg : BaseResourceAnimationInterfaceFactoryInterfaceFactory.baseResourceAnimationInterfaceFactoryInterfaceFactory)) =
  object (self)
    val mutable onDemandResourcesFactory : OnDemandResourcesFactory.onDemandResourcesFactory = (Obj.magic 0)
    method onDemandResourcesFactory = onDemandResourcesFactory
    method set_onDemandResourcesFactory value' = onDemandResourcesFactory <- value'
    val mutable gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory : GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = (Obj.magic 0)
    method gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
    method set_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory value' = gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory <- value'
    val mutable resourceAnimationInterfaceFactoryInterfaceFactory : BaseResourceAnimationInterfaceFactoryInterfaceFactory.baseResourceAnimationInterfaceFactoryInterfaceFactory = (Obj.magic 0)
    method resourceAnimationInterfaceFactoryInterfaceFactory = resourceAnimationInterfaceFactoryInterfaceFactory
    method set_resourceAnimationInterfaceFactoryInterfaceFactory value' = resourceAnimationInterfaceFactoryInterfaceFactory <- value'
    
    

    method init : 'any1. 'any1 * int * string -> unit = fun (imageCache, (level : int), (loadingString : string)) ->
        let imageCache = Obj.repr imageCache in
        try
        begin
        let resourceLoadingLevelFactory : ResourceLoadingLevelFactory.resourceLoadingLevelFactory ref = ref (((ResourceLoadingLevelFactory.getInstance ()) :> ResourceLoadingLevelFactory.resourceLoadingLevelFactory)) in ();
        if ((Features.getInstance ())#isFeature ((MainFeatureFactory.getInstance ())#lOAD_ALL)) then begin
            if (resourceAnimationInterfaceFactoryInterfaceFactory#isInitialized ()) then begin
                raise (Java_return (Obj.repr (())))
            end;
            (self#initAll ((Obj.magic imageCache), loadingString))
        end else if (level <> (!resourceLoadingLevelFactory#lOAD_ALL#getLevel ())) then begin
            let layerPlacementInterfaceBasicArrayListFactoryInterface : LayerPlacementInterfaceBasicArrayListFactoryInterface.layerPlacementInterfaceBasicArrayListFactoryInterface ref = ref (((gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory#getInstance (level)) :> LayerPlacementInterfaceBasicArrayListFactoryInterface.layerPlacementInterfaceBasicArrayListFactoryInterface)) in ();
            (self#initLevel (!layerPlacementInterfaceBasicArrayListFactoryInterface, (Obj.magic imageCache), level, loadingString))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method initAll : 'any1. 'any1 * string -> unit = fun (imageCache, (loadingString : string)) ->
        let imageCache = Obj.repr imageCache in
        begin
        let index : int ref = ref (0) in ();
        let portion : int ref = ref (120) in ();
        let onDemandResources : OnDemandResources.onDemandResources ref = ref (((Obj.magic 0) :> OnDemandResources.onDemandResources)) in ();
        let onDemandIndex : int ref = ref ((onDemandResourcesFactory#size ())) in ();
        while ((onDemandIndex := !onDemandIndex - 1; !onDemandIndex) >= 0) do
            onDemandResources := (onDemandResourcesFactory#remove (!onDemandIndex));
            if ((Obj.repr !onDemandResources) != (Obj.repr (OnDemandResources.get_nULL_ON_DEMAND_RESOURCES ()))) then begin
                index := (!onDemandResources#initAt ((Obj.magic imageCache), resourceAnimationInterfaceFactoryInterfaceFactory, !portion, loadingString, !index))
            end
        done
        end [@@warning "-20"]
    

    method initLevel : 'any1 'any2. 'any1 * 'any2 * int * string -> unit = fun (layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, (_level : int), (loadingString : string)) ->
        let layerPlacementInterfaceBasicArrayListFactoryInterface = Obj.repr layerPlacementInterfaceBasicArrayListFactoryInterface in
        let imageCache = Obj.repr imageCache in
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let portion : int ref = ref (120) in ();
        let index : int ref = ref (0) in ();
        let onDemandArray : int array ref = ref (((Obj.magic layerPlacementInterfaceBasicArrayListFactoryInterface)#getOnDemandResources ())) in ();
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (!commonStrings#sTART))#appendint ((Array.length !onDemandArray))))), self, "initLevel"))));
        let onDemandResources : OnDemandResources.onDemandResources ref = ref (((Obj.magic 0) :> OnDemandResources.onDemandResources)) in ();
        let onDemandIndex : int ref = ref ((Array.length !onDemandArray)) in ();
        while ((onDemandIndex := !onDemandIndex - 1; !onDemandIndex) >= 0) do
            onDemandResources := (onDemandResourcesFactory#remove (!onDemandArray.(!onDemandIndex)));
            if ((Obj.repr !onDemandResources) != (Obj.repr (OnDemandResources.get_nULL_ON_DEMAND_RESOURCES ()))) then begin
                index := (!onDemandResources#initAt ((Obj.magic imageCache), resourceAnimationInterfaceFactoryInterfaceFactory, !portion, loadingString, !index))
            end
        done
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        onDemandResourcesFactory <- onDemandResourcesFactory_arg;
        gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory <- gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_arg;
        resourceAnimationInterfaceFactoryInterfaceFactory <- resourceAnimationInterfaceFactoryInterfaceFactory_arg
      end
  end
let () = java_register_constructor "OnDemandLoader" (fun arguments -> Obj.repr (new onDemandLoader (Obj.obj arguments)))


