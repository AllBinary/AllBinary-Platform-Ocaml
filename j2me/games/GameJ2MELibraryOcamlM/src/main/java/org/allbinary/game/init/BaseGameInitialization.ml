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
(* package org.allbinary.game.init *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.CommandListener *)
(* import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.game.configuration.GameConfigurationCentral *)
(* import org.allbinary.game.configuration.event.ChangedGameFeatureListener *)
(* import org.allbinary.game.configuration.feature.InputFeatureFactory *)
(* import org.allbinary.game.configuration.feature.MainFeatureFactory *)
(* import org.allbinary.game.input.PlatformInputMappingFactory *)
(* import org.allbinary.game.input.event.GameKeyEventFactory *)
(* import org.allbinary.game.resource.FeaturedResourceRelativeRelationshipFactory *)
(* import org.allbinary.game.resource.ResourceInitialization *)
(* import org.allbinary.game.resource.ResourceLoadingLevelFactory *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.image.GameFeatureImageCacheFactory *)
(* import org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput *)
(* import org.allbinary.input.motion.button.BasicTouchInputFactory *)
(* import org.allbinary.input.motion.button.CancelTouchButtonInputFactory *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)

class baseGameInitialization ((resourceInitializationArray_arg : ResourceInitialization.resourceInitialization array), (portion_arg : int)) =
  object (self)
    val mutable resourceInitializationArray : ResourceInitialization.resourceInitialization array = (Obj.magic 0)
    method resourceInitializationArray = resourceInitializationArray
    method set_resourceInitializationArray value' = resourceInitializationArray <- value'
    val mutable portion : int = 0
    method portion = portion
    method set_portion value' = portion <- value'
    val mutable initialized : bool = false
    method initialized = initialized
    method set_initialized value' = initialized <- value'
    val mutable eARLY_RESOURCES : int = 0
    method eARLY_RESOURCES = eARLY_RESOURCES
    method set_eARLY_RESOURCES value' = eARLY_RESOURCES <- value'
    val mutable gAME_RESOURCES : int = 0
    method gAME_RESOURCES = gAME_RESOURCES
    method set_gAME_RESOURCES value' = gAME_RESOURCES <- value'
    val mutable eARLY_CHANGABLE_RESOURCES : int = 0
    method eARLY_CHANGABLE_RESOURCES = eARLY_CHANGABLE_RESOURCES
    method set_eARLY_CHANGABLE_RESOURCES value' = eARLY_CHANGABLE_RESOURCES <- value'
    val mutable gAME_CHANGABLE_RESOURCES : int = 0
    method gAME_CHANGABLE_RESOURCES = gAME_CHANGABLE_RESOURCES
    method set_gAME_CHANGABLE_RESOURCES value' = gAME_CHANGABLE_RESOURCES <- value'
    val mutable gameInitialized : bool = false
    method gameInitialized = gameInitialized
    method set_gameInitialized value' = gameInitialized <- value'
    val mutable allLoaded : bool = false
    method allLoaded = allLoaded
    method set_allLoaded value' = allLoaded <- value'
    
    

    method initKey ((_portion_arg : int)) : unit =
        begin
        ()
        end
    

    method initKeyMapping : 'any1. 'any1 * int -> unit = fun (abeClientInformation, (_portion_arg : int)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        if ((ChangedGameFeatureListener.getInstance ())#isChangedFeature ((InputFeatureFactory.getInstance ())#iNPUT_MAPPING)) then begin
            ignore (((Obj.magic (java_call_static "PlatformInputMappingFactory.getInstance" (Obj.repr ())))#getPersistentInputMappingInstance ())#init ((Obj.magic abeClientInformation)));
            ignore ((ProgressCanvasFactory.getInstance ())#addNormalPortion (50, "Game Keys"));
            ignore ((ChangedGameFeatureListener.getInstance ())#remove ((InputFeatureFactory.getInstance ())#iNPUT_MAPPING))
        end
        end [@@warning "-20"]
    

    method init : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (abeClientInformation, _commandListener, (level : int)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        let resourceLoadingLevelFactory : ResourceLoadingLevelFactory.resourceLoadingLevelFactory ref = ref (((ResourceLoadingLevelFactory.getInstance ()) :> ResourceLoadingLevelFactory.resourceLoadingLevelFactory)) in ();
        if ((not (self#isInitialized ())) && (((level = (!resourceLoadingLevelFactory#lOAD_ALL#getLevel ())) || (level = (!resourceLoadingLevelFactory#lOAD_EARLY#getLevel ()))))) then begin
            let localPortion : int ref = ref (40) in ();
            if (level = (!resourceLoadingLevelFactory#lOAD_EARLY#getLevel ())) then begin
                localPortion := 8
            end;
            (self#setInitialized (true));
            (self#initKey ((self#getPortion ())));
            (self#initKeyMapping ((Obj.magic abeClientInformation), (self#getPortion ())));
            ignore ((GameKeyEventFactory.getInstance ())#init ());
            let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
            ignore (!progressCanvas#addNormalPortion (!localPortion, "Game Key Events"));
            ignore ((Obj.magic (java_call_static "BasicTouchInputFactory.getInstance" (Obj.repr ())))#init ((((Obj.magic (java_call_static "PlatformInputMappingFactory.getInstance" (Obj.repr ())))#getPersistentInputMappingInstance ())#getInputMapping ())));
            ignore (CancelTouchButtonInputFactory.getInstance ());
            ignore (!progressCanvas#addNormalPortion (!localPortion, "Touch Input"));
            ignore ((Obj.magic (java_call_static "CompleteMotionGestureInputToGameMotionGestureInput.getInstance" (Obj.repr ())))#init ());
            ignore (!progressCanvas#addNormalPortion (!localPortion, "Motion Input"));
            ignore (GameFeatureImageCacheFactory.init ());
            ignore (!progressCanvas#addNormalPortion (!localPortion, "Image Cache"));
            ignore (resourceInitializationArray.(eARLY_RESOURCES)#init ())
        end
        end [@@warning "-20"]
    

    method resourceInitialization ((level : int)) : unit =
        begin
        let resourceLoadingLevelFactory : ResourceLoadingLevelFactory.resourceLoadingLevelFactory ref = ref (((ResourceLoadingLevelFactory.getInstance ()) :> ResourceLoadingLevelFactory.resourceLoadingLevelFactory)) in ();
        if ((self#resourceAnimationChange ()) && (level = (!resourceLoadingLevelFactory#lOAD_EARLY#getLevel ()))) then begin
            (self#clearResources ());
            ignore (resourceInitializationArray.(eARLY_CHANGABLE_RESOURCES)#init ())
        end;
        if ((self#resourceAnimationChange ()) && (level = (!resourceLoadingLevelFactory#lOAD_ALL#getLevel ()))) then begin
            if allLoaded then begin
                (self#clearResources ())
            end;
            if ((((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#getList ())#size ()) = 0) then begin
                ignore (resourceInitializationArray.(eARLY_CHANGABLE_RESOURCES)#init ())
            end;
            ignore (resourceInitializationArray.(gAME_CHANGABLE_RESOURCES)#init ());
            allLoaded <- true
        end
        end
    

    method resourceAnimationChange () : bool =
        try
        begin
        let changedGameFeatureListener : ChangedGameFeatureListener.changedGameFeatureListener ref = ref (((ChangedGameFeatureListener.getInstance ()) :> ChangedGameFeatureListener.changedGameFeatureListener)) in ();
        let gameConfigurationCentral : GameConfigurationCentral.gameConfigurationCentral ref = ref (((GameConfigurationCentral.getInstance ()) :> GameConfigurationCentral.gameConfigurationCentral)) in ();
        if (!changedGameFeatureListener#isChangedGameConfiguration (!gameConfigurationCentral#sCALE)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        if ((ChangedGameFeatureListener.getInstance ())#isChangedFeature ((MainFeatureFactory.getInstance ())#sTATIC)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method clearResources () : unit =
        begin
        allLoaded <- false;
        ignore (GameFeatureImageCacheFactory.releaseAll ());
        let featuredAnimationInterfaceFactoryInterfaceFactory : FeaturedAnimationInterfaceFactoryInterfaceFactory.featuredAnimationInterfaceFactoryInterfaceFactory ref = ref (((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ()) :> FeaturedAnimationInterfaceFactoryInterfaceFactory.featuredAnimationInterfaceFactoryInterfaceFactory)) in ();
        ignore (!featuredAnimationInterfaceFactoryInterfaceFactory#clear ());
        ignore ((FeaturedResourceRelativeRelationshipFactory.getInstance ())#clear ())
        end
    

    method setGameInitialized ((gameInitialized_arg : bool)) : unit =
        begin
        gameInitialized <- gameInitialized_arg
        end
    

    method isGameInitialized () : bool =
        begin
        gameInitialized
        end
    

    method getPortion () : int =
        begin
        portion
        end
    

    method setInitialized ((initialized_arg : bool)) : unit =
        begin
        initialized <- initialized_arg
        end
    

    method isInitialized () : bool =
        begin
        initialized
        end

    initializer
      begin
        ();
        ();
        initialized <- false;
        eARLY_RESOURCES <- 0;
        gAME_RESOURCES <- 1;
        eARLY_CHANGABLE_RESOURCES <- 2;
        gAME_CHANGABLE_RESOURCES <- 3;
        gameInitialized <- false;
        allLoaded <- false;
        ();
        resourceInitializationArray <- resourceInitializationArray_arg;
        portion <- portion_arg
      end
  end
let () = java_register_constructor "BaseGameInitialization" (fun arguments -> Obj.repr (new baseGameInitialization (Obj.obj arguments)))

let nULL_BASE_GAME_INITIALIZATION = (new baseGameInitialization ((Array.make (0) (Obj.magic 0)), 0))
let get_nULL_BASE_GAME_INITIALIZATION () = nULL_BASE_GAME_INITIALIZATION
let () = java_register_static "BaseGameInitialization.get_nULL_BASE_GAME_INITIALIZATION" (fun _ -> Obj.repr (get_nULL_BASE_GAME_INITIALIZATION ()))


