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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.installer.Portion *)
(* import org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlTableUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.visual.dhtml.html.select.HtmlSelect *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonSeps *)

let cLASS : string = "class"
let get_cLASS () = cLASS
let () = java_register_static "StoreFrontsHelper.get_cLASS" (fun _ -> Obj.repr (get_cLASS ()))
let tEXT : string = "text"
let get_tEXT () = tEXT
let () = java_register_static "StoreFrontsHelper.get_tEXT" (fun _ -> Obj.repr (get_tEXT ()))
class storeFrontsHelper ((hashMap : java_hash_map), _pageContext) =
  object (self)
    inherit BasicTable.basicTable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable portion : Portion.portion = (Obj.magic 0)
    method portion = portion
    method set_portion value' = portion <- value'
    val mutable commonPhoneStrings : CommonPhoneStrings.commonPhoneStrings = (Obj.magic 0)
    method commonPhoneStrings = commonPhoneStrings
    method set_commonPhoneStrings value' = commonPhoneStrings <- value'
    
    

    method drop () : string =
        begin
        (try
            let success : string ref = ref ((((StoreFrontsEntityFactory.getInstance ())#getStoreFrontsEntityInstance ())#dropTable ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, (self#commonStrings)#dROP))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to drop storefronts table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#dROP, e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method create () : string =
        begin
        (try
            let success : string ref = ref ((((StoreFrontsEntityFactory.getInstance ())#getStoreFrontsEntityInstance ())#createTable ())) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "create()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to create new storefronts table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "create()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method restore () : string =
        begin
        (try
            let success : string ref = ref ("Restore Successful") in ();
            let result : string ref = ref (((Obj.magic (java_call_static "AbSqlTableUtil.getInstance" (Obj.repr ())))#restoreTable (((StoreFrontsEntityFactory.getInstance ())#getStoreFrontsEntityInstance ()), portion))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "restore()"))
            end;
            !result
        with e -> begin
            let error : string ref = ref ("Failed to restore backup") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "restore()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method backup () : string =
        begin
        (try
            let success : string ref = ref ("Restore Successful") in ();
            let result : string ref = ref (((Obj.magic (java_call_static "AbSqlTableUtil.getInstance" (Obj.repr ())))#backupTable (((StoreFrontsEntityFactory.getInstance ())#getStoreFrontsEntityInstance ())))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "backup()"))
            end;
            !result
        with e -> begin
            let error : string ref = ref ("Failed to make backup") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "backup()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method generateSelect () : string =
        begin
        (try
            let success : string ref = ref ((CommonSeps.getInstance ())#sPACE) in ();
            let storeNamesVector : BasicArrayList.basicArrayList ref = ref (((((StoreFrontsEntityFactory.getInstance ())#getStoreFrontsEntityInstance ())#getStoreFrontNames ()) :> BasicArrayList.basicArrayList)) in ();
            let storeSelect : HtmlSelect.htmlSelect ref = ref (((new HtmlSelect.htmlSelect ((StringUtil.getInstance ())#eMPTY_STRING, commonPhoneStrings#oNE, (StoreFrontData.getInstance ())#sELECTSTORENAME, (StringUtil.getInstance ())#eMPTY_STRING)) :> HtmlSelect.htmlSelect)) in ();
            ignore (!storeSelect#addAttribute (cLASS, tEXT));
            let size : int ref = ref ((!storeNamesVector#size ())) in ();
            for index = 0 to !size - 1 do
                let storeName : string ref = ref ((Obj.magic (!storeNamesVector#get (index)))) in ();
                ignore (!storeSelect#addOption (!storeName))
            done;
            success := (!success ^ java_string_of (Obj.repr (!storeSelect)));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "generateSelect()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to generate storefronts select") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "generateSelect()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        commonPhoneStrings <- ((CommonPhoneStrings.getInstance ()) :> CommonPhoneStrings.commonPhoneStrings);
        ();
        portion <- (new Portion.portion (hashMap))
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreFrontsHelper" (fun arguments -> Obj.repr (new storeFrontsHelper (Obj.obj arguments)))


