(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.tick *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.layer.AllBinaryLayerManager *)

class nullTickable () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    

    method processTick : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getName () : string =
        begin
        nAME
        end

    initializer
      begin
        nAME <- "NulLTickable";
        ()
      end
  end
let () = java_register_constructor "NullTickable" (fun arguments -> Obj.repr (new nullTickable (Obj.obj arguments)))

let sINGLETON = (new nullTickable ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "NullTickable.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "NullTickable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


