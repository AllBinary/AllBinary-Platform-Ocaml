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
(* package views.admin.inventory.listings *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.HashSet *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntity *)
(* import org.allbinary.data.tables.staticpages.StaticPagesEntity *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity *)
(* import org.allbinary.globals.GLOBALS2 *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.search.SearchParams *)
(* import org.allbinary.logic.control.search.SearchRequest *)
(* import org.allbinary.logic.io.AbDataOutputStream *)
(* import org.allbinary.logic.io.DataOutputStreamFactory *)
(* import org.allbinary.logic.io.InputOutputTypeData *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.directory.Directory *)
(* import org.allbinary.logic.io.path.AbPath *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.SpecialCharacterUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.regex.replace.Replace *)
(* import org.allbinary.logic.string.tokens.UniqueTokens *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayList *)
(* import views.generic.inventory.InventoryColumnUtil *)
(* import views.generic.inventory.InventorySearchUtil *)

class productListing ((searchRequest_arg : SearchRequest.searchRequest)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable directory : Directory.directory = (Obj.magic 0)
    method directory = directory
    method set_directory value' = directory <- value'
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value' = basicItemData <- value'
    val mutable storeFronts : StoreFrontsEntity.storeFrontsEntity = (Obj.magic 0)
    method storeFronts = storeFronts
    method set_storeFronts value' = storeFronts <- value'
    val mutable staticPages : StaticPagesEntity.staticPagesEntity = (Obj.magic 0)
    method staticPages = staticPages
    method set_staticPages value' = staticPages <- value'
    val mutable inventory : InventoryEntity.inventoryEntity = (Obj.magic 0)
    method inventory = inventory
    method set_inventory value' = inventory <- value'
    val mutable searchRequest : SearchRequest.searchRequest = (Obj.magic 0)
    method searchRequest = searchRequest
    method set_searchRequest value' = searchRequest <- value'
    val mutable iNVENTORY : string = ""
    method iNVENTORY = iNVENTORY
    method set_iNVENTORY value' = iNVENTORY <- value'
    
    

    method getHashSet : 'any1 'return. 'any1 -> 'return = fun (storeFront) ->
        let storeFront = Obj.repr storeFront in
        begin
        let inventoryColumnUtil : Obj.t ref = ref ((Obj.repr (InventoryColumnUtil.getInstance ()))) in ();
        let keywords : BasicArrayList.basicArrayList ref = ref ((((Obj.magic !inventoryColumnUtil)#getColumnWhereLike (inventory, ((Obj.magic storeFront)#getCategoryPath ()), basicItemData#kEYWORDS)) :> BasicArrayList.basicArrayList)) in ();
        let subStoreVector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic storeFront)#getSubStores ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!subStoreVector#size ())) in ();
        for index = 0 to !size - 1 do
            let subStore : string ref = ref ((Obj.magic (!subStoreVector#get (index)))) in ();
            let substoreKeywords : BasicArrayList.basicArrayList ref = ref ((((Obj.magic !inventoryColumnUtil)#getColumnWhereLike (inventory, (java_string_of (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR)) ^ !subStore), basicItemData#cATEGORY)) :> BasicArrayList.basicArrayList)) in ();
            ignore (!keywords#addAllList (!substoreKeywords))
        done;
        let uniqueTokens : UniqueTokens.uniqueTokens ref = ref (((new UniqueTokens.uniqueTokens ()) :> UniqueTokens.uniqueTokens)) in ();
        let keywordHashSet : Obj.t ref = ref ((Obj.repr (!uniqueTokens#getWhithoutDashesAndSkipNumberOnlyTokens (!keywords)))) in ();
        (Obj.magic ((Obj.magic !keywordHashSet)))
        end [@@warning "-20"]
    

    method savePage ((file : string), (data : string)) : unit =
        begin
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sTATICPAGEGENERATIONLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (("Creating File: " ^ file), self, "generateAll()"))
        end;
        let newFile : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AbFile.createAbFile" (Obj.repr (file)))))) in ();
        if ((Obj.magic !newFile)#exists ()) then begin
            ignore ((Obj.magic !newFile)#delete ())
        end;
        ignore ((Obj.magic !newFile)#createNewFile ());
        if ((Obj.magic !newFile)#exists ()) then begin
            let idOutData : AbDataOutputStream.abDataOutputStream ref = ref ((((Obj.magic (java_call_static "DataOutputStreamFactory.getInstance" (Obj.repr ())))#getInstanceForAbFile ((Obj.magic !newFile))) :> AbDataOutputStream.abDataOutputStream)) in ();
            ignore (!idOutData#writeBytes (data));
            ignore (!idOutData#flush ());
            ignore ((StreamUtil.getInstance ())#close (!idOutData));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sTATICPAGEGENERATIONLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (("Wrote Total Bytes: " ^ java_string_of (Obj.repr (((Obj.magic !newFile)#length ())))), self, "generateAll()"))
            end
        end else begin
            raise (Failure (("Could Not Create: " ^ file)))
        end
        end
    

    method create : 'any3 'any4. string * java_hash_map * 'any3 * 'any4 -> unit = fun ((keywordData : string), (keywordFilenameHashMap : java_hash_map), vector, staticPath) ->
        let vector = Obj.repr vector in
        let staticPath = Obj.repr staticPath in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let hashMap : java_hash_map ref = ref (((SpecialCharacterUtil.getHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((CommonSeps.getInstance ())#sPACE, (StringUtil.getInstance ())#eMPTY_STRING));
        let pageName : string ref = ref (((new Replace.replace (!hashMap))#all (keywordData))) in ();
        let searchParams : SearchParams.searchParams ref = ref (((searchRequest#getParams ()) :> SearchParams.searchParams)) in ();
        ignore (!searchParams#add (basicItemData#kEYWORDS, keywordData));
        ignore (!searchParams#setStartPage ((CommonPhoneStrings.getInstance ())#zERO));
        ignore (searchRequest#setParams (!searchParams));
        ignore (searchRequest#setFileBaseName (!pageName));
        let abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface ref = ref (((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface)) in ();
        let inventorySearchUtil : Obj.t ref = ref ((Obj.repr (InventorySearchUtil.getInstance ()))) in ();
        let productListingPages : string array ref = ref (((Obj.magic !inventorySearchUtil)#search (!abeClientInformation, searchRequest, (Obj.magic vector)))) in ();
        for index = 0 to (Array.length !productListingPages) - 1 do
            if (!productListingPages.(index) == (Obj.magic 0)) then begin
                raise Java_break
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sTATICPAGEGENERATIONLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (("Saving Listing: " ^ java_string_of (Obj.repr (index))), self, "generateAll()"))
            end;
            let indexStr : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
            if (index > 0) then begin
                indexStr := (java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr (index))))))
            end;
            ignore (keywordFilenameHashMap#put (keywordData, (!pageName ^ !indexStr)));
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr (Obj.magic staticPath)))));
            ignore (!stringBuffer#append (!pageName));
            ignore (!stringBuffer#append (!indexStr));
            ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP));
            ignore (!stringBuffer#append ((InputOutputTypeData.getInstance ())#dEFAULT));
            let file : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            if (not (directory#create ((Obj.magic staticPath)))) then begin
                raise (Failure (("Could Not Create Directory: " ^ java_string_of (Obj.repr ((Obj.magic staticPath))))))
            end;
            (self#savePage (!file, !productListingPages.(index)))
        done
        end [@@warning "-20"]
    

    method addStaticPageInfoToDatabase : 'any1. 'any1 * java_hash_map -> unit = fun (storeFront, (keywordFilenameHashMap : java_hash_map)) ->
        let storeFront = Obj.repr storeFront in
        begin
        let keywordHashSet : Obj.t ref = ref ((Obj.repr (keywordFilenameHashMap#keySet ()))) in ();
        let keywordArray : Obj.t array ref = ref (((Obj.magic !keywordHashSet)#toArray ())) in ();
        let size : int ref = ref ((Array.length !keywordArray)) in ();
        for index = 0 to !size - 1 do
            let insertVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let keywordData : string ref = ref ((Obj.magic !keywordArray.(index))) in ();
            let fileName : string ref = ref ((Obj.magic (keywordFilenameHashMap#get (!keywordData)))) in ();
            ignore (!insertVector#add (((Obj.magic storeFront)#getName ())));
            ignore (!insertVector#add (!keywordData));
            ignore (!insertVector#add (!fileName));
            ignore (staticPages#insert (!insertVector))
        done
        end [@@warning "-20"]
    

    method generateAll () : string =
        try
        begin
        (try
            let storeFront : StoreFrontInterface.storeFrontInterface ref = ref (((searchRequest#getStoreFront ()) :> StoreFrontInterface.storeFrontInterface)) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ((URLGLOBALS.getWebappPath ())));
            ignore (!stringBuffer#append ((!storeFront#getName ())));
            ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR));
            ignore (!stringBuffer#append ((!storeFront#getStaticPath ())));
            let staticPath : AbPath.abPath ref = ref (((new AbPath.abPath ((java_string_of (Obj.repr !stringBuffer)), (StringUtil.getInstance ())#eMPTY_STRING)) :> AbPath.abPath)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sTATICPAGEGENERATIONLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (("Store Static Pages Path: " ^ java_string_of (Obj.repr (!staticPath))), self, "generateAll()"))
            end;
            let keywordHashSet : Obj.t ref = ref ((Obj.repr (self#getHashSet (!storeFront)))) in ();
            let keywordArray : Obj.t array ref = ref (((Obj.magic !keywordHashSet)#toArray ())) in ();
            let size : int ref = ref ((Array.length !keywordArray)) in ();
            let keywordFilenameHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            if (!size = 0) then begin
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append ("Products For "));
                ignore (!stringBuffer#append ((!storeFront#getName ())));
                ignore (!stringBuffer#append (" Store Not Found"));
                raise (Java_return (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))
            end;
            let inventorySearchUtil : Obj.t ref = ref ((Obj.repr (InventorySearchUtil.getInstance ()))) in ();
            let vector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic !inventorySearchUtil)#getBasicItemIdColumn (searchRequest)) :> BasicArrayList.basicArrayList)) in ();
            for index = 0 to !size - 1 do
                let keywordData : string ref = ref ((Obj.magic !keywordArray.(index))) in ();
                if ((String.length !keywordData) > 1) then begin
                    (self#create (!keywordData, !keywordFilenameHashMap, !vector, !staticPath))
                end
            done;
            (self#addStaticPageInfoToDatabase (!storeFront, !keywordFilenameHashMap));
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append ("Static Files Generated Successfully For "));
            ignore (!stringBuffer#append ((!storeFront#getName ())));
            ignore (!stringBuffer#append (" it used packages "));
            ignore (!stringBuffer#append ((!storeFront#getPackageLocation ())));
            ignore (!stringBuffer#append (iNVENTORY));
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            raise e
        end)
        end
        with Java_return value -> Obj.obj value
    

    (* Java overload generateAll(String) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        directory <- ((Directory.getInstance ()) :> Directory.directory);
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        ();
        ();
        ();
        ();
        iNVENTORY <- ".InventoryView";
        ();
        searchRequest <- searchRequest_arg;
        storeFronts <- (new StoreFrontsEntity.storeFrontsEntity ());
        staticPages <- (new StaticPagesEntity.staticPagesEntity ());
        inventory <- (new InventoryEntity.inventoryEntity ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "ProductListing" (fun arguments -> Obj.repr (new productListing (Obj.obj arguments)))


