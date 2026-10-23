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
(* package views *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)
(* import org.allbinary.logic.visual.transform.BasicTransformer *)
(* import org.allbinary.logic.visual.transform.TransformInterface *)
(* import org.allbinary.logic.visual.transform.data.TransformDocumentInterface *)
(* import org.allbinary.logic.visual.transform.data.TransformHttpRequestDocumentFactory *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpComposite *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class httpComponentView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit TransformInfoHttpComposite.transformInfoHttpComposite (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable domNodeInterfaceVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method domNodeInterfaceVector = domNodeInterfaceVector
    method set_domNodeInterfaceVector value' = domNodeInterfaceVector <- value'
    val mutable transformDocumentInterface : TransformDocumentInterface.transformDocumentInterface = (Obj.magic 0)
    method transformDocumentInterface = transformDocumentInterface
    method set_transformDocumentInterface value' = transformDocumentInterface <- value'
    val mutable nO_TYPE : int = 0
    method nO_TYPE = nO_TYPE
    method set_nO_TYPE value' = nO_TYPE <- value'
    
    

    method getTypeId () : int =
        begin
        nO_TYPE
        end [@@warning "-7"]
    

    method getTransformDocumentInterface () : TransformDocumentInterface.transformDocumentInterface =
        begin
        (transformDocumentInterface :> TransformDocumentInterface.transformDocumentInterface)
        end [@@warning "-7"]
    

    method setTransformDocumentInterface : 'any1. 'any1 -> unit = fun (transformDocumentInterface_arg) ->
        let transformDocumentInterface_arg = Obj.repr transformDocumentInterface_arg in
        begin
        transformDocumentInterface <- (Obj.magic transformDocumentInterface_arg)
        end [@@warning "-7-20"]
    

    method addDomNodeInterface : 'any1. 'any1 -> unit = fun (domNodeInterface) ->
        let domNodeInterface = Obj.repr domNodeInterface in
        begin
        ignore (domNodeInterfaceVector#add ((Obj.magic domNodeInterface)))
        end [@@warning "-7-20"]
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        (try
            let size : int ref = ref ((domNodeInterfaceVector#size ())) in ();
            for index = 0 to !size - 1 do
                let domNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((Obj.magic (domNodeInterfaceVector#get (index))) :> DomNodeInterface.domNodeInterface)) in ();
                ignore ((transformDocumentInterface#getBaseNode ())#appendChild ((!domNodeInterface#toXmlNode ((transformDocumentInterface#getDoc ())))))
            done;
            (Obj.magic (((self#getTransformDocumentInterface ())#getDoc ())))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "toXmlDoc()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]
    

    method getDoc : 'return. unit -> 'return = fun () ->
        begin
        let document : Obj.t ref = ref ((Obj.repr ((self#getTransformInfoInterface ())#getDataDocument ()))) in ();
        let node : Obj.t ref = ref ((Obj.repr (DomNodeHelper.getFirstChildElement ((Obj.magic !document))))) in ();
        if ((Obj.magic !node) != (Obj.magic 0)) then begin
            let dataNode : Obj.t ref = ref ((Obj.repr (((self#getTransformDocumentInterface ())#getDoc ())#importNode ((Obj.magic !node), true)))) in ();
            if ((Obj.magic !dataNode) != (Obj.magic 0)) then begin
                ignore (((self#getTransformDocumentInterface ())#getBaseNode ())#appendChild ((Obj.magic !dataNode)))
            end
        end;
        (Obj.magic (((self#getTransformDocumentInterface ())#getDoc ())))
        end [@@warning "-7"]
    

    method view () : string =
        begin
        (try
            ignore (self#toXmlDoc ());
            let success : string ref = ref ((XmlDocumentHelper.toString ((self#getDoc ())))) in ();
            let result : string ref = ref (((new BasicTransformer.basicTransformer (abeClientInformation, (self#getTransformInfoInterface ())))#translate (!success))) in ();
            !result
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        abeClientInformation <- ((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface);
        ();
        transformDocumentInterface <- ((Obj.magic 0) :> TransformDocumentInterface.transformDocumentInterface);
        nO_TYPE <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("View Name: " ^ (transformInfoInterface#getName ())), self, (self#commonStrings)#cONSTRUCTOR))
        end;
        domNodeInterfaceVector <- (new BasicArrayListD.basicArrayListD ());
        (self#setTransformDocumentInterface ((TransformHttpRequestDocumentFactory.getInstance ((self#getPageContext ()), (self#getWeblisketSession ())))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "HttpComponentView" (fun arguments -> Obj.repr (new httpComponentView (Obj.obj arguments)))


