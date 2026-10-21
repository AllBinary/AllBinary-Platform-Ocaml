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
(* package org.allbinary.logic.visual.transform.info.dom *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.document.DomDocumentFileHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoProperties *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoPropertiesFactory *)
(* import org.allbinary.logic.visual.transform.info.TransformInfosData *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class transformInfoPropertiesDocument ((filePath : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable document : Obj.t = Obj.repr 0
    method document : 'r. 'r = Obj.magic document
    method set_document : 'v. 'v -> unit = fun value' -> document <- Obj.repr value'
    
    

    method toTransformInfoPropertiesHashMap () : java_hash_map =
        begin
        (try
            let transformInfoPropertiesHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            let transformInfosNode : Obj.t ref = ref ((Obj.repr (((Obj.magic document)#getElementsByTagName ((TransformInfosData.getInstance ())#nAME))#item (0)))) in ();
            let transformInfosChildNodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic !transformInfosNode)#getChildNodes ()))) in ();
            let transformInfoNodeVector : BasicArrayList.basicArrayList ref = ref (((DomSearchHelper.getAllNodes ((TransformInfoData.getInstance ())#nAME, (Obj.magic !transformInfosChildNodeList))) :> BasicArrayList.basicArrayList)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("Size: " ^ java_string_of (Obj.repr ((!transformInfoNodeVector#size ())))), self, "toTransformInfoPropertiesHashMap()"))
            end;
            let size : int ref = ref ((!transformInfoNodeVector#size ())) in ();
            let node : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let transformInfoProperties : TransformInfoProperties.transformInfoProperties ref = ref (((Obj.magic 0) :> TransformInfoProperties.transformInfoProperties)) in ();
            for index = 0 to !size - 1 do
                node := Obj.repr ((Obj.magic (!transformInfoNodeVector#get (index))));
                transformInfoProperties := ((TransformInfoPropertiesFactory.getInstance ())#getInstance ((Obj.magic !node)));
                ignore (!transformInfoPropertiesHashMap#put ((!transformInfoProperties#getName ()), !transformInfoProperties))
            done;
            (!transformInfoPropertiesHashMap :> java_hash_map)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "toTransformInfoPropertiesHashMap()", e))
            end;
            ((Obj.magic 0) :> java_hash_map)
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        let xmlFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (filePath)))))) in ();
        document <- Obj.repr ((DomDocumentFileHelper.createDocument ((Obj.magic !xmlFile))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "TransformInfoPropertiesDocument" (fun arguments -> Obj.repr (new transformInfoPropertiesDocument (Obj.obj arguments)))


