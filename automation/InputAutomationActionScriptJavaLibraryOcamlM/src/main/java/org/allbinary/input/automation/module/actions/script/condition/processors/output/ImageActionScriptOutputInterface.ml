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
(* package org.allbinary.input.automation.module.actions.script.condition.processors.output *)

open Allbinary_java [@@warning "-33"]

class virtual imageActionScriptOutputInterface =
  object
    inherit ProfileActionScriptOutputInterface.profileActionScriptOutputInterface
    method virtual getImageTypes : unit -> ImageTypes.imageTypes
    method virtual setImageTypes : 'any1 . 'any1 -> unit
    method virtual isSaved : unit -> bool
    method virtual setSaved : bool -> unit
    method virtual isDisplay : unit -> bool
    method virtual setDisplay : bool -> unit
    method virtual log : unit -> unit
  end


