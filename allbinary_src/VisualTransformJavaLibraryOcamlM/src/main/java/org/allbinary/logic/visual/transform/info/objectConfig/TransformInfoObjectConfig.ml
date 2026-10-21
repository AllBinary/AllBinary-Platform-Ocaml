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
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.InputOutputTypeData *)
(* import org.allbinary.logic.io.OutputTypeData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoDomNode *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfosData *)
(* import org.allbinary.logic.visual.transform.template.XslData *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Attr *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.NamedNodeMap *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class transformInfoObjectConfig ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable ownerTransformInfoInterface : TransformInfoInterface.transformInfoInterface = (Obj.magic 0)
    method ownerTransformInfoInterface = ownerTransformInfoInterface
    method set_ownerTransformInfoInterface value' = ownerTransformInfoInterface <- value'
    val mutable document : Obj.t = Obj.repr 0
    method document : 'r. 'r = Obj.magic document
    method set_document : 'v. 'v -> unit = fun value' -> document <- Obj.repr value'
    val mutable outputTypeName : string = ""
    method outputTypeName = outputTypeName
    method set_outputTypeName value' = outputTypeName <- value'
    
    
    
    

    method createDocument () : unit =
        begin
        document <- Obj.repr ((DomDocumentHelper.create ()));
        let objectConfigNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((TransformInfoObjectConfigData.getInstance ())#nAME)))) in ();
        ignore ((Obj.magic document)#appendChild ((Obj.magic !objectConfigNode)))
        end
    

    method getTransformInfoInterface () : TransformInfoInterface.transformInfoInterface =
        begin
        (ownerTransformInfoInterface :> TransformInfoInterface.transformInfoInterface)
        end
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic document)))
        end
    

    method setDocument : 'any1. 'any1 -> unit = fun (document_arg) ->
        let document_arg = Obj.repr document_arg in
        begin
        document <- Obj.repr ((Obj.magic document_arg))
        end [@@warning "-20"]
    

    method containsView : 'any1. 'any1 -> bool = fun (transformInfoInterface) ->
        let transformInfoInterface = Obj.repr transformInfoInterface in
        try
        begin
        let objectConfigNode : Obj.t ref = ref ((Obj.repr (((Obj.magic document)#getElementsByTagName ((TransformInfoObjectConfigData.getInstance ())#nAME))#item (0)))) in ();
        let viewNodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic !objectConfigNode)#getChildNodes ()))) in ();
        let numberOfViews : int ref = ref (((Obj.magic !viewNodeList)#getLength ())) in ();
        for index = 0 to !numberOfViews - 1 do
            let viewNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !viewNodeList)#item (index)))) in ();
            let viewAttributes : Obj.t ref = ref ((Obj.repr ((Obj.magic !viewNode)#getAttributes ()))) in ();
            let attrNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !viewAttributes)#getNamedItem ((TransformInfoData.getInstance ())#nAME))))) in ();
            if ((((Obj.magic transformInfoInterface)#getName ())#compareTo (((Obj.magic !attrNode)#getValue ()))) == 0) then begin
                raise (Java_return (Obj.repr (true)))
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getTemplateAttributes : 'return. unit -> 'return = fun () ->
        begin
        let componentNode : Obj.t ref = ref ((Obj.repr (((Obj.magic document)#getElementsByTagName ((TransformInfoObjectConfigData.getInstance ())#nAME))#item (0)))) in ();
        (Obj.magic (((Obj.magic !componentNode)#getAttributes ())))
        end
    

    method getName () : string =
        begin
        let attrNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#getTemplateAttributes ())#getNamedItem ((TransformInfoObjectConfigData.getInstance ())#nAME))))) in ();
        ((Obj.magic !attrNode)#getValue ())
        end
    

    method setName ((name : string)) : unit =
        begin
        let attrNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#getTemplateAttributes ())#getNamedItem ((TransformInfoObjectConfigData.getInstance ())#nAME))))) in ();
        ignore ((Obj.magic !attrNode)#setValue (name))
        end
    

    method getNodeVector ((nodeName : string)) : BasicArrayList.basicArrayList =
        try
        begin
        let componentsNodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#getElementsByTagName (nodeName)))) in ();
        if (((Obj.magic !componentsNodeList) != (Obj.magic 0)) && (((Obj.magic !componentsNodeList)#getLength ()) > 0)) then begin
            let viewNodeVector : BasicArrayList.basicArrayList ref = ref (((DomSearchHelper.getAllNodes ((TransformInfoData.getInstance ())#nAME, (((Obj.magic !componentsNodeList)#item (0))#getChildNodes ()))) :> BasicArrayList.basicArrayList)) in ();
            let numberOfViews : int ref = ref ((!viewNodeVector#size ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Number Of "));
                ignore (!stringBuffer#append (nodeName));
                ignore (!stringBuffer#append (" Nodes: "));
                ignore (!stringBuffer#appendint (!numberOfViews));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "getNodeVector(nodename)"))
            end;
            raise (Java_return (Obj.repr (!viewNodeVector)))
        end;
        ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)
        end
        with Java_return value -> Obj.obj value
    

    method getTransformDomNodes ((nodeName : string)) : BasicArrayList.basicArrayList =
        begin
        let viewVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let viewNodeVector : BasicArrayList.basicArrayList ref = ref (((self#getNodeVector (nodeName)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!viewNodeVector#size ())) in ();
        for index = 0 to !size - 1 do
            let viewNode : Obj.t ref = ref ((Obj.repr (Obj.magic (!viewNodeVector#get (index))))) in ();
            ignore (!viewVector#add ((Obj.obj (java_new "TransformInfoDomNode" (Obj.repr ((Obj.magic !viewNode)))))))
        done;
        (!viewVector :> BasicArrayList.basicArrayList)
        end
    

    method getTransforms ((nodeName : string)) : BasicArrayList.basicArrayList =
        begin
        let viewVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let viewNodeVector : BasicArrayList.basicArrayList ref = ref (((self#getNodeVector (nodeName)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!viewNodeVector#size ())) in ();
        for index = 0 to !size - 1 do
            let viewNode : Obj.t ref = ref ((Obj.repr (Obj.magic (!viewNodeVector#get (index))))) in ();
            ignore (!viewVector#add (((Obj.obj (java_new "TransformInfoDomNode" (Obj.repr ((Obj.magic !viewNode)))))#getTransformInfoInterface ())))
        done;
        (!viewVector :> BasicArrayList.basicArrayList)
        end
    

    method getTransformsGroup ((group : string)) : BasicArrayList.basicArrayList =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Started: " ^ group), self, "getTransformsGroup()"))
        end;
        let viewVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let gROUP : string ref = ref ((TransformInfosData.getInstance ())#gROUP) in ();
        let componentsNodeList : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#getElementsByTagName (!gROUP)))) in ();
        if (((Obj.magic !componentsNodeList) != (Obj.magic 0)) && (((Obj.magic !componentsNodeList)#getLength ()) > 0)) then begin
            let componentsNode : Obj.t ref = ref ((Obj.repr ((Obj.magic !componentsNodeList)#item (0)))) in ();
            let length : int ref = ref (((Obj.magic !componentsNodeList)#getLength ())) in ();
            for index = 0 to !length - 1 do
                let node : Obj.t ref = ref ((Obj.repr ((Obj.magic !componentsNodeList)#item (index)))) in ();
                let attributes : Obj.t ref = ref ((Obj.repr ((Obj.magic !node)#getAttributes ()))) in ();
                let attrNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !attributes)#getNamedItem (!gROUP))))) in ();
                let value : string ref = ref (((Obj.magic !attrNode)#getValue ())) in ();
                if ((String.compare !value (group)) == 0) then begin
                    componentsNode := Obj.repr ((Obj.magic !node));
                    raise Java_break
                end
            done;
            let viewNodeVector : BasicArrayList.basicArrayList ref = ref (((DomSearchHelper.getAllNodes ((TransformInfoData.getInstance ())#nAME, ((Obj.magic !componentsNode)#getChildNodes ()))) :> BasicArrayList.basicArrayList)) in ();
            let numberOfViews : int ref = ref ((!viewNodeVector#size ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF (("Number Of Nodes: " ^ java_string_of (Obj.repr (!numberOfViews))), self, "getTransformsGroup()"))
            end;
            let size : int ref = ref ((!viewNodeVector#size ())) in ();
            for index = 0 to !size - 1 do
                let viewNode : Obj.t ref = ref ((Obj.repr (Obj.magic (!viewNodeVector#get (index))))) in ();
                ignore (!viewVector#add ((Obj.obj (java_new "TransformInfoDomNode" (Obj.repr ((Obj.magic !viewNode)))))))
            done
        end else begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                if ((Obj.magic !componentsNodeList) == (Obj.magic 0)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Number Of Nodes: NULL", self, "getTransformsGroup()"))
                end else begin
                    ignore ((Obj.magic logUtil)#putF ("Number Of Nodes: 0", self, "getTransformsGroup()"))
                end
            end
        end;
        (!viewVector :> BasicArrayList.basicArrayList)
        end
    

    (* Java overload getTransformDomNodes() is not converted: OCaml has one method per name *)
    

    (* Java overload getTransforms() is not converted: OCaml has one method per name *)
    

    method getGroupTransforms () : BasicArrayList.basicArrayList =
        begin
        ((self#getTransforms ((TransformInfosData.getInstance ())#gROUP)) :> BasicArrayList.basicArrayList)
        end
    

    method getParentTransforms () : BasicArrayList.basicArrayList =
        begin
        ((self#getTransforms ((TransformInfoData.getInstance ())#pARENT)) :> BasicArrayList.basicArrayList)
        end
    

    method getRootNode : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((((Obj.magic document)#getElementsByTagName ((TransformInfoObjectConfigData.getInstance ())#nAME))#item (0))))
        end
    

    method setOutputTypeName ((outputTypeName_arg : string)) : unit =
        begin
        outputTypeName <- outputTypeName_arg
        end
    

    method getOutputTypeName () : string =
        begin
        outputTypeName
        end
    

    method getInputOutputTypeName () : string =
        begin
        let node : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((InputOutputTypeData.getInstance ())#nAME, ((self#getRootNode ())#getChildNodes ()))))) in ();
        (DomNodeHelper.getTextNodeValue ((Obj.magic !node)))
        end
    

    method getInputOutputTypeFile () : string =
        begin
        let node : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((InputOutputTypeData.getInstance ())#fILE, ((self#getRootNode ())#getChildNodes ()))))) in ();
        (DomNodeHelper.getTextNodeValue ((Obj.magic !node)))
        end
    

    method getImportUriPath () : string =
        begin
        let node : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((XslData.getInstance ())#rOOT_IMPORT_URI, ((self#getRootNode ())#getChildNodes ()))))) in ();
        (DomNodeHelper.getTextNodeValue ((Obj.magic !node)))
        end
    

    method toString () : string =
        try
        begin
        (try
            if ((Obj.magic document) != (Obj.magic 0)) then begin
                raise (Java_return (Obj.repr ((XmlDocumentHelper.toString ((Obj.magic document))))))
            end else begin
                raise (Java_return (Obj.repr ((Obj.magic 0))))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#putF ("DOM Document error", self, commonStrings#tOSTRING))
            end;
            (Obj.magic 0)
        end)
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        outputTypeName <- "";
        ();
        ownerTransformInfoInterface <- transformInfoInterface;
        (self#createDocument ());
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("TransformInfo: "));
            if (ownerTransformInfoInterface != (Obj.magic 0)) then begin
                ignore (!stringBuffer#append ((ownerTransformInfoInterface#getName ())))
            end else begin
                ignore (!stringBuffer#append ("No Owner!?#@"))
            end;
            ignore (!stringBuffer#append ("\nConstructed with document: "));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr self))));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "Constructor(TransformInfoInterface)"))
        end
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TransformInfoObjectConfig" (fun arguments -> Obj.repr (new transformInfoObjectConfig (Obj.obj arguments)))


