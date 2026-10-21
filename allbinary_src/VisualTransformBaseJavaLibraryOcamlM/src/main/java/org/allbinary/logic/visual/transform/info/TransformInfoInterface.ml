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
(* package org.allbinary.logic.visual.transform.info *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigInterface *)
(* import org.w3c.dom.Document *)

class virtual transformInfoInterface =
  object
    inherit TableMappingInterface.tableMappingInterface
    method virtual log : unit -> string
    method virtual override : java_hash_map -> unit
    method virtual getName : unit -> string
    method virtual setStoreName : string -> unit
    method virtual getStoreName : unit -> string
    method virtual getObjectFile : unit -> string
    method virtual getObject : unit -> Obj.t
    method virtual getTemplateFilePath : unit -> AbPath.abPath
    method virtual getTemplateFile : unit -> string
    method virtual getTemplate : unit -> string
    method virtual getDataFilePath : unit -> AbPath.abPath
    method virtual getDataFile : unit -> string
    method virtual getDataDocument : 'return . unit -> 'return
    method virtual setName : string -> unit
    method virtual setObjectFile : string -> unit
    method virtual setObject : 'any1 . 'any1 -> unit
    method virtual setObjectConfigInterface : 'any1 . 'any1 -> unit
    method virtual getObjectConfigInterface : 'return . unit -> 'return
    method virtual setTemplateFile : string -> unit
    method virtual setTemplate : string -> unit
    method virtual setDataFile : string -> unit
    method virtual setData : string -> unit
    method virtual setChild : unit -> unit
    method virtual isChild : unit -> bool
  end


