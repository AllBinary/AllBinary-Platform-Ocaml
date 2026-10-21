(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.android.activity *)

open Allbinary_java [@@warning "-33"]
(* import android.app.Activity *)
(* import android.view.MotionEvent *)
(* import android.view.View *)
(* import org.allbinary.android.GenericMotionEventVerifyInterface *)
(* import org.allbinary.game.configuration.event.GameFeatureEvent *)
(* import org.allbinary.game.configuration.event.GameFeatureListenerInterface *)
(* import org.allbinary.game.configuration.event.GameInitializedEvent *)
(* import org.allbinary.game.configuration.event.GameInitializedListenerInterface *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class midletActivityBase () =
  object
    inherit Activity.activity ()
    

    method onGameFeatureChange : 'any1. 'any1 -> unit = fun (_gameFeatureEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method onGameInitialized : 'any1. 'any1 -> unit = fun (_gameInitializedEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method onSetProgress ((_value : int), (_text : string)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method onDismissProgress ((_animationSequence : int array)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method onShowProgress ((_indeterminate : bool), (_animationSequence : int array)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getRootView : 'return. unit -> 'return = fun () ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method getView : 'return. unit -> 'return = fun () ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method setKeyInputView : 'any1. 'any1 -> unit = fun (_keyInputView) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method onGenericMotionEvent : 'any1. 'any1 -> bool = fun (_event) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MidletActivityBase" (fun arguments -> Obj.repr (new midletActivityBase (Obj.obj arguments)))


