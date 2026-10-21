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
[@@@warning "-20"]
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.w3c.dom.Attr *)
(* import org.w3c.dom.NamedNodeMap *)
(* import org.w3c.dom.Node *)
(* import org.w3c.dom.NodeList *)

class transformInfoDomNode (node) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable transformInfoInterface : TransformInfoInterface.transformInfoInterface = (Obj.magic 0)
    method transformInfoInterface = transformInfoInterface
    method set_transformInfoInterface value' = transformInfoInterface <- value'
    val mutable mappedName : string = ""
    method mappedName = mappedName
    method set_mappedName value' = mappedName <- value'
    
    
    
    
    

    method getTransformInfoInterface () : TransformInfoInterface.transformInfoInterface =
        begin
        (transformInfoInterface :> TransformInfoInterface.transformInfoInterface)
        end
    

    method getMappedName () : string =
        begin
        mappedName
        end
    

    method getReplaceKey () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("<transform:component name=\""));
        ignore (!stringBuffer#append ("body"));
        ignore (!stringBuffer#append ("\"/>"));
        let key : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Component Key: " ^ !key), self, "getReplaceKey()"))
        end;
        !key
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Constructing TransformInfo From TransformInfoDomNode: " ^ java_string_of (Obj.repr ((node#getNodeName ())))), self, "TransformInfoDomNode(Node node)"))
        end;
        let transformInfoData : TransformInfoData.transformInfoData ref = ref (((TransformInfoData.getInstance ()) :> TransformInfoData.transformInfoData)) in ();
        let attributes : Obj.t ref = ref ((Obj.repr (node#getAttributes ()))) in ();
        let attrNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !attributes)#getNamedItem (!transformInfoData#nAME))))) in ();
        let name : string ref = ref (((Obj.magic !attrNode)#getValue ())) in ();
        let nodeList : Obj.t ref = ref ((Obj.repr (node#getChildNodes ()))) in ();
        if (((Obj.magic !nodeList)#getLength ()) > 1) then begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Constructing Complete TransformInfo Node For: "));
                ignore (!stringBuffer#append (!name));
                ignore (!stringBuffer#append (" with "));
                ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((Obj.magic !nodeList)#getLength ()))))));
                ignore (!stringBuffer#append (" children"));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "TransformInfoObjectConfigComponent(Node node)"))
            end;
            let objectFileNameNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode (!transformInfoData#oBJECTFILENAME, (Obj.magic !nodeList))))) in ();
            let objectFileName : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic !objectFileNameNode)))) in ();
            let objectConfigFileNameNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode (!transformInfoData#oBJECTCONFIGFILENAME, (Obj.magic !nodeList))))) in ();
            let objectConfigFileName : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic !objectConfigFileNameNode)))) in ();
            let templateFileNameNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode (!transformInfoData#tEMPLATEFILENAME, (Obj.magic !nodeList))))) in ();
            let templateFileName : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic !templateFileNameNode)))) in ();
            let dataFileNameNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode (!transformInfoData#dATAFILENAME, (Obj.magic !nodeList))))) in ();
            let dataFileName : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic !dataFileNameNode)))) in ();
            transformInfoInterface <- (Obj.magic (new TransformInfo.transformInfo (!name, !objectFileName, !objectConfigFileName, !templateFileName, !dataFileName)))
        end else begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Constructing Partial TransformInfo Node For: "));
                ignore (!stringBuffer#append (!name));
                ignore (!stringBuffer#append (" with "));
                ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((Obj.magic !nodeList)#getLength ()))))));
                ignore (!stringBuffer#append (" children"));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "TransformInfoObjectConfigComponent(Node node)"))
            end;
            transformInfoInterface <- (Obj.magic (new TransformInfo.transformInfo (!name)))
        end;
        let templateAttrNode : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !attributes)#getNamedItem (!transformInfoData#mAPPED))))) in ();
        if ((Obj.magic !templateAttrNode) != (Obj.magic 0)) then begin
            mappedName <- ((Obj.magic !templateAttrNode)#getValue ())
        end else begin
            mappedName <- ((self#getTransformInfoInterface ())#getName ())
        end
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TransformInfoDomNode" (fun arguments -> Obj.repr (new transformInfoDomNode (Obj.obj arguments)))


