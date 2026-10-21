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
(* package org.allbinary.business.user.modules.admin.configuration *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.context.configuration.ContextConfigurationInterface *)

class virtual adminConfigurationInterface =
  object
    method virtual write : unit -> unit
    method virtual getContextConfigurationInterface : unit -> ContextConfigurationInterface.contextConfigurationInterface
    method virtual setContextConfigurationInterface : 'any1 . 'any1 -> unit
  end


