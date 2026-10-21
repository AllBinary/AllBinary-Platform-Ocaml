(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.data.tables.generator *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)

class idGeneratorEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ())))) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    val mutable tableData : string = ""
    method tableData = tableData
    method set_tableData value' = tableData <- value'
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable vALUE : string = ""
    method vALUE = vALUE
    method set_vALUE value' = vALUE <- value'
    
    

    method get ((name : string)) : int =
        begin
        let keysAndValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!keysAndValues#put (nAME, name));
        let hashMap : java_hash_map ref = ref (((super#getRow (!keysAndValues)) :> java_hash_map)) in ();
        if ((((Obj.magic (!hashMap#get (nAME))))#compareTo (name)) != 0) then begin
            raise (Failure ("results do not match"))
        end;
        let value : string ref = ref ((Obj.magic (!hashMap#get (vALUE)))) in ();
        (int_of_string (!value))
        end [@@warning "-7"]
    

    method insert : 'any1. 'any1 -> unit = fun (values) ->
        let values = Obj.repr values in
        begin
        (try
            ignore (super#insert ((Obj.magic values)));
            ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, iNSERT))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, iNSERT, e))
        end)
        end [@@warning "-7-20"]
    

    method delete ((value : string)) : unit =
        begin
        (try
            ignore (super#deleteWhere (nAME, value));
            ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, commonStrings#delete))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, commonStrings#delete, e))
        end)
        end [@@warning "-7"]
    

    method update ((name : string), (value : int)) : unit =
        begin
        let map : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!map#put (nAME, name));
        ignore (!map#put (vALUE, value));
        (self#update (!map))
        end [@@warning "-7"]
    

    (* Java overload update(HashMap) is not converted: OCaml has one method per name *)
    

    method createTable () : string =
        begin
        let returnStr : string ref = ref ((super#createTable (tableData))) in ();
        !returnStr
        end [@@warning "-7"]
    

    method dropTable () : string =
        begin
        (super#dropTable ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tableName <- "idgenerator";
        ();
        nAME <- "NAME";
        vALUE <- "VALUE";
        ();
        (* super(...) is the inherit clause *) ();
        tableData <- (java_string_of (Obj.repr (((((((((((new StringMaker.stringMaker ())#append (sqlStrings#cREATE_TABLE))#append (tableName))#append (sqlStrings#sTART))#append (nAME))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append (vALUE))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append (sqlStrings#pRIMARY_KEY))#append (nAME))#append (sqlStrings#eND))));
        ignore (super#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "IdGeneratorEntity" (fun arguments -> Obj.repr (new idGeneratorEntity (Obj.obj arguments)))


