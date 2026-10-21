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
(* package views.admin.inventory.listings *)

open Allbinary_java [@@warning "-33"]

class virtual inventoryViewSearchInterface =
  object
    method virtual searchSingleStaticPage : unit -> string
    method virtual searchSingleDynamicPage : unit -> string
    method virtual search : unit -> string array
    method virtual getProduct : string -> string
  end


