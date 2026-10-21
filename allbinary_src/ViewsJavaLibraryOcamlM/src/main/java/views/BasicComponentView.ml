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
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)
(* import org.allbinary.logic.visual.transform.BasicTransformer *)
(* import org.allbinary.logic.visual.transform.TransformInterface *)
(* import org.allbinary.logic.visual.transform.data.TransformDocumentFactory *)
(* import org.allbinary.logic.visual.transform.data.TransformDocumentInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class basicComponentView ((transformInfoInterface_arg : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable transformDocumentInterface : TransformDocumentInterface.transformDocumentInterface = (Obj.magic 0)
    method transformDocumentInterface = transformDocumentInterface
    method set_transformDocumentInterface value' = transformDocumentInterface <- value'
    val mutable transformInfoInterface : TransformInfoInterface.transformInfoInterface = (Obj.magic 0)
    method transformInfoInterface = transformInfoInterface
    method set_transformInfoInterface value' = transformInfoInterface <- value'
    val mutable nO_TYPE : int = 0
    method nO_TYPE = nO_TYPE
    method set_nO_TYPE value' = nO_TYPE <- value'
    
    

    method getTypeId () : int =
        begin
        nO_TYPE
        end
    

    method getTransformDocumentInterface () : TransformDocumentInterface.transformDocumentInterface =
        begin
        (transformDocumentInterface :> TransformDocumentInterface.transformDocumentInterface)
        end
    

    method setTransformDocumentInterface : 'any1. 'any1 -> unit = fun (transformDocumentInterface_arg) ->
        let transformDocumentInterface_arg = Obj.repr transformDocumentInterface_arg in
        begin
        transformDocumentInterface <- (Obj.magic transformDocumentInterface_arg)
        end [@@warning "-20"]
    

    method getTransformInfoInterface () : TransformInfoInterface.transformInfoInterface =
        begin
        (transformInfoInterface :> TransformInfoInterface.transformInfoInterface)
        end
    

    method setTransformInfoInterface : 'any1. 'any1 -> unit = fun (transformInfoInterface_arg) ->
        let transformInfoInterface_arg = Obj.repr transformInfoInterface_arg in
        begin
        transformInfoInterface <- (Obj.magic transformInfoInterface_arg)
        end [@@warning "-20"]
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((transformDocumentInterface#getDoc ())))
        end
    

    method getDoc : 'return. unit -> 'return = fun () ->
        begin
        let document : Obj.t ref = ref ((Obj.repr ((self#getTransformInfoInterface ())#getDataDocument ()))) in ();
        let dataNode : Obj.t ref = ref ((Obj.repr (((self#getTransformDocumentInterface ())#getDoc ())#importNode (((Obj.magic !document)#getFirstChild ()), true)))) in ();
        if ((Obj.magic !dataNode) != (Obj.magic 0)) then begin
            ignore (((self#getTransformDocumentInterface ())#getBaseNode ())#appendChild ((Obj.magic !dataNode)))
        end;
        (Obj.magic (((self#getTransformDocumentInterface ())#getDoc ())))
        end
    

    method view () : string =
        begin
        (try
            let success : string ref = ref ((XmlDocumentHelper.toString ((self#getDoc ())))) in ();
            let result : string ref = ref (((new BasicTransformer.basicTransformer (abeClientInformation, (self#getTransformInfoInterface ())))#translate (!success))) in ();
            !result
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        abeClientInformation <- ((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface);
        transformDocumentInterface <- ((Obj.magic 0) :> TransformDocumentInterface.transformDocumentInterface);
        transformInfoInterface <- ((Obj.magic 0) :> TransformInfoInterface.transformInfoInterface);
        nO_TYPE <- 0;
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
            ignore ((Obj.magic logUtil)#putF (("View Name: " ^ (transformInfoInterface_arg#getName ())), self, commonStrings#cONSTRUCTOR))
        end;
        (self#setTransformInfoInterface (transformInfoInterface_arg));
        (self#setTransformDocumentInterface ((TransformDocumentFactory.getInstance ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicComponentView" (fun arguments -> Obj.repr (new basicComponentView (Obj.obj arguments)))


