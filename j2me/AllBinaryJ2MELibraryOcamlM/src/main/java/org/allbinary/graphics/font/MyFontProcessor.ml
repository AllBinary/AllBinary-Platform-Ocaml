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
(* package org.allbinary.graphics.font *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)


let defaultCharWidth : 'any1. 'any1 -> int = fun (font) ->
        let font = Obj.repr font in
        begin
        ((Obj.magic font)#charWidth ('C'))
        end [@@warning "-20"]

let () = java_register_static "MyFontProcessor.defaultCharWidth" (fun arguments -> Obj.repr (defaultCharWidth (Obj.obj arguments)))
class myFontProcessor () =
  object
    

    method process : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MyFontProcessor" (fun arguments -> Obj.repr (new myFontProcessor (Obj.obj arguments)))

let instance = (new myFontProcessor ())
let get_instance () = instance
let () = java_register_static "MyFontProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let defaultStringWidth : 'any1. 'any1 * int -> int = fun (font, (size : int)) ->
        let font = Obj.repr font in
        begin
        ((defaultCharWidth ((Obj.magic font))) * size)
        end [@@warning "-20"]

and getInstance () =
        begin
        instance
        end
let () = java_register_static "MyFontProcessor.defaultStringWidth" (fun arguments -> Obj.repr (defaultStringWidth (Obj.obj arguments)))
let () = java_register_static "MyFontProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


