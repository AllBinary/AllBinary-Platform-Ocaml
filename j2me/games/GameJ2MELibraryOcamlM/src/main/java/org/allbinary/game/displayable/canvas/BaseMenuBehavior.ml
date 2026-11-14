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
(* import org.allbinary.graphics.paint.NullPaintable *)

let instance_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_instance : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !instance_cell with Lazy.Undefined -> java_null)
let set_instance value' = instance_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "BaseMenuBehavior.get_instance" (fun _ -> Obj.repr (get_instance ()))
let () = java_register_static "BaseMenuBehavior.set_instance" (fun value' -> set_instance value'; Obj.repr ())
class baseMenuBehavior () =
  object
    

    method onDisplayChangeEvent : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_allBinaryGameCanvas, _displayChangeEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method initSpecialPaint : 'any1. 'any1 -> unit = fun (allBinaryGameCanvas) ->
        let allBinaryGameCanvas = Obj.repr allBinaryGameCanvas in
        begin
        ignore ((Obj.magic allBinaryGameCanvas)#setNonBotPaintableP ((NullPaintable.getInstance ())))
        end [@@warning "-20"]
    

    method initMenu : 'any1. 'any1 -> unit = fun (_allBinaryGameCanvas) ->
        begin
        ()
        end [@@warning "-20"]
    

    method updateMenu : 'any1. 'any1 -> unit = fun (_allBinaryGameCanvas) ->
        begin
        ()
        end [@@warning "-20"]
    

    method popupMenu : 'any1. 'any1 -> unit = fun (_allBinaryGameCanvas) ->
        begin
        ()
        end [@@warning "-20"]
    

    method closeMenu : 'any1. 'any1 -> unit = fun (_allBinaryGameCanvas) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "BaseMenuBehavior" (fun arguments -> Obj.repr (new baseMenuBehavior (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_instance ()))))
        end
let () = java_register_static "BaseMenuBehavior.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = instance_cell := lazy (Obj.repr ((new baseMenuBehavior ())))


