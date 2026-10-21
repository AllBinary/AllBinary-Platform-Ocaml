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
(* package org.allbinary.logic.control.search *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.AbContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class searchRequest ((storeFront_arg : StoreFrontInterface.storeFrontInterface), (searchParams_arg : SearchParams.searchParams), (xslFile_arg : string), (contentType_arg : string), (propertiesHashMap : java_hash_map), pageContext) =
  object (self)
    inherit AbContext.abContext (propertiesHashMap, pageContext)
    val mutable xslFile : string = ""
    method xslFile = xslFile
    method set_xslFile value' = xslFile <- value'
    val mutable pageName : string = ""
    method pageName = pageName
    method set_pageName value' = pageName <- value'
    val mutable contentType : string = ""
    method contentType = contentType
    method set_contentType value' = contentType <- value'
    val mutable searchParams : SearchParams.searchParams = (Obj.magic 0)
    method searchParams = searchParams
    method set_searchParams value' = searchParams <- value'
    val mutable storeFront : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFront = storeFront
    method set_storeFront value' = storeFront <- value'
    
    

    method setStoreFront : 'any1. 'any1 -> unit = fun (storeFront_arg) ->
        let storeFront_arg = Obj.repr storeFront_arg in
        begin
        storeFront <- (Obj.magic storeFront_arg)
        end [@@warning "-7-20"]
    

    method setParams : 'any1. 'any1 -> unit = fun (searchParams_arg) ->
        let searchParams_arg = Obj.repr searchParams_arg in
        begin
        searchParams <- (Obj.magic searchParams_arg)
        end [@@warning "-7-20"]
    

    method setXslFile ((value : string)) : unit =
        begin
        xslFile <- value
        end [@@warning "-7"]
    

    method setFileBaseName ((value : string)) : unit =
        begin
        pageName <- value
        end [@@warning "-7"]
    

    method setContentType ((value : string)) : unit =
        begin
        contentType <- value
        end [@@warning "-7"]
    

    method getStoreFront () : StoreFrontInterface.storeFrontInterface =
        begin
        (storeFront :> StoreFrontInterface.storeFrontInterface)
        end [@@warning "-7"]
    

    method getParams () : SearchParams.searchParams =
        begin
        (searchParams :> SearchParams.searchParams)
        end [@@warning "-7"]
    

    method getXslFile () : string =
        begin
        xslFile
        end [@@warning "-7"]
    

    method getFileBaseName () : string =
        begin
        pageName
        end [@@warning "-7"]
    

    method getContentType () : string =
        begin
        contentType
        end [@@warning "-7"]
    

    method getFileBaseNameNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (Obj.magic ((ModDomHelper.createNameValueNodes ((Obj.magic document), (SearchData.get_fILENAME ()), (self#getFileBaseName ())))))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        storeFront <- storeFront_arg;
        searchParams <- searchParams_arg;
        xslFile <- xslFile_arg;
        pageName <- pageName;
        contentType <- contentType_arg
      end
  end
let () = java_register_constructor "SearchRequest" (fun arguments -> Obj.repr (new searchRequest (Obj.obj arguments)))


