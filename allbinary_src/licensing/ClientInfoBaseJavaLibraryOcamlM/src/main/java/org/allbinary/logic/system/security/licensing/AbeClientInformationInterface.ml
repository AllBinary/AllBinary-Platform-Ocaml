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
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.system.os.GenericOperatingSystem *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)

class virtual abeClientInformationInterface =
  object
    method virtual init : unit -> unit
    method virtual getOperatingSystemInterface : unit -> GenericOperatingSystem.genericOperatingSystem
    method virtual getName : unit -> string
    method virtual getSpecialName : unit -> string
    method virtual getVersion : unit -> string
    method virtual getLicenseId : unit -> string
    method virtual getLicenseServers : unit -> BasicArrayList.basicArrayList
    method virtual getLicenseServer : int -> string
    method virtual getNumberOfLicenseServers : unit -> int
    method virtual toHashtable : 'return . unit -> 'return
    method virtual isSameId : string -> bool
    method virtual isLargerOrDifferentServerList : 'any1 . 'any1 -> bool
    method virtual isHardSale : unit -> bool
    method virtual toShortString : unit -> string
  end


