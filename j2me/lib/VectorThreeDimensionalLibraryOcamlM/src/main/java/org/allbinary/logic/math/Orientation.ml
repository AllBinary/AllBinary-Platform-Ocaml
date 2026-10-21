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
(* package org.allbinary.logic.math *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)

class orientation ((yaw_arg : int), (pitch_arg : int), (roll_arg : int)) =
  object
    val mutable yaw : BasicDecimal.basicDecimal = (Obj.magic 0)
    method yaw = yaw
    method set_yaw value' = yaw <- value'
    val mutable pitch : BasicDecimal.basicDecimal = (Obj.magic 0)
    method pitch = pitch
    method set_pitch value' = pitch <- value'
    val mutable roll : BasicDecimal.basicDecimal = (Obj.magic 0)
    method roll = roll
    method set_roll value' = roll <- value'
    
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Y: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr yaw))));
        ignore (!stringBuffer#append (" P: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr pitch))));
        ignore (!stringBuffer#append (" R: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr roll))));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        yaw <- ((new BasicDecimal.basicDecimal (0)) :> BasicDecimal.basicDecimal);
        pitch <- ((new BasicDecimal.basicDecimal (0)) :> BasicDecimal.basicDecimal);
        roll <- ((new BasicDecimal.basicDecimal (0)) :> BasicDecimal.basicDecimal);
        ();
        ignore (yaw#setint (yaw_arg));
        ignore (pitch#setint (pitch_arg));
        ignore (roll#setint (roll_arg))
      end
  end
let () = java_register_constructor "Orientation" (fun arguments -> Obj.repr (new orientation (Obj.obj arguments)))

let nONE = ref ((new orientation (0, 0, 0)))
let get_nONE () = !nONE
let set_nONE value' = nONE := value'
let () = java_register_static "Orientation.get_nONE" (fun _ -> Obj.repr (get_nONE ()))

let sINGLETON = ref ((new orientation (0, 0, 0)))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "Orientation.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance ((yaw_arg : int), (pitch_arg : int), (roll_arg : int)) =
        begin
        ignore (!sINGLETON#yaw#setint (yaw_arg));
        ignore (!sINGLETON#pitch#setint (pitch_arg));
        ignore (!sINGLETON#roll#setint (roll_arg));
        !sINGLETON
        end
let () = java_register_static "Orientation.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


