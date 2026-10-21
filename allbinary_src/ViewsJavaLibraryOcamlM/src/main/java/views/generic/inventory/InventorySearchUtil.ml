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
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.InventoryData *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketData *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemView *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemInterface *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.search.SearchData *)
(* import org.allbinary.logic.control.search.SearchParams *)
(* import org.allbinary.logic.control.search.SearchRequest *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.string.regex.replace.Replace *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.visual.transform.StoreTransformer *)
(* import org.allbinary.logic.visual.transform.data.TransformDocumentInterface *)
(* import org.allbinary.logic.visual.transform.data.TransformStoreDocumentFactory *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpSearch *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class inventorySearchUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable commonPhoneStrings : CommonPhoneStrings.commonPhoneStrings = (Obj.magic 0)
    method commonPhoneStrings = commonPhoneStrings
    method set_commonPhoneStrings value' = commonPhoneStrings <- value'
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value' = basicItemData <- value'
    

    method getBasicItemIdColumn : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (searchRequest) ->
        let searchRequest = Obj.repr searchRequest in
        begin
        let inventoryEntityInterface : InventoryEntity.inventoryEntity ref = ref ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ()) :> InventoryEntity.inventoryEntity)) in ();
        let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref ((((Obj.magic searchRequest)#getStoreFront ()) :> StoreFrontInterface.storeFrontInterface)) in ();
        let inventorySearchUtil : InventoryColumnUtil.inventoryColumnUtil ref = ref (((InventoryColumnUtil.getInstance ()) :> InventoryColumnUtil.inventoryColumnUtil)) in ();
        let column : BasicArrayList.basicArrayList ref = ref (((!inventorySearchUtil#getColumnWhereLike (!inventoryEntityInterface, (!storeFrontInterface#getCategoryPath ()), basicItemData#iD)) :> BasicArrayList.basicArrayList)) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRODUCTSEARCHLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (("Number Of Items Found: " ^ java_string_of (Obj.repr ((!column#size ())))), self, "search"))
        end;
        let subStoreVector : BasicArrayList.basicArrayList ref = ref (((!storeFrontInterface#getSubStores ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!subStoreVector#size ())) in ();
        for index = 0 to !size - 1 do
            let subStore : string ref = ref ((Obj.magic (!subStoreVector#get (index)))) in ();
            let substoreIdColumn : BasicArrayList.basicArrayList ref = ref (((!inventorySearchUtil#getColumnWhereLike (!inventoryEntityInterface, !subStore, basicItemData#iD)) :> BasicArrayList.basicArrayList)) in ();
            ignore (!column#addAllList (!substoreIdColumn))
        done;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRODUCTSEARCHLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (("Number Of Items Found Including SubStores: " ^ java_string_of (Obj.repr ((!column#size ())))), self, "search"))
        end;
        (!column :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method getNoResults : 'any1 'any2. 'any1 * 'any2 -> string = fun (viewDocumentInterface, inventoryNode) ->
        let viewDocumentInterface = Obj.repr viewDocumentInterface in
        let inventoryNode = Obj.repr inventoryNode in
        begin
        ignore ((Obj.magic inventoryNode)#appendChild ((ModDomHelper.createNameValueNodes (((Obj.magic viewDocumentInterface)#getDoc ()), (SearchData.get_tOTAL_NUMBER_PAGES ()), commonPhoneStrings#zERO))));
        ignore ((Obj.magic inventoryNode)#appendChild ((ModDomHelper.createNameValueNodes (((Obj.magic viewDocumentInterface)#getDoc ()), (SearchData.get_tOTAL_NUMBER_ITEMS ()), commonPhoneStrings#zERO))));
        let success : string ref = ref ((XmlDocumentHelper.toString (((Obj.magic viewDocumentInterface)#getDoc ())))) in ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRODUCTSEARCHLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (("No Results Xml: " ^ !success), self, "search"))
        end;
        !success
        end [@@warning "-20"]
    

    method search : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> string array = fun (abeClientInformation, searchRequest, column) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let searchRequest = Obj.repr searchRequest in
        let column = Obj.repr column in
        try
        begin
        (try
            let inventoryEntityInterface : InventoryEntity.inventoryEntity ref = ref ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ()) :> InventoryEntity.inventoryEntity)) in ();
            let searchParams : SearchParams.searchParams ref = ref ((((Obj.magic searchRequest)#getParams ()) :> SearchParams.searchParams)) in ();
            let startPage : int ref = ref (((!searchParams#getStartPageInt ())#intValue ())) in ();
            let endPage : int ref = ref (((!searchParams#getEndPageInt ())#intValue ())) in ();
            let pageLength : int ref = ref (((!searchParams#getLengthInt ())#intValue ())) in ();
            let savedPagesInRange : int ref = ref (0) in ();
            let columnValueHashMap : java_hash_map ref = ref (((!searchParams#get ()) :> java_hash_map)) in ();
            let keyword : string ref = ref (((new Replace.replace ("-", (CommonSeps.getInstance ())#sPACE))#all ((Obj.magic (!columnValueHashMap#get (basicItemData#kEYWORDS)))))) in ();
            if ((StringValidationUtil.getInstance ())#isEmpty (!keyword)) then begin
                raise (Java_return (Obj.repr ((Obj.magic 0))))
            end;
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            if (!startPage >= 0) then begin
                if (!pageLength = 0) then begin
                    pageLength := (SearchData.get_dEFAULT_PAGE_LENGTH ())
                end;
                let mAXPAGES : int ref = ref (100) in ();
                let productListingPages : string array ref = ref ((Array.make (!mAXPAGES) (Obj.magic 0))) in ();
                let documents : Obj.t ref = ref ((Obj.repr (Array.make (!mAXPAGES) (Obj.magic 0)))) in ();
                let inventoryNodes : Obj.t ref = ref ((Obj.repr (Array.make (!mAXPAGES) (Obj.magic 0)))) in ();
                keyword := (String.uppercase_ascii !keyword);
                let lastPage : int ref = ref ((-1)) in ();
                let numberOfResultsOnCurrentPage : int ref = ref (0) in ();
                let numberOfResults : int ref = ref (0) in ();
                let viewDocumentInterface : TransformDocumentInterface.transformDocumentInterface ref = ref (((TransformStoreDocumentFactory.getInstance ((Obj.magic searchRequest))) :> TransformDocumentInterface.transformDocumentInterface)) in ();
                let inventoryNode : Obj.t ref = ref ((Obj.repr ((!viewDocumentInterface#getDoc ())#createElement ((InventoryData.get_iNVENTORY ()))))) in ();
                ignore ((!viewDocumentInterface#getBaseNode ())#appendChild ((Obj.magic !inventoryNode)));
                ignore ((Obj.magic !inventoryNode)#appendChild ((ModDomHelper.createNameValueNodes ((!viewDocumentInterface#getDoc ()), (SearchData.get_pAGE ()), (java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr (!startPage))))))))));
                if (((Obj.magic searchRequest)#getFileBaseName ()) != (Obj.magic 0)) then begin
                    ignore ((Obj.magic !inventoryNode)#appendChild (((Obj.magic searchRequest)#getFileBaseNameNode ((!viewDocumentInterface#getDoc ())))))
                end;
                let currentPage : int ref = ref ((-1)) in ();
                let size : int ref = ref (((Obj.magic column)#size ())) in ();
                for index = 0 to !size - 1 do
                    let product : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((Obj.magic ((Obj.magic column)#get (index)))))))) in ();
                    let itemInterface : ItemInterface.itemInterface ref = ref (((!inventoryEntityInterface#getItem (!product)) :> ItemInterface.itemInterface)) in ();
                    let keywords : string ref = ref ((!itemInterface#getKeywords ())) in ();
                    keywords := (String.uppercase_ascii !keywords);
                    if ((java_string_index_of !keywords (Obj.repr (!keyword))) != (-1)) then begin
                        if (((!currentPage + 1) >= !startPage) && ((!currentPage + 1) <= !endPage)) then begin
                            let itemNode : Obj.t ref = ref ((Obj.repr ((new BasicItemView.basicItemView (!itemInterface, (new BasicArrayListD.basicArrayListD ())))#toXmlNode ((!viewDocumentInterface#getDoc ()))))) in ();
                            ignore ((Obj.magic !itemNode)#appendChild ((ModDomHelper.createNameValueNodes ((!viewDocumentInterface#getDoc ()), (BasketData.get_iTEMTOTALINBASKET ()), commonPhoneStrings#oNE))));
                            ignore ((Obj.magic !inventoryNode)#appendChild (((Obj.magic !itemNode)#cloneNode (true))))
                        end;
                        currentPage := (((((!numberOfResults + 1)) / !pageLength)) - 1);
                        numberOfResultsOnCurrentPage := !numberOfResultsOnCurrentPage + 1;
                        if (!lastPage < !currentPage) then begin
                            if ((!currentPage >= !startPage) && (!currentPage <= !endPage)) then begin
                                ignore ((Obj.magic !inventoryNode)#appendChild ((ModDomHelper.createNameValueNodes ((!viewDocumentInterface#getDoc ()), (SearchData.get_tOTAL_NUMBER_ITEMS_ON_THIS_PAGE ()), (java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr (!numberOfResultsOnCurrentPage))))))))));
                                (Obj.magic !documents).(!currentPage) <- (!viewDocumentInterface#getDoc ());
                                (Obj.magic !inventoryNodes).(!currentPage) <- (Obj.magic !inventoryNode);
                                savedPagesInRange := !savedPagesInRange + 1;
                                viewDocumentInterface := (TransformStoreDocumentFactory.getInstance ((Obj.magic searchRequest)));
                                inventoryNode := Obj.repr (((!viewDocumentInterface#getDoc ())#createElement ((InventoryData.get_iNVENTORY ()))));
                                ignore ((!viewDocumentInterface#getBaseNode ())#appendChild ((Obj.magic !inventoryNode)));
                                ignore ((Obj.magic !inventoryNode)#appendChild ((ModDomHelper.createNameValueNodes ((!viewDocumentInterface#getDoc ()), (SearchData.get_pAGE ()), (java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr ((!currentPage + 1)))))))))));
                                if (((Obj.magic searchRequest)#getFileBaseName ()) != (Obj.magic 0)) then begin
                                    ignore ((Obj.magic !inventoryNode)#appendChild (((Obj.magic searchRequest)#getFileBaseNameNode ((!viewDocumentInterface#getDoc ())))))
                                end
                            end;
                            lastPage := !currentPage;
                            numberOfResultsOnCurrentPage := 0
                        end;
                        numberOfResults := !numberOfResults + 1;
                        if (!lastPage >= (!mAXPAGES - 1)) then begin
                            raise Java_break
                        end
                    end
                done;
                if ((!numberOfResultsOnCurrentPage > 0) && ((((!currentPage + 1) >= !startPage) && ((!currentPage + 1) <= !endPage)))) then begin
                    ignore ((Obj.magic !inventoryNode)#appendChild ((ModDomHelper.createNameValueNodes ((!viewDocumentInterface#getDoc ()), (SearchData.get_tOTAL_NUMBER_ITEMS_ON_THIS_PAGE ()), (java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr ((!numberOfResultsOnCurrentPage - 1)))))))))));
                    (Obj.magic !documents).((!lastPage + 1)) <- (!viewDocumentInterface#getDoc ());
                    (Obj.magic !inventoryNodes).((!lastPage + 1)) <- (Obj.magic !inventoryNode);
                    savedPagesInRange := !savedPagesInRange + 1
                end;
                if (!numberOfResultsOnCurrentPage > 0) then begin
                    lastPage := !lastPage + 1
                end;
                if (!endPage > (!mAXPAGES - 1)) then begin
                    endPage := (!mAXPAGES - 1)
                end;
                for index = !startPage to !endPage do
                    if (index <= !lastPage) then begin
                        let tempDocument : Obj.t ref = ref ((Obj.repr (Obj.magic !documents).(index))) in ();
                        ignore ((Obj.magic !inventoryNodes).(index)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic !tempDocument), (SearchData.get_tOTAL_NUMBER_PAGES ()), (java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr ((!lastPage + 1)))))))))));
                        ignore ((Obj.magic !inventoryNodes).(index)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic !tempDocument), (SearchData.get_tOTAL_NUMBER_ITEMS ()), (java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr (!numberOfResults))))))))));
                        for pageIndex = 0 to !lastPage do
                            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                            ignore (!stringBuffer#append (((Obj.magic searchRequest)#getFileBaseName ())));
                            if ((!stringBuffer#length ()) > 0) then begin
                                if (pageIndex <> 0) then begin
                                    ignore (!stringBuffer#append ((string_of_int (pageIndex))))
                                end;
                                ignore ((Obj.magic !inventoryNodes).(index)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic !tempDocument), (SearchData.get_pAGE_INFO ()), (string_of_int (pageIndex)), (java_string_of (Obj.repr !stringBuffer))))))
                            end else begin
                                ignore ((Obj.magic !inventoryNodes).(index)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic !tempDocument), (SearchData.get_pAGE_INFO ()), (string_of_int (pageIndex)), (SearchData.get_sEARCH ())))))
                            end
                        done;
                        let success : string ref = ref ((XmlDocumentHelper.toString ((Obj.magic !tempDocument)))) in ();
                        !productListingPages.(index) <- ((new StoreTransformer.storeTransformer ((Obj.magic abeClientInformation), (Obj.magic (new TransformInfoHttpSearch.transformInfoHttpSearch ((Obj.magic searchRequest))))))#translate (!success))
                    end
                done;
                if (!savedPagesInRange = 0) then begin
                    let result : string ref = ref ((self#getNoResults (!viewDocumentInterface, (Obj.magic !inventoryNode)))) in ();
                    !productListingPages.(0) <- ((new StoreTransformer.storeTransformer ((Obj.magic abeClientInformation), (new TransformInfoHttpSearch.transformInfoHttpSearch ((Obj.magic searchRequest)))))#translate (!result))
                end;
                raise (Java_return (Obj.repr (!productListingPages)))
            end else begin
                raise (Java_return (Obj.repr ((Obj.magic 0))))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pRODUCTSEARCHLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "search", e))
            end;
            (Obj.magic 0)
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        commonPhoneStrings <- ((CommonPhoneStrings.getInstance ()) :> CommonPhoneStrings.commonPhoneStrings);
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InventorySearchUtil" (fun arguments -> Obj.repr (new inventorySearchUtil (Obj.obj arguments)))

let instance = (new inventorySearchUtil ())
let get_instance () = instance
let () = java_register_static "InventorySearchUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "InventorySearchUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


