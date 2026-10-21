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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.category.hierarchy.CategoryHierarchyInterface *)
(* import org.allbinary.business.category.properties.CategoryPropertiesInterface *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.logic.control.validate.ValidationInterface *)
(* import org.allbinary.logic.io.path.AbPath *)

class virtual categoryInterface =
  object
    inherit TableMappingInterface.tableMappingInterface
    inherit ValidationInterface.validationInterface
    method virtual getChildNodes : unit -> BasicArrayList.basicArrayList
    method virtual addChildProperty : 'any1 . 'any1 -> bool
    method virtual addChild : 'any1 . 'any1 -> bool
    method virtual removeChild : 'any1 . 'any1 -> bool
    method virtual isLeaf : unit -> bool
    method virtual getProperties : 'return . unit -> 'return
    method virtual setProperties : 'any1 . 'any1 -> unit
    method virtual getHierarchy : 'return . unit -> 'return
    method virtual setHierarchy : 'any1 . 'any1 -> unit
    method virtual getPath : unit -> AbPath.abPath
    method virtual getFilePath : unit -> AbPath.abPath
    method virtual getWebAppPath : unit -> AbPath.abPath
    method virtual getRootFilePath : unit -> AbPath.abPath
    method virtual log : unit -> unit
  end


