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
(* package org.allbinary.game.configuration.persistance *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayInputStream *)
(* import java.io.ByteArrayOutputStream *)
(* import java.io.DataInputStream *)
(* import java.io.DataOutputStream *)
(* import javax.microedition.rms.RecordEnumeration *)
(* import javax.microedition.rms.RecordStore *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.HashtableUtil *)

class keyValuePersistance ((recordId : string)) =
  object (self)
    inherit BasicPersitance.basicPersitance (recordId)
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    
    

    method loadAll : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        (self#loadAllSize ((Obj.magic abeClientInformation), 1))
        end [@@warning "-7-20"]
    

    method loadAllSize : 'any1. 'any1 * int -> unit = fun (abeClientInformation, (size : int)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        let recordStore : Obj.t ref = ref ((Obj.repr (NullRecordStore.get_nULL_RECORD_STORE ()))) in ();
        Fun.protect ~finally:(fun () -> 
            if ((Obj.magic !recordStore) != (Obj.magic 0)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (persistanceStrings#cLOSING_RECORDSTORE, self, persistanceStrings#lOAD_ALL))));
                ignore ((Obj.magic !recordStore)#closeRecordStore ())
            end
        ) (fun () -> (try
            recordStore := Obj.repr ((Obj.magic (java_call_static "RecordStore.openRecordStore" (Obj.repr ((self#getRecordId ((Obj.magic abeClientInformation))), true)))));
            let recordEnum : Obj.t ref = ref ((Obj.repr ((Obj.magic !recordStore)#enumerateRecords ((NullRecordFilter.get_nULL_RECORD_FILTER ()), (NullRecordComparator.get_nULL_RECORD_COMPARATOR ()), true)))) in ();
            let hashtable : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let name : string ref = ref ("") in ();
            let value : string ref = ref ("") in ();
            let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            let recordAsBytes : int array ref = ref ((Obj.magic 0)) in ();
            let byteArrayInputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            while ((Obj.magic !recordEnum)#hasNextElement ()) do
                let id : int ref = ref (((Obj.magic !recordEnum)#nextRecordId ())) in ();
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (logUtil#putF ((java_string_of (Obj.repr ((!stringBuffer#append (persistanceStrings#lOADING_ID))#appendint (!id)))), self, persistanceStrings#lOAD_ALL));
                recordAsBytes := ((Obj.magic tsUtil)#getRecord ((Obj.magic !recordStore), !id));
                if (!recordAsBytes != (Obj.magic 0)) then begin
                    byteArrayInputStream := Obj.repr ((new ByteArrayInputStream.byteArrayInputStream (!recordAsBytes)));
                    inputStream := Obj.repr ((Obj.obj (java_new "DataInputStream" (Obj.repr ((Obj.magic !byteArrayInputStream))))));
                    hashtable := Obj.repr ((Obj.obj (java_new "ABHashtable" (Obj.repr ()))));
                    for _index = 0 to size - 1 do
                        name := ((Obj.magic !inputStream)#readUTF ());
                        ignore ((Obj.magic !inputStream)#readUTF ());
                        value := ((Obj.magic !inputStream)#readUTF ());
                        ignore ((Obj.magic !hashtable)#put (!name, !value))
                    done;
                    ignore (valueList#add ((Obj.magic !hashtable)));
                    ignore (idList#add ((!smallIntegerSingletonFactory#getAt (!id))))
                end
            done
        with e -> begin
            raise e
        end))
        end [@@warning "-7-20"]
    

    method save : 'any1 'any2. 'any1 * 'any2 -> unit = fun (abeClientInformation, hashtable) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let hashtable = Obj.repr hashtable in
        begin
        let recordStore : Obj.t ref = ref ((Obj.repr (NullRecordStore.get_nULL_RECORD_STORE ()))) in ();
        Fun.protect ~finally:(fun () -> 
            if ((Obj.magic !recordStore) != (Obj.magic 0)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (persistanceStrings#cLOSING_RECORDSTORE, self, commonStrings#sAVE))));
                ignore ((Obj.magic !recordStore)#closeRecordStore ())
            end
        ) (fun () -> (try
            ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (persistanceStrings#sAVING))#append (((StringUtil.getInstance ())#toString ((Obj.magic hashtable))))))), self, commonStrings#sAVE));
            recordStore := Obj.repr ((Obj.magic (java_call_static "RecordStore.openRecordStore" (Obj.repr ((self#getRecordId ((Obj.magic abeClientInformation))), true)))));
            let byteArrayOutputStream : java_byte_array_output_stream ref = ref ((new java_byte_array_output_stream ())) in ();
            let outputStream : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataOutputStream" (Obj.repr (!byteArrayOutputStream)))))) in ();
            let value : string ref = ref ("") in ();
            let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
            let objectArray : Obj.t array ref = ref (((HashtableUtil.getInstance ())#getKeysAsArray ((Obj.magic hashtable)))) in ();
            let anyType : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let size : int ref = ref ((Array.length !objectArray)) in ();
            for index = 0 to !size - 1 do
                ignore ((Obj.magic !outputStream)#writeUTF ((Obj.magic !objectArray.(index))));
                ignore ((Obj.magic !outputStream)#writeUTF (!commonSeps#eQUALS));
                anyType := (Obj.magic !objectArray.(index));
                value := (Obj.magic ((Obj.magic hashtable)#get (!anyType)));
                ignore ((Obj.magic !outputStream)#writeUTF (!value))
            done;
            let tsUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))))) in ();
            let savedGameBytes : int array ref = ref (((Obj.magic !tsUtil_arg)#getByteArray ((java_string_of (Obj.repr !byteArrayOutputStream))))) in ();
            ignore ((Obj.magic !recordStore)#addRecord (!savedGameBytes, 0, (Array.length !savedGameBytes)))
        with e -> begin
            raise e
        end))
        end [@@warning "-7-20"]
    

    method get : 'return. int -> 'return = fun ((index : int)) ->
        begin
        let hashtable : Obj.t ref = ref ((Obj.repr (Obj.magic valueList#objectArray.(index)))) in ();
        (Obj.magic ((Obj.magic !hashtable)))
        end [@@warning "-7"]

    initializer
      begin
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "KeyValuePersistance" (fun arguments -> Obj.repr (new keyValuePersistance (Obj.obj arguments)))


