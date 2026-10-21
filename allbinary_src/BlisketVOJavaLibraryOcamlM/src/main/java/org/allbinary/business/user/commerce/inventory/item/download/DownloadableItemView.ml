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
(* package org.allbinary.business.user.commerce.inventory.item.download *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class downloadableItemView ((downloadableItem_arg : DownloadableItem.downloadableItem)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable downloadableItem : DownloadableItem.downloadableItem = (Obj.magic 0)
    method downloadableItem = downloadableItem
    method set_downloadableItem value' = downloadableItem <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRODUCTSEARCHLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "toXmlNode"))
        end;
        let hashMap : java_hash_map ref = ref (((downloadableItem#toHashMap ()) :> java_hash_map)) in ();
        let totalTime : int ref = ref (((downloadableItem#getValidTime ())#longValue ())) in ();
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let year : int ref = ref ((!calendar#get ((Obj.magic (java_call_static "Calendar.get_yEAR" (Obj.repr ())))))) in ();
        let month : int ref = ref ((!calendar#get ((Obj.magic (java_call_static "Calendar.get_mONTH" (Obj.repr ())))))) in ();
        let day : int ref = ref ((!calendar#get ((Obj.magic (java_call_static "Calendar.get_dAY_OF_MONTH" (Obj.repr ())))))) in ();
        let hour : int ref = ref ((!calendar#get ((Obj.magic (java_call_static "Calendar.get_hOUR" (Obj.repr ())))))) in ();
        let minute : int ref = ref ((!calendar#get ((Obj.magic (java_call_static "Calendar.get_mINUTE" (Obj.repr ())))))) in ();
        let second : int ref = ref ((!calendar#get ((Obj.magic (java_call_static "Calendar.get_sECOND" (Obj.repr ())))))) in ();
        ignore (!calendar#setTimeInMillis (((!calendar#getTimeInMillis ()) + !totalTime)));
        let yearDelta : int ref = ref ((!calendar#get ((Obj.magic (java_call_static "Calendar.get_yEAR" (Obj.repr ())))))) in ();
        let monthDelta : int ref = ref ((!calendar#get ((Obj.magic (java_call_static "Calendar.get_mONTH" (Obj.repr ())))))) in ();
        let dayDelta : int ref = ref ((!calendar#get ((Obj.magic (java_call_static "Calendar.get_dAY_OF_MONTH" (Obj.repr ())))))) in ();
        let hourDelta : int ref = ref ((!calendar#get ((Obj.magic (java_call_static "Calendar.get_hOUR" (Obj.repr ())))))) in ();
        let minuteDelta : int ref = ref ((!calendar#get ((Obj.magic (java_call_static "Calendar.get_mINUTE" (Obj.repr ())))))) in ();
        let secondDelta : int ref = ref ((!calendar#get ((Obj.magic (java_call_static "Calendar.get_sECOND" (Obj.repr ())))))) in ();
        ignore (!hashMap#put ((DownloadItemData.get_vALID_TIME_YEARS ()), (string_of_int ((!yearDelta - !year)))));
        ignore (!hashMap#put ((DownloadItemData.get_vALID_TIME_MONTHS ()), (string_of_int ((!monthDelta - !month)))));
        ignore (!hashMap#put ((DownloadItemData.get_vALID_TIME_DAYS ()), (string_of_int ((!dayDelta - !day)))));
        ignore (!hashMap#put ((DownloadItemData.get_vALID_TIME_HOURS ()), (string_of_int ((!hourDelta - !hour)))));
        ignore (!hashMap#put ((DownloadItemData.get_vALID_TIME_MINUTES ()), (string_of_int ((!minuteDelta - !minute)))));
        ignore (!hashMap#put ((DownloadItemData.get_vALID_TIME_SECONDS ()), (string_of_int ((!secondDelta - !second)))));
        let keySet : Obj.t ref = ref ((Obj.repr (!hashMap#keySet ()))) in ();
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((DownloadItemData.get_nAME ()))))) in ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let nameArray : Obj.t array ref = ref (((Obj.magic !keySet)#toArray ())) in ();
        let size : int ref = ref ((Array.length !nameArray)) in ();
        for index = 0 to !size - 1 do
            let name : string ref = ref ((Obj.magic !nameArray.(index))) in ();
            let value : string ref = ref ((Obj.magic (!hashMap#get (!name)))) in ();
            value := (!stringUtil#getNonNull (!value));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), !name, !value))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]
    

    method toXmlDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end
    

    method view () : string =
        begin
        (Obj.magic 0)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        downloadableItem <- downloadableItem_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "DownloadableItemView" (fun arguments -> Obj.repr (new downloadableItemView (Obj.obj arguments)))


