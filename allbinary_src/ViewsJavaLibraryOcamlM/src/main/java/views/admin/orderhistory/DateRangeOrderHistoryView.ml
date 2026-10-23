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
(* package views.admin.orderhistory *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderData *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistory *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistoryData *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.globals.GLOBALS2 *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.time.TimeUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

class dateRangeOrderHistoryView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable vIEWALLORDERS : string = ""
    method vIEWALLORDERS = vIEWALLORDERS
    method set_vIEWALLORDERS value' = vIEWALLORDERS <- value'
    val mutable vIEWORDERSINLASTHOUR : string = ""
    method vIEWORDERSINLASTHOUR = vIEWORDERSINLASTHOUR
    method set_vIEWORDERSINLASTHOUR value' = vIEWORDERSINLASTHOUR <- value'
    val mutable vIEWORDERSINLASTDAY : string = ""
    method vIEWORDERSINLASTDAY = vIEWORDERSINLASTDAY
    method set_vIEWORDERSINLASTDAY value' = vIEWORDERSINLASTDAY <- value'
    val mutable vIEWORDERSINLASTWEEK : string = ""
    method vIEWORDERSINLASTWEEK = vIEWORDERSINLASTWEEK
    method set_vIEWORDERSINLASTWEEK value' = vIEWORDERSINLASTWEEK <- value'
    val mutable vIEWORDERSINLAST30DAYS : string = ""
    method vIEWORDERSINLAST30DAYS = vIEWORDERSINLAST30DAYS
    method set_vIEWORDERSINLAST30DAYS value' = vIEWORDERSINLAST30DAYS <- value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable shipped : string = ""
    method shipped = shipped
    method set_shipped value' = shipped <- value'
    val mutable partiallyShipped : string = ""
    method partiallyShipped = partiallyShipped
    method set_partiallyShipped value' = partiallyShipped <- value'
    val mutable processing : string = ""
    method processing = processing
    method set_processing value' = processing <- value'
    val mutable preprocessing : string = ""
    method preprocessing = preprocessing
    method set_preprocessing value' = preprocessing <- value'
    val mutable cancelled : string = ""
    method cancelled = cancelled
    method set_cancelled value' = cancelled <- value'
    val mutable dateType : string = ""
    method dateType = dateType
    method set_dateType value' = dateType <- value'
    val mutable toDate : string = ""
    method toDate = toDate
    method set_toDate value' = toDate <- value'
    val mutable fromDate : string = ""
    method fromDate = fromDate
    method set_fromDate value' = fromDate <- value'
    val mutable fromYear : string = ""
    method fromYear = fromYear
    method set_fromYear value' = fromYear <- value'
    val mutable fromMonth : string = ""
    method fromMonth = fromMonth
    method set_fromMonth value' = fromMonth <- value'
    val mutable fromDay : string = ""
    method fromDay = fromDay
    method set_fromDay value' = fromDay <- value'
    val mutable fromHour : string = ""
    method fromHour = fromHour
    method set_fromHour value' = fromHour <- value'
    val mutable toYear : string = ""
    method toYear = toYear
    method set_toYear value' = toYear <- value'
    val mutable toMonth : string = ""
    method toMonth = toMonth
    method set_toMonth value' = toMonth <- value'
    val mutable toDay : string = ""
    method toDay = toDay
    method set_toDay value' = toDay <- value'
    val mutable toHour : string = ""
    method toHour = toHour
    method set_toHour value' = toHour <- value'
    val mutable command : string = ""
    method command = command
    method set_command value' = command <- value'
    val mutable oN : string = ""
    method oN = oN
    method set_oN value' = oN <- value'
    val mutable mAXLEN : int = 0
    method mAXLEN = mAXLEN
    method set_mAXLEN value' = mAXLEN <- value'
    
    

    method getFormData () : unit =
        begin
        dateType <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_dATETYPE ())));
        preprocessing <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_pREPROCESSINGNAME ())));
        shipped <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_sHIPPEDNAME ())));
        partiallyShipped <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_pARTIALLYSHIPPEDNAME ())));
        processing <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_pROCESSINGNAME ())));
        cancelled <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_cANCELLEDNAME ())));
        fromYear <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_fROMYEAR ())));
        fromMonth <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_fROMMONTH ())));
        fromDay <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_fROMDAY ())));
        fromHour <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_fROMHOUR ())));
        toYear <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_tOYEAR ())));
        toMonth <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_tOMONTH ())));
        toDay <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_tODAY ())));
        toHour <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_tOHOUR ())));
        command <- ((Obj.magic request)#getParameter ((GLOBALS2.get_aDMINCOMMAND ())))
        end [@@warning "-7"]
    

    method addDomNodeInterfaces () : unit =
        begin
        ignore (self#addDomNodeInterface ((Obj.magic self)))
        end [@@warning "-7"]
    

    method view () : string =
        begin
        (try
            (self#addDomNodeInterfaces ());
            (super#view ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Attempt to View orders in (fromDate="));
                ignore (!stringBuffer#append (fromDate));
                ignore (!stringBuffer#append (",toDate="));
                ignore (!stringBuffer#append (toDate));
                ignore (!stringBuffer#append (") and status"));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "view"))
            end;
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((OrderData.get_oRDERS ()))))) in ();
            if ((preprocessing <> (Obj.magic 0)) && ((String.compare preprocessing (oN)) == 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Adding Preprocessing Orders", self, "toXmlNode"))
                end;
                let orderHistoryVector : BasicArrayList.basicArrayList ref = ref ((((OrderHistoryEntityFactory.getInstance ())#getOrders ((OrderHistoryData.get_pREPROCESSING ()), fromDate, toDate)) :> BasicArrayList.basicArrayList)) in ();
                let size : int ref = ref ((!orderHistoryVector#size ())) in ();
                for index = 0 to !size - 1 do
                    let orderHistory : OrderHistory.orderHistory ref = ref (((Obj.magic (!orderHistoryVector#get (index))) :> OrderHistory.orderHistory)) in ();
                    ignore ((Obj.magic !node)#appendChild ((!orderHistory#toXmlNode ((Obj.magic document)))))
                done
            end;
            if ((shipped <> (Obj.magic 0)) && ((String.compare shipped (oN)) == 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Adding Shipped Orders", self, "toXmlNode"))
                end;
                let orderHistoryVector : BasicArrayList.basicArrayList ref = ref ((((OrderHistoryEntityFactory.getInstance ())#getOrders ((OrderHistoryData.get_sHIPPED ()), fromDate, toDate)) :> BasicArrayList.basicArrayList)) in ();
                let size : int ref = ref ((!orderHistoryVector#size ())) in ();
                for index = 0 to !size - 1 do
                    let orderHistory : OrderHistory.orderHistory ref = ref (((Obj.magic (!orderHistoryVector#get (index))) :> OrderHistory.orderHistory)) in ();
                    ignore ((Obj.magic !node)#appendChild ((!orderHistory#toXmlNode ((Obj.magic document)))))
                done
            end;
            if ((partiallyShipped <> (Obj.magic 0)) && ((String.compare partiallyShipped (oN)) == 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Adding Partially Shipped Orders", self, "toDomNode"))
                end;
                let orderHistoryVector : BasicArrayList.basicArrayList ref = ref ((((OrderHistoryEntityFactory.getInstance ())#getOrders ((OrderHistoryData.get_pARTIALLYSHIPPED ()), fromDate, toDate)) :> BasicArrayList.basicArrayList)) in ();
                let size : int ref = ref ((!orderHistoryVector#size ())) in ();
                for index = 0 to !size - 1 do
                    let orderHistory : OrderHistory.orderHistory ref = ref (((Obj.magic (!orderHistoryVector#get (index))) :> OrderHistory.orderHistory)) in ();
                    ignore ((Obj.magic !node)#appendChild ((!orderHistory#toXmlNode ((Obj.magic document)))))
                done
            end;
            if ((processing <> (Obj.magic 0)) && ((String.compare processing (oN)) == 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Adding Processing Orders", self, "toXmlNode"))
                end;
                let orderHistoryVector : BasicArrayList.basicArrayList ref = ref ((((OrderHistoryEntityFactory.getInstance ())#getOrders ((OrderHistoryData.get_pROCESSING ()), fromDate, toDate)) :> BasicArrayList.basicArrayList)) in ();
                let size : int ref = ref ((!orderHistoryVector#size ())) in ();
                for index = 0 to !size - 1 do
                    let orderHistory : OrderHistory.orderHistory ref = ref (((Obj.magic (!orderHistoryVector#get (index))) :> OrderHistory.orderHistory)) in ();
                    ignore ((Obj.magic !node)#appendChild ((!orderHistory#toXmlNode ((Obj.magic document)))))
                done
            end;
            if ((cancelled <> (Obj.magic 0)) && ((String.compare cancelled (oN)) == 0)) then begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                    ignore ((Obj.magic logUtil)#putF ("Adding Cancelled Orders", self, "view"))
                end;
                let orderHistoryVector : BasicArrayList.basicArrayList ref = ref ((((OrderHistoryEntityFactory.getInstance ())#getOrders ((OrderHistoryData.get_cANCELLED ()), fromDate, toDate)) :> BasicArrayList.basicArrayList)) in ();
                let size : int ref = ref ((!orderHistoryVector#size ())) in ();
                for index = 0 to !size - 1 do
                    let orderHistory : OrderHistory.orderHistory ref = ref (((Obj.magic (!orderHistoryVector#get (index))) :> OrderHistory.orderHistory)) in ();
                    ignore ((Obj.magic !node)#appendChild ((!orderHistory#toXmlNode ((Obj.magic document)))))
                done
            end;
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (OrderHistoryData.get_pREPROCESSINGNAME ()), (OrderHistoryData.get_pREPROCESSING ())))));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (OrderHistoryData.get_pROCESSINGNAME ()), (OrderHistoryData.get_pROCESSING ())))));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (OrderHistoryData.get_cANCELLEDNAME ()), (OrderHistoryData.get_cANCELLED ())))));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (OrderHistoryData.get_pARTIALLYSHIPPEDNAME ()), (OrderHistoryData.get_pARTIALLYSHIPPED ())))));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (OrderHistoryData.get_sHIPPEDNAME ()), (OrderHistoryData.get_sHIPPED ())))));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (GLOBALS2.get_vIEWNAME ()), (GLOBALS2.get_vIEW ())))));
            (Obj.magic ((Obj.magic !node)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#xSLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "toXmlNode", e))
            end;
            (Obj.magic ((Obj.magic 0)))
        end)
        end [@@warning "-7-20"]
    

    method isValid () : bool =
        begin
        (try
            let isValid : bool ref = ref (true) in ();
            if ((dateType = (Obj.magic 0)) || ((((String.compare dateType ((OrderHistoryData.get_tYPELONG ()))) != 0) && ((String.compare dateType ((OrderHistoryData.get_tYPECAESAR ()))) != 0)))) then begin
                isValid := false
            end;
            if (dateType <> (Obj.magic 0)) then begin
                if ((String.compare dateType ((OrderHistoryData.get_tYPELONG ()))) == 0) then begin
                    let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
                    let currentTime : int ref = ref ((!calendar#getTimeInMillis ())) in ();
                    let rangeDate : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
                    if ((String.compare command (vIEWORDERSINLASTHOUR)) == 0) then begin
                        let oneHour : int ref = ref (((60 * 60) * 1000)) in ();
                        rangeDate := (java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr (!oneHour))))))
                    end else if ((String.compare command (vIEWORDERSINLASTDAY)) == 0) then begin
                        let oneDay : int ref = ref ((((24 * 60) * 60) * 1000)) in ();
                        rangeDate := (java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr (!oneDay))))))
                    end else if ((String.compare command (vIEWORDERSINLASTWEEK)) == 0) then begin
                        let oneWeek : int ref = ref (((((7 * 24) * 60) * 60) * 1000)) in ();
                        rangeDate := (java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr (!oneWeek))))))
                    end else if ((String.compare command (vIEWORDERSINLAST30DAYS)) == 0) then begin
                        let thirtyDays : int ref = ref (((((30 * 24) * 60) * 60) * 1000)) in ();
                        rangeDate := (java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr (!thirtyDays))))))
                    end else if ((String.compare command (vIEWALLORDERS)) == 0) then begin
                        rangeDate := (java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr (!currentTime))))))
                    end;
                    let rangeDateLong : int ref = ref (((Obj.obj (java_new "Long" (Obj.repr (!rangeDate))))#longValue ())) in ();
                    fromDate <- (java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!currentTime - !rangeDateLong)))))));
                    let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr (!currentTime))))))))))) in ();
                    toDate <- !time
                end else if ((String.compare dateType ((OrderHistoryData.get_tYPECAESAR ()))) == 0) then begin
                    let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
                    ignore ((TimeUtil.getInstance ())#setCalendar (!calendar, fromYear, fromMonth, fromDay, fromHour));
                    fromDate <- (java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))));
                    ignore ((TimeUtil.getInstance ())#setCalendar (!calendar, toYear, toMonth, toDay, toHour));
                    toDate <- (java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))
                end;
                if (((StringValidationUtil.getInstance ())#isEmpty (toDate)) || ((String.length toDate) > mAXLEN)) then begin
                    isValid := false
                end;
                if (((StringValidationUtil.getInstance ())#isEmpty (fromDate)) || ((String.length fromDate) > mAXLEN)) then begin
                    isValid := false
                end
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Attempt to View orders in (fromDate="));
                ignore (!stringBuffer#append (fromDate));
                ignore (!stringBuffer#append (",toDate="));
                ignore (!stringBuffer#append (toDate));
                ignore (!stringBuffer#append (")"));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, (self#commonStrings)#iS_VALID))
            end;
            !isValid
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#put ("Exception in validation", self, (self#commonStrings)#iS_VALID, e))
            end;
            false
        end)
        end [@@warning "-7"]
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7-20"]
    

    method validationInfo () : string =
        begin
        (try
            let result : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            if ((dateType = (Obj.magic 0)) || ((((String.compare dateType ((OrderHistoryData.get_tYPELONG ()))) != 0) && ((String.compare dateType ((OrderHistoryData.get_tYPECAESAR ()))) != 0)))) then begin
                ignore (!result#append ("DATETYPE not recognized"))
            end;
            if (((StringValidationUtil.getInstance ())#isEmpty (toDate)) || ((String.length toDate) > mAXLEN)) then begin
                ignore (!result#append ("Invalid To Date"))
            end;
            if (((StringValidationUtil.getInstance ())#isEmpty (fromDate)) || ((String.length fromDate) > mAXLEN)) then begin
                ignore (!result#append ("Invalid From Date"))
            end;
            (java_string_of (Obj.repr !result))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to generate validation error info", self, "validationInfo()", e))
            end;
            "Error Getting Validation Info"
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        vIEWALLORDERS <- "View All";
        vIEWORDERSINLASTHOUR <- "Last Hour";
        vIEWORDERSINLASTDAY <- "Last Day";
        vIEWORDERSINLASTWEEK <- "Last Week";
        vIEWORDERSINLAST30DAYS <- "30 Days";
        ();
        shipped <- "";
        partiallyShipped <- "";
        processing <- "";
        preprocessing <- "";
        cancelled <- "";
        dateType <- "";
        toDate <- "";
        fromDate <- "";
        fromYear <- "";
        fromMonth <- "";
        fromDay <- "";
        fromHour <- "";
        toYear <- "";
        toMonth <- "";
        toDay <- "";
        toHour <- "";
        command <- "";
        oN <- "on";
        mAXLEN <- 15;
        ();
        (* super(...) is the inherit clause *) ();
        request <- Obj.repr ((Obj.magic ((self#getPageContext ())#getRequest ())));
        (self#getFormData ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "DateRangeOrderHistoryView" (fun arguments -> Obj.repr (new dateRangeOrderHistoryView (Obj.obj arguments)))


