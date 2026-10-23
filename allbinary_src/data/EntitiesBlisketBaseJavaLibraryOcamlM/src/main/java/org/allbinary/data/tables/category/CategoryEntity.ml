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
(* package org.allbinary.data.tables.category *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.category.Category *)
(* import org.allbinary.business.category.CategoryData *)
(* import org.allbinary.business.category.CategoryFactoryInterface *)
(* import org.allbinary.business.init.db.InventoryDbInitInfo *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)

class categoryEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((new InventoryDbInitInfo.inventoryDbInitInfo ())) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    
    
    

    method insert : 'any1. 'any1 -> unit = fun (category) ->
        let category = Obj.repr category in
        begin
        (try
            let categoryVector : BasicArrayList.basicArrayList ref = ref ((((Obj.magic category)#toVector ()) :> BasicArrayList.basicArrayList)) in ();
            let values : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!values#add ((!categoryVector#get (0))));
            ignore (!values#add ((!categoryVector#get (1))));
            ignore (super#insert (!values));
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
            ignore (super#deleteWhere ((CategoryData.getInstance ())#nAME, value));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, (self#commonStrings)#delete))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, (self#commonStrings)#delete, e))
            end
        end)
        end [@@warning "-7"]
    

    method createTableStatement () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((self#sqlStrings)#cREATE_TABLE));
        ignore (!stringBuffer#append (tableName));
        ignore (!stringBuffer#append ((self#sqlStrings)#sTART));
        ignore (!stringBuffer#append ((CategoryData.getInstance ())#nAME));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((CategoryData.getInstance ())#lEVEL));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((self#sqlStrings)#pRIMARY_KEY));
        ignore (!stringBuffer#append ((CategoryData.getInstance ())#nAME));
        ignore (!stringBuffer#append ((self#sqlStrings)#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        (super#createTable ((self#createTableStatement ())))
        end [@@warning "-7"]
    

    method update ((updatedValues : java_hash_map)) : unit =
        begin
        ignore (super#updateWhere ((CategoryData.getInstance ())#nAME, (Obj.magic (updatedValues#get ((CategoryData.getInstance ())#nAME))), updatedValues))
        end [@@warning "-7"]
    

    method dropTable () : string =
        begin
        (super#dropTable ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tableName <- "categories";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "CategoryEntity" (fun arguments -> Obj.repr (new categoryEntity (Obj.obj arguments)))


