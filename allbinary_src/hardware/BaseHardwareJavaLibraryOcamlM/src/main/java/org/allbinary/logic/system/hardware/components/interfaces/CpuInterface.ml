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
(* package org.allbinary.logic.system.hardware.components.interfaces *)

open Allbinary_java [@@warning "-33"]

class virtual cpuInterface =
  object
    method virtual getProcessor : unit -> string
    method virtual getVendorId : unit -> string
    method virtual getCpuFamily : unit -> string
    method virtual getModel : unit -> string
    method virtual getModelName : unit -> string
    method virtual getStepping : unit -> string
    method virtual getCpuSpeed : unit -> string
    method virtual getCacheSize : unit -> string
    method virtual compareTo : 'any1 . 'any1 -> bool
  end


