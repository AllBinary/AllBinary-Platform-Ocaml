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
(* package org.allbinary.graphics.threed *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.midlet.MIDlet *)

class sWTJOGLProcessor () =
  object
    

    method init : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_display, _comp) ->
        begin
        ()
        end
    

    method isHolderCreated () : bool =
        begin
        true
        end
    

    method setRenderer : 'any1. 'any1 -> unit = fun (_renderer) ->
        begin
        ()
        end
    

    method isJOGL () : bool =
        begin
        false
        end
    

    method createSurface () : unit =
        begin
        ()
        end
    

    method onSurfaceCreated () : unit =
        begin
        ()
        end
    

    method onSurfaceChangedForEvent : 'any1. 'any1 -> unit = fun (_event) ->
        begin
        ()
        end
    

    method onSurfaceChanged () : unit =
        begin
        ()
        end
    

    method onSurfaceChangedWH ((_width : int), (_height : int)) : unit =
        begin
        ()
        end
    

    method addListener () : unit =
        begin
        ()
        end
    

    method addListeners : 'any1. 'any1 -> unit = fun (_midlet) ->
        begin
        ()
        end [@@warning "-20"]
    

    method run () : unit =
        begin
        ()
        end
    

    method clear () : unit =
        begin
        ()
        end
    

    method setCustom ((_width : int), (_height : int), (_ratio : float)) : unit =
        begin
        ()
        end
    

    method setRatioProcessor : 'any1. 'any1 -> unit = fun (_ratioProcessor) ->
        begin
        ()
        end [@@warning "-20"]
    

    method isPortraitRatioProcessor () : bool =
        begin
        true
        end
    

    method charWidth : 'any1. 'any1 * char -> int = fun (_font, (_ch : char)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method charsWidth : 'any1. 'any1 * char array * int * int -> int = fun (_font, (_ch : char array), (_offset : int), (_length : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method stringWidth : 'any1. 'any1 * string -> int = fun (_font, (_str : string)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method substringWidth : 'any1. 'any1 * string * int * int -> int = fun (_font, (_str : string), (_offset : int), (_len : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "SWTJOGLProcessor" (fun arguments -> Obj.repr (new sWTJOGLProcessor (Obj.obj arguments)))

let instance = (new sWTJOGLProcessor ())
let get_instance () = instance
let () = java_register_static "SWTJOGLProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SWTJOGLProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


