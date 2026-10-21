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
(* package org.allbinary.business.category.properties *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.category.hierarchy.CategoryHierarchyInterface *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.logic.control.validate.ValidationInterface *)
(* import org.allbinary.logic.io.path.AbPath *)

class virtual categoryPropertiesInterface =
  object
    inherit TableMappingInterface.tableMappingInterface
    inherit ValidationInterface.validationInterface
    method virtual setValue : string -> unit
    method virtual getValue : unit -> string
    method virtual getWebAppPath : unit -> AbPath.abPath
    method virtual getPath : 'any1 . 'any1 -> AbPath.abPath
    method virtual getFileName : unit -> string
    method virtual isRoot : unit -> bool
    method virtual isRealRoot : unit -> bool
  end


