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
(* import org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface *)
(* import org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface *)
(* import org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface *)

class virtual profileActionScriptConditionInterface =
  object
    inherit ProfileActionScriptNodeInterface.profileActionScriptNodeInterface
    inherit CustomTreeNodeInterface.customTreeNodeInterface
    inherit ProfileActionScriptItemInterface.profileActionScriptItemInterface
    method virtual addProcessor : 'any1 . 'any1 -> unit
    method virtual removeProcessor : 'any1 . 'any1 -> unit
    method virtual shouldProcess : int -> bool
  end


