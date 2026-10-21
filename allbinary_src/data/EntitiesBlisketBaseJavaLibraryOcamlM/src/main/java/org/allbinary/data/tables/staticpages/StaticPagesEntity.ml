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
(* package org.allbinary.data.tables.staticpages *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.init.db.StaticPagesDbInitInfo *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.control.search.SearchData *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)

class staticPagesEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((new StaticPagesDbInitInfo.staticPagesDbInitInfo ())) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value' = basicItemData <- value'
    val mutable tABLENAME : string = ""
    method tABLENAME = tABLENAME
    method set_tABLENAME value' = tABLENAME <- value'
    
    

    method insert : 'any1. 'any1 -> unit = fun (values) ->
        let values = Obj.repr values in
        begin
        (try
            ignore (super#insert ((Obj.magic values)));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, iNSERT))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, iNSERT, e))
            end
        end)
        end [@@warning "-7-20"]
    

    method getFile ((store : string), (keywords : string)) : string =
        begin
        let whereHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!whereHashMap#put ((StoreFrontData.getInstance ())#nAME, store));
        ignore (!whereHashMap#put (basicItemData#kEYWORDS, keywords));
        let file : string ref = ref ((super#getField (!whereHashMap, (SearchData.get_pAGE ())))) in ();
        !file
        end [@@warning "-7"]
    

    method delete ((keywords : string)) : unit =
        begin
        ignore (super#deleteWhere (basicItemData#kEYWORDS, keywords))
        end [@@warning "-7"]
    

    method dropTable () : string =
        begin
        let returnStr : string ref = ref ((super#dropTable ())) in ();
        !returnStr
        end [@@warning "-7"]
    

    method update ((updatedValues : java_hash_map)) : unit =
        begin
        ignore (super#updateWhere (basicItemData#kEYWORDS, (Obj.magic (updatedValues#get (basicItemData#kEYWORDS))), updatedValues))
        end [@@warning "-7"]
    

    method createTableStatement () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore ((((((((((((((!stringBuffer#append (sqlStrings#cREATE_TABLE))#append (tABLENAME))#append (sqlStrings#sTART))#append ((StoreFrontData.getInstance ())#nAME))#append (sqlTypeStrings#sIXTY_CHAR_COLUMN_NOT_NULL))#append (basicItemData#kEYWORDS))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((SearchData.get_pAGE ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append (sqlStrings#pRIMARY_KEY))#append ((StoreFrontData.getInstance ())#nAME))#append ((CommonSeps.getInstance ())#cOMMA_SEP))#append (basicItemData#kEYWORDS))#append (sqlStrings#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        (super#createTable ((self#createTableStatement ())))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        tABLENAME <- "staticpages";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tABLENAME))
      end
  end [@@warning "-20"]
let () = java_register_constructor "StaticPagesEntity" (fun arguments -> Obj.repr (new staticPagesEntity (Obj.obj arguments)))


