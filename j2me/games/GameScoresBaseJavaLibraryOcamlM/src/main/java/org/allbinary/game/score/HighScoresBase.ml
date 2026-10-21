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
(* import org.allbinary.string.CommonStrings *)

class highScoresBase () =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method fetchHighScores : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_gameInfo, _highScoresResultsListener) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method fetchHighScoresPreload : 'any1 'any2. 'any1 * 'any2 * bool -> unit = fun (_gameInfo, _highScoresResultsListener, (_preload : bool)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method createHighScoresHelper () : HighScoresHelperBaseInterface.highScoresHelperBaseInterface =
        begin
        raise (Failure ("RuntimeException"))
        end

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end
let () = java_register_constructor "HighScoresBase" (fun arguments -> Obj.repr (new highScoresBase (Obj.obj arguments)))


