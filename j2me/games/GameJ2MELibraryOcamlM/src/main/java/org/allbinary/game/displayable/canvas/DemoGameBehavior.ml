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
(* import org.allbinary.game.GameTypeFactory *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonStrings *)

class demoGameBehavior () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method init () : unit =
        begin
        ()
        end
    

    method pause : 'any1. 'any1 -> unit = fun (_allBinaryGameCanvas) ->
        begin
        ()
        end [@@warning "-20"]
    

    method unPause : 'any1. 'any1 -> unit = fun (_allBinaryGameCanvas) ->
        begin
        ()
        end [@@warning "-20"]
    

    method updateTouch : 'any1. 'any1 -> unit = fun (_allBinaryGameCanvas) ->
        begin
        ()
        end [@@warning "-20"]
    

    method updateScreenButtonPaintable : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#setTouchPaintableP ((NullPaintable.getInstance ())))
        end [@@warning "-20"]
    

    method setGameState : 'any1. 'any1 -> unit = fun (_allBinaryGameCanvas) ->
        begin
        ()
        end [@@warning "-20"]
    

    method removeAllGameKeyInputListeners : 'any1. 'any1 -> unit = fun (_allBinaryGameCanvas) ->
        begin
        ()
        end [@@warning "-20"]
    

    method updateEndGameProcessor : 'any1. 'any1 -> unit = fun (_allBinaryGameCanvas) ->
        begin
        ()
        end [@@warning "-20"]
    

    method buildGame : 'any1. 'any1 -> unit = fun (_allBinaryGameCanvas) ->
        begin
        ()
        end [@@warning "-20"]
    

    method run : 'any1. 'any1 -> unit = fun (_allBinaryGameCanvas) ->
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (GameTypeFactory.getInstance ())#bOT)), self, !commonStrings#rUN))
        end [@@warning "-20"]
    

    method setHighScore : 'any1 'any2. 'any1 * 'any2 * string * int * bool * bool -> unit = fun (_abeClientInformation, _allBinaryGameCanvas, (_name : string), (_score : int), (_autoSubmit : bool), (_isLast : bool)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "DemoGameBehavior" (fun arguments -> Obj.repr (new demoGameBehavior (Obj.obj arguments)))

let instance = (new demoGameBehavior ())
let get_instance () = instance
let () = java_register_static "DemoGameBehavior.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DemoGameBehavior.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


