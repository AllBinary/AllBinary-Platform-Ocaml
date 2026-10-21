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
(* package org.allbinary.business.user *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.business.user.modules.configuration.UserConfigurationInterface *)
(* import org.allbinary.business.user.role.UserRole *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface *)
(* import org.allbinary.logic.control.validate.ValidationInterface *)

class virtual userInterface =
  object
    inherit TableMappingInterface.tableMappingInterface
    inherit ValidationInterface.validationInterface
    method virtual setUserName : string -> unit
    method virtual setPrefixName : string -> unit
    method virtual setFirstName : string -> unit
    method virtual setLastName : string -> unit
    method virtual setMiddleName : string -> unit
    method virtual setSuffixName : string -> unit
    method virtual setCompany : string -> unit
    method virtual setPositionAtCompany : string -> unit
    method virtual setMainEmail : string -> unit
    method virtual setSecondaryEmail : string -> unit
    method virtual setHomePhone : string -> unit
    method virtual setCellPhone : string -> unit
    method virtual setWorkPhone : string -> unit
    method virtual setOtherContact : string -> unit
    method virtual setElectronicContact : string -> unit
    method virtual setFax : string -> unit
    method virtual setRole : 'any1 . 'any1 -> unit
    method virtual setEncryption : string -> unit
    method virtual setSecret : string -> unit
    method virtual setPassword : string -> unit
    method virtual setPermissions : string -> unit
    method virtual enable : unit -> unit
    method virtual setEnable : string -> unit
    method virtual getUserName : unit -> string
    method virtual getPrefixName : unit -> string
    method virtual getFirstName : unit -> string
    method virtual getLastName : unit -> string
    method virtual getMiddleName : unit -> string
    method virtual getSuffixName : unit -> string
    method virtual getCompany : unit -> string
    method virtual getPositionAtCompany : unit -> string
    method virtual getMainEmail : unit -> string
    method virtual getSecondaryEmail : unit -> string
    method virtual getHomePhone : unit -> string
    method virtual getCellPhone : unit -> string
    method virtual getWorkPhone : unit -> string
    method virtual getOtherContact : unit -> string
    method virtual getElectronicContact : unit -> string
    method virtual getFax : unit -> string
    method virtual getRole : 'return . unit -> 'return
    method virtual getEncryption : unit -> string
    method virtual getSecret : unit -> string
    method virtual getPassword : unit -> string
    method virtual getPermissions : unit -> string
    method virtual getUserConfigurationInterface : 'return . unit -> 'return
    method virtual setUserConfigurationInterface : 'any1 . 'any1 -> unit
    method virtual toPasswordHashMap : unit -> java_hash_map
    method virtual validateSession : 'any1 . 'any1 -> unit
    method virtual updateSession : 'any1 . 'any1 -> unit
    method virtual isSessionValid : unit -> bool
  end


