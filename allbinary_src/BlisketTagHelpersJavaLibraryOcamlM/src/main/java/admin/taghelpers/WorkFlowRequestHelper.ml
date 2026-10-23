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
(* package admin.taghelpers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.data.tables.workflow.WorkFlowEntityFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.workflow.NewWorkFlowFactory *)
(* import org.allbinary.logic.control.workflow.WorkFlowData *)
(* import org.allbinary.logic.control.workflow.WorkFlowInterface *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)

class workFlowRequestHelper ((hashMap : java_hash_map), pageContext) =
  object (self)
    inherit ModifyTable.modifyTable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable workFlowInterface : WorkFlowInterface.workFlowInterface = (Obj.magic 0)
    method workFlowInterface = workFlowInterface
    method set_workFlowInterface value' = workFlowInterface <- value'
    
    

    method delete () : string =
        begin
        (try
            let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
            ignore (((WorkFlowEntityFactory.getInstance ())#create2 ())#delete ((workFlowInterface#getName ()), !stringUtil#eMPTY_STRING));
            let success : string ref = ref ((((("Successfully Removed the workflow with " ^ java_string_of (Obj.repr ((WorkFlowData.getInstance ())#nAME))) ^ "= ") ^ (workFlowInterface#getName ())) ^ " from ")) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "delete()"))
            end;
            !success
        with e -> begin
            (try
                let error : string ref = ref ((((("Failed to remove workflow with " ^ java_string_of (Obj.repr ((WorkFlowData.getInstance ())#nAME))) ^ "= ") ^ (workFlowInterface#getName ())) ^ " from ")) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                    ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "delete()", e))
                end;
                raise (Failure (e))
            with e2 -> begin
                let error : string ref = ref ("Failed to get data from workflowinterface to set error string") in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                    ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "delete()", e2))
                end;
                !error
            end)
        end)
        end [@@warning "-7"]
    

    method insert () : string =
        begin
        (try
            let success : string ref = ref ("New User Successfully added to the Users Table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "add()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to add User") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "add()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method update () : string =
        begin
        (try
            let success : string ref = ref ("Updated WorkFlow Successfully") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "update()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to update WorkFlow") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "update()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        abeClientInformation <- ((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface);
        ();
        ();
        workFlowInterface <- ((NewWorkFlowFactory.getInstance ())#getInstance (abeClientInformation, hashMap, pageContext))
      end
  end [@@warning "-20"]
let () = java_register_constructor "WorkFlowRequestHelper" (fun arguments -> Obj.repr (new workFlowRequestHelper (Obj.obj arguments)))


