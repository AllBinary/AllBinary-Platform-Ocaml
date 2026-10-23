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
(* import admin.taghelpers.TagHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.workflow.StoreTagWorkFlowFactory *)
(* import org.allbinary.logic.control.workflow.StoreWorkFlowInterface *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)

class storeTagWorkFlowHelper ((hashMap : java_hash_map), pageContext) =
  object (self)
    inherit TagHelper.tagHelper ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable storeWorkFlowInterface : StoreWorkFlowInterface.storeWorkFlowInterface = (Obj.magic 0)
    method storeWorkFlowInterface = storeWorkFlowInterface
    method set_storeWorkFlowInterface value' = storeWorkFlowInterface <- value'
    
    

    method process () : int =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                ignore ((Obj.magic logUtil)#putF ("Process", self, (self#commonStrings)#pROCESS))
            end;
            (storeWorkFlowInterface#process ())
        with e -> begin
            let error : string ref = ref ("Failed to process workflow: ") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
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
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
            ignore ((Obj.magic logUtil)#putF (("Properties: " ^ (java_string_of (Obj.repr hashMap))), self, "StoreTagWorkFlowHelper()"))
        end;
        storeWorkFlowInterface <- ((StoreTagWorkFlowFactory.getInstance ())#getInstance (abeClientInformation, hashMap, pageContext))
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreTagWorkFlowHelper" (fun arguments -> Obj.repr (new storeTagWorkFlowHelper (Obj.obj arguments)))


