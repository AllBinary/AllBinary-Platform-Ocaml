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
(* package org.allbinary.game.ag.layer.hud.basic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.canvas.Processor *)

class setAndRemoveProcessor (updateMeasurementProcessor_arg) =
  object
    inherit Processor.processor ()
    val mutable updateMeasurementProcessor : Obj.t = Obj.repr 0
    method updateMeasurementProcessor : 'r. 'r = Obj.magic updateMeasurementProcessor
    method set_updateMeasurementProcessor : 'v. 'v -> unit = fun value' -> updateMeasurementProcessor <- Obj.repr value'
    
    

    method process () : unit =
        begin
        ignore ((Obj.magic updateMeasurementProcessor)#setAndRemoveProcess ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        updateMeasurementProcessor <- Obj.repr (updateMeasurementProcessor_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "SetAndRemoveProcessor" (fun arguments -> Obj.repr (new setAndRemoveProcessor (Obj.obj arguments)))


