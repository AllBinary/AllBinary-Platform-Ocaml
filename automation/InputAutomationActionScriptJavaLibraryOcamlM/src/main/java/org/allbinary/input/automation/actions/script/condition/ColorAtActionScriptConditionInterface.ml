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
(* package org.allbinary.input.automation.actions.script.condition *)

open Allbinary_java [@@warning "-33"]
(* import java.awt *)
(* import org.allbinary.media.image.analysis.ColorRangeInterface *)

class virtual colorAtActionScriptConditionInterface =
  object
    method virtual getPoint : 'return . unit -> 'return
    method virtual setPoint : 'any1 . 'any1 -> unit
    method virtual getColorRangeInterface : unit -> ColorRangeInterface.colorRangeInterface
    method virtual setColorRangeInterface : 'any1 . 'any1 -> unit
    method virtual log : unit -> unit
  end


