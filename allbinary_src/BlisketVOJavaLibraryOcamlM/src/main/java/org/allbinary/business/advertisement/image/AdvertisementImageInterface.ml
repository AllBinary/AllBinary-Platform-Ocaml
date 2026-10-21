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
(* package org.allbinary.business.advertisement.image *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface *)

class virtual advertisementImageInterface =
  object
    method virtual getFileName : unit -> string
    method virtual getUrl : unit -> string
    method virtual getTwoDimensionalConstraint : unit -> TwoDimensionalConstraintInterface.twoDimensionalConstraintInterface
  end


