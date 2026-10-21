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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)

class highScoresHelperBase () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable highScoresArrayP : Obj.t = Obj.repr 0
    method highScoresArrayP : 'r. 'r = Obj.magic highScoresArrayP
    method set_highScoresArrayP : 'v. 'v -> unit = fun value' -> highScoresArrayP <- Obj.repr value'
    

    method setHighScoresArray (highScoresArrayP_arg) : unit =
        begin
        if (highScoresArrayP_arg != (Obj.magic 0)) then begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (!commonStrings#sTART))#appendint ((Array.length highScoresArrayP_arg))))), self, "setHighScoresArray"))
        end else begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#putF (!commonStrings#sTART, self, "setHighScoresArray"))
        end;
        highScoresArrayP <- Obj.repr (highScoresArrayP_arg)
        end
    

    method getNextHighScores : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((NullHighScoresSingletonFactory.getInstance ())))
        end
    

    method isAnyHighScores () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method setSelectedHighScores : 'any1. 'any1 -> unit = fun (_selectedHighScores) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getSelectedHighScores : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((NullHighScoresSingletonFactory.getInstance ())))
        end
    

    method getHighScoresArray : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic highScoresArrayP)))
        end
    

    method selectHighScores () : unit =
        begin
        ()
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        highScoresArrayP <- (Obj.repr (LastFetchHighScoresFactory.getInstance ())#highScoresArray);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "HighScoresHelperBase" (fun arguments -> Obj.repr (new highScoresHelperBase (Obj.obj arguments)))


