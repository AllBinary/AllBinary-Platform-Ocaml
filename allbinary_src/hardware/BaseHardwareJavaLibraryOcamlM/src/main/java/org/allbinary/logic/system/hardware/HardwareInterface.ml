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
(* package org.allbinary.logic.system.hardware *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface *)
(* import org.allbinary.util.ABHashtable *)

class virtual hardwareInterface =
  object
    method virtual getComponent : int -> HardwareComponentInterface.hardwareComponentInterface
    method virtual toString : unit -> string
    method virtual compareTo : 'any1 . 'any1 -> bool
    method virtual difference : 'any1 'return . 'any1 -> 'return
  end


