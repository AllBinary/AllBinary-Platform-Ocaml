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
(* package workflows.template.data *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)
(* import javax.servlet.jsp.tagext.TagSupport *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.control.workflow.WorkFlowData *)
(* import org.allbinary.logic.control.workflow.WorkFlowInterface *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)
(* import org.allbinary.logic.visual.transform.TransformFactory *)
(* import org.allbinary.string.CommonStrings *)

class basicWorkFlow ((propertiesHashMap_arg : java_hash_map), pageContext_arg) =
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
    val mutable validationDomNodeInterface : ValidationComponentInterface.validationComponentInterface = (Obj.magic 0)
    method validationDomNodeInterface = validationDomNodeInterface
    method set_validationDomNodeInterface value' = validationDomNodeInterface <- value'
    val mutable propertiesHashMap : java_hash_map = (Obj.magic 0)
    method propertiesHashMap = propertiesHashMap
    method set_propertiesHashMap value' = propertiesHashMap <- value'
    val mutable pageContext : Obj.t = Obj.repr 0
    method pageContext : 'r. 'r = Obj.magic pageContext
    method set_pageContext : 'v. 'v -> unit = fun value' -> pageContext <- Obj.repr value'
    
    

    method getName () : string =
        begin
        (Obj.magic ((self#getPropertiesHashMap ())#get ((WorkFlowData.getInstance ())#nAME)))
        end
    

    method getPropertiesHashMap () : java_hash_map =
        begin
        (propertiesHashMap :> java_hash_map)
        end
    

    method getPageContext : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic pageContext)))
        end
    

    method process () : int =
        try
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#wORKFLOW)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#pROCESS))
        end;
        if ((validationDomNodeInterface#isValid ())#booleanValue ()) then begin
            ignore (((Obj.magic pageContext)#getOut ())#print ((validationDomNodeInterface#view ())));
            raise (Java_return (Obj.repr ((string_of_int ((TagSupport.get_eVAL_BODY_INCLUDE ()))))))
        end else begin
            ignore (((Obj.magic pageContext)#getOut ())#print ((validationDomNodeInterface#validationInfo ())));
            raise (Java_return (Obj.repr ((string_of_int ((TagSupport.get_sKIP_BODY ()))))))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        abeClientInformation <- ((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface);
        ();
        ();
        ();
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#wORKFLOW)) then begin
            ignore ((Obj.magic logUtil)#putF (("Properties: " ^ (java_string_of (Obj.repr propertiesHashMap_arg))), self, "BasicWorkFlow()"))
        end;
        propertiesHashMap <- propertiesHashMap_arg;
        pageContext <- Obj.repr (pageContext_arg);
        validationDomNodeInterface <- (Obj.magic ((TransformFactory.getInstance ())#getInstance (abeClientInformation, propertiesHashMap_arg, pageContext_arg)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicWorkFlow" (fun arguments -> Obj.repr (new basicWorkFlow (Obj.obj arguments)))


