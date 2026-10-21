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

class allBinaryNoVibration () =
  object
    inherit AllBinaryVibrationME.allBinaryVibrationME ()
    

    method vibrate ((_duration : int), (_type_ : int), (_volume : int)) : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AllBinaryNoVibration" (fun arguments -> Obj.repr (new allBinaryNoVibration (Obj.obj arguments)))

let nO_VIBRATION : AllBinaryVibrationME.allBinaryVibrationME ref = ref (((new allBinaryNoVibration ()) :> AllBinaryVibrationME.allBinaryVibrationME))
let get_nO_VIBRATION () = !nO_VIBRATION
let set_nO_VIBRATION value' = nO_VIBRATION := value'
let () = java_register_static "AllBinaryNoVibration.get_nO_VIBRATION" (fun _ -> Obj.repr (get_nO_VIBRATION ()))


