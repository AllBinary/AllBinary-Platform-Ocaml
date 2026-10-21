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
(* package org.allbinary.logic.control.validate *)

open Allbinary_java [@@warning "-33"]
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class virtual validationInterface =
  object
    method virtual isValid : unit -> bool
    method virtual toValidationInfoNode : 'any1 'return . 'any1 -> 'return
    method virtual toValidationInfoDoc : 'return . unit -> 'return
    method virtual validationInfo : unit -> string
  end


