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
(* import org.allbinary.util.CircularIndexUtil *)

class highScoresHelper2 () =
  object (self)
    inherit HighScoresHelperBase.highScoresHelperBase () as super
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    val mutable selectedHighScores : Obj.t = Obj.repr 0
    method selectedHighScores : 'r. 'r = Obj.magic selectedHighScores
    method set_selectedHighScores : 'v. 'v -> unit = fun value' -> selectedHighScores <- Obj.repr value'
    

    method setSelectedHighScores : 'any1. 'any1 -> unit = fun (selectedHighScores_arg) ->
        let selectedHighScores_arg = Obj.repr selectedHighScores_arg in
        begin
        selectedHighScores <- Obj.repr ((Obj.magic selectedHighScores_arg))
        end [@@warning "-7-20"]
    

    method getSelectedHighScores : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic selectedHighScores)))
        end [@@warning "-7"]
    

    method setHighScoresArray (highScoresArrayP) : unit =
        begin
        ignore (super#setHighScoresArray (highScoresArrayP));
        ignore (circularIndexUtil#setSize ((Array.length highScoresArrayP)));
        (self#selectHighScores ())
        end [@@warning "-7"]
    

    method selectHighScores () : unit =
        try
        begin
        if ((Array.length highScoresArrayP) = 0) then begin
            (self#setSelectedHighScores ((NullHighScoresSingletonFactory.getInstance ())));
            raise (Java_return (Obj.repr (())))
        end;
        ignore (circularIndexUtil#next ());
        let highScores : Obj.t ref = ref ((Obj.repr highScoresArrayP.((circularIndexUtil#getIndex ())))) in ();
        let index : int ref = ref (0) in ();
        while ((((Obj.magic !highScores)#getTotal ()) < 1) && (!index < (Array.length highScoresArrayP))) do
            highScores := Obj.repr (highScoresArrayP.((circularIndexUtil#next ())));
            index := !index + 1
        done;
        (self#setSelectedHighScores ((Obj.magic !highScores)))
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        circularIndexUtil <- ((CircularIndexUtil.createInstanceAt (0, 0)) :> CircularIndexUtil.circularIndexUtil);
        selectedHighScores <- (Obj.repr (NullHighScoresSingletonFactory.getInstance ()));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "HighScoresHelper2" (fun arguments -> Obj.repr (new highScoresHelper2 (Obj.obj arguments)))


