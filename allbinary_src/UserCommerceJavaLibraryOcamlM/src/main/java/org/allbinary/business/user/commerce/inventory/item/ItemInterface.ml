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
(* package org.allbinary.business.user.commerce.inventory.item *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.data.tables.TableMappingInterface *)

class virtual itemInterface =
  object
    inherit TableMappingInterface.tableMappingInterface
    method virtual setId : string -> unit
    method virtual setNumber : string -> unit
    method virtual setInBaskets : string -> unit
    method virtual setWeight : string -> unit
    method virtual setEnabled : string -> unit
    method virtual setNewOrUsed : string -> unit
    method virtual setSummary : string -> unit
    method virtual setDistributor : string -> unit
    method virtual setIdUsedByDistributor : string -> unit
    method virtual setProducedBy : string -> unit
    method virtual setProductionDate : string -> unit
    method virtual setStartProductionDate : string -> unit
    method virtual setDescription : string -> unit
    method virtual setKeywords : string -> unit
    method virtual setCategory : string -> unit
    method virtual setType : string -> unit
    method virtual setSmallImage : string -> unit
    method virtual setMediumImage : string -> unit
    method virtual setLargeImage : string -> unit
    method virtual setTimeEntered : string -> unit
    method virtual setLastModified : string -> unit
    method virtual setPrice : 'any1 . 'any1 -> unit
    method virtual setComment : string -> unit
    method virtual setCustoms : string -> unit
    method virtual setDownloads : string -> unit
    method virtual setGroups : string -> unit
    method virtual setOptions : string -> unit
    method virtual setPermissions : string -> unit
    method virtual setSpecials : string -> unit
    method virtual getId : unit -> string
    method virtual getNumber : unit -> string
    method virtual getInBaskets : unit -> string
    method virtual getWeight : unit -> string
    method virtual getEnabled : unit -> string
    method virtual getNewOrUsed : unit -> string
    method virtual getSummary : unit -> string
    method virtual getDistributor : unit -> string
    method virtual getIdUsedByDistributor : unit -> string
    method virtual getProducedBy : unit -> string
    method virtual getProductionDate : unit -> string
    method virtual getStartProductionDate : unit -> string
    method virtual getDescription : unit -> string
    method virtual getKeywords : unit -> string
    method virtual getCategory : unit -> string
    method virtual getType : unit -> string
    method virtual getSmallImage : unit -> string
    method virtual getMediumImage : unit -> string
    method virtual getLargeImage : unit -> string
    method virtual getTimeEntered : unit -> string
    method virtual getLastModified : unit -> string
    method virtual getPrice : unit -> Money.money
    method virtual getComment : unit -> string
    method virtual getCustoms : unit -> string
    method virtual getDownloads : unit -> string
    method virtual getGroups : unit -> string
    method virtual getOptions : unit -> string
    method virtual getPermissions : unit -> string
    method virtual getSpecials : unit -> string
    method virtual getTotal : unit -> Money.money
  end


