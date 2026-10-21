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
(* package org.allbinary.game.input.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.GameKeyEventSourceInterface *)
(* import org.allbinary.game.input.Input *)
(* import org.allbinary.game.input.InputFactory *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "GameKeyEventFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class gameKeyEventFactory () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tOUCH_BUTTON_SOURCE_ID : int = 0
    method tOUCH_BUTTON_SOURCE_ID = tOUCH_BUTTON_SOURCE_ID
    method set_tOUCH_BUTTON_SOURCE_ID value' = tOUCH_BUTTON_SOURCE_ID <- value'
    val mutable mOTION_GESTURE_SOURCE_ID : int = 0
    method mOTION_GESTURE_SOURCE_ID = mOTION_GESTURE_SOURCE_ID
    method set_mOTION_GESTURE_SOURCE_ID value' = mOTION_GESTURE_SOURCE_ID <- value'
    val mutable mAX_SOURCES : int = 0
    method mAX_SOURCES = mAX_SOURCES
    method set_mAX_SOURCES value' = mAX_SOURCES <- value'
    val mutable aRRAY : GameKeyEvent.gameKeyEvent array array = (Obj.magic 0)
    method aRRAY = aRRAY
    method set_aRRAY value' = aRRAY <- value'
    
    

    method init () : unit =
        begin
        let nullUtil : NullUtil.nullUtil ref = ref (((NullUtil.getInstance ()) :> NullUtil.nullUtil)) in ();
        let size : int ref = ref ((InputFactory.getInstance ())#mAX) in ();
        let index : int ref = ref (mAX_SOURCES) in ();
        while ((index := !index - 1; !index) >= 0) do
            let index2 : int ref = ref (!size) in ();
            while ((index2 := !index2 - 1; !index2) >= 0) do
                aRRAY.(!index).(!index2) <- (GameKeyEvent.createEvent (!nullUtil#nULL_OBJECT, !index, !index2))
            done
        done
        end
    

    method getInstanceForKey : 'any1. 'any1 * int -> GameKeyEvent.gameKeyEvent = fun (anyType, (key : int)) ->
        let anyType = Obj.repr anyType in
        begin
        let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref ((aRRAY.(((Obj.magic anyType)#getSourceId ())).(key) :> GameKeyEvent.gameKeyEvent)) in ();
        (!gameKeyEvent :> GameKeyEvent.gameKeyEvent)
        end [@@warning "-20"]
    

    method getInstanceForInput : 'any1 'any2. 'any1 * 'any2 -> GameKeyEvent.gameKeyEvent = fun (anyType, input) ->
        let anyType = Obj.repr anyType in
        let input = Obj.repr input in
        begin
        let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref ((aRRAY.(((Obj.magic anyType)#getSourceId ())).(((Obj.magic input)#getId ())) :> GameKeyEvent.gameKeyEvent)) in ();
        (!gameKeyEvent :> GameKeyEvent.gameKeyEvent)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tOUCH_BUTTON_SOURCE_ID <- 2;
        mOTION_GESTURE_SOURCE_ID <- 3;
        mAX_SOURCES <- 4;
        aRRAY <- (Array.make_matrix (mAX_SOURCES) ((InputFactory.getInstance ())#mAX) (Obj.magic 0));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameKeyEventFactory" (fun arguments -> Obj.repr (new gameKeyEventFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new gameKeyEventFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "GameKeyEventFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


