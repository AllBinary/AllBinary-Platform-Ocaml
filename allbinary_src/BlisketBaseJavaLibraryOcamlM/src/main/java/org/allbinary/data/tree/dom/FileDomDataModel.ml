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
(* package org.allbinary.data.tree.dom *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class fileDomDataModel (file_arg) =
  object
    val mutable file : Obj.t = Obj.repr 0
    method file : 'r. 'r = Obj.magic file
    method set_file : 'v. 'v -> unit = fun value' -> file <- Obj.repr value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let tableMappingInterface : TableMappingInterface.tableMappingInterface ref = ref (((Obj.magic (new FileTableMapping.fileTableMapping ((Obj.magic file)))) :> TableMappingInterface.tableMappingInterface)) in ();
        let hashMap : java_hash_map ref = ref (((!tableMappingInterface#toHashMap ()) :> java_hash_map)) in ();
        (Obj.magic ((ModDomHelper.createNodeWithValueNodes ((Obj.magic document), "file", !hashMap))))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        file <- Obj.repr (file_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "FileDomDataModel" (fun arguments -> Obj.repr (new fileDomDataModel (Obj.obj arguments)))


