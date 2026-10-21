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
(* package views.generic.inventory *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.data.tables.staticpages.StaticPagesEntity *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.search.SearchParams *)
(* import org.allbinary.logic.control.search.SearchRequest *)
(* import org.allbinary.logic.io.InputOutputTypeData *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.string.regex.replace.Replace *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import views.admin.inventory.listings.InventoryViewSearchInterface *)

class inventorySearch ((searchRequest_arg : SearchRequest.searchRequest)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value' = basicItemData <- value'
    val mutable searchRequest : SearchRequest.searchRequest = (Obj.magic 0)
    method searchRequest = searchRequest
    method set_searchRequest value' = searchRequest <- value'
    
    

    method searchSingleStaticPage () : string =
        try
        begin
        (try
            let storeFront : StoreFrontInterface.storeFrontInterface ref = ref (((searchRequest#getStoreFront ()) :> StoreFrontInterface.storeFrontInterface)) in ();
            let searchParams : SearchParams.searchParams ref = ref (((searchRequest#getParams ()) :> SearchParams.searchParams)) in ();
            let columnValueHashMap : java_hash_map ref = ref (((!searchParams#get ()) :> java_hash_map)) in ();
            let file : string ref = ref (((new StaticPagesEntity.staticPagesEntity ())#getFile ((!storeFront#getName ()), ((new Replace.replace ("-", (CommonSeps.getInstance ())#sPACE))#all ((Obj.magic (!columnValueHashMap#get (basicItemData#kEYWORDS)))))))) in ();
            if ((StringValidationUtil.getInstance ())#isEmpty (!file)) then begin
                raise (Java_return (Obj.repr ((Obj.magic 0))))
            end else begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ((!storeFront#getCurrentHostName ())));
                ignore (!stringBuffer#append ((!storeFront#getCurrentHostNamePath ())));
                ignore (!stringBuffer#append ((!storeFront#getStaticPath ())));
                ignore (!stringBuffer#append (!file));
                ignore (!stringBuffer#append (((searchRequest#getParams ())#getEndPage ())));
                ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP));
                ignore (!stringBuffer#append ((InputOutputTypeData.getInstance ())#dEFAULT));
                let filePath : string ref = ref (((new Replace.replace ((CommonSeps.getInstance ())#sPACE, "%20"))#all ((java_string_of (Obj.repr !stringBuffer))))) in ();
                raise (Java_return (Obj.repr (!filePath)))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRODUCTSEARCHLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "searchSingleStaticPage", e))
            end;
            raise (Failure ("Failed retrieve Single Product Page Static"))
        end)
        end
        with Java_return value -> Obj.obj value
    

    method searchSingleDynamicPage () : string =
        begin
        (try
            let str : string array ref = ref ((self#search ())) in ();
            !str.((((searchRequest#getParams ())#getStartPageInt ())#intValue ()))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRODUCTSEARCHLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "searchSingleDynamicPage", e))
            end;
            raise (Failure ("Failed retrieve Single Product Page Dynamically"))
        end)
        end
    

    method search () : string array =
        begin
        let abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface ref = ref (((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface)) in ();
        let inventorySearchUtil : InventorySearchUtil.inventorySearchUtil ref = ref (((InventorySearchUtil.getInstance ()) :> InventorySearchUtil.inventorySearchUtil)) in ();
        let vector : BasicArrayList.basicArrayList ref = ref (((!inventorySearchUtil#getBasicItemIdColumn (searchRequest)) :> BasicArrayList.basicArrayList)) in ();
        (!inventorySearchUtil#search (!abeClientInformation, searchRequest, !vector))
        end
    

    method getProduct ((product : string)) : string =
        begin
        let abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface ref = ref (((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface)) in ();
        ((InventorySearchProductUtil.getInstance ())#getProduct (!abeClientInformation, searchRequest, product))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        searchRequest <- searchRequest_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "InventorySearch" (fun arguments -> Obj.repr (new inventorySearch (Obj.obj arguments)))


