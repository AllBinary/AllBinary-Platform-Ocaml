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
(* import java.util.Set *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.data.tree.dom.ToDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class searchParams (request) =
  object (self)
    val mutable columnsAndSearchValues : java_hash_map = (Obj.magic 0)
    method columnsAndSearchValues = columnsAndSearchValues
    method set_columnsAndSearchValues value' = columnsAndSearchValues <- value'
    val mutable order : string = ""
    method order = order
    method set_order value' = order <- value'
    val mutable sortBy : string = ""
    method sortBy = sortBy
    method set_sortBy value' = sortBy <- value'
    val mutable listLength : string = ""
    method listLength = listLength
    method set_listLength value' = listLength <- value'
    val mutable startPage : string = ""
    method startPage = startPage
    method set_startPage value' = startPage <- value'
    val mutable endPage : string = ""
    method endPage = endPage
    method set_endPage value' = endPage <- value'
    
    

    method add ((column : string), (value : string)) : unit =
        begin
        ignore (columnsAndSearchValues#put (column, value))
        end
    

    method setOrder ((value : string)) : unit =
        begin
        order <- value
        end
    

    method setSortBy ((value : string)) : unit =
        begin
        sortBy <- value
        end
    

    method setLength ((value : string)) : unit =
        begin
        listLength <- value
        end
    

    method setStartPage ((value : string)) : unit =
        begin
        startPage <- value
        end
    

    method setEndPage ((value : string)) : unit =
        begin
        endPage <- value
        end
    

    method get () : java_hash_map =
        begin
        (columnsAndSearchValues :> java_hash_map)
        end
    

    method getOrder () : string =
        begin
        order
        end
    

    method getSortBy () : string =
        begin
        sortBy
        end
    

    method getLength () : string =
        begin
        listLength
        end
    

    method getLengthInt () : int =
        try
        begin
        if (listLength <> (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((Obj.obj (java_new "Integer" (Obj.repr (listLength)))))))
        end else begin
            (Obj.obj (java_new "Integer" (Obj.repr (0))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getStartPage () : string =
        begin
        startPage
        end
    

    method getEndPage () : string =
        begin
        endPage
        end
    

    method getStartPageInt () : int =
        try
        begin
        if (startPage <> (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((Obj.obj (java_new "Integer" (Obj.repr (startPage)))))))
        end else begin
            (Obj.obj (java_new "Integer" (Obj.repr (0))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getEndPageInt () : int =
        try
        begin
        if (endPage <> (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((Obj.obj (java_new "Integer" (Obj.repr (endPage)))))))
        end else begin
            (Obj.obj (java_new "Integer" (Obj.repr (0))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getParamsNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let paramsNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (SearchData.get_pARAMS ()), (SearchData.get_pARAMS ()))))) in ();
        ignore ((Obj.magic !paramsNode)#appendChild ((self#getFieldsNode ((Obj.magic document)))));
        ignore ((Obj.magic !paramsNode)#appendChild ((self#getOrderNode ((Obj.magic document)))));
        ignore ((Obj.magic !paramsNode)#appendChild ((self#getSortByNode ((Obj.magic document)))));
        ignore ((Obj.magic !paramsNode)#appendChild ((self#getLengthNode ((Obj.magic document)))));
        (Obj.magic ((Obj.magic !paramsNode)))
        end [@@warning "-20"]
    

    method getFieldsNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let fieldsNode : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (SearchData.get_fIELDS ()), (java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr ((columnsAndSearchValues#size ()))))))))))) in ();
        let set : Obj.t ref = ref ((Obj.repr (columnsAndSearchValues#keySet ()))) in ();
        let searchValueArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
        let size : int ref = ref ((Array.length !searchValueArray)) in ();
        for index = 0 to !size - 1 do
            let key : string ref = ref ((Obj.magic !searchValueArray.(index))) in ();
            let searchValue : string ref = ref ((Obj.magic (columnsAndSearchValues#get (!key)))) in ();
            ignore ((Obj.magic !fieldsNode)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (SearchData.get_fIELD ()), !key, (ToDomHelper.convertNull (!searchValue))))))
        done;
        (Obj.magic ((Obj.magic !fieldsNode)))
        end [@@warning "-20"]
    

    method getOrderNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (Obj.magic ((ModDomHelper.createNameValueNodes ((Obj.magic document), (SearchData.get_oRDER ()), (ToDomHelper.convertNull ((self#getOrder ())))))))
        end [@@warning "-20"]
    

    method getSortByNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (Obj.magic ((ModDomHelper.createNameValueNodes ((Obj.magic document), (SearchData.get_sORTBY ()), (ToDomHelper.convertNull ((self#getSortBy ())))))))
        end [@@warning "-20"]
    

    method getLengthNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (Obj.magic ((ModDomHelper.createNameValueNodes ((Obj.magic document), (SearchData.get_lENGTH ()), (ToDomHelper.convertNull ((self#getLength ())))))))
        end [@@warning "-20"]

    initializer
      begin
        ();
        order <- "";
        sortBy <- "";
        listLength <- "";
        startPage <- "";
        endPage <- "";
        ();
        columnsAndSearchValues <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
        (self#setLength ((request#getParameter ((SearchData.get_lENGTH ())))));
        (self#setOrder ((request#getParameter ((SearchData.get_oRDER ())))));
        let page : string ref = ref ((request#getParameter ((SearchData.get_pAGE ())))) in ();
        (self#setStartPage (!page));
        (self#setEndPage (!page));
        (self#setSortBy ((request#getParameter ((SearchData.get_sORTBY ())))));
        let index : int ref = ref (0) in ();
        let columnName : string ref = ref ((request#getParameter ((java_string_of (Obj.repr ((SearchData.get_cOLUMNNAME ()))) ^ "[0]")))) in ();
        let columnValue : string ref = ref ((request#getParameter ((java_string_of (Obj.repr ((SearchData.get_cOLUMNVALUE ()))) ^ "[0]")))) in ();
        while (!columnName <> (Obj.magic 0)) do
            (self#add (!columnName, !columnValue));
            index := !index + 1;
            columnName := (request#getParameter ((((java_string_of (Obj.repr ((SearchData.get_cOLUMNNAME ()))) ^ "[") ^ java_string_of (Obj.repr (!index))) ^ "]")));
            columnValue := (request#getParameter ((((java_string_of (Obj.repr ((SearchData.get_cOLUMNVALUE ()))) ^ "[") ^ java_string_of (Obj.repr (!index))) ^ "]")))
        done
      end
  end
let () = java_register_constructor "SearchParams" (fun arguments -> Obj.repr (new searchParams (Obj.obj arguments)))


