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
(* import org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntityFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class basicOptionItemsRequestHelper ((_hashMap : java_hash_map), pageContext) =
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
    val mutable optionOneTitle : string = ""
    method optionOneTitle = optionOneTitle
    method set_optionOneTitle value' = optionOneTitle <- value'
    val mutable defaultOptionItem : string = ""
    method defaultOptionItem = defaultOptionItem
    method set_defaultOptionItem value' = defaultOptionItem <- value'
    val mutable defaultOptionValue : string = ""
    method defaultOptionValue = defaultOptionValue
    method set_defaultOptionValue value' = defaultOptionValue <- value'
    val mutable optionItem : BasicArrayList.basicArrayList = (Obj.magic 0)
    method optionItem = optionItem
    method set_optionItem value' = optionItem <- value'
    val mutable optionValue : BasicArrayList.basicArrayList = (Obj.magic 0)
    method optionValue = optionValue
    method set_optionValue value' = optionValue <- value'
    val mutable timeEntered : string = ""
    method timeEntered = timeEntered
    method set_timeEntered value' = timeEntered <- value'
    val mutable lastModified : string = ""
    method lastModified = lastModified
    method set_lastModified value' = lastModified <- value'
    
    

    method getFormData () : unit =
        begin
        optionItem <- (new BasicArrayListD.basicArrayListD ());
        optionValue <- (new BasicArrayListD.basicArrayListD ());
        id <- ((Obj.magic request)#getParameter (basicItemData#iD));
        optionOneTitle <- ((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_TITLE ())));
        defaultOptionItem <- ((Obj.magic request)#getParameter ((BasicOptionItemData.get_dEFAULT_OPTION_ITEM ())));
        defaultOptionValue <- ((Obj.magic request)#getParameter ((BasicOptionItemData.get_dEFAULT_OPTION_VALUE ())));
        ignore (optionItem#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_ONE_ITEM ())))));
        ignore (optionValue#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_ONE_VALUE ())))));
        ignore (optionItem#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_TWO_ITEM ())))));
        ignore (optionValue#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_TWO_VALUE ())))));
        ignore (optionItem#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_THREE_ITEM ())))));
        ignore (optionValue#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_THREE_VALUE ())))));
        ignore (optionItem#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_FOUR_ITEM ())))));
        ignore (optionValue#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_FOUR_VALUE ())))));
        ignore (optionItem#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_FIVE_ITEM ())))));
        ignore (optionValue#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_FIVE_VALUE ())))));
        ignore (optionItem#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_SIX_ITEM ())))));
        ignore (optionValue#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_SIX_VALUE ())))));
        ignore (optionItem#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_SEVEN_ITEM ())))));
        ignore (optionValue#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_SEVEN_VALUE ())))));
        ignore (optionItem#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_EIGHT_ITEM ())))));
        ignore (optionValue#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_EIGHT_VALUE ())))));
        ignore (optionItem#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_NINE_ITEM ())))));
        ignore (optionValue#add (((Obj.magic request)#getParameter ((BasicOptionItemData.get_oPTION_ONE_NINE_VALUE ())))));
        timeEntered <- ((Obj.magic request)#getParameter ((EntryData.getInstance ())#tIMECREATED));
        lastModified <- ((Obj.magic request)#getParameter ((EntryData.getInstance ())#lASTMODIFIED))
        end [@@warning "-7"]
    

    method getHashMap () : java_hash_map =
        begin
        let values : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!values#put (basicItemData#iD, id));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_ONE_ITEM ()), (optionItem#get (0))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_ONE_VALUE ()), (optionValue#get (0))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_TWO_ITEM ()), (optionItem#get (1))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_TWO_VALUE ()), (optionValue#get (1))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_THREE_ITEM ()), (optionItem#get (2))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_THREE_VALUE ()), (optionValue#get (2))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_FOUR_ITEM ()), (optionItem#get (3))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_FOUR_VALUE ()), (optionValue#get (3))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_FIVE_ITEM ()), (optionItem#get (4))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_FIVE_VALUE ()), (optionValue#get (4))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_SIX_ITEM ()), (optionItem#get (5))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_SIX_VALUE ()), (optionValue#get (5))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_SEVEN_ITEM ()), (optionItem#get (6))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_SEVEN_VALUE ()), (optionValue#get (6))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_EIGHT_ITEM ()), (optionItem#get (7))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_EIGHT_VALUE ()), (optionValue#get (7))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_NINE_ITEM ()), (optionItem#get (8))));
        ignore (!values#put ((BasicOptionItemData.get_oPTION_ONE_NINE_VALUE ()), (optionValue#get (8))));
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
            let size : int ref = ref ((optionValue#size ())) in ();
            for index = 0 to !size - 1 do
                ignore (!values#add ((optionValue#get (index))));
                ignore (!values#add ((optionItem#get (index))))
            done;
            ignore (!values#add (!time));
            ignore (!values#add (!time));
            ignore (((BasicOptionItemsEntityFactory.getInstance ())#getBasicOptionItemsEntityInstance ())#insert (!values));
            let success : string ref = ref ((("Successfully inserted " ^ id) ^ " into items table")) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "insert()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ((("Failed to insert " ^ id) ^ " into items table")) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "inserts()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method delete () : string =
        begin
        (try
            ignore (((BasicOptionItemsEntityFactory.getInstance ())#getBasicOptionItemsEntityInstance ())#delete (id));
            let success : string ref = ref ("Successfully deleted") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "delete()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to delete") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "delete()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method update () : string =
        begin
        (try
            let success : string ref = ref ("Update Pricing Successful") in ();
            let values : java_hash_map ref = ref (((self#getHashMap ()) :> java_hash_map)) in ();
            ignore (((BasicOptionItemsEntityFactory.getInstance ())#getBasicOptionItemsEntityInstance ())#update (!values));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (id))#append ((CommonSeps.getInstance ())#sPACE))#append (!success)))), self, "update()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref (("Failed to update: " ^ id)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "update()", e))
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
        optionOneTitle <- "";
        defaultOptionItem <- "";
        defaultOptionValue <- "";
        optionItem <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        optionValue <- ((Obj.magic 0) :> BasicArrayList.basicArrayList);
        timeEntered <- "";
        lastModified <- "";
        ();
        request <- Obj.repr ((Obj.magic (pageContext#getRequest ())));
        (self#getFormData ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicOptionItemsRequestHelper" (fun arguments -> Obj.repr (new basicOptionItemsRequestHelper (Obj.obj arguments)))


