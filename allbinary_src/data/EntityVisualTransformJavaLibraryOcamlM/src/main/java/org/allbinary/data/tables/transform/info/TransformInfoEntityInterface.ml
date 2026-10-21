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
(* package org.allbinary.data.tables.transform.info *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.data.tables.BasicDataTableInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)

class virtual transformInfoEntityInterface =
  object
    inherit BasicDataTableInterface.basicDataTableInterface
    method virtual get : 'any3 . string * java_hash_map * 'any3 -> TransformInfoInterface.transformInfoInterface
    method virtual getObjectConfigs : string -> BasicArrayList.basicArrayList
    method virtual getNames : string -> BasicArrayList.basicArrayList
    method virtual delete : string -> unit
    method virtual insert : 'any1 . 'any1 -> unit
    method virtual update : java_hash_map -> unit
  end


