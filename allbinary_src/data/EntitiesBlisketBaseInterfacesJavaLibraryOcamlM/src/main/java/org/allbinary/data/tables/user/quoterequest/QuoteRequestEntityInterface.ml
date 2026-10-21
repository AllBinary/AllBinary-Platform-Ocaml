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
(* package org.allbinary.data.tables.user.quoterequest *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.quoterequest.QuoteRequest *)
(* import org.allbinary.data.tables.BasicDataTableInterface *)

class virtual quoteRequestEntityInterface =
  object
    inherit BasicDataTableInterface.basicDataTableInterface
    method virtual get : string * int -> QuoteRequest.quoteRequest
    method virtual getIds : string -> BasicArrayList.basicArrayList
    method virtual deleteWhere : string * string -> unit
    method virtual insert : 'any1 . 'any1 -> unit
    method virtual update : string * java_hash_map -> unit
  end


