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
(* package org.allbinary.business.category *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.w3c.dom.Node *)

class virtual categoryFactoryInterface =
  object
    method virtual getRootInstance : unit -> CategoryInterface.categoryInterface
    (* Java overload getRootInstance(AbPath) is not converted: OCaml has one method per name *)
    method virtual getRootInstanceFromNode : 'any1 . 'any1 -> CategoryInterface.categoryInterface
    method virtual getInstance : 'any1 'any2 . 'any1 * 'any2 * string -> CategoryInterface.categoryInterface
    (* Java overload getInstance(CategoryInterface, CategoryInterface, Node) is not converted: OCaml has one method per name *)
    (* Java overload getInstance(CategoryInterface, CategoryInterface, HashMap) is not converted: OCaml has one method per name *)
  end


