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
(* package org.allbinary.business.context.modules.storefront *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.context.configuration.ContextConfigurationInterface *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.util.BasicArrayList *)

class virtual storeFrontInterface =
  object
    inherit TableMappingInterface.tableMappingInterface
    method virtual isNameValid : unit -> bool
    method virtual isValid : unit -> bool
    method virtual nameValidationInfo : unit -> string
    method virtual validationInfo : unit -> string
    method virtual getTestHtmlPath : unit -> string
    method virtual getCurrentHostName : unit -> string
    method virtual getCurrentHostNamePath : unit -> string
    method virtual getCurrentHomeHostName : unit -> string
    method virtual getCurrentHomeHostNamePath : unit -> string
    method virtual getName : unit -> string
    method virtual getBasketName : unit -> string
    method virtual getHomeHostName : unit -> string
    method virtual getHomeHostNamePath : unit -> string
    method virtual getHostName : unit -> string
    method virtual getHostNamePath : unit -> string
    method virtual getTestHomeHostName : unit -> string
    method virtual getTestHomeHostNamePath : unit -> string
    method virtual getTestHostName : unit -> string
    method virtual getTestHostNamePath : unit -> string
    method virtual getStaticPath : unit -> string
    method virtual getCategoryPath : unit -> string
    method virtual getSubStores : unit -> BasicArrayList.basicArrayList
    method virtual getTagLocation : unit -> string
    method virtual getPackageLocation : unit -> string
    method virtual getInventoryControl : unit -> string
    method virtual getContextConfigurationInterface : unit -> ContextConfigurationInterface.contextConfigurationInterface
    method virtual setContextConfigurationInterface : 'any1 . 'any1 -> unit
    method virtual getFtp : unit -> string
    method virtual getFtpPath : unit -> string
    method virtual getFtpUserName : unit -> string
    method virtual getFtpPassword : unit -> string
    method virtual getTestFtp : unit -> string
    method virtual getTestFtpPath : unit -> string
    method virtual getTestFtpUserName : unit -> string
    method virtual getTestFtpPassword : unit -> string
    method virtual getTimeCreated : unit -> string
    method virtual getLastModified : unit -> string
    method virtual setName : string -> unit
    method virtual setBasketName : string -> unit
    method virtual setHomeHostName : string -> unit
    method virtual setHomeHostNamePath : string -> unit
    method virtual setHostName : string -> unit
    method virtual setHostNamePath : string -> unit
    method virtual setTestHomeHostName : string -> unit
    method virtual setTestHomeHostNamePath : string -> unit
    method virtual setTestHostName : string -> unit
    method virtual setTestHostNamePath : string -> unit
    method virtual setImagePath : string -> unit
    method virtual setStaticPath : string -> unit
    method virtual setCategoryPath : string -> unit
    method virtual setPackageLocation : string -> unit
    method virtual setInventoryControl : string -> unit
    method virtual setFtp : string -> unit
    method virtual setFtpPath : string -> unit
    method virtual setFtpUserName : string -> unit
    method virtual setFtpPassword : string -> unit
    method virtual setTestFtp : string -> unit
    method virtual setTestFtpPath : string -> unit
    method virtual setTestFtpUserName : string -> unit
    method virtual setTestFtpPassword : string -> unit
    method virtual setTimeCreated : string -> unit
    method virtual setLastModified : string -> unit
    method virtual install : int * int -> unit
  end


