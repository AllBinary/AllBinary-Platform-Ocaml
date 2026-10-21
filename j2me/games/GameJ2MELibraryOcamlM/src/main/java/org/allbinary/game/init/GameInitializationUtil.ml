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
(* import org.allbinary.game.configuration.event.ChangedGameFeatureListener *)
(* import org.allbinary.game.configuration.event.GameInitializedEvent *)
(* import org.allbinary.game.configuration.event.GameInitializedEventHandler *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.MainFeatureFactory *)
(* import org.allbinary.game.resource.ResourceLoadingLevelFactory *)
(* import org.allbinary.graphics.displayable.MyCanvas *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)

class gameInitializationUtil () =
  object (self)
    val mutable eVENT : GameInitializedEvent.gameInitializedEvent = (Obj.magic 0)
    method eVENT = eVENT
    method set_eVENT value' = eVENT <- value'
    

    method initDemo : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let canvas = Obj.repr canvas in
        let gameInitializationInterfaceFactoryInterface = Obj.repr gameInitializationInterfaceFactoryInterface in
        begin
        let mainFeatureFactory : MainFeatureFactory.mainFeatureFactory ref = ref (((MainFeatureFactory.getInstance ()) :> MainFeatureFactory.mainFeatureFactory)) in ();
        if ((ChangedGameFeatureListener.getInstance ())#isChangedFeature (!mainFeatureFactory#sTATIC)) then begin
            let gameInitializationInterface : GameInitializationInterface.gameInitializationInterface ref = ref ((((Obj.magic gameInitializationInterfaceFactoryInterface)#getInstance ()) :> GameInitializationInterface.gameInitializationInterface)) in ();
            let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
            if (!features#isFeature (!mainFeatureFactory#lOAD_ALL)) then begin
                (self#initGame ((Obj.magic abeClientInformation), (Obj.magic canvas), (Obj.magic gameInitializationInterfaceFactoryInterface)))
            end else if (!features#isFeature (!mainFeatureFactory#lOAD_ONDEMAND)) then begin
                let resourceLoadingLevelFactory : ResourceLoadingLevelFactory.resourceLoadingLevelFactory ref = ref (((ResourceLoadingLevelFactory.getInstance ()) :> ResourceLoadingLevelFactory.resourceLoadingLevelFactory)) in ();
                ignore (!gameInitializationInterface#init ((Obj.magic abeClientInformation), ((Obj.magic canvas)#getCustomCommandListener ()), (!resourceLoadingLevelFactory#lOAD_EARLY#getLevel ())));
                ignore (eVENT#setResourceLoadingLevel (!resourceLoadingLevelFactory#lOAD_EARLY))
            end else begin
                raise (Failure ("No Loading Feature Available"))
            end;
            ignore ((GameInitializedEventHandler.getInstance ())#fireEvent (eVENT))
        end
        end [@@warning "-20"]
    

    method initGame : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let canvas = Obj.repr canvas in
        let gameInitializationInterfaceFactoryInterface = Obj.repr gameInitializationInterfaceFactoryInterface in
        begin
        if ((ChangedGameFeatureListener.getInstance ())#isChangedFeature ((MainFeatureFactory.getInstance ())#sTATIC)) then begin
            let gameInitializationInterface : GameInitializationInterface.gameInitializationInterface ref = ref ((((Obj.magic gameInitializationInterfaceFactoryInterface)#getInstance ()) :> GameInitializationInterface.gameInitializationInterface)) in ();
            let resourceLoadingLevelFactory : ResourceLoadingLevelFactory.resourceLoadingLevelFactory ref = ref (((ResourceLoadingLevelFactory.getInstance ()) :> ResourceLoadingLevelFactory.resourceLoadingLevelFactory)) in ();
            ignore (!gameInitializationInterface#init ((Obj.magic abeClientInformation), ((Obj.magic canvas)#getCustomCommandListener ()), (!resourceLoadingLevelFactory#lOAD_ALL#getLevel ())));
            ignore (eVENT#setResourceLoadingLevel (!resourceLoadingLevelFactory#lOAD_ALL));
            ignore ((GameInitializedEventHandler.getInstance ())#fireEvent (eVENT));
            ignore ((ChangedGameFeatureListener.getInstance ())#remove ((MainFeatureFactory.getInstance ())#sTATIC))
        end
        end [@@warning "-20"]

    initializer
      begin
        eVENT <- ((new GameInitializedEvent.gameInitializedEvent (self)) :> GameInitializedEvent.gameInitializedEvent);
        ()
      end
  end
let () = java_register_constructor "GameInitializationUtil" (fun arguments -> Obj.repr (new gameInitializationUtil (Obj.obj arguments)))

let instance = (new gameInitializationUtil ())
let get_instance () = instance
let () = java_register_static "GameInitializationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameInitializationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


