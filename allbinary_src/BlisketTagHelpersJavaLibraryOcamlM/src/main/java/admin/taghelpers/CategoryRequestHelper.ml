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
(* import java.util.Map *)
(* import java.util.Set *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.category.CategoryComponent *)
(* import org.allbinary.business.category.CategoryData *)
(* import org.allbinary.business.category.CategoryInterface *)
(* import org.allbinary.business.category.store.StoreCategoryFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.data.tree.category.CategoryLoaderFactory *)
(* import org.allbinary.data.tree.category.CategoryLoaderInterface *)
(* import org.allbinary.data.tree.dom.DomNodeHelper *)
(* import org.allbinary.data.tree.dom.DomSearchHelper *)
(* import org.allbinary.data.tree.dom.document.DomDocumentHelper *)
(* import org.allbinary.data.tree.dom.document.XmlDocumentHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoBasic *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

let categoryRequest : string = (java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ("<"))#append ((CategoryData.getInstance ())#rEQUEST))#append (">"))))
let get_categoryRequest () = categoryRequest
let () = java_register_static "CategoryRequestHelper.get_categoryRequest" (fun _ -> Obj.repr (get_categoryRequest ()))
class categoryRequestHelper ((hashMap_arg : java_hash_map), pageContext_arg) =
  object (self)
    inherit ModifyTable.modifyTable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable pageContext : Obj.t = Obj.repr 0
    method pageContext : 'r. 'r = Obj.magic pageContext
    method set_pageContext : 'v. 'v -> unit = fun value' -> pageContext <- Obj.repr value'
    val mutable hashMap : java_hash_map = (Obj.magic 0)
    method hashMap = hashMap
    method set_hashMap value' = hashMap <- value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable categoryLoaderInterface : CategoryLoaderInterface.categoryLoaderInterface = (Obj.magic 0)
    method categoryLoaderInterface = categoryLoaderInterface
    method set_categoryLoaderInterface value' = categoryLoaderInterface <- value'
    val mutable categoryInterface : CategoryInterface.categoryInterface = (Obj.magic 0)
    method categoryInterface = categoryInterface
    method set_categoryInterface value' = categoryInterface <- value'
    val mutable childCategoryInterface : CategoryInterface.categoryInterface = (Obj.magic 0)
    method childCategoryInterface = childCategoryInterface
    method set_childCategoryInterface value' = childCategoryInterface <- value'
    val mutable transformInfoInterface : TransformInfoInterface.transformInfoInterface = (Obj.magic 0)
    method transformInfoInterface = transformInfoInterface
    method set_transformInfoInterface value' = transformInfoInterface <- value'
    
    

    method getXmlData () : unit =
        begin
        (try
            let map : Obj.t ref = ref ((Obj.repr ((Obj.magic request)#getParameterMap ()))) in ();
            let categoryData : CategoryData.categoryData ref = ref (((CategoryData.getInstance ()) :> CategoryData.categoryData)) in ();
            let keys : Obj.t ref = ref ((Obj.repr ((Obj.magic !map)#keySet ()))) in ();
            let keyArray : Obj.t array ref = ref (((Obj.magic !keys)#toArray ())) in ();
            let size : int ref = ref ((Array.length !keyArray)) in ();
            if (!size > 0) then begin
                let xmlRequest : string ref = ref ((Obj.magic !keyArray.(0))) in ();
                let index : int ref = ref (1) in ();
                while ((!index < !size) && (not (String.starts_with ~prefix:(categoryRequest) !xmlRequest))) do
                    xmlRequest := (Obj.magic !keyArray.(!index));
                    if (String.starts_with ~prefix:(categoryRequest) !xmlRequest) then begin
                        raise Java_break
                    end
                done;
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                    ignore ((Obj.magic logUtil)#putF (!xmlRequest, self, "getXmlData()"))
                end;
                let document : Obj.t ref = ref ((Obj.repr (DomDocumentHelper.create (!xmlRequest)))) in ();
                let requestNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode (!categoryData#rEQUEST, ((Obj.magic !document)#getChildNodes ()))))) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                    ignore ((Obj.magic logUtil)#putF ((XmlDocumentHelper.toString ((Obj.magic !document))), self, "getXmlData()"))
                end;
                (self#setCategoryLoader ((Obj.magic !requestNode)));
                let parentCategoryNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode (!categoryData#pARENT, ((Obj.magic !requestNode)#getChildNodes ()))))) in ();
                let categoryNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode (!categoryData#nAME, ((Obj.magic !parentCategoryNode)#getChildNodes ()))))) in ();
                categoryInterface <- (Obj.magic ((new StoreCategoryFactory.storeCategoryFactory (transformInfoInterface))#getRootInstanceFromNode ((Obj.magic !categoryNode))));
                categoryInterface <- (categoryLoaderInterface#get (categoryInterface));
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                    ignore (categoryInterface#log ());
                    ignore ((Obj.magic logUtil)#putF ("Loaded Parent Category", self, "getXmlData()"))
                end;
                let childCategoryNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNodeNoThrow (!categoryData#nAME, ((Obj.magic !requestNode)#getChildNodes ()))))) in ();
                if ((Obj.magic !childCategoryNode) != (Obj.magic 0)) then begin
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                        ignore ((Obj.magic logUtil)#putF ("Loading Child Category", self, "getXmlData()"))
                    end;
                    childCategoryInterface <- (Obj.magic ((new StoreCategoryFactory.storeCategoryFactory (transformInfoInterface))#getInstance ((Obj.magic !childCategoryNode))));
                    if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPER)) then begin
                        ignore (childCategoryInterface#log ());
                        ignore ((Obj.magic logUtil)#putF ("Loaded Child Category", self, "getXmlData()"))
                    end
                end else begin
                    childCategoryInterface <- categoryInterface
                end
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "getXmlData()", e))
            end
        end)
        end [@@warning "-7"]
    

    method setCategoryLoader : 'any1. 'any1 -> unit = fun (requestNode) ->
        let requestNode = Obj.repr requestNode in
        begin
        let storeNameNode : Obj.t ref = ref ((Obj.repr (DomSearchHelper.getNode ((StoreFrontData.getInstance ())#nAME, ((Obj.magic requestNode)#getChildNodes ()))))) in ();
        if ((Obj.magic !storeNameNode) != (Obj.magic 0)) then begin
            let storeName : string ref = ref ((DomNodeHelper.getTextNodeValue ((Obj.magic !storeNameNode)))) in ();
            if (!storeName <> (Obj.magic 0)) then begin
                let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (!storeName)) :> StoreFrontInterface.storeFrontInterface)) in ();
                transformInfoInterface <- (Obj.magic (new TransformInfoBasic.transformInfoBasic (!storeFrontInterface, hashMap, (Obj.magic pageContext))));
                if (transformInfoInterface == (Obj.magic 0)) then begin
                    raise (Failure ("TransformInfo null"))
                end;
                let storeCategoryFactory : StoreCategoryFactory.storeCategoryFactory ref = ref (((new StoreCategoryFactory.storeCategoryFactory (transformInfoInterface)) :> StoreCategoryFactory.storeCategoryFactory)) in ();
                categoryLoaderInterface <- (CategoryLoaderFactory.getInstance (!storeCategoryFactory))
            end else begin
                raise (Failure (("Store Name Error: " ^ !storeName)))
            end
        end
        end [@@warning "-7-20"]
    

    method insert () : string =
        begin
        (try
            let success : string ref = ref ("Successfully Added the following to the Category table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF ("inserting", self, "insert()"))
            end;
            ignore (categoryLoaderInterface#insert (categoryInterface, childCategoryInterface));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "insert()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to add item to Category") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "insert()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method delete () : string =
        begin
        (try
            let success : string ref = ref (((("Successfully Removed " ^ java_string_of (Obj.repr ((CategoryData.getInstance ())#nAME))) ^ "=") ^ java_string_of (Obj.repr ((childCategoryInterface#getPath ()))))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF ("Deleting", self, "delete()"))
            end;
            ignore (categoryLoaderInterface#delete (categoryInterface, childCategoryInterface));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "delete()"))
            end;
            !success
        with e -> begin
            (try
                let error : string ref = ref (("Failed to remove category: " ^ java_string_of (Obj.repr ((childCategoryInterface#getPath ()))))) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                    ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "delete()", e))
                end;
                !error
            with e2 -> begin
                let error : string ref = ref ("Failed to remove category and show the path of the failed category") in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                    ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "delete()", e2))
                end;
                !error
            end)
        end)
        end [@@warning "-7"]
    

    method viewCategory () : string =
        begin
        (try
            let document : Obj.t ref = ref ((Obj.repr ((new CategoryComponent.categoryComponent (childCategoryInterface))#toXmlDoc ()))) in ();
            let xmlString : string ref = ref ((XmlDocumentHelper.toString ((Obj.magic !document)))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!xmlString, self, "viewCategory()"))
            end;
            !xmlString
        with e -> begin
            let error : string ref = ref ("Failed to get Category") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "viewCategory()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method viewCategories () : string =
        begin
        (try
            let success : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "viewCategories()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to view Categories table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "viewCategories()", e))
            end;
            !error
        end)
        end [@@warning "-7"]
    

    method update () : string =
        begin
        (try
            let success : string ref = ref ("New Item Successfully added") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "update()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to add Item") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "update()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        pageContext <- (Obj.repr (Obj.magic 0));
        hashMap <- ((Obj.magic 0) :> java_hash_map);
        request <- (Obj.repr (Obj.magic 0));
        categoryLoaderInterface <- ((Obj.magic 0) :> CategoryLoaderInterface.categoryLoaderInterface);
        categoryInterface <- ((Obj.magic 0) :> CategoryInterface.categoryInterface);
        childCategoryInterface <- ((Obj.magic 0) :> CategoryInterface.categoryInterface);
        transformInfoInterface <- ((Obj.magic 0) :> TransformInfoInterface.transformInfoInterface);
        ();
        (try
            request <- Obj.repr ((Obj.magic (pageContext_arg#getRequest ())));
            pageContext <- Obj.repr (pageContext_arg);
            hashMap <- hashMap_arg;
            (self#getXmlData ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "CategoryRequestHelper()", e))
            end
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "CategoryRequestHelper" (fun arguments -> Obj.repr (new categoryRequestHelper (Obj.obj arguments)))


