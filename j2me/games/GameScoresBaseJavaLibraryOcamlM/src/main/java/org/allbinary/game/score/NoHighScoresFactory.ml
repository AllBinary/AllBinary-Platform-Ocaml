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
(* package org.allbinary.game.score *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.logic.communication.log.LogUtil *)

let instance_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_instance : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !instance_cell with Lazy.Undefined -> java_null)
let set_instance value' = instance_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "NoHighScoresFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
let () = java_register_static "NoHighScoresFactory.set_instance" (fun value' -> set_instance value'; Obj.repr ())
class noHighScoresFactory () =
  object (self)
    inherit HighScoresBase.highScoresBase ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable nO_HIGH_SCORES : Obj.t = Obj.repr 0
    method nO_HIGH_SCORES : 'r. 'r = Obj.magic nO_HIGH_SCORES
    method set_nO_HIGH_SCORES : 'v. 'v -> unit = fun value' -> nO_HIGH_SCORES <- Obj.repr value'
    
    

    method fetchHighScores : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_gameInfo, highScoresResultsListener) ->
        let highScoresResultsListener = Obj.repr highScoresResultsListener in
        begin
        ignore ((Obj.magic logUtil)#putF ("Getting No HighScores", (Obj.magic self), "fetchHighScores"));
        ignore ((Obj.magic highScoresResultsListener)#setHighScoresArray ((Obj.magic nO_HIGH_SCORES)))
        end [@@warning "-7-20"]
    

    method createHighScoresHelper : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.obj (java_new "HighScoresHelperBase" (Obj.repr ())))))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        nO_HIGH_SCORES <- (Obj.repr (Array.make (0) (Obj.magic 0)));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "NoHighScoresFactory" (fun arguments -> Obj.repr (new noHighScoresFactory (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_instance ()))))
        end
let () = java_register_static "NoHighScoresFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = instance_cell := lazy (Obj.repr ((new noHighScoresFactory ())))


