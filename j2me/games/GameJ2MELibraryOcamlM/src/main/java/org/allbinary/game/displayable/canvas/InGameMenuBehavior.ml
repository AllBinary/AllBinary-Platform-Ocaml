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
(* import org.allbinary.graphics.displayable.event.DisplayChangeEvent *)

class inGameMenuBehavior () =
  object
    inherit BaseMenuBehavior.baseMenuBehavior ()
    

    method onDisplayChangeEvent : 'any1 'any2. 'any1 * 'any2 -> unit = fun (allBinaryGameCanvas, displayChangeEvent) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        let displayChangeEvent = Obj.repr displayChangeEvent in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#updateMenuFromEvent ((Obj.magic displayChangeEvent)))
        end [@@warning "-7-20"]
    

    method initSpecialPaint : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#setNonBotPaintableP ((Obj.obj (java_new "GameCanvasNonBotPaintable" (Obj.repr ((Obj.magic allBinaryGameCanvas)))))))
        end [@@warning "-7-20"]
    

    method initMenu : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#initMenu2 ())
        end [@@warning "-7-20"]
    

    method updateMenu : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#initMenu2 ())
        end [@@warning "-7-20"]
    

    method popupMenu : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#popupMenu2 ())
        end [@@warning "-7-20"]
    

    method closeMenu : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#closeMenu2 ())
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "InGameMenuBehavior" (fun arguments -> Obj.repr (new inGameMenuBehavior (Obj.obj arguments)))

let instanceC = (new inGameMenuBehavior ())
let get_instanceC () = instanceC
let () = java_register_static "InGameMenuBehavior.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "InGameMenuBehavior.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


