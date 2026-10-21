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
(* package org.allbinary.logic.communication.http.request *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.data.tree.dom.DomData *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class nameSpaceRequestParams () =
  object (self)
    inherit RequestParams.requestParams ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    
    
    

    method createPackageNode : 'any1 'return. 'any1 * string * java_hash_map -> 'return = fun (document, (packageName : string), (packagePropertiesHashMap : java_hash_map)) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement (packageName)))) in ();
        let propertyKeySet : Obj.t ref = ref ((Obj.repr (packagePropertiesHashMap#keySet ()))) in ();
        let propertyKeySetArray : Obj.t array ref = ref (((Obj.magic !propertyKeySet)#toArray ())) in ();
        let size : int ref = ref ((Array.length !propertyKeySetArray)) in ();
        for index = 0 to !size - 1 do
            let propertyName : string ref = ref ((Obj.magic !propertyKeySetArray.(index))) in ();
            let propertyValue : string ref = ref ((Obj.magic (packagePropertiesHashMap#get (!propertyName)))) in ();
            let propertyNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createTextNode ((Obj.magic document), !propertyName, !propertyValue)))) in ();
            ignore ((Obj.magic !node)#appendChild ((Obj.magic !propertyNode)))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]
    

    method createPackageMultiNode : 'any1 'any2 'return. 'any1 * 'any2 * string * java_hash_map -> 'return = fun (document, nameSpaceRequestParam, (packageName : string), (packagePropertiesHashMap : java_hash_map)) ->
        let document = Obj.repr document in
        let nameSpaceRequestParam = Obj.repr nameSpaceRequestParam in
        begin
        let beginIndex : int ref = ref ((java_string_index_of packageName (Obj.repr ('[')))) in ();
        let indexValue : string ref = ref ((String.sub packageName ((!beginIndex + 1)) ((((String.length packageName) - 1)) - ((!beginIndex + 1))))) in ();
        let multiElementPackage : string ref = ref ((String.sub packageName (0) ((!beginIndex) - (0)))) in ();
        let selectedValue : string ref = ref (((Obj.magic nameSpaceRequestParam)#getValue ())) in ();
        let propertyValue : string ref = ref ((Obj.magic (packagePropertiesHashMap#get ((DomData.get_vALUE ()))))) in ();
        if ((String.compare !propertyValue ((NameSpaceRequestParamData.get_vALUE ()))) != 0) then begin
            selectedValue := !propertyValue
        end;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
            ignore ((Obj.magic logUtil)#putF (((((("\nAppending Multinode Element: " ^ !multiElementPackage) ^ "[") ^ !indexValue) ^ "] ") ^ !selectedValue), self, "createPackageMultiNode"))
        end;
        let nextNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), !multiElementPackage, !selectedValue)))) in ();
        let indexNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createTextNode ((Obj.magic document), (DomData.get_iNDEX ()), !indexValue)))) in ();
        ignore ((Obj.magic !nextNode)#appendChild ((Obj.magic !indexNode)));
        (Obj.magic ((Obj.magic !nextNode)))
        end [@@warning "-7-20"]
    

    method getRootNode : 'any3 'return. string * java_hash_map * 'any3 -> 'return = fun ((rootElementPackage : string), (packagePropertiesHashMap : java_hash_map), document) ->
        let document = Obj.repr document in
        try
        begin
        let rootNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNodeNoThrow (rootElementPackage, ((Obj.magic document)#getChildNodes ()))))) in ();
        if ((Obj.magic !rootNode) == (Obj.magic 0)) then begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                ignore ((Obj.magic logUtil)#putF ((((("\nAppending Document Root: " ^ "\nElementName: ") ^ rootElementPackage) ^ "\nProperties: ") ^ (java_string_of (Obj.repr packagePropertiesHashMap))), self, "getRootNode"))
            end;
            let node : Obj.t ref = ref ((Obj.repr (self#createPackageNode ((Obj.magic document), rootElementPackage, packagePropertiesHashMap)))) in ();
            ignore ((Obj.magic document)#appendChild ((Obj.magic !node)));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                ignore ((Obj.magic logUtil)#putF (("\nAppended Document Created: " ^ (XmlDocumentHelper.toString ((Obj.magic document)))), self, "getRootNode"))
            end;
            raise (Java_return (Obj.repr ((Obj.magic !node))))
        end else begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                ignore ((Obj.magic logUtil)#putF ("\nUsing Existing Root Node", self, "getRootNode"))
            end;
            raise (Java_return (Obj.repr ((Obj.magic !rootNode))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method addNewProperties : 'any1 'any2 'return. 'any1 * 'any2 * java_hash_map -> 'return = fun (document, node, (nextPackagePropertiesHashMap : java_hash_map)) ->
        let document = Obj.repr document in
        let node = Obj.repr node in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("\nAdding Any New Properties: "))#append ((java_string_of (Obj.repr nextPackagePropertiesHashMap))))#append ("\nto node: "))#append (((Obj.magic node)#getNodeName ()))))), self, "addNewProperties"))
        end;
        let propertyNameSet : Obj.t ref = ref ((Obj.repr (nextPackagePropertiesHashMap#keySet ()))) in ();
        let propertyNameSetArray : Obj.t array ref = ref (((Obj.magic !propertyNameSet)#toArray ())) in ();
        let size : int ref = ref ((Array.length !propertyNameSetArray)) in ();
        for index = 0 to !size - 1 do
            let nextPropertyName : string ref = ref ((Obj.magic !propertyNameSetArray.(index))) in ();
            let propertyValue : string ref = ref (((StringUtil.getInstance ())#getNonNull ((Obj.magic (nextPackagePropertiesHashMap#get (!nextPropertyName)))))) in ();
            let valueNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNodeNoThrow (!nextPropertyName, ((Obj.magic node)#getChildNodes ()))))) in ();
            if ((Obj.magic !valueNode) != (Obj.magic 0)) then begin
                let existingElementNodeTextNodeValue : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic !valueNode)))) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                    ignore ((Obj.magic logUtil)#putF ((((((((("\nIf property: \"" ^ !nextPropertyName) ^ " is the same as:\n") ^ "Node: ") ^ java_string_of (Obj.repr (((Obj.magic node)#getNodeName ())))) ^ " then: ") ^ !propertyValue) ^ "==") ^ !existingElementNodeTextNodeValue), self, "addNewProperties"))
                end;
                if ((String.compare !propertyValue (!existingElementNodeTextNodeValue)) != 0) then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                        ignore ((Obj.magic logUtil)#putF ("At least one Property from NameSpaceRequest Package was different from Node", self, "addNewProperties"))
                    end;
                    raise (Failure ("Property Modifications Should Not Occur"))
                end
            end else begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                    ignore ((Obj.magic logUtil)#putF (((("Adding a new Property: " ^ !nextPropertyName) ^ "=") ^ !propertyValue), self, "addNewProperties"))
                end;
                let newPropertyNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createTextNode ((Obj.magic document), !nextPropertyName, !propertyValue)))) in ();
                ignore ((Obj.magic node)#appendChild ((Obj.magic !newPropertyNode)))
            end
        done;
        (Obj.magic ((Obj.magic node)))
        end [@@warning "-7-20"]
    

    method isElementValueTextNodeEqual : 'any2. java_hash_map * 'any2 -> bool = fun ((nextPackagePropertiesHashMap : java_hash_map), node) ->
        let node = Obj.repr node in
        try
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
            ignore ((Obj.magic logUtil)#putF (((("\nComparing the value property in: " ^ (java_string_of (Obj.repr nextPackagePropertiesHashMap))) ^ "\nto node child leaves of node: ") ^ java_string_of (Obj.repr (((Obj.magic node)#getNodeName ())))), self, "isElementValueTextNodeEqual"))
        end;
        let propertyValue : string ref = ref ((Obj.magic (nextPackagePropertiesHashMap#get ((DomData.get_vALUE ()))))) in ();
        let valueNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNodeNoThrow ((DomData.get_vALUE ()), ((Obj.magic node)#getChildNodes ()))))) in ();
        if ((Obj.magic !valueNode) != (Obj.magic 0)) then begin
            let existingElementNodeTextNodeValue : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic !valueNode)))) in ();
            if ((String.compare !propertyValue (!existingElementNodeTextNodeValue)) == 0) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Value Node is the same", self, "isElementValueTextNodeEqual"))
                end;
                raise (Java_return (Obj.repr (true)))
            end
        end else begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method isElementValueTextNodeUnique : 'any2. java_hash_map * 'any2 -> int = fun ((nextPackagePropertiesHashMap : java_hash_map), elementNodeVector) ->
        let elementNodeVector = Obj.repr elementNodeVector in
        try
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
            ignore ((Obj.magic logUtil)#putF ((("\nComparing Properties of: " ^ java_string_of (Obj.repr (((Obj.magic elementNodeVector)#size ())))) ^ " Nodes"), self, "isElementValueTextNodeUnique"))
        end;
        let size : int ref = ref (((Obj.magic elementNodeVector)#size ())) in ();
        for index = 0 to !size - 1 do
            let existingElementNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic elementNodeVector)#get (index))))) in ();
            if (self#isElementValueTextNodeEqual (nextPackagePropertiesHashMap, (Obj.magic !existingElementNode))) then begin
                raise (Java_return (Obj.repr (index)))
            end
        done;
        (-1)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method addChildren : 'any1 'any2 'any3 'return. 'any1 * 'any2 * 'any3 -> 'return = fun (document, rootNode, nameSpaceRequestParam) ->
        let document = Obj.repr document in
        let rootNode = Obj.repr rootNode in
        let nameSpaceRequestParam = Obj.repr nameSpaceRequestParam in
        begin
        let node : Obj.t ref = ref ((Obj.repr (Obj.magic rootNode))) in ();
        let packageVector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic nameSpaceRequestParam)#getPackages ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!packageVector#size ())) in ();
        for index = 1 to !size - 1 do
            let nextPackageName : string ref = ref ((Obj.magic (!packageVector#get (index)))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("\nTrying to Add Child to Node: "))#append (((Obj.magic !node)#getNodeName ())))#append ("\nwith new PackageName: "))#append (!nextPackageName)))), self, "addChildren"))
            end;
            let nextPackagePropertiesHashMap : java_hash_map ref = ref ((((Obj.magic nameSpaceRequestParam)#getPackageProperties (index)) :> java_hash_map)) in ();
            let elementNodeVector : BasicArrayList.basicArrayList ref = ref (((DomSearchHelper.getAllNodesNoThrow (!nextPackageName, ((Obj.magic !node)#getChildNodes ()))) :> BasicArrayList.basicArrayList)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                ignore ((Obj.magic logUtil)#putF ((("\nDocument Contains " ^ java_string_of (Obj.repr ((!elementNodeVector#size ())))) ^ " Node(s) With Same Name"), self, "addChildren"))
            end;
            let isElementValueTextNodeUniqueIndex : int ref = ref ((self#isElementValueTextNodeUnique (!nextPackagePropertiesHashMap, !elementNodeVector))) in ();
            if (((((!elementNodeVector#size ()) = 0) || (!isElementValueTextNodeUniqueIndex = (-1)))) && (not (String.ends_with ~suffix:((CommonSeps.getInstance ())#bRACKET_CLOSE) !nextPackageName))) then begin
                let nextNode : Obj.t ref = ref ((Obj.repr (self#createPackageNode ((Obj.magic document), !nextPackageName, !nextPackagePropertiesHashMap)))) in ();
                ignore ((Obj.magic !node)#appendChild ((Obj.magic !nextNode)));
                node := Obj.repr ((Obj.magic !nextNode));
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                    ignore ((Obj.magic logUtil)#putF (("\nAppended Package: " ^ java_string_of (Obj.repr (((Obj.magic !node)#getNodeName ())))), self, "addChildren"));
                    ignore ((Obj.magic logUtil)#putF (("\nAppended Document Created: " ^ (XmlDocumentHelper.toString ((Obj.magic document)))), self, "addChildren"))
                end
            end else if (String.ends_with ~suffix:((CommonSeps.getInstance ())#bRACKET_CLOSE) !nextPackageName) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Package is MultiNode: just append", self, "addChildren"))
                end;
                let nextNode : Obj.t ref = ref ((Obj.repr (self#createPackageMultiNode ((Obj.magic document), (Obj.magic nameSpaceRequestParam), !nextPackageName, !nextPackagePropertiesHashMap)))) in ();
                ignore ((Obj.magic !node)#appendChild ((Obj.magic !nextNode)));
                node := Obj.repr ((Obj.magic !nextNode));
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                    ignore ((Obj.magic logUtil)#putF (("\nAppended Multinode Element: " ^ (XmlDocumentHelper.toString ((Obj.magic document)))), self, "addChildren"))
                end
            end else begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Value Node already exists: Now compare (properties to leaf nodes)", self, "addChildren"))
                end;
                let nodeNameDuplicateNode : Obj.t ref = ref ((Obj.repr (Obj.magic (!elementNodeVector#get (!isElementValueTextNodeUniqueIndex))))) in ();
                node := Obj.repr ((self#addNewProperties ((Obj.magic document), (Obj.magic !nodeNameDuplicateNode), !nextPackagePropertiesHashMap)));
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                    ignore ((Obj.magic logUtil)#putF ("\nDuplicate Node Found: Moving to next child ^", self, "addChildre"))
                end
            end
        done;
        (Obj.magic ((Obj.magic document)))
        end [@@warning "-7-20"]
    

    method addNameSpace : 'any3 'return. string * string * 'any3 -> 'return = fun ((key : string), (value : string), document) ->
        let document = Obj.repr document in
        try
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("NameSpace key: "))#append (key))#append (" Value: "))#append (value)))), self, "addNameSpace"))
        end;
        let nameSpaceRequestParam : NameSpaceRequestParam.nameSpaceRequestParam ref = ref (((new NameSpaceRequestParam.nameSpaceRequestParam (key, value)) :> NameSpaceRequestParam.nameSpaceRequestParam)) in ();
        let packageVector : BasicArrayList.basicArrayList ref = ref (((!nameSpaceRequestParam#getPackages ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!packageVector#size ())) in ();
        for index = 0 to !size - 1 do
            let packageName : string ref = ref ((Obj.magic (!packageVector#get (index)))) in ();
            let packagePropertiesHashMap : java_hash_map ref = ref (((!nameSpaceRequestParam#getPackageProperties ((!packageVector#indexOf (!packageName)))) :> java_hash_map)) in ();
            let rootNode : Obj.t ref = ref ((Obj.repr (self#getRootNode (!packageName, !packagePropertiesHashMap, (Obj.magic document))))) in ();
            if (index < (!size - 1)) then begin
                raise (Java_return (Obj.repr ((self#addChildren ((Obj.magic document), (Obj.magic (Obj.magic !rootNode)), !nameSpaceRequestParam)))))
            end
        done;
        (Obj.magic ((Obj.magic document)))
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method toHashMap () : java_hash_map =
        begin
        let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create ()))) in ();
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let keys : Obj.t ref = ref ((Obj.repr ((self#getMap ())#keySet ()))) in ();
        let keyArray : Obj.t array ref = ref (((Obj.magic !keys)#toArray ())) in ();
        let keySize : int ref = ref ((Array.length !keyArray)) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
            ignore ((Obj.magic logUtil)#putF (("NameSpace Request Size: " ^ java_string_of (Obj.repr (((Obj.magic !keys)#size ())))), self, "toHashMap"))
        end;
        for i = 0 to !keySize - 1 do
            let key : string ref = ref ((Obj.magic !keyArray.(i))) in ();
            let anyType : Obj.t ref = ref ((Obj.repr ((self#getMap ())#get (!key)))) in ();
            let className : string ref = ref ((Obj.magic (java_get_class (Obj.repr !anyType)))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                ignore ((Obj.magic logUtil)#putF (("Request Param Class: " ^ !className), self, "toHashMap"))
            end;
            if (java_instanceof (Obj.repr ((self#getMap ())#get (!key))) "String") then begin
                let value : string ref = ref ((Obj.magic ((self#getMap ())#get (!key)))) in ();
                if ((java_string_index_of !key (Obj.repr ((NameSpaceRequestParamData.get_nAME ())))) < 0) then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                        ignore ((Obj.magic logUtil)#putF (((("Not NameSpace key: " ^ !key) ^ " Value: ") ^ !value), self, "toHashMap()"))
                    end;
                    ignore (!hashMap#put ((Obj.obj (java_new "String" (Obj.repr (!key)))), (Obj.obj (java_new "String" (Obj.repr (!value))))))
                end else begin
                    document := Obj.repr ((self#addNameSpace ((Obj.obj (java_new "String" (Obj.repr (!key)))), (Obj.obj (java_new "String" (Obj.repr (!value)))), (Obj.magic !document))))
                end
            end else if (java_instanceof (Obj.repr ((self#getMap ())#get (!key))) "") then begin
                let values : string array ref = ref ((Obj.magic ((self#getMap ())#get (!key)))) in ();
                if ((java_string_index_of !key (Obj.repr ((NameSpaceRequestParamData.get_nAME ())))) < 0) then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
                        ignore ((Obj.magic logUtil)#putF (((("Not NameSpace key: " ^ !key) ^ " Value: ") ^ java_string_of (Obj.repr (!values.(0)))), self, "toHashMap()"))
                    end;
                    ignore (!hashMap#put ((Obj.obj (java_new "String" (Obj.repr (!key)))), (Obj.obj (java_new "String" (Obj.repr (!values.(0)))))))
                end else begin
                    document := Obj.repr ((self#addNameSpace ((Obj.obj (java_new "String" (Obj.repr (!key)))), (Obj.obj (java_new "String" (Obj.repr (!values.(0))))), (Obj.magic !document))))
                end
            end
        done;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
            ignore ((Obj.magic logUtil)#putF (((((("NameSpaceRequestParams: " ^ (java_string_of (Obj.repr (self#getMap ())))) ^ "\ntoHashMap(): ") ^ (java_string_of (Obj.repr !hashMap))) ^ "\nDocument Created: ") ^ (XmlDocumentHelper.toString ((Obj.magic !document)))), self, "toHashMap()"))
        end;
        ignore (!hashMap#put ((NameSpaceRequestParamData.get_dOCUMENT ()), (Obj.magic !document)));
        (!hashMap :> java_hash_map)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
            ignore ((Obj.magic logUtil)#putF ("Constructing empty", self, commonStrings#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "NameSpaceRequestParams" (fun arguments -> Obj.repr (new nameSpaceRequestParams (Obj.obj arguments)))


