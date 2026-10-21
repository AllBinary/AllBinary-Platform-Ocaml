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
(* import org.allbinary.util.BasicArrayList *)

class virtual abeLicenseInterface =
  object
    method virtual hasKey : unit -> bool
    method virtual getKey : string -> string
    method virtual getLicenseId : unit -> string
    method virtual getServers : unit -> BasicArrayList.basicArrayList
    method virtual getSpecial : unit -> string
    method virtual getLicenseType : unit -> LicenseType.licenseType
    method virtual isValid : unit -> bool
    method virtual toString : unit -> string
  end


