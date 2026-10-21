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
(* package org.allbinary.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]

let fIRST_POSITION : int = 1
let get_fIRST_POSITION () = fIRST_POSITION
let () = java_register_static "FinalPositionRaceTrackFactory.get_fIRST_POSITION" (fun _ -> Obj.repr (get_fIRST_POSITION ()))
let index : int ref = ref (fIRST_POSITION)
let get_index () = !index
let set_index value' = index := value'
let () = java_register_static "FinalPositionRaceTrackFactory.get_index" (fun _ -> Obj.repr (get_index ()))

let getInstance () : int =
        begin
        (let value = !index in index := !index + 1; value)
        end

and reset () : unit =
        begin
        index := fIRST_POSITION
        end

let () = java_register_static "FinalPositionRaceTrackFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "FinalPositionRaceTrackFactory.reset" (fun arguments -> Obj.repr (reset (Obj.obj arguments)))
class finalPositionRaceTrackFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "FinalPositionRaceTrackFactory" (fun arguments -> Obj.repr (new finalPositionRaceTrackFactory (Obj.obj arguments)))


