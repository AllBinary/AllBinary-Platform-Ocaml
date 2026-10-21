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
(* package org.allbinary.logic.system.loader *)

open Allbinary_java [@@warning "-33"]

class virtual securedNativeLibraryInterface =
  object
    method virtual load : unit -> unit
    method virtual unload : unit -> unit
    method virtual unlock : string -> bool
    method virtual getLibraryName : unit -> string
    method virtual getName : unit -> string
  end


