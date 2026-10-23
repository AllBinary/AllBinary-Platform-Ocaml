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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayInputStream *)
(* import java.io.ByteArrayOutputStream *)
(* import java.io.DataInputStream *)
(* import java.io.DataOutputStream *)
(* import javax.microedition.rms.RecordEnumeration *)
(* import javax.microedition.rms.RecordStore *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.game.configuration.persistance.BasicPersitance *)
(* import org.allbinary.game.configuration.persistance.NullRecordComparator *)
(* import org.allbinary.game.configuration.persistance.NullRecordFilter *)
(* import org.allbinary.game.configuration.persistance.NullRecordStore *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.HashtableUtil *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)

class inputPersistance ((name : string)) =
  object (self)
    inherit BasicPersitance.basicPersitance (name)
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    val mutable hashtableUtil : HashtableUtil.hashtableUtil = (Obj.magic 0)
    method hashtableUtil = hashtableUtil
    method set_hashtableUtil value' = hashtableUtil <- value'
    
    

    method loadAll : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        let recordStore : Obj.t ref = ref ((Obj.repr (NullRecordStore.get_nULL_RECORD_STORE ()))) in ();
        Fun.protect ~finally:(fun () -> 
            if ((Obj.magic !recordStore) != (Obj.magic 0)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((self#persistanceStrings)#cLOSING_RECORDSTORE, self, (self#persistanceStrings)#lOAD_ALL))));
                ignore ((Obj.magic !recordStore)#closeRecordStore ())
            end
        ) (fun () -> (try
            recordStore := Obj.repr ((Obj.magic (java_call_static "RecordStore.openRecordStore" (Obj.repr ((self#getRecordId ((Obj.magic abeClientInformation))), true)))));
            let recordEnum : Obj.t ref = ref ((Obj.repr ((Obj.magic !recordStore)#enumerateRecords ((NullRecordFilter.get_nULL_RECORD_FILTER ()), (NullRecordComparator.get_nULL_RECORD_COMPARATOR ()), true)))) in ();
            let gameActionInputId : int ref = ref (0) in ();
            let inputId : int ref = ref (0) in ();
            let gameActionInput : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let input : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let hashtable : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let gameKeyFactory : GameKeyMappingFactory.gameKeyMappingFactory ref = ref (((GameKeyMappingFactory.getInstance ()) :> GameKeyMappingFactory.gameKeyMappingFactory)) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            let inputFactory : InputFactory.inputFactory ref = ref (((InputFactory.getInstance ()) :> InputFactory.inputFactory)) in ();
            let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
            let stdUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ()))))) in ();
            let recordAsBytes : int array ref = ref ((Obj.magic 0)) in ();
            let byteArrayInputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            while ((Obj.magic !recordEnum)#hasNextElement ()) do
                let id : int ref = ref (((Obj.magic !recordEnum)#nextRecordId ())) in ();
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore ((self#logUtil)#putF ((java_string_of (Obj.repr ((!stringBuffer#append ((self#persistanceStrings)#lOADING_ID))#appendint (!id)))), self, (self#persistanceStrings)#lOAD_ALL));
                recordAsBytes := ((Obj.magic tsUtil)#getRecord ((Obj.magic !recordStore), !id));
                if (!recordAsBytes != (Obj.magic 0)) then begin
                    byteArrayInputStream := Obj.repr ((new ByteArrayInputStream.byteArrayInputStream (!recordAsBytes)));
                    inputStream := Obj.repr ((Obj.obj (java_new "DataInputStream" (Obj.repr ((Obj.magic !byteArrayInputStream))))));
                    hashtable := Obj.repr (((Obj.magic !stdUtil)#createHashtable ()));
                    let value : int ref = ref (0) in ();
                    while (((Obj.magic !inputStream)#available ()) > 0) do
                        let gameActionInputIdAsString : string ref = ref (((Obj.magic !inputStream)#readUTF ())) in ();
                        value := (int_of_string (!gameActionInputIdAsString));
                        gameActionInputId := !value;
                        ignore ((Obj.magic !inputStream)#readUTF ());
                        value := (int_of_string (((Obj.magic !inputStream)#readUTF ())));
                        inputId := !value;
                        gameActionInput := Obj.repr ((!gameKeyFactory#getGameKey (!gameActionInputId)));
                        input := Obj.repr ((!inputFactory#getInstanceById (!inputId)));
                        if (((Obj.repr (Obj.magic !input)) == (Obj.repr !inputFactory#nO_INPUT)) || ((Obj.magic !gameActionInput) == (Obj.magic 0))) then begin
                            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                            if ((Obj.repr (Obj.magic !input)) == (Obj.repr !inputFactory#nO_INPUT)) then begin
                                ignore (!stringBuffer#append ((self#persistanceStrings)#eRROR_LOADING_ID));
                                ignore (!stringBuffer#appendlong (!inputId));
                                ignore (!stringBuffer#append ((self#persistanceStrings)#gAME_ACTION_INPUT));
                                ignore (!stringBuffer#appendlong (!gameActionInputId));
                                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr !stringBuffer)), self, (self#persistanceStrings)#lOAD_ALL))))
                            end;
                            if ((Obj.magic !gameActionInput) == (Obj.magic 0)) then begin
                                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                                ignore (!stringBuffer#append ((self#persistanceStrings)#eRROR_LOADING));
                                ignore (!stringBuffer#appendlong (!gameActionInputId));
                                ignore (!stringBuffer#append ((self#persistanceStrings)#iD));
                                ignore (!stringBuffer#appendlong (!inputId));
                                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr !stringBuffer)), self, (self#persistanceStrings)#lOAD_ALL))))
                            end
                        end else begin
                            ()
                        end;
                        ignore ((Obj.magic !hashtable)#put ((Obj.magic !input), (Obj.magic !gameActionInput)))
                    done;
                    ignore ((self#valueList)#add ((Obj.magic !hashtable)));
                    ignore ((self#idList)#add ((!smallIntegerSingletonFactory#getAt (!id))))
                end else begin
                    ()
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
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((self#persistanceStrings)#cLOSING_RECORDSTORE, self, (self#commonStrings)#sAVE))));
                ignore ((Obj.magic !recordStore)#closeRecordStore ())
            end
        ) (fun () -> (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr ((!stringBuffer#append ((self#persistanceStrings)#sAVING))#append (((StringUtil.getInstance ())#toString ((Obj.magic hashtable))))))), self, (self#commonStrings)#sAVE))));
            recordStore := Obj.repr ((Obj.magic (java_call_static "RecordStore.openRecordStore" (Obj.repr ((self#getRecordId ((Obj.magic abeClientInformation))), true)))));
            let byteArrayOutputStream : java_byte_array_output_stream ref = ref ((new java_byte_array_output_stream ())) in ();
            let outputStream : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataOutputStream" (Obj.repr (!byteArrayOutputStream)))))) in ();
            let gameActionInput : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let list : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
            let input : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let savedGameBytes : int array ref = ref ((Obj.magic 0)) in ();
            let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
            let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
            let inputObjectArray : Obj.t array ref = ref ((hashtableUtil#getKeysAsArray ((Obj.magic hashtable)))) in ();
            let size : int ref = ref ((Array.length !inputObjectArray)) in ();
            for index = 0 to !size - 1 do
                gameActionInput := Obj.repr ((Obj.magic !inputObjectArray.(index)));
                list := (Obj.magic ((Obj.magic hashtable)#get ((Obj.magic !inputObjectArray.(index)))));
                for index2 = 0 to (!list#size ()) - 1 do
                    let gameActionInputIdAsString : string ref = ref ((java_string_of (Obj.repr (!smallIntegerSingletonFactory#getAt (((Obj.magic !gameActionInput)#getId ())))))) in ();
                    ignore ((Obj.magic !outputStream)#writeUTF (!gameActionInputIdAsString));
                    ignore ((Obj.magic !outputStream)#writeUTF (!commonSeps#eQUALS));
                    input := Obj.repr ((Obj.magic !list#objectArray.(index2)));
                    let inputIdAsString : string ref = ref ((java_string_of (Obj.repr (!smallIntegerSingletonFactory#getAt (((Obj.magic !input)#getId ())))))) in ();
                    ignore ((Obj.magic !outputStream)#writeUTF (!inputIdAsString))
                done
            done;
            savedGameBytes := (!byteArrayOutputStream#toByteArray ());
            ignore ((Obj.magic !recordStore)#addRecord (!savedGameBytes, 0, (Array.length !savedGameBytes)))
        with e -> begin
            raise e
        end))
        end [@@warning "-7-20"]

    initializer
      begin
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        hashtableUtil <- ((HashtableUtil.getInstance ()) :> HashtableUtil.hashtableUtil);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputPersistance" (fun arguments -> Obj.repr (new inputPersistance (Obj.obj arguments)))


