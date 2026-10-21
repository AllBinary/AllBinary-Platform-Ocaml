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
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.permission.PermissionItemData *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.permissions.PermissionItemsEntityFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class permissionItemsRequestHelper ((_hashMap : java_hash_map), pageContext) =
  object (self)
    inherit ModifyTable.modifyTable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value' = basicItemData <- value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable id : string = ""
    method id = id
    method set_id value' = id <- value'
    val mutable enabled : string = ""
    method enabled = enabled
    method set_enabled value' = enabled <- value'
    val mutable number : string = ""
    method number = number
    method set_number value' = number <- value'
    val mutable who : string = ""
    method who = who
    method set_who value' = who <- value'
    val mutable what : string = ""
    method what = what
    method set_what value' = what <- value'
    val mutable type_ : string = ""
    method type_ = type_
    method set_type_ value' = type_ <- value'
    val mutable remoteAddr : string = ""
    method remoteAddr = remoteAddr
    method set_remoteAddr value' = remoteAddr <- value'
    val mutable startTime : string = ""
    method startTime = startTime
    method set_startTime value' = startTime <- value'
    val mutable endTime : string = ""
    method endTime = endTime
    method set_endTime value' = endTime <- value'
    val mutable price : string = ""
    method price = price
    method set_price value' = price <- value'
    val mutable timeEntered : string = ""
    method timeEntered = timeEntered
    method set_timeEntered value' = timeEntered <- value'
    val mutable lastModified : string = ""
    method lastModified = lastModified
    method set_lastModified value' = lastModified <- value'
    
    

    method getFormData () : unit =
        begin
        id <- ((Obj.magic request)#getParameter (basicItemData#iD));
        number <- ((Obj.magic request)#getParameter (basicItemData#nUMBER));
        enabled <- ((Obj.magic request)#getParameter ((EntryData.getInstance ())#eNABLE));
        who <- ((Obj.magic request)#getParameter ((PermissionItemData.get_wHO ())));
        what <- ((Obj.magic request)#getParameter ((PermissionItemData.get_wHAT ())));
        type_ <- ((Obj.magic request)#getParameter ((PermissionItemData.get_tYPE ())));
        remoteAddr <- ((Obj.magic request)#getParameter ((PermissionItemData.get_rEMOTE_ADDR ())));
        startTime <- ((Obj.magic request)#getParameter ((PermissionItemData.get_sTART_TIME ())));
        endTime <- ((Obj.magic request)#getParameter ((PermissionItemData.get_eND_TIME ())));
        price <- ((Obj.magic request)#getParameter (basicItemData#pRICE));
        timeEntered <- ((Obj.magic request)#getParameter ((EntryData.getInstance ())#tIMECREATED));
        lastModified <- ((Obj.magic request)#getParameter ((EntryData.getInstance ())#lASTMODIFIED))
        end [@@warning "-7"]
    

    method getHashMap () : java_hash_map =
        begin
        let values : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!values#put (basicItemData#iD, id));
        ignore (!values#put (basicItemData#nUMBER, number));
        ignore (!values#put ((EntryData.getInstance ())#eNABLE, enabled));
        ignore (!values#put ((PermissionItemData.get_wHO ()), who));
        ignore (!values#put ((PermissionItemData.get_wHAT ()), what));
        ignore (!values#put ((PermissionItemData.get_tYPE ()), type_));
        ignore (!values#put ((PermissionItemData.get_rEMOTE_ADDR ()), remoteAddr));
        ignore (!values#put ((PermissionItemData.get_sTART_TIME ()), startTime));
        ignore (!values#put ((PermissionItemData.get_eND_TIME ()), endTime));
        ignore (!values#put (basicItemData#pRICE, price));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
        ignore (!values#put ((EntryData.getInstance ())#lASTMODIFIED, !time));
        (!values :> java_hash_map)
        end [@@warning "-7"]
    

    method insert () : string =
        begin
        (try
            let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
            let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
            let values : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!values#add (id));
            ignore (!values#add (number));
            ignore (!values#add (enabled));
            ignore (!values#add (who));
            ignore (!values#add (what));
            ignore (!values#add (type_));
            ignore (!values#add (remoteAddr));
            ignore (!values#add (startTime));
            ignore (!values#add (endTime));
            ignore (!values#add (price));
            ignore (!values#add (!time));
            ignore (!values#add (!time));
            ignore (((PermissionItemsEntityFactory.getInstance ())#getPermissionItemsEntityInstance ())#insert (!values));
            let success : string ref = ref ((("Successfully inserted " ^ id) ^ " into items table")) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "insert()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ((("Failed to insert " ^ id) ^ " into items table")) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "inserts()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method delete () : string =
        begin
        (try
            ignore (((PermissionItemsEntityFactory.getInstance ())#getPermissionItemsEntityInstance ())#delete (id));
            let success : string ref = ref ("Successfully deleted") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "delete()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to delete") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "delete()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method update () : string =
        begin
        (try
            let success : string ref = ref ("Update Pricing Successful") in ();
            let values : java_hash_map ref = ref (((self#getHashMap ()) :> java_hash_map)) in ();
            ignore (((PermissionItemsEntityFactory.getInstance ())#getPermissionItemsEntityInstance ())#update (!values));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (id))#append ((CommonSeps.getInstance ())#sPACE))#append (!success)))), self, "update()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref (("Failed to update: " ^ id)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "update()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        ();
        id <- "";
        enabled <- "";
        number <- "";
        who <- "";
        what <- "";
        type_ <- "";
        remoteAddr <- "";
        startTime <- "";
        endTime <- "";
        price <- "";
        timeEntered <- "";
        lastModified <- "";
        ();
        request <- Obj.repr ((Obj.magic (pageContext#getRequest ())));
        (self#getFormData ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "PermissionItemsRequestHelper" (fun arguments -> Obj.repr (new permissionItemsRequestHelper (Obj.obj arguments)))


