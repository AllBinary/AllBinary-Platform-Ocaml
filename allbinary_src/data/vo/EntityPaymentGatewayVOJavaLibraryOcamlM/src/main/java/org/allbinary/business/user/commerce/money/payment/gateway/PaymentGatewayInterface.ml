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
(* package org.allbinary.business.user.commerce.money.payment.gateway *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tables.TableMappingInterface *)

class virtual paymentGatewayInterface =
  object
    inherit TableMappingInterface.tableMappingInterface
    method virtual getEnable : unit -> string
    method virtual getStoreName : unit -> string
    method virtual getName : unit -> string
    method virtual getPaymentMethod : unit -> string
    method virtual getMode : unit -> string
    method virtual getTestProtocol : unit -> string
    method virtual getTestServer : unit -> string
    method virtual getTestPort : unit -> string
    method virtual getTestPath : unit -> string
    method virtual getServerProtocol : unit -> string
    method virtual getServer : unit -> string
    method virtual getServerPort : unit -> string
    method virtual getServerPath : unit -> string
    method virtual getUserName : unit -> string
    method virtual getPassword : unit -> string
    method virtual getProxyProtocol : unit -> string
    method virtual getProxyServer : unit -> string
    method virtual getProxyPath : unit -> string
    method virtual getProxyPort : unit -> string
    method virtual getProxyUserName : unit -> string
    method virtual getProxyPassword : unit -> string
    method virtual getTimeout : unit -> string
    method virtual getProxyTimeout : unit -> string
    method virtual getSpecial1 : unit -> string
    method virtual getSpecial2 : unit -> string
    method virtual getSpecial3 : unit -> string
    method virtual getSpecial4 : unit -> string
    method virtual getSpecial5 : unit -> string
    method virtual getSpecial6 : unit -> string
    method virtual getSpecial7 : unit -> string
    method virtual getSpecial8 : unit -> string
    method virtual getSpecial9 : unit -> string
    method virtual getLastModified : unit -> string
    method virtual getTimeEntered : unit -> string
    method virtual setEnable : string -> unit
    method virtual setStoreName : string -> unit
    method virtual setName : string -> unit
    method virtual setPaymentMethod : string -> unit
    method virtual setMode : string -> unit
    method virtual setTestProtocol : string -> unit
    method virtual setTestServer : string -> unit
    method virtual setTestPort : string -> unit
    method virtual setTestPath : string -> unit
    method virtual setServerProtocol : string -> unit
    method virtual setServer : string -> unit
    method virtual setServerPort : string -> unit
    method virtual setServerPath : string -> unit
    method virtual setUserName : string -> unit
    method virtual setPassword : string -> unit
    method virtual setProxyProtocol : string -> unit
    method virtual setProxyServer : string -> unit
    method virtual setProxyPath : string -> unit
    method virtual setProxyPort : string -> unit
    method virtual setProxyUserName : string -> unit
    method virtual setProxyPassword : string -> unit
    method virtual setTimeout : string -> unit
    method virtual setProxyTimeout : string -> unit
    method virtual setSpecial1 : string -> unit
    method virtual setSpecial2 : string -> unit
    method virtual setSpecial3 : string -> unit
    method virtual setSpecial4 : string -> unit
    method virtual setSpecial5 : string -> unit
    method virtual setSpecial6 : string -> unit
    method virtual setSpecial7 : string -> unit
    method virtual setSpecial8 : string -> unit
    method virtual setSpecial9 : string -> unit
    method virtual setLastModified : string -> unit
    method virtual setTimeEntered : string -> unit
    method virtual toHashMap : bool -> java_hash_map
    method virtual toVector : bool -> BasicArrayList.basicArrayList
  end


