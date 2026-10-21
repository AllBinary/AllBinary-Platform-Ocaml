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
(* package org.allbinary.data.tables.workflow *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tables.BasicDataTableInterface *)
(* import org.allbinary.logic.control.workflow.WorkFlowInterface *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class virtual workFlowEntityInterface =
  object
    inherit BasicDataTableInterface.basicDataTableInterface
    method virtual get : string -> BasicArrayList.basicArrayList
    (* Java overload get(String, String) is not converted: OCaml has one method per name *)
    method virtual delete : string * string -> unit
    method virtual insert : 'any1 . 'any1 -> unit
    method virtual update : java_hash_map -> unit
  end


