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
(* package org.allbinary.input.automation.module.game *)

open Allbinary_java [@@warning "-33"]
(* import java.awt *)
(* import org.allbinary.input.automation.module.InputAutomationActionInterface *)

class virtual basicGameInputAutomationActionInterface =
  object
    inherit InputAutomationActionInterface.inputAutomationActionInterface
    method virtual attack : 'any1 . 'any1 -> unit
    method virtual target : 'any1 . 'any1 -> unit
  end


