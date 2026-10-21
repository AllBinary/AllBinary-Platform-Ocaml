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
(* package org.allbinary.logic.communication.sql *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.installer.Portion *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class abSqlTableUtil () =
  object
    val mutable tABLE_LABEL : string = ""
    method tABLE_LABEL = tABLE_LABEL
    method set_tABLE_LABEL value' = tABLE_LABEL <- value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable sqlStrings : SqlStrings.sqlStrings = (Obj.magic 0)
    method sqlStrings = sqlStrings
    method set_sqlStrings value' = sqlStrings <- value'
    

    method backupTable : 'any1. 'any1 -> string = fun (abSqlTable) ->
        let abSqlTable = Obj.repr abSqlTable in
        begin
        let tableName : string ref = ref (((Obj.magic abSqlTable)#getTableName ())) in ();
        ((tABLE_LABEL ^ !tableName) ^ " Backup Failed")
        end [@@warning "-20"]
    

    method restoreTable : 'any1 'any2. 'any1 * 'any2 -> string = fun (abSqlTable, _portion) ->
        let abSqlTable = Obj.repr abSqlTable in
        begin
        let tableName : string ref = ref (((Obj.magic abSqlTable)#getTableName ())) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (tABLE_LABEL));
        ignore (!stringBuffer#append (!tableName));
        ignore (!stringBuffer#append (" Restoration Failed"));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-20"]

    initializer
      begin
        tABLE_LABEL <- "Table: ";
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        sqlStrings <- ((SqlStrings.getInstance ()) :> SqlStrings.sqlStrings);
        ()
      end
  end
let () = java_register_constructor "AbSqlTableUtil" (fun arguments -> Obj.repr (new abSqlTableUtil (Obj.obj arguments)))

let instance = (new abSqlTableUtil ())
let get_instance () = instance
let () = java_register_static "AbSqlTableUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AbSqlTableUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


