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
(* import javax.microedition.lcdui.Graphics *)

class updateMyFontProcessor ((keyValueDrawCharArray : UpdateMyFontInterface.updateMyFontInterface)) =
  object
    inherit MyFontProcessor.myFontProcessor ()
    val mutable updateMeasurementProcessor : UpdateMyFontInterface.updateMyFontInterface = (Obj.magic 0)
    method updateMeasurementProcessor = updateMeasurementProcessor
    method set_updateMeasurementProcessor value' = updateMeasurementProcessor <- value'
    
    

    method process : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (updateMeasurementProcessor#updateMeasurement ((Obj.magic graphics)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        updateMeasurementProcessor <- keyValueDrawCharArray
      end
  end
let () = java_register_constructor "UpdateMyFontProcessor" (fun arguments -> Obj.repr (new updateMyFontProcessor (Obj.obj arguments)))


