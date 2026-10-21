(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.advertisement.GameAdStateFactory *)
(* import org.allbinary.game.GameAdState *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.graphics.opengles.CurrentDisplayableFactory *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)

class baseGameBehavior () =
  object
    inherit DemoGameBehavior.demoGameBehavior ()
    

    method init () : unit =
        begin
        let gameAdState : Obj.t ref = ref ((Obj.repr ((GameAdStateFactory.getInstance ())#getCurrentInstance ()))) in ();
        ignore ((Obj.magic !gameAdState)#playingAdState ())
        end [@@warning "-7"]
    

    method pause : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        if (!features#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL_AS_GAME_THREAD)) then begin
            let currentDisplayableFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "CurrentDisplayableFactory.getInstance" (Obj.repr ()))))) in ();
            ignore ((Obj.magic !currentDisplayableFactory)#setRunnable ((Obj.magic allBinaryGameCanvas)#gamePauseRunnable))
        end
        end [@@warning "-7-20"]
    

    method unPause : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        if ((Features.getInstance ())#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL_AS_GAME_THREAD)) then begin
            let currentDisplayableFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "CurrentDisplayableFactory.getInstance" (Obj.repr ()))))) in ();
            ignore ((Obj.magic !currentDisplayableFactory)#setRunnable ((Obj.magic allBinaryGameCanvas)#gameRunnable));
            ignore ((Obj.magic !currentDisplayableFactory)#setDisplayable ((Obj.magic allBinaryGameCanvas)))
        end
        end [@@warning "-7-20"]
    

    method updateTouch : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#updateTouch2 ())
        end [@@warning "-7-20"]
    

    method updateScreenButtonPaintable : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#updateScreenButtonPaintable2 ())
        end [@@warning "-7-20"]
    

    method setGameState : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#updateGameState ())
        end [@@warning "-7-20"]
    

    method removeAllGameKeyInputListeners : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#removeAllGameKeyInputListeners2 ())
        end [@@warning "-7-20"]
    

    method updateEndGameProcessor : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#updateEndGameProcessor2 ())
        end [@@warning "-7-20"]
    

    method buildGame : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#buildGame2 ())
        end [@@warning "-7-20"]
    

    method run : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#run2 ())
        end [@@warning "-7-20"]
    

    method setHighScore : 'any1 'any2. 'any1 * 'any2 * string * int * bool * bool -> unit = fun (abeClientInformation, allBinaryGameCanvas, (name : string), (score : int), (autoSubmit : bool), (isLast : bool)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#setHighScore2 ((Obj.magic abeClientInformation), name, score, autoSubmit, isLast))
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BaseGameBehavior" (fun arguments -> Obj.repr (new baseGameBehavior (Obj.obj arguments)))

let instanceC = (new baseGameBehavior ())
let get_instanceC () = instanceC
let () = java_register_static "BaseGameBehavior.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () : DemoGameBehavior.demoGameBehavior =
        begin
        (instanceC :> DemoGameBehavior.demoGameBehavior)
        end
let () = java_register_static "BaseGameBehavior.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


