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
(* package org.allbinary.business.advertisement.product *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface *)

class virtual advertisementProductInterface =
  object
    method virtual getType : unit -> string
    method virtual getLink : unit -> string
    method virtual getNumber : unit -> int
    method virtual getTwoDimensionalConstraint : unit -> TwoDimensionalConstraintInterface.twoDimensionalConstraintInterface
  end


