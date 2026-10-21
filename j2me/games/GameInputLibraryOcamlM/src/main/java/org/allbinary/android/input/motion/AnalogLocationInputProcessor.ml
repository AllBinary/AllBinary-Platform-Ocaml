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
(* package org.allbinary.android.input.motion *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.input.analog.AnalogLocationInput *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class analogLocationInputProcessor () =
  object
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_allbinaryLayerManager, _analogLocationInput) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AnalogLocationInputProcessor" (fun arguments -> Obj.repr (new analogLocationInputProcessor (Obj.obj arguments)))


