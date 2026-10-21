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
(* package org.allbinary.game.layer.hud *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.string.StringMaker *)

class lapInfo ((totalLaps_arg : int)) =
  object (self)
    val mutable numberOfLaps : int = 0
    method numberOfLaps = numberOfLaps
    method set_numberOfLaps value' = numberOfLaps <- value'
    val mutable totalLaps : int = 0
    method totalLaps = totalLaps
    method set_totalLaps value' = totalLaps <- value'
    
    

    method add () : unit =
        begin
        numberOfLaps <- numberOfLaps + 1
        end
    

    method getCurrentLap () : int =
        begin
        numberOfLaps
        end
    

    method getTotalLaps () : int =
        begin
        totalLaps
        end
    

    method isDone () : bool =
        try
        begin
        if (numberOfLaps >= totalLaps) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("isDone: "));
        ignore (!stringBuffer#appendboolean ((self#isDone ())));
        ignore (!stringBuffer#append (" CurrentLap: "));
        ignore (!stringBuffer#appendint ((self#getCurrentLap ())));
        ignore (!stringBuffer#append (" Total Laps: "));
        ignore (!stringBuffer#appendint ((self#getTotalLaps ())));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        ();
        ();
        ();
        totalLaps <- totalLaps_arg;
        numberOfLaps <- 1
      end
  end
let () = java_register_constructor "LapInfo" (fun arguments -> Obj.repr (new lapInfo (Obj.obj arguments)))

let nULL_LAP_INFO = ref ((new lapInfo ((-1))))
let get_nULL_LAP_INFO () = !nULL_LAP_INFO
let set_nULL_LAP_INFO value' = nULL_LAP_INFO := value'
let () = java_register_static "LapInfo.get_nULL_LAP_INFO" (fun _ -> Obj.repr (get_nULL_LAP_INFO ()))


