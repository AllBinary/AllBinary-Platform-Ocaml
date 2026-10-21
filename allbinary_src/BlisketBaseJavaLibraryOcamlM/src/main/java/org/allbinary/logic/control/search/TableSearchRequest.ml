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
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.globals.URLGLOBALS *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class tableSearchRequest ((keywords_arg : string), (searchParams_arg : SearchParams.searchParams), (xslFile_arg : string), (contentType_arg : string)) =
  object (self)
    val mutable xslFile : string = ""
    method xslFile = xslFile
    method set_xslFile value' = xslFile <- value'
    val mutable pageName : string = ""
    method pageName = pageName
    method set_pageName value' = pageName <- value'
    val mutable contentType : string = ""
    method contentType = contentType
    method set_contentType value' = contentType <- value'
    val mutable keywords : string = ""
    method keywords = keywords
    method set_keywords value' = keywords <- value'
    val mutable searchParams : SearchParams.searchParams = (Obj.magic 0)
    method searchParams = searchParams
    method set_searchParams value' = searchParams <- value'
    
    

    method setKeywords ((value : string)) : unit =
        begin
        keywords <- value
        end
    

    method setParams : 'any1. 'any1 -> unit = fun (searchParams_arg) ->
        let searchParams_arg = Obj.repr searchParams_arg in
        begin
        searchParams <- (Obj.magic searchParams_arg)
        end [@@warning "-20"]
    

    method setXslFile ((value : string)) : unit =
        begin
        xslFile <- value
        end
    

    method setFileBaseName ((value : string)) : unit =
        begin
        pageName <- value
        end
    

    method setContentType ((value : string)) : unit =
        begin
        contentType <- value
        end
    

    method getKeywords () : string =
        begin
        keywords
        end
    

    method getParams () : SearchParams.searchParams =
        begin
        (searchParams :> SearchParams.searchParams)
        end
    

    method getXslFile () : string =
        begin
        let path : string ref = ref ((java_string_of (Obj.repr (((URLGLOBALS.getMainPath ()) + (FREEBLISKET_PATH_GLOBALS.getInstance ())#xSLPATH))) ^ xslFile)) in ();
        !path
        end
    

    method getFileBaseName () : string =
        begin
        pageName
        end
    

    method getContentType () : string =
        begin
        contentType
        end
    

    method getFileBaseNameNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (Obj.magic ((ModDomHelper.createNameValueNodes ((Obj.magic document), (SearchData.get_fILENAME ()), (self#getFileBaseName ())))))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        keywords <- keywords_arg;
        searchParams <- searchParams_arg;
        xslFile <- xslFile_arg;
        pageName <- pageName;
        contentType <- contentType_arg
      end
  end
let () = java_register_constructor "TableSearchRequest" (fun arguments -> Obj.repr (new tableSearchRequest (Obj.obj arguments)))


