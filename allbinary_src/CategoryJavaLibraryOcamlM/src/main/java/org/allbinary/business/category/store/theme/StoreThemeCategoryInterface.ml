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
(* package org.allbinary.business.category.store.theme *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.category.CategoryInterface *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.logic.control.validate.ValidationInterface *)
(* import org.allbinary.logic.visual.theme.ThemeValidation *)
(* import org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface *)

class virtual storeThemeCategoryInterface =
  object
    inherit CategoryInterface.categoryInterface
    inherit TableMappingInterface.tableMappingInterface
    inherit ValidationInterface.validationInterface
    inherit CompositeTransformInfoInterface.compositeTransformInfoInterface
    method virtual addTheme : 'any1 . 'any1 -> unit
    method virtual getThemes : unit -> BasicArrayList.basicArrayList
  end


