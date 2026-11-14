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
(* package org.allbinary.game.ag.life *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let nO_LIFE_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_nO_LIFE : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !nO_LIFE_cell with Lazy.Undefined -> java_null)
let set_nO_LIFE value' = nO_LIFE_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "Life.get_nO_LIFE" (fun _ -> Obj.repr (get_nO_LIFE ()))
let () = java_register_static "Life.set_nO_LIFE" (fun value' -> set_nO_LIFE value'; Obj.repr ())
class life ((lives_arg : int), (maxlives_arg : int)) =
  object (self)
    val mutable lives : int = 0
    method lives = lives
    method set_lives value' = lives <- value'
    val mutable startLives : int = 0
    method startLives = startLives
    method set_startLives value' = startLives <- value'
    val mutable maxlives : int = 0
    method maxlives = maxlives
    method set_maxlives value' = maxlives <- value'
    
    

    method get () : int =
        begin
        lives
        end
    

    method set ((lives_arg : int)) : unit =
        begin
        lives <- lives_arg
        end
    

    method reset () : unit =
        begin
        lives <- startLives
        end
    

    method add ((lives_arg : int)) : unit =
        begin
        if (not (self#reachedLimit ())) then begin
            if ((lives + lives_arg) <= (self#getMaxlives ())) then begin
                lives <- ((lives + lives_arg))
            end else begin
                lives <- (self#getMaxlives ())
            end
        end
        end
    

    method isAlive () : bool =
        try
        begin
        if (lives <= 0) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getMaxlives () : int =
        begin
        maxlives
        end
    

    method reachedLimit () : bool =
        try
        begin
        if ((lives > maxlives) || (lives < 0)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method deaths ((lives_arg : int)) : unit =
        begin
        if (not (self#reachedLimit ())) then begin
            if ((lives - lives_arg) >= 0) then begin
                lives <- ((lives - lives_arg))
            end else begin
                lives <- 0
            end
        end
        end
    

    method getStartLives () : int =
        begin
        startLives
        end
    

    method setStartLives ((startLives_arg : int)) : unit =
        begin
        startLives <- startLives_arg
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        maxlives <- maxlives_arg;
        if (lives_arg > maxlives) then begin
            raise (Failure ("To Many Lives"))
        end;
        lives <- lives_arg;
        startLives <- lives_arg
      end
  end
let () = java_register_constructor "Life" (fun arguments -> Obj.repr (new life (Obj.obj arguments)))

let createLife : 'return. unit -> 'return = fun () ->
        begin
        (try
            (Obj.magic ((new life (0, 0))))
        with e -> begin
            raise (Failure ("RuntimeException"))
        end)
        end
let () = java_register_static "Life.createLife" (fun arguments -> Obj.repr (createLife (Obj.obj arguments)))

let () = nO_LIFE_cell := lazy (Obj.repr ((createLife ())))


