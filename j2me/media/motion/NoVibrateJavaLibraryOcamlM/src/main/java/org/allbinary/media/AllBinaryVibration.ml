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
(* package org.allbinary.media *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.GameConfigurationCentral *)

let vIBRATION : AllBinaryVibrationME.allBinaryVibrationME ref = ref (((AllBinaryNoVibration.get_nO_VIBRATION ()) :> AllBinaryVibrationME.allBinaryVibrationME))
let get_vIBRATION () = !vIBRATION
let set_vIBRATION value' = vIBRATION := value'
let () = java_register_static "AllBinaryVibration.get_vIBRATION" (fun _ -> Obj.repr (get_vIBRATION ()))
let () = java_register_static "AllBinaryVibration.set_vIBRATION" (fun value' -> set_vIBRATION (Obj.obj value'); Obj.repr ())

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (!vIBRATION))
        end

let () = java_register_static "AllBinaryVibration.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class allBinaryVibration () =
  object
    inherit AllBinaryVibrationME.allBinaryVibrationME ()
    
    

    method vibrate ((_duration : int), (_type_ : int), (_volume : int)) : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AllBinaryVibration" (fun arguments -> Obj.repr (new allBinaryVibration (Obj.obj arguments)))

let init () : unit =
        begin
        if ((java_int_value (Obj.repr ((GameConfigurationCentral.getInstance ())#vIBRATION#getValue ()))) == 0) then begin
            vIBRATION := (AllBinaryNoVibration.get_nO_VIBRATION ())
        end else begin
            vIBRATION := (new allBinaryVibration ())
        end
        end
let () = java_register_static "AllBinaryVibration.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))


