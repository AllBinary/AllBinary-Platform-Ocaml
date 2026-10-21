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
(* package org.allbinary.business.user *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class userDomNode ((dataMappingInterface_arg : TableMappingInterface.tableMappingInterface)) =
  object
    val mutable dataMappingInterface : TableMappingInterface.tableMappingInterface = (Obj.magic 0)
    method dataMappingInterface = dataMappingInterface
    method set_dataMappingInterface value' = dataMappingInterface <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let eMPTY_STRING : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        let hashMap : java_hash_map ref = ref (((dataMappingInterface#toHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((EntryData.getInstance ())#lASTMODIFIED, !eMPTY_STRING));
        ignore (!hashMap#put ((EntryData.getInstance ())#eNCRYPTION, !eMPTY_STRING));
        ignore (!hashMap#put ((UserData.get_pASSWORD ()), !eMPTY_STRING));
        (Obj.magic ((ModDomHelper.createNameValueNodes ((Obj.magic document), (UserData.get_nAME ()), !hashMap))))
        end [@@warning "-20"]
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method view () : string =
        begin
        (Obj.magic 0)
        end

    initializer
      begin
        ();
        ();
        dataMappingInterface <- dataMappingInterface_arg
      end
  end
let () = java_register_constructor "UserDomNode" (fun arguments -> Obj.repr (new userDomNode (Obj.obj arguments)))


