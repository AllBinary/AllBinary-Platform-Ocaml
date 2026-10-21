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
(* package org.allbinary.view *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Displayable *)
(* import javax.microedition.midlet.MIDlet *)

class nullEmulatorView () =
  object
    

    method setMidlet : 'any1. 'any1 -> unit = fun (_midlet) ->
        begin
        ()
        end [@@warning "-20"]
    

    method onEmulatorInitComplete : 'any1. 'any1 -> unit = fun (_midletActivity) ->
        begin
        ()
        end
    

    method onSetDisplayable : 'any1. 'any1 -> unit = fun (_displayable) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullEmulatorView" (fun arguments -> Obj.repr (new nullEmulatorView (Obj.obj arguments)))

let nULL_EMULATOR_VIEW = (new nullEmulatorView ())
let get_nULL_EMULATOR_VIEW () = nULL_EMULATOR_VIEW
let () = java_register_static "NullEmulatorView.get_nULL_EMULATOR_VIEW" (fun _ -> Obj.repr (get_nULL_EMULATOR_VIEW ()))


