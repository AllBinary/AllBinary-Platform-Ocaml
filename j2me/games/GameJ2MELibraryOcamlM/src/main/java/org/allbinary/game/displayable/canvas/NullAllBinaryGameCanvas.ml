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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)

class nullAllBinaryGameCanvas () =
  object
    

    method getLayerManager () : AllBinaryGameLayerManager.allBinaryGameLayerManager =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method addCommand : 'any1. 'any1 -> unit = fun (_cmd) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method getHeight () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getWidth () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method removeCommand : 'any1. 'any1 -> unit = fun (_cmd) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method setCommandListener : 'any1. 'any1 -> unit = fun (_l) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullAllBinaryGameCanvas" (fun arguments -> Obj.repr (new nullAllBinaryGameCanvas (Obj.obj arguments)))

let nULL_ALLBINARY_GAME_CANVAS = (new nullAllBinaryGameCanvas ())
let get_nULL_ALLBINARY_GAME_CANVAS () = nULL_ALLBINARY_GAME_CANVAS
let () = java_register_static "NullAllBinaryGameCanvas.get_nULL_ALLBINARY_GAME_CANVAS" (fun _ -> Obj.repr (get_nULL_ALLBINARY_GAME_CANVAS ()))


