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
(* package org.allbinary.data.tree.category *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.category.CategoryInterface *)
(* import org.w3c.dom.Document *)

class virtual categoryLoaderInterface =
  object
    inherit CategoryModifierTreeInterface.categoryModifierTreeInterface
    method virtual getDoc : 'any1 'return . 'any1 -> 'return
    method virtual get : 'any1 . 'any1 -> CategoryInterface.categoryInterface
    method virtual getAll : 'any1 . 'any1 -> CategoryInterface.categoryInterface
  end


