(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
(* import org.allbinary.logic.NullUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "LastFetchHighScoresFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class lastFetchHighScoresFactory () =
  object
    val mutable highScoresArray : Obj.t = Obj.repr 0
    method highScoresArray : 'r. 'r = Obj.magic highScoresArray
    method set_highScoresArray : 'v. 'v -> unit = fun value' -> highScoresArray <- Obj.repr value'

    initializer
      begin
        highScoresArray <- (Obj.repr (NoHighScoresFactory.getInstance ())#nO_HIGH_SCORES);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "LastFetchHighScoresFactory" (fun arguments -> Obj.repr (new lastFetchHighScoresFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new lastFetchHighScoresFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "LastFetchHighScoresFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


