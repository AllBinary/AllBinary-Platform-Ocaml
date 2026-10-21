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
(* package org.allbinary.ag.weapon.media.audio *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.media.audio.CompositeSound *)
(* import org.allbinary.media.audio.Sound *)

class dropWeaponSound () =
  object
    inherit CompositeSound.compositeSound ("resource:/wav/mine.wav")
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "DropWeaponSound" (fun arguments -> Obj.repr (new dropWeaponSound (Obj.obj arguments)))

let soundInterface : Obj.t ref = ref ((Obj.repr (new dropWeaponSound ())))
let get_soundInterface () = Obj.magic !soundInterface
let set_soundInterface value' = soundInterface := Obj.repr value'
let () = java_register_static "DropWeaponSound.get_soundInterface" (fun _ -> Obj.repr (get_soundInterface ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic !soundInterface)))
        end
let () = java_register_static "DropWeaponSound.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


