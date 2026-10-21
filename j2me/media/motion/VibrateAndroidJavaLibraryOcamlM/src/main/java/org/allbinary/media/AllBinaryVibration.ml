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
(* import android.content.Context *)
(* import android.os.Vibrator *)
(* import org.allbinary.data.resource.ResourceUtil *)
(* import org.allbinary.game.configuration.GameConfigurationCentral *)

let vIBRATION : AllBinaryVibrationME.allBinaryVibrationME ref = ref (((AllBinaryNoVibration.get_nO_VIBRATION ()) :> AllBinaryVibrationME.allBinaryVibrationME))
let get_vIBRATION () = !vIBRATION
let set_vIBRATION value' = vIBRATION := value'
let () = java_register_static "AllBinaryVibration.get_vIBRATION" (fun _ -> Obj.repr (get_vIBRATION ()))

let getInstance () : AllBinaryVibrationME.allBinaryVibrationME =
        begin
        (!vIBRATION :> AllBinaryVibrationME.allBinaryVibrationME)
        end

let () = java_register_static "AllBinaryVibration.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class allBinaryVibration () =
  object
    inherit AllBinaryVibrationME.allBinaryVibrationME ()
    val mutable vibrator : Obj.t = Obj.repr 0
    method vibrator : 'r. 'r = Obj.magic vibrator
    method set_vibrator : 'v. 'v -> unit = fun value' -> vibrator <- Obj.repr value'
    
    

    method vibrate ((duration : int), (_type_ : int), (_volume : int)) : unit =
        begin
        ignore ((Obj.magic vibrator)#vibrate (duration))
        end [@@warning "-7"]

    initializer
      begin
        vibrator <- (Obj.repr (Obj.magic (((Obj.magic (java_call_static "ResourceUtil.getInstance" (Obj.repr ())))#getContext ())#getSystemService ((Context.get_vIBRATOR_SERVICE ())))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllBinaryVibration" (fun arguments -> Obj.repr (new allBinaryVibration (Obj.obj arguments)))

let init () : unit =
        begin
        if ((((GameConfigurationCentral.getInstance ())#vIBRATION#getValue ())#intValue ()) == 0) then begin
            vIBRATION := (AllBinaryNoVibration.get_nO_VIBRATION ())
        end else begin
            vIBRATION := (new allBinaryVibration ())
        end
        end
let () = java_register_static "AllBinaryVibration.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))


