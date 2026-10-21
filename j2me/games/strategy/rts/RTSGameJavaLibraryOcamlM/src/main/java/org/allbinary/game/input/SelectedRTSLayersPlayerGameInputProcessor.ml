(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class selectedRTSLayersPlayerGameInputProcessor (selectedRTSLayersPlayerGameInput_arg) =
  object
    inherit GameInputProcessor.gameInputProcessor ()
    val mutable selectedRTSLayersPlayerGameInput : Obj.t = Obj.repr 0
    method selectedRTSLayersPlayerGameInput : 'r. 'r = Obj.magic selectedRTSLayersPlayerGameInput
    method set_selectedRTSLayersPlayerGameInput : 'v. 'v -> unit = fun value' -> selectedRTSLayersPlayerGameInput <- Obj.repr value'
    

    initializer
      begin
        ();
        ();
        selectedRTSLayersPlayerGameInput <- Obj.repr (selectedRTSLayersPlayerGameInput_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "SelectedRTSLayersPlayerGameInputProcessor" (fun arguments -> Obj.repr (new selectedRTSLayersPlayerGameInputProcessor (Obj.obj arguments)))


