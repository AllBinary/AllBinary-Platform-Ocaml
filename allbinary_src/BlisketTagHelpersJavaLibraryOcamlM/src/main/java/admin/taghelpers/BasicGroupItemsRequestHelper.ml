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
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class basicGroupItemsRequestHelper ((_hashMap : java_hash_map), pageContext) =
  object (self)
    inherit ModifyTable.modifyTable ()
    val mutable logUtil : LogUtil.logUtil = (Obj.magic 0)
    method logUtil = logUtil
    method set_logUtil value = logUtil <- value
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value = basicItemData <- value
    val mutable request = (Obj.magic 0)
    method request = request
    method set_request value = request <- value
    val mutable id : string = ""
    method id = id
    method set_id value = id <- value
    val mutable itemOne : string = ""
    method itemOne = itemOne
    method set_itemOne value = itemOne <- value
    val mutable itemTwo : string = ""
    method itemTwo = itemTwo
    method set_itemTwo value = itemTwo <- value
    val mutable itemThree : string = ""
    method itemThree = itemThree
    method set_itemThree value = itemThree <- value
    val mutable itemFour : string = ""
    method itemFour = itemFour
    method set_itemFour value = itemFour <- value
    val mutable itemFive : string = ""
    method itemFive = itemFive
    method set_itemFive value = itemFive <- value
    val mutable itemSix : string = ""
    method itemSix = itemSix
    method set_itemSix value = itemSix <- value
    val mutable itemSeven : string = ""
    method itemSeven = itemSeven
    method set_itemSeven value = itemSeven <- value
    val mutable itemEight : string = ""
    method itemEight = itemEight
    method set_itemEight value = itemEight <- value
    val mutable itemNine : string = ""
    method itemNine = itemNine
    method set_itemNine value = itemNine <- value
    val mutable itemTen : string = ""
    method itemTen = itemTen
    method set_itemTen value = itemTen <- value
    val mutable timeEntered : string = ""
    method timeEntered = timeEntered
    method set_timeEntered value = timeEntered <- value
    val mutable lastModified : string = ""
    method lastModified = lastModified
    method set_lastModified value = lastModified <- value
    
    

    method getFormData () =
        begin
        id <- (request#getParameter (basicItemData#iD));
        itemOne <- (request#getParameter (BasicGroupItemData.iTEM_ONE));
        itemTwo <- (request#getParameter (BasicGroupItemData.iTEM_TWO));
        itemThree <- (request#getParameter (BasicGroupItemData.iTEM_THREE));
        itemFour <- (request#getParameter (BasicGroupItemData.iTEM_FOUR));
        itemFive <- (request#getParameter (BasicGroupItemData.iTEM_FIVE));
        itemSix <- (request#getParameter (BasicGroupItemData.iTEM_SIX));
        itemSeven <- (request#getParameter (BasicGroupItemData.iTEM_SEVEN));
        itemEight <- (request#getParameter (BasicGroupItemData.iTEM_EIGHT));
        itemNine <- (request#getParameter (BasicGroupItemData.iTEM_NINE));
        itemTen <- (request#getParameter (BasicGroupItemData.iTEM_TEN));
        timeEntered <- (request#getParameter ((EntryData.getInstance ())#tIMECREATED));
        lastModified <- (request#getParameter ((EntryData.getInstance ())#lASTMODIFIED))
        end
    

    method getHashMap () =
        begin
        let values : java_hash_map ref = ref ((((StdUtil.getInstance ())#createHashMap ()) :> java_hash_map)) in ();
        ignore (!values#put (basicItemData#iD, id));
        ignore (!values#put (BasicGroupItemData.iTEM_ONE, itemOne));
        ignore (!values#put (BasicGroupItemData.iTEM_TWO, itemTwo));
        ignore (!values#put (BasicGroupItemData.iTEM_THREE, itemThree));
        ignore (!values#put (BasicGroupItemData.iTEM_FOUR, itemFour));
        ignore (!values#put (BasicGroupItemData.iTEM_FIVE, itemFive));
        ignore (!values#put (BasicGroupItemData.iTEM_SIX, itemSix));
        ignore (!values#put (BasicGroupItemData.iTEM_SEVEN, itemSeven));
        ignore (!values#put (BasicGroupItemData.iTEM_EIGHT, itemEight));
        ignore (!values#put (BasicGroupItemData.iTEM_NINE, itemNine));
        ignore (!values#put (BasicGroupItemData.iTEM_TEN, itemTen));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((java_string_of (Obj.repr (((!calendar#getTimeInMillis ())#toString ()))))) in ();
        ignore (!values#put ((EntryData.getInstance ())#lASTMODIFIED, !time));
        !values
        end
    

    method insert () : string =
        begin
        (try
            let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
            let time : string ref = ref ((java_string_of (Obj.repr (((!calendar#getTimeInMillis ())#toString ()))))) in ();
            let values : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!values#add (id));
            ignore (!values#add (itemOne));
            ignore (!values#add (itemTwo));
            ignore (!values#add (itemThree));
            ignore (!values#add (itemFour));
            ignore (!values#add (itemFive));
            ignore (!values#add (itemSix));
            ignore (!values#add (itemSeven));
            ignore (!values#add (itemEight));
            ignore (!values#add (itemNine));
            ignore (!values#add (itemTen));
            ignore (!values#add (!time));
            ignore (!values#add (!time));
            ignore (((BasicGroupItemsEntityFactory.getInstance ())#getBasicGroupItemsEntityInstance ())#insert (!values));
            let success : string ref = ref ((("Successfully inserted " ^ id) ^ " into items table")) in ();
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore (logUtil#putF (!success, self, "insert()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ((("Failed to insert " ^ id) ^ " into items table")) in ();
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore (logUtil#put (commonStrings#eXCEPTION, self, "inserts()", e))
            end;
            !error
        end)
        end
    

    method delete () : string =
        begin
        (try
            ignore (((BasicGroupItemsEntityFactory.getInstance ())#getBasicGroupItemsEntityInstance ())#delete (id));
            let success : string ref = ref ("Successfully deleted") in ();
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore (logUtil#putF (!success, self, "delete()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to delete") in ();
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore (logUtil#put (commonStrings#eXCEPTION, self, "delete()", e))
            end;
            !error
        end)
        end
    

    method update () : string =
        begin
        (try
            let success : string ref = ref ("Update Pricing Successful") in ();
            let values : java_hash_map ref = ref (((self#getHashMap ()) :> java_hash_map)) in ();
            ignore (((BasicGroupItemsEntityFactory.getInstance ())#getBasicGroupItemsEntityInstance ())#update (!values));
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore (logUtil#putF ((((((new StringMaker.stringMaker ())#append (id))#append ((CommonSeps.getInstance ())#sPACE))#append (!success))#toString ()), self, "update()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref (("Failed to update: " ^ id)) in ();
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore (logUtil#put (commonStrings#eXCEPTION, self, "update()", e))
            end;
            !error
        end)
        end

    initializer
      begin
        logUtil <- ((LogUtil.getInstance ()) :> LogUtil.logUtil);
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        ();
        id <- "";
        itemOne <- "";
        itemTwo <- "";
        itemThree <- "";
        itemFour <- "";
        itemFive <- "";
        itemSix <- "";
        itemSeven <- "";
        itemEight <- "";
        itemNine <- "";
        itemTen <- "";
        timeEntered <- "";
        lastModified <- "";
        ();
        request <- (Obj.magic (pageContext#getRequest ()));
        (self#getFormData ())
      end
  end


