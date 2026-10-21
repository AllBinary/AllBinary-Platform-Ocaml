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
(* package org.allbinary.data.tables.user *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.UserInterface *)
(* import org.allbinary.business.user.role.UserRole *)
(* import org.allbinary.data.tables.BasicDataTableInterface *)

class virtual userEntityInterface =
  object
    inherit BasicDataTableInterface.basicDataTableInterface
    method virtual getAdministrators : unit -> BasicArrayList.basicArrayList
    method virtual getStoreManagers : 'any1 . 'any1 -> BasicArrayList.basicArrayList
    method virtual getCustomers : unit -> BasicArrayList.basicArrayList
    method virtual getUsersWithRole : 'any1 . 'any1 -> BasicArrayList.basicArrayList
    method virtual getUsers : 'any1 . 'any1 -> BasicArrayList.basicArrayList
    method virtual getUser : string -> UserInterface.userInterface
    method virtual login : string * string -> string
    method virtual deleteWhere : string * string -> unit
    method virtual insert : 'any1 . 'any1 -> unit
    method virtual update : string * java_hash_map -> unit
  end


