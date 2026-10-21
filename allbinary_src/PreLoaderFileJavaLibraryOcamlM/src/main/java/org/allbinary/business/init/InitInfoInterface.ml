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
(* package org.allbinary.business.init *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.io.path.AbPath *)

class virtual initInfoInterface =
  object
    method virtual isTesting : unit -> bool
    method virtual getTesting : unit -> string
    method virtual getTestHtmlPath : unit -> string
    method virtual getMainPath : unit -> string
    method virtual setTesting : string -> unit
    method virtual setTestHtmlPath : 'any1 . 'any1 -> unit
    method virtual setMainPath : 'any1 . 'any1 -> unit
    method virtual isTestingValid : string -> bool
    method virtual isTestHtmlPathValid : 'any1 . 'any1 -> bool
    method virtual isMainPathValid : 'any1 . 'any1 -> bool
  end


