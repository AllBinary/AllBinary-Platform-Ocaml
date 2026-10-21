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
(* package org.allbinary.game.score *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayInputStream *)
(* import java.io.ByteArrayOutputStream *)
(* import java.io.DataInputStream *)
(* import java.io.DataOutputStream *)
(* import javax.microedition.rms.RecordEnumeration *)
(* import javax.microedition.rms.RecordStore *)
(* import javax.microedition.rms.RecordStoreException *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.game.configuration.persistance.NullRecordComparator *)
(* import org.allbinary.game.configuration.persistance.NullRecordFilter *)
(* import org.allbinary.game.configuration.persistance.NullRecordStore *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.java.exception.ExceptionUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.persistance.PlatformRecordIdUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class highScoreNamePersistanceSingleton () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable platformRecordIdUtil : PlatformRecordIdUtil.platformRecordIdUtil = (Obj.magic 0)
    method platformRecordIdUtil = platformRecordIdUtil
    method set_platformRecordIdUtil value' = platformRecordIdUtil <- value'
    val mutable rECORD_ID : string = ""
    method rECORD_ID = rECORD_ID
    method set_rECORD_ID value' = rECORD_ID <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable nameBasicArrayList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method nameBasicArrayList = nameBasicArrayList
    method set_nameBasicArrayList value' = nameBasicArrayList <- value'
    

    method clear () : unit =
        begin
        name <- (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method deleteAll : 'any1 'any2. 'any1 * 'any2 -> unit = fun (abeClientInformation, gameInfo) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let gameInfo = Obj.repr gameInfo in
        begin
        let size : int ref = ref ((nameBasicArrayList#size ())) in ();
        for index = 0 to !size - 1 do
            let integer : int ref = ref ((Obj.magic nameBasicArrayList#objectArray.(index))) in ();
            (self#delete ((Obj.magic abeClientInformation), (Obj.magic gameInfo), !integer))
        done;
        (self#clear ())
        end [@@warning "-20"]
    

    method getRecordId : 'any1. 'any1 -> string = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        (platformRecordIdUtil#getRecordId ((Obj.magic abeClientInformation), rECORD_ID))
        end [@@warning "-20"]
    

    method delete : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (abeClientInformation, _gameInfo, (deleteId : int)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        let recordStore : Obj.t ref = ref ((Obj.repr (NullRecordStore.get_nULL_RECORD_STORE ()))) in ();
        Fun.protect ~finally:(fun () -> 
            if ((Obj.magic !recordStore) != (Obj.magic 0)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("Closing RecordStore", self, commonStrings#delete))));
                ignore ((Obj.magic !recordStore)#closeRecordStore ())
            end
        ) (fun () -> (try
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Deleting: "))#appendint (deleteId)))), self, commonStrings#delete));
            recordStore := Obj.repr ((Obj.magic (java_call_static "RecordStore.openRecordStore" (Obj.repr ((self#getRecordId ((Obj.magic abeClientInformation))), true)))));
            ignore ((Obj.magic !recordStore)#deleteRecord (deleteId))
        with e -> begin
            raise e
        end))
        end [@@warning "-20"]
    

    method getIds () : BasicArrayList.basicArrayList =
        begin
        (nameBasicArrayList :> BasicArrayList.basicArrayList)
        end
    

    method load : 'any1 'any2. 'any1 * 'any2 -> string = fun (abeClientInformation, gameInfo) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let gameInfo = Obj.repr gameInfo in
        begin
        let recordStore : Obj.t ref = ref ((Obj.repr (NullRecordStore.get_nULL_RECORD_STORE ()))) in ();
        Fun.protect ~finally:(fun () -> 
            (try
                if ((Obj.magic !recordStore) != (Obj.magic 0)) then begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("Closing RecordStore", self, commonStrings#lOAD))));
                    ignore ((Obj.magic !recordStore)#closeRecordStore ())
                end
            with e -> begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#lOAD, e))
            end)
        ) (fun () -> (try
            if (name = (StringUtil.getInstance ())#eMPTY_STRING) then begin
                let lOADING_ID : string ref = ref ("Loading id: ") in ();
                recordStore := Obj.repr ((Obj.magic (java_call_static "RecordStore.openRecordStore" (Obj.repr ((self#getRecordId ((Obj.magic abeClientInformation))), true)))));
                let recordEnum : Obj.t ref = ref ((Obj.repr ((Obj.magic !recordStore)#enumerateRecords ((NullRecordFilter.get_nULL_RECORD_FILTER ()), (NullRecordComparator.get_nULL_RECORD_COMPARATOR ()), true)))) in ();
                let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
                let recordAsBytes : int array ref = ref ((Obj.magic 0)) in ();
                let byteArrayInputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
                let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
                while ((Obj.magic !recordEnum)#hasNextElement ()) do
                    let id : int ref = ref (((Obj.magic !recordEnum)#nextRecordId ())) in ();
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (!lOADING_ID))#appendint (!id)))), self, commonStrings#lOAD));
                    recordAsBytes := ((Obj.magic tsUtil)#getRecord ((Obj.magic !recordStore), !id));
                    byteArrayInputStream := Obj.repr ((new ByteArrayInputStream.byteArrayInputStream (!recordAsBytes)));
                    inputStream := Obj.repr ((Obj.obj (java_new "DataInputStream" (Obj.repr ((Obj.magic !byteArrayInputStream))))));
                    while (((Obj.magic !inputStream)#available ()) > 0) do
                        name <- ((Obj.magic !inputStream)#readUTF ())
                    done;
                    ignore (nameBasicArrayList#add ((!smallIntegerSingletonFactory#getAt (!id))))
                done
            end
        with e -> begin
            (self#save ((Obj.magic abeClientInformation), (Obj.magic gameInfo), name));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (commonStrings#eXCEPTION_LABEL))#append (((Obj.magic (java_call_static "ExceptionUtil.getInstance" (Obj.repr ())))#getStackTrace (e)))))), self, commonStrings#lOAD))
        end));
        name
        end [@@warning "-20"]
    

    method save : 'any1 'any2. 'any1 * 'any2 * string -> unit = fun (abeClientInformation, _gameInfo, (name_arg : string)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        let recordStore : Obj.t ref = ref ((Obj.repr (NullRecordStore.get_nULL_RECORD_STORE ()))) in ();
        Fun.protect ~finally:(fun () -> 
            (try
                if ((Obj.magic !recordStore) != (Obj.magic 0)) then begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("Closing RecordStore", self, commonStrings#sAVE))));
                    ignore ((Obj.magic !recordStore)#closeRecordStore ())
                end
            with e -> begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#sAVE, e))
            end)
        ) (fun () -> (try
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Saving: "))#append (name_arg)))), self, commonStrings#sAVE));
            recordStore := Obj.repr ((Obj.magic (java_call_static "RecordStore.openRecordStore" (Obj.repr ((self#getRecordId ((Obj.magic abeClientInformation))), true)))));
            let byteArrayOutputStream : java_byte_array_output_stream ref = ref ((new java_byte_array_output_stream ())) in ();
            let outputStream : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "DataOutputStream" (Obj.repr (!byteArrayOutputStream)))))) in ();
            ignore ((Obj.magic !outputStream)#writeUTF (name_arg));
            let savedGameBytes : int array ref = ref ((!byteArrayOutputStream#toByteArray ())) in ();
            ignore ((Obj.magic !recordStore)#addRecord (!savedGameBytes, 0, (Array.length !savedGameBytes)));
            name <- name_arg
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#sAVE, e))
        end))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        platformRecordIdUtil <- ((PlatformRecordIdUtil.getInstance ()) :> PlatformRecordIdUtil.platformRecordIdUtil);
        rECORD_ID <- "_SN";
        name <- (StringUtil.getInstance ())#eMPTY_STRING;
        nameBasicArrayList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "HighScoreNamePersistanceSingleton" (fun arguments -> Obj.repr (new highScoreNamePersistanceSingleton (Obj.obj arguments)))

let sINGLETON = ref ((new highScoreNamePersistanceSingleton ()))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "HighScoreNamePersistanceSingleton.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        !sINGLETON
        end
let () = java_register_static "HighScoreNamePersistanceSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


