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
(* package org.allbinary.data.tables.workflow *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.DynamicObjectData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.control.workflow.DbWorkFlowFactory *)
(* import org.allbinary.logic.control.workflow.WorkFlowData *)
(* import org.allbinary.logic.control.workflow.WorkFlowInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)

class workFlowEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ())))) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    val mutable mETHOD_GET : string = ""
    method mETHOD_GET = mETHOD_GET
    method set_mETHOD_GET value' = mETHOD_GET <- value'
    val mutable mETHOD_UPDATE : string = ""
    method mETHOD_UPDATE = mETHOD_UPDATE
    method set_mETHOD_UPDATE value' = mETHOD_UPDATE <- value'
    
    

    method insert : 'any1. 'any1 -> unit = fun (values) ->
        let values = Obj.repr values in
        begin
        (try
            ignore (super#insert ((Obj.magic values)));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, iNSERT))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, iNSERT, e))
            end
        end)
        end [@@warning "-7-20"]
    

    method delete ((name : string), (storeName : string)) : unit =
        begin
        (try
            let keysAndValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!keysAndValues#put ((WorkFlowData.getInstance ())#nAME, name));
            ignore (!keysAndValues#put ((StoreFrontData.getInstance ())#nAME, storeName));
            ignore (super#deleteWhere (!keysAndValues));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, (self#commonStrings)#delete))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, (self#commonStrings)#delete, e))
            end
        end)
        end [@@warning "-7"]
    

    method get ((name : string), (storeName : string)) : WorkFlowInterface.workFlowInterface =
        begin
        (try
            let keysAndValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!keysAndValues#put ((WorkFlowData.getInstance ())#nAME, name));
            ignore (!keysAndValues#put ((StoreFrontData.getInstance ())#nAME, storeName));
            let hashMap : java_hash_map ref = ref (((super#getRow (!keysAndValues)) :> java_hash_map)) in ();
            ((Obj.magic ((DbWorkFlowFactory.getInstance ())#getInstance (abeClientInformation, !hashMap))) :> WorkFlowInterface.workFlowInterface)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, mETHOD_GET, e))
            end;
            raise e
        end)
        end [@@warning "-7"]
    

    (* Java overload get(String) is not converted: OCaml has one method per name *)
    

    method update ((updatedValues : java_hash_map)) : unit =
        begin
        (try
            let wherekeysAndValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!wherekeysAndValues#put ((WorkFlowData.getInstance ())#nAME, (Obj.magic (updatedValues#get ((WorkFlowData.getInstance ())#nAME)))));
            ignore (!wherekeysAndValues#put ((StoreFrontData.getInstance ())#nAME, (Obj.magic (updatedValues#get ((StoreFrontData.getInstance ())#nAME)))));
            ignore (super#updateWhere (!wherekeysAndValues, updatedValues))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, mETHOD_UPDATE, e))
            end
        end)
        end [@@warning "-7"]
    

    method createTableStatement () : string =
        begin
        let workFlowData : WorkFlowData.workFlowData ref = ref (((WorkFlowData.getInstance ()) :> WorkFlowData.workFlowData)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore ((((((((((((((((((!stringBuffer#append ((self#sqlStrings)#cREATE_TABLE))#append (tableName))#append ((self#sqlStrings)#sTART))#append (!workFlowData#nAME))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((StoreFrontData.getInstance ())#nAME))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((DynamicObjectData.get_nAME ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append (!workFlowData#dATA))#append ((self#sqlTypeStrings)#bLOB_NOT_NULL))#append ((EntryData.getInstance ())#tIMECREATED))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((EntryData.getInstance ())#lASTMODIFIED))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((self#sqlStrings)#pRIMARY_KEY))#append (!workFlowData#nAME))#append ((self#sqlStrings)#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        (super#createTable ((self#createTableStatement ())))
        end [@@warning "-7"]
    

    method dropTable () : string =
        begin
        (super#dropTable ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        abeClientInformation <- ((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface);
        tableName <- "workflows";
        mETHOD_GET <- "get()";
        mETHOD_UPDATE <- "update";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "WorkFlowEntity" (fun arguments -> Obj.repr (new workFlowEntity (Obj.obj arguments)))


