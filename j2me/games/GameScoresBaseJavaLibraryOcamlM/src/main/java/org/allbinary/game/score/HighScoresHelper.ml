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

class highScoresHelper () =
  object
    inherit HighScoresHelperBase.highScoresHelperBase () as super
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    val mutable lastIndex : int = 0
    method lastIndex = lastIndex
    method set_lastIndex value' = lastIndex <- value'
    

    method setHighScoresArray (highScoresArrayP) : unit =
        begin
        ignore (super#setHighScoresArray (highScoresArrayP));
        ignore (circularIndexUtil#setSize ((Array.length highScoresArrayP)))
        end [@@warning "-7"]
    

    method getNextHighScores : 'return. unit -> 'return = fun () ->
        begin
        let highScores : Obj.t ref = ref ((Obj.repr highScoresArrayP.((circularIndexUtil#getIndex ())))) in ();
        let index : int ref = ref (0) in ();
        while ((((((Obj.magic !highScores)#getTotal ()) < 1) || (lastIndex = (circularIndexUtil#getIndex ())))) && (!index < (Array.length highScoresArrayP))) do
            ignore (circularIndexUtil#next ());
            highScores := Obj.repr (highScoresArrayP.((circularIndexUtil#getIndex ())));
            index := !index + 1
        done;
        lastIndex <- (circularIndexUtil#getIndex ());
        (Obj.magic ((Obj.magic !highScores)))
        end [@@warning "-7"]
    

    method isAnyHighScores () : bool =
        try
        begin
        if ((Array.length highScoresArrayP) < 1) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        let anyScores : bool ref = ref (false) in ();
        let highScores : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = ((Array.length highScoresArrayP) - 1) downto 0 do
            highScores := Obj.repr (highScoresArrayP.(index));
            if (((Obj.magic !highScores)#getTotal ()) > 0) then begin
                anyScores := true
            end
        done;
        !anyScores
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        circularIndexUtil <- ((CircularIndexUtil.createInstanceAt (0, 0)) :> CircularIndexUtil.circularIndexUtil);
        lastIndex <- (-1);
        ()
      end
  end
let () = java_register_constructor "HighScoresHelper" (fun arguments -> Obj.repr (new highScoresHelper (Obj.obj arguments)))


