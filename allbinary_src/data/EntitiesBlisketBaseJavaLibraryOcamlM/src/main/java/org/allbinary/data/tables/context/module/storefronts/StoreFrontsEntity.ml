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
(* package org.allbinary.data.tables.context.module.storefronts *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFront *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)

class storeFrontsEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ())))) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    
    

    method insert : 'any1. 'any1 -> unit = fun (values) ->
        let values = Obj.repr values in
        begin
        (try
            ignore (super#insert ((Obj.magic values)));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, iNSERT))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, iNSERT, e))
            end
        end)
        end [@@warning "-7-20"]
    

    method delete ((value : string)) : unit =
        begin
        (try
            ignore (super#deleteWhere ((StoreFrontData.getInstance ())#nAME, value));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, (self#commonStrings)#delete))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, (self#commonStrings)#delete, e))
            end
        end)
        end [@@warning "-7"]
    

    method getStoreFrontInterface ((name : string)) : StoreFront.storeFront =
        try
        begin
        let keysAndValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!keysAndValues#put ((StoreFrontData.getInstance ())#nAME, name));
        let storeHashMap : java_hash_map ref = ref (((super#getRow (!keysAndValues)) :> java_hash_map)) in ();
        if (!storeHashMap != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((new StoreFront.storeFront (!storeHashMap)))))
        end else begin
            raise (Java_return (Obj.repr ((new StoreFront.storeFront ()))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getStoreFrontNames () : BasicArrayList.basicArrayList =
        begin
        let storeFrontNames : BasicArrayList.basicArrayList ref = ref (((super#getColumn ((StoreFrontData.getInstance ())#nAME)) :> BasicArrayList.basicArrayList)) in ();
        (!storeFrontNames :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method update ((updatedValues : java_hash_map)) : unit =
        begin
        ignore (super#updateWhere ((StoreFrontData.getInstance ())#nAME, (Obj.magic (updatedValues#get ((StoreFrontData.getInstance ())#nAME))), updatedValues))
        end [@@warning "-7"]
    

    method createTableStatement () : string =
        begin
        let storeFrontData : StoreFrontData.storeFrontData ref = ref (((StoreFrontData.getInstance ()) :> StoreFrontData.storeFrontData)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((self#sqlStrings)#cREATE_TABLE));
        ignore (!stringBuffer#append (tableName));
        ignore (!stringBuffer#append ((self#sqlStrings)#sTART));
        ignore (!stringBuffer#append (!storeFrontData#nAME));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#sIXTY_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#hOMEHOSTNAME));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#hOMEHOSTNAMEPATH));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#hOSTNAME));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#hOSTNAMEPATH));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#tESTHOMEHOSTNAME));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#tESTHOMEHOSTNAMEPATH));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#tESTHOSTNAME));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#tESTHOSTNAMEPATH));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#iMAGEPATH));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#sTATICPATH));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#cATEGORYPATH));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#iNVENTORYCONTROL));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#cONFIGURATION));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#bLOB_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#sUBSTORES));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#tAGLOCATION));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#pACKAGELOCATION));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#fTP));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#fTPPATH));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#fTPUSERNAME));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#fTPPASSWORD));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#tESTFTP));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#tESTFTPPATH));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#tESTFTPUSERNAME));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!storeFrontData#tESTFTPPASSWORD));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((EntryData.getInstance ())#tIMECREATED));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append (((EntryData.getInstance ())#getInstance ())#lASTMODIFIED));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((self#sqlStrings)#pRIMARY_KEY));
        ignore (!stringBuffer#append (!storeFrontData#nAME));
        ignore (!stringBuffer#append ((self#sqlStrings)#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        (super#createTable ((self#createTableStatement ())))
        end [@@warning "-7"]
    

    method dropTable () : string =
        begin
        (super#dropTable ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tableName <- "storefronts";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreFrontsEntity" (fun arguments -> Obj.repr (new storeFrontsEntity (Obj.obj arguments)))


