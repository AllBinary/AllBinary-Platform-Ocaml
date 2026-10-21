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
(* package org.allbinary.logic.visual.transform.info.objectConfig *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)

class virtual transformInfoObjectConfigInterface =
  object
    inherit DomDocumentMappingInterface.domDocumentMappingInterface
    method virtual containsView : 'any1 . 'any1 -> bool
    method virtual getName : unit -> string
    method virtual getTransformsGroup : string -> BasicArrayList.basicArrayList
    method virtual getTransforms : unit -> BasicArrayList.basicArrayList
    method virtual getParentTransforms : unit -> BasicArrayList.basicArrayList
    method virtual getGroupTransforms : unit -> BasicArrayList.basicArrayList
    method virtual getOutputTypeName : unit -> string
    method virtual setOutputTypeName : string -> unit
    method virtual getInputOutputTypeName : unit -> string
    method virtual getInputOutputTypeFile : unit -> string
    method virtual getImportUriPath : unit -> string
    method virtual toString : unit -> string
  end


