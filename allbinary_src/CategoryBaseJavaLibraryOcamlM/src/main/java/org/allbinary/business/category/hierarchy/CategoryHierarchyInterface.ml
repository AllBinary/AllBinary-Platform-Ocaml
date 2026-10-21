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
(* package org.allbinary.business.category.hierarchy *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.category.CategoryInterface *)

class virtual categoryHierarchyInterface =
  object
    method virtual getLevel : unit -> int
    method virtual getLevelString : unit -> string
    method virtual getRoot : 'return . unit -> 'return
    method virtual getParent : 'return . unit -> 'return
    method virtual setLevel : int -> unit
    method virtual setRoot : 'any1 . 'any1 -> unit
    method virtual setParent : 'any1 . 'any1 -> unit
  end


