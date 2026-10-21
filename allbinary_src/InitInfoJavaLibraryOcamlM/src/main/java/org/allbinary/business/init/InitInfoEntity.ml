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
(* package org.allbinary.business.init *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypes *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.string.StringMaker *)

class initInfoEntity () =
  object (self)
    inherit InitSql.initSql ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ())))) as super
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable nOTHING : string = ""
    method nOTHING = nOTHING
    method set_nOTHING value' = nOTHING <- value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    val mutable tableData : string = ""
    method tableData = tableData
    method set_tableData value' = tableData <- value'
    val mutable nOT_IN_DB : string = ""
    method nOT_IN_DB = nOT_IN_DB
    method set_nOT_IN_DB value' = nOT_IN_DB <- value'
    val mutable mETHOD_GET : string = ""
    method mETHOD_GET = mETHOD_GET
    method set_mETHOD_GET value' = mETHOD_GET <- value'
    val mutable mETHOD_IS : string = ""
    method mETHOD_IS = mETHOD_IS
    method set_mETHOD_IS value' = mETHOD_IS <- value'
    val mutable mETHOD_ADD : string = ""
    method mETHOD_ADD = mETHOD_ADD
    method set_mETHOD_ADD value' = mETHOD_ADD <- value'
    val mutable cREATED_SUCCESS : string = ""
    method cREATED_SUCCESS = cREATED_SUCCESS
    method set_cREATED_SUCCESS value' = cREATED_SUCCESS <- value'
    val mutable fAILED_TO_CREATE : string = ""
    method fAILED_TO_CREATE = fAILED_TO_CREATE
    method set_fAILED_TO_CREATE value' = fAILED_TO_CREATE <- value'
    
    

    method get () : bool =
        try
        begin
        (try
            let keyAndValue : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!keyAndValue#put (nOTHING, nOTHING));
            let hashMap : java_hash_map ref = ref (((self#getRow (!keyAndValue)) :> java_hash_map)) in ();
            if (!hashMap != (Obj.magic 0)) then begin
                ignore ((InitInfo.getInstance ())#set (!hashMap));
                raise (Java_return (Obj.repr (true)))
            end else begin
                if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADER)) then begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (nOT_IN_DB, nAME, mETHOD_GET))))
                end;
                raise (Java_return (Obj.repr (false)))
            end
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADERERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, nAME, mETHOD_GET, e))))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method is () : bool =
        try
        begin
        (try
            let keyAndValue : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!keyAndValue#put (nOTHING, nOTHING));
            let hashMap : java_hash_map ref = ref (((self#getRow (!keyAndValue)) :> java_hash_map)) in ();
            if (!hashMap != (Obj.magic 0)) then begin
                raise (Java_return (Obj.repr (true)))
            end else begin
                if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADER)) then begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (nOT_IN_DB, nAME, mETHOD_IS))))
                end;
                raise (Java_return (Obj.repr (false)))
            end
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADERERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, nAME, mETHOD_IS, e))))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method update () : unit =
        begin
        ignore (self#updateWhere (nOTHING, nOTHING, ((InitInfo.getInstance ())#toHashMap ())))
        end [@@warning "-7"]
    

    method add () : unit =
        begin
        (try
            let values : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!values#add (nOTHING));
            ignore (!values#add (((InitInfo.getInstance ())#getTesting ())));
            ignore (!values#add (((InitInfo.getInstance ())#getTestHtmlPath ())));
            ignore (!values#add (((InitInfo.getInstance ())#getMainPath ())));
            ignore (self#insert (!values))
        with e -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#pRELOADERERROR)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, nAME, mETHOD_ADD, e))))
            end
        end)
        end [@@warning "-7"]
    

    method createTable () : string =
        try
        begin
        if (super#createTable (tableData)) then begin
            raise (Java_return (Obj.repr ((tableName ^ cREATED_SUCCESS))))
        end else begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append (fAILED_TO_CREATE));
            ignore (!stringBuffer#append (tableData));
            ignore (!stringBuffer#append ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#eXTENSION_SEP));
            raise (Java_return (Obj.repr ((java_string_of (Obj.repr !stringBuffer)))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        nAME <- "InitInfoEntity";
        nOTHING <- "NOTHING";
        tableName <- "initdata";
        ();
        nOT_IN_DB <- "Not In DB";
        mETHOD_GET <- "get()";
        mETHOD_IS <- "is()";
        mETHOD_ADD <- "add()";
        cREATED_SUCCESS <- " Created Successfully";
        fAILED_TO_CREATE <- "Failed to create ";
        ();
        (* super(...) is the inherit clause *) ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#cREATE_TABLE));
        ignore (!stringBuffer#append (tableName));
        ignore (!stringBuffer#append (sqlStrings#sTART));
        ignore (!stringBuffer#append (nOTHING));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((InitInfo.getInstance ())#tESTING));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((InitInfo.getInstance ())#tESTHTMLPATH));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((InitInfo.getInstance ())#mAINPATH));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (sqlStrings#pRIMARY_KEY));
        ignore (!stringBuffer#append (nOTHING));
        ignore (!stringBuffer#append (sqlStrings#eND));
        tableData <- (java_string_of (Obj.repr !stringBuffer));
        ignore (self#setTable (tableName))
      end
  end
let () = java_register_constructor "InitInfoEntity" (fun arguments -> Obj.repr (new initInfoEntity (Obj.obj arguments)))


