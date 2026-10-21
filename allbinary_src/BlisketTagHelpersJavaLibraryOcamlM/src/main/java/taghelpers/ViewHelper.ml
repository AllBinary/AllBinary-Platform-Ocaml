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
(* package taghelpers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)
(* import org.allbinary.logic.visual.transform.TransformFactory *)
(* import org.allbinary.logic.visual.transform.TransformInterface *)
(* import org.allbinary.logic.visual.transform.data.TransformDocumentInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)

class viewHelper ((hashMap : java_hash_map), pageContext) =
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
    val mutable componentInterface : TransformInterface.transformInterface = (Obj.magic 0)
    method componentInterface = componentInterface
    method set_componentInterface value' = componentInterface <- value'
    val mutable nO_TYPE : int = 0
    method nO_TYPE = nO_TYPE
    method set_nO_TYPE value' = nO_TYPE <- value'
    
    

    method getTypeId () : int =
        begin
        nO_TYPE
        end
    

    method view () : string =
        begin
        (try
            (componentInterface#view ())
        with e -> begin
            let error : string ref = ref ("Failed to View: ") in ();
            if (componentInterface != (Obj.magic 0)) then begin
                error := (!error ^ java_string_of (Obj.repr ((java_get_class (Obj.repr componentInterface)))))
            end else begin
                error := (!error ^ java_string_of (Obj.repr ("Unknown")))
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        (try
            raise (Failure (("Hmm: " ^ java_string_of (Obj.repr (((componentInterface#getTransformDocumentInterface ())#getDoc ()))))))
        with e -> begin
            let error : string ref = ref ("Failed to View: ") in ();
            if (componentInterface != (Obj.magic 0)) then begin
                error := (!error ^ java_string_of (Obj.repr ((java_get_class (Obj.repr componentInterface)))))
            end else begin
                error := (!error ^ java_string_of (Obj.repr ("Unknown")))
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end
    

    method getViewObject () : TransformInterface.transformInterface =
        begin
        (componentInterface :> TransformInterface.transformInterface)
        end
    

    method getTransformInfoInterface () : TransformInfoInterface.transformInfoInterface =
        begin
        ((componentInterface#getTransformInfoInterface ()) :> TransformInfoInterface.transformInfoInterface)
        end
    

    method getTransformDocumentInterface () : TransformDocumentInterface.transformDocumentInterface =
        begin
        ((Obj.magic 0) :> TransformDocumentInterface.transformDocumentInterface)
        end
    

    method setTransformDocumentInterface : 'any1. 'any1 -> unit = fun (_viewDocumentInterface) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        abeClientInformation <- ((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface);
        ();
        nO_TYPE <- 0;
        ();
        componentInterface <- ((TransformFactory.getInstance ())#getInstance (abeClientInformation, hashMap, pageContext))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ViewHelper" (fun arguments -> Obj.repr (new viewHelper (Obj.obj arguments)))


