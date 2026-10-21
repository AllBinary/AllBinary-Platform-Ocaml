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
(* import org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntityFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class xmlOptionItemsRequestHelper ((_hashMap : java_hash_map), pageContext) =
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
    val mutable xmlFileStatus : string = ""
    method xmlFileStatus = xmlFileStatus
    method set_xmlFileStatus value' = xmlFileStatus <- value'
    val mutable optionXmlFile : string = ""
    method optionXmlFile = optionXmlFile
    method set_optionXmlFile value' = optionXmlFile <- value'
    val mutable timeEntered : string = ""
    method timeEntered = timeEntered
    method set_timeEntered value' = timeEntered <- value'
    val mutable lastModified : string = ""
    method lastModified = lastModified
    method set_lastModified value' = lastModified <- value'
    
    

    method getFormData () : unit =
        begin
        id <- ((Obj.magic request)#getParameter (basicItemData#iD));
        xmlFileStatus <- ((Obj.magic request)#getParameter ((XmlOptionItemData.get_xML_FILE_STATUS ())));
        optionXmlFile <- ((Obj.magic request)#getParameter ((XmlOptionItemData.get_oPTION_XML_FILE ())));
        timeEntered <- ((Obj.magic request)#getParameter ((EntryData.getInstance ())#tIMECREATED));
        lastModified <- ((Obj.magic request)#getParameter ((EntryData.getInstance ())#lASTMODIFIED))
        end [@@warning "-7"]
    

    method getHashMap () : java_hash_map =
        begin
        let values : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!values#put (basicItemData#iD, id));
        ignore (!values#put ((XmlOptionItemData.get_xML_FILE_STATUS ()), xmlFileStatus));
        ignore (!values#put ((XmlOptionItemData.get_oPTION_XML_FILE ()), optionXmlFile));
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
            ignore (!values#add (xmlFileStatus));
            ignore (!values#add (optionXmlFile));
            ignore (!values#add (!time));
            ignore (!values#add (!time));
            ignore (((XmlOptionItemsEntityFactory.getInstance ())#getXmlOptionItemsEntityInstance ())#insert (!values));
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
            ignore (((XmlOptionItemsEntityFactory.getInstance ())#getXmlOptionItemsEntityInstance ())#delete (id));
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
            let success : string ref = ref ("Update Successful") in ();
            let values : java_hash_map ref = ref (((self#getHashMap ()) :> java_hash_map)) in ();
            ignore (((XmlOptionItemsEntityFactory.getInstance ())#getXmlOptionItemsEntityInstance ())#update (!values));
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
        xmlFileStatus <- "";
        optionXmlFile <- "";
        timeEntered <- "";
        lastModified <- "";
        ();
        request <- Obj.repr ((Obj.magic (pageContext#getRequest ())));
        (self#getFormData ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "XmlOptionItemsRequestHelper" (fun arguments -> Obj.repr (new xmlOptionItemsRequestHelper (Obj.obj arguments)))


