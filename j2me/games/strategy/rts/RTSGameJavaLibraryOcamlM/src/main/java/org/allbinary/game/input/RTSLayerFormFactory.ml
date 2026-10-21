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
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)

class rTSLayerFormFactory () =
  object
    

    method getInstance : 'any1. 'any1 -> ScrollSelectionForm.scrollSelectionForm = fun (_rtsLayer) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "RTSLayerFormFactory" (fun arguments -> Obj.repr (new rTSLayerFormFactory (Obj.obj arguments)))


