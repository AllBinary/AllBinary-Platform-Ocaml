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

class virtual keyboardActionScriptInputInterface =
  object
    inherit ProfileActionScriptInputInterface.profileActionScriptInputInterface
    method virtual getDelayBetweenKeys : unit -> int
    method virtual getKeyArray : unit -> int array
    method virtual isPress : unit -> bool
    method virtual isRelease : unit -> bool
    method virtual isNormal : unit -> bool
    method virtual setPress : bool -> unit
    method virtual setRelease : bool -> unit
    method virtual setNormal : unit -> unit
    method virtual getText : unit -> string
    method virtual setText : string -> unit
    method virtual log : unit -> unit
  end


