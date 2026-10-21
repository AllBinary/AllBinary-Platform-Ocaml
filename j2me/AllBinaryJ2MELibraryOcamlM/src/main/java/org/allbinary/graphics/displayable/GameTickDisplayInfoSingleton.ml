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
(* package org.allbinary.graphics.displayable *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class gameTickDisplayInfoSingleton () =
  object
    val mutable displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfoSingleton = displayInfoSingleton
    method set_displayInfoSingleton value' = displayInfoSingleton <- value'
    val mutable lastWidth : int = 0
    method lastWidth = lastWidth
    method set_lastWidth value' = lastWidth <- value'
    val mutable lastHeight : int = 0
    method lastHeight = lastHeight
    method set_lastHeight value' = lastHeight <- value'
    val mutable lastHalfWidth : int = 0
    method lastHalfWidth = lastHalfWidth
    method set_lastHalfWidth value' = lastHalfWidth <- value'
    val mutable lastHalfHeight : int = 0
    method lastHalfHeight = lastHalfHeight
    method set_lastHalfHeight value' = lastHalfHeight <- value'
    

    method update () : unit =
        begin
        lastWidth <- (displayInfoSingleton#getLastWidth ());
        lastHeight <- (displayInfoSingleton#getLastHeight ());
        lastHalfWidth <- (displayInfoSingleton#getLastHalfWidth ());
        lastHalfHeight <- (displayInfoSingleton#getLastHalfHeight ())
        end
    

    method getLastWidth () : int =
        begin
        lastWidth
        end
    

    method getLastHeight () : int =
        begin
        lastHeight
        end
    

    method getLastHalfWidth () : int =
        begin
        lastHalfWidth
        end
    

    method getLastHalfHeight () : int =
        begin
        lastHalfHeight
        end

    initializer
      begin
        displayInfoSingleton <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        lastWidth <- (displayInfoSingleton#getLastWidth ());
        lastHeight <- (displayInfoSingleton#getLastHeight ());
        lastHalfWidth <- (displayInfoSingleton#getLastHalfWidth ());
        lastHalfHeight <- (displayInfoSingleton#getLastHalfHeight ());
        ()
      end
  end
let () = java_register_constructor "GameTickDisplayInfoSingleton" (fun arguments -> Obj.repr (new gameTickDisplayInfoSingleton (Obj.obj arguments)))

let instance = (new gameTickDisplayInfoSingleton ())
let get_instance () = instance
let () = java_register_static "GameTickDisplayInfoSingleton.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameTickDisplayInfoSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


