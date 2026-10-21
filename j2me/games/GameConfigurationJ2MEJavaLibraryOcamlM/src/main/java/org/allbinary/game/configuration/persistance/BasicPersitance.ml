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
(* import javax.microedition.rms.RecordStore *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.persistance.PlatformRecordIdUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class basicPersitance ((recordId_arg : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable persistanceStrings : PersistanceStrings.persistanceStrings = (Obj.magic 0)
    method persistanceStrings = persistanceStrings
    method set_persistanceStrings value' = persistanceStrings <- value'
    val mutable platformRecordIdUtil : PlatformRecordIdUtil.platformRecordIdUtil = (Obj.magic 0)
    method platformRecordIdUtil = platformRecordIdUtil
    method set_platformRecordIdUtil value' = platformRecordIdUtil <- value'
    val mutable recordId : string = ""
    method recordId = recordId
    method set_recordId value' = recordId <- value'
    val mutable valueList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method valueList = valueList
    method set_valueList value' = valueList <- value'
    val mutable idList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method idList = idList
    method set_idList value' = idList <- value'
    
    

    method deleteRecoreStore : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        ignore (Obj.magic (java_call_static "RecordStore.deleteRecordStore" (Obj.repr ((self#getRecordId ((Obj.magic abeClientInformation)))))))
        end [@@warning "-20"]
    

    method deleteAll : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        let size : int ref = ref ((idList#size ())) in ();
        for index = 0 to !size - 1 do
            let integer : int ref = ref ((Obj.magic idList#objectArray.(index))) in ();
            (self#delete ((Obj.magic abeClientInformation), !integer))
        done;
        (self#clear ())
        end [@@warning "-20"]
    

    method delete : 'any1. 'any1 * int -> unit = fun (abeClientInformation, (deleteId : int)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        let recordStore : Obj.t ref = ref ((Obj.repr (NullRecordStore.get_nULL_RECORD_STORE ()))) in ();
        Fun.protect ~finally:(fun () -> 
            if ((Obj.magic !recordStore) != (Obj.magic 0)) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (persistanceStrings#cLOSING_RECORDSTORE, self, commonStrings#delete))));
                ignore ((Obj.magic !recordStore)#closeRecordStore ())
            end
        ) (fun () -> (try
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (persistanceStrings#dELETING_WITH_ID))#appendint (deleteId)))), self, commonStrings#delete));
            recordStore := Obj.repr ((Obj.magic (java_call_static "RecordStore.openRecordStore" (Obj.repr ((self#getRecordId ((Obj.magic abeClientInformation))), true)))));
            ignore ((Obj.magic !recordStore)#deleteRecord (deleteId))
        with e -> begin
            raise e
        end))
        end [@@warning "-20"]
    

    method getRecordId : 'any1. 'any1 -> string = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        (platformRecordIdUtil#getRecordId ((Obj.magic abeClientInformation), recordId))
        end [@@warning "-20"]
    

    method getList () : BasicArrayList.basicArrayList =
        begin
        (valueList :> BasicArrayList.basicArrayList)
        end
    

    method getIds () : BasicArrayList.basicArrayList =
        begin
        (idList :> BasicArrayList.basicArrayList)
        end
    

    method clear () : unit =
        begin
        ignore (valueList#clear ());
        ignore (idList#clear ())
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        persistanceStrings <- ((PersistanceStrings.getInstance ()) :> PersistanceStrings.persistanceStrings);
        platformRecordIdUtil <- ((PlatformRecordIdUtil.getInstance ()) :> PlatformRecordIdUtil.platformRecordIdUtil);
        ();
        valueList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        idList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        recordId <- recordId_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicPersitance" (fun arguments -> Obj.repr (new basicPersitance (Obj.obj arguments)))


