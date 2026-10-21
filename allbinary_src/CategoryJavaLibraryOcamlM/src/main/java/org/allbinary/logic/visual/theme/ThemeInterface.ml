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
(* package org.allbinary.logic.visual.theme *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.data.tables.TableMappingInterface *)

class virtual themeInterface =
  object
    inherit TableMappingInterface.tableMappingInterface
    method virtual getName : unit -> string
    method virtual getPath : unit -> string
    method virtual getPreviewImageName : unit -> string
    method virtual getPreviewImagePath : unit -> string
  end


