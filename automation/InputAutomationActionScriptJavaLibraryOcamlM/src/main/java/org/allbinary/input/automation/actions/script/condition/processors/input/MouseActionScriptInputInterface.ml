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
(* package org.allbinary.input.automation.actions.script.condition.processors.input *)

open Allbinary_java [@@warning "-33"]
(* import java.awt *)

class virtual mouseActionScriptInputInterface =
  object
    method virtual setPoint : 'any1 . 'any1 -> unit
    method virtual getPoint : 'return . unit -> 'return
    method virtual getButtonClicks : unit -> int
    method virtual setButtonClicks : int -> unit
    method virtual log : unit -> unit
  end


