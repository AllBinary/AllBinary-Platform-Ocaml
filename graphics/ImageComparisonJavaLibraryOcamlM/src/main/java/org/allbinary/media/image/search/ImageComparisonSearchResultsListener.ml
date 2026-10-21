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
(* package org.allbinary.media.image.search *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.util.event.BasicEventListenerInterface *)

class virtual imageComparisonSearchResultsListener =
  object
    inherit BasicEventListenerInterface.basicEventListenerInterface
    method virtual onImageComparisonResultsEvent : 'any1 . 'any1 -> unit
  end


