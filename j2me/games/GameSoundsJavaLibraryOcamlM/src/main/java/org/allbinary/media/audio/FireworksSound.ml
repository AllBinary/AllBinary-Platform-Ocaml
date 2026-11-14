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
(* package org.allbinary.media.audio *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class fireworksSound () =
  object
    inherit CompositeSound.compositeSound ("resource:/wav/fireworks.wav")
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "FireworksSound" (fun arguments -> Obj.repr (new fireworksSound (Obj.obj arguments)))

let soundInterface : Sound.sound ref = ref (((new fireworksSound ()) :> Sound.sound))
let get_soundInterface () = !soundInterface
let set_soundInterface value' = soundInterface := value'
let () = java_register_static "FireworksSound.get_soundInterface" (fun _ -> Obj.repr (get_soundInterface ()))
let () = java_register_static "FireworksSound.set_soundInterface" (fun value' -> set_soundInterface (Obj.obj value'); Obj.repr ())

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (!soundInterface))
        end
let () = java_register_static "FireworksSound.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


