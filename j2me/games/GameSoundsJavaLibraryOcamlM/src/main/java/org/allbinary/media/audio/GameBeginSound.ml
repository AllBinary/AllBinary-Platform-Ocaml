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

class gameBeginSound () =
  object
    inherit CompositeSound.compositeSound ("resource:/wav/begin.wav")
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "GameBeginSound" (fun arguments -> Obj.repr (new gameBeginSound (Obj.obj arguments)))

let soundInterface : Sound.sound ref = ref (((new gameBeginSound ()) :> Sound.sound))
let get_soundInterface () = !soundInterface
let set_soundInterface value' = soundInterface := value'
let () = java_register_static "GameBeginSound.get_soundInterface" (fun _ -> Obj.repr (get_soundInterface ()))
let () = java_register_static "GameBeginSound.set_soundInterface" (fun value' -> set_soundInterface (Obj.obj value'); Obj.repr ())

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (!soundInterface))
        end
let () = java_register_static "GameBeginSound.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


