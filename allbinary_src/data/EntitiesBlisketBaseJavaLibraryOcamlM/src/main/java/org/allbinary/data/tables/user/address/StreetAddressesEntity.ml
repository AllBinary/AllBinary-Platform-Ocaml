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
(* package org.allbinary.data.tables.user.address *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.address.StreetAddress *)
(* import org.allbinary.business.user.address.StreetAddressData *)
(* import org.allbinary.data.tables.TableDataFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class streetAddressesEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ())))) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable userName : string = ""
    method userName = userName
    method set_userName value' = userName <- value'
    
    
    

    method remove ((index : int)) : unit =
        begin
        (try
            let whereHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!whereHashMap#put ((UserData.get_uSERNAME ()), userName));
            ignore (!whereHashMap#put ((StreetAddressData.get_iD ()), (Obj.magic (string_of_int index))));
            ignore (super#deleteWhere (!whereHashMap));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, "remove"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "remove", e))
            end
        end)
        end [@@warning "-7"]
    

    method add : 'any1. 'any1 -> unit = fun (address) ->
        let address = Obj.repr address in
        begin
        (self#add ((Obj.magic address), (TableDataFactory.getInstance ())#iNTEGER_MAX_VALUE_STRING))
        end [@@warning "-7-20"]
    

    (* Java overload add(StreetAddress, String) is not converted: OCaml has one method per name *)
    

    method update : 'any1. 'any1 -> unit = fun (address) ->
        let address = Obj.repr address in
        begin
        (try
            let addressHashMap : java_hash_map ref = ref ((((Obj.magic address)#toHashMap ()) :> java_hash_map)) in ();
            let whereKeyValuePairs : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!whereKeyValuePairs#put ((StreetAddressData.get_iD ()), ((Obj.magic address)#getId ())));
            ignore (!whereKeyValuePairs#put ((UserData.get_uSERNAME ()), userName));
            ignore (super#updateWhere (!whereKeyValuePairs, !addressHashMap));
            (self#setDefault (((Obj.magic address)#getId ())));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, "update"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "add", e))
            end
        end)
        end [@@warning "-7-20"]
    

    method getLastId () : string =
        begin
        (super#getLargestIntegerInColumnWhere ((StreetAddressData.get_iD ()), (UserData.get_uSERNAME ()), userName))
        end [@@warning "-7"]
    

    method get () : BasicArrayList.basicArrayList =
        begin
        (try
            let streetAddressVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let keyAndValue : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!keyAndValue#put ((UserData.get_uSERNAME ()), userName));
            let addressList : BasicArrayList.basicArrayList ref = ref (((super#getRows (!keyAndValue)) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!addressList#size ())) in ();
            for index = 0 to !size - 1 do
                let addressHashMap : java_hash_map ref = ref (((Obj.magic (!addressList#get (index))) :> java_hash_map)) in ();
                let streetAddress : StreetAddress.streetAddress ref = ref (((new StreetAddress.streetAddress (!addressHashMap)) :> StreetAddress.streetAddress)) in ();
                if (!streetAddress != (Obj.magic 0)) then begin
                    ignore (!streetAddressVector#add (!streetAddress))
                end
            done;
            (!streetAddressVector :> BasicArrayList.basicArrayList)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, (self#commonStrings)#gET, e))
            end;
            ((Obj.magic 0) :> BasicArrayList.basicArrayList)
        end)
        end [@@warning "-7"]
    

    (* Java overload get(Integer) is not converted: OCaml has one method per name *)
    

    method getDefault () : StreetAddress.streetAddress =
        try
        begin
        (try
            let addressHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            let updateKeyAndValue : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!updateKeyAndValue#put ((StreetAddressData.get_dEFAULT ()), (StreetAddressData.get_dEFAULT ())));
            ignore (!updateKeyAndValue#put ((UserData.get_uSERNAME ()), userName));
            addressHashMap := (super#getRow (!updateKeyAndValue));
            if (!addressHashMap != (Obj.magic 0)) then begin
                let streetAddress : StreetAddress.streetAddress ref = ref (((new StreetAddress.streetAddress (!addressHashMap)) :> StreetAddress.streetAddress)) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, "getDefault"))
                end;
                raise (Java_return (Obj.repr (!streetAddress)))
            end else begin
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore ((Obj.magic logUtil)#putF ("No Default Address Found", self, "getDefault"))
                end;
                raise (Java_return (Obj.repr ((Obj.magic 0))))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "getDefault", e))
            end;
            ((Obj.magic 0) :> StreetAddress.streetAddress)
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method setDefault ((value : string)) : unit =
        begin
        (try
            let updateKeyAndValue : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            let whereKeyAndValue : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!whereKeyAndValue#put ((UserData.get_uSERNAME ()), userName));
            let streetAddress : StreetAddress.streetAddress ref = ref (((self#getDefault ()) :> StreetAddress.streetAddress)) in ();
            if (!streetAddress != (Obj.magic 0)) then begin
                ignore (!updateKeyAndValue#put ((StreetAddressData.get_dEFAULT ()), (StringUtil.getInstance ())#eMPTY_STRING));
                ignore (!whereKeyAndValue#put ((StreetAddressData.get_iD ()), (!streetAddress#getId ())));
                ignore (super#updateWhere (!whereKeyAndValue, !updateKeyAndValue))
            end;
            ignore (!whereKeyAndValue#put ((StreetAddressData.get_iD ()), value));
            ignore (!updateKeyAndValue#put ((StreetAddressData.get_dEFAULT ()), (StreetAddressData.get_dEFAULT ())));
            ignore (super#updateWhere (!whereKeyAndValue, !updateKeyAndValue));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, "setDefault"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "setShippingAddress", e))
            end
        end)
        end [@@warning "-7"]
    

    method getUserName () : string =
        begin
        userName
        end [@@warning "-7"]
    

    method createTableStatement () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore ((((((((((((((((((((((((((!stringBuffer#append ((self#sqlStrings)#cREATE_TABLE))#append ((self#getTableName ())))#append ((self#sqlStrings)#sTART))#append ((StreetAddressData.get_iD ())))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL))#append ((UserData.get_uSERNAME ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((StreetAddressData.get_dEFAULT ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((StreetAddressData.get_nAME ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((StreetAddressData.get_sTREET ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((StreetAddressData.get_cITY ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((StreetAddressData.get_sTATE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((StreetAddressData.get_cODE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((StreetAddressData.get_cOUNTRY ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append ((EntryData.getInstance ())#tIMECREATED))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((self#sqlStrings)#pRIMARY_KEY))#append ((StreetAddressData.get_iD ())))#append ((self#sqlStrings)#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        (super#createTable ((self#createTableStatement ())))
        end [@@warning "-7"]
    

    method drop () : string =
        begin
        (super#dropTable ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "StreetAddressesEntity" (fun arguments -> Obj.repr (new streetAddressesEntity (Obj.obj arguments)))


