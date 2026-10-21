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
(* package org.allbinary.data.tree.dom.document *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface *)

class virtual domDocumentQueueInterface =
  object
    method virtual offer : 'any1 . 'any1 -> bool
    method virtual remove : unit -> DomDocumentMappingInterface.domDocumentMappingInterface
  end


