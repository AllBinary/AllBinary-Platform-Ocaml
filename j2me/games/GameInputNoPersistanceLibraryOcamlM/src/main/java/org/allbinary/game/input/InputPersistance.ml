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
(* import javax.microedition.rms.RecordEnumeration *)
(* import javax.microedition.rms.RecordStore *)
(* import org.allbinary.game.configuration.persistance.BasicPersitance *)
(* import org.allbinary.game.configuration.persistance.NullRecordComparator *)
(* import org.allbinary.game.configuration.persistance.NullRecordFilter *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.HashtableUtil *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)

class inputPersistance ((name : string)) =
  object (self)
    inherit BasicPersitance.basicPersitance (name)
    val mutable hashtableUtil : HashtableUtil.hashtableUtil = (Obj.magic 0)
    method hashtableUtil = hashtableUtil
    method set_hashtableUtil value' = hashtableUtil <- value'
    
    

    method loadAll : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        let recordStore : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "RecordStore.openRecordStore" (Obj.repr ((self#getRecordId ((Obj.magic abeClientInformation))), true)))))) in ();
        let recordEnum : Obj.t ref = ref ((Obj.repr ((Obj.magic !recordStore)#enumerateRecords ((NullRecordFilter.get_nULL_RECORD_FILTER ()), (NullRecordComparator.get_nULL_RECORD_COMPARATOR ()), true)))) in ();
        let hashtable : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
        let id : int ref = ref (0) in ();
        while ((Obj.magic !recordEnum)#hasNextElement ()) do
            id := ((Obj.magic !recordEnum)#nextRecordId ());
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (logUtil#putF ((java_string_of (Obj.repr ((!stringBuffer#append (persistanceStrings#lOADING_ID))#appendint (!id)))), self, persistanceStrings#lOAD_ALL));
            hashtable := Obj.repr (((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
            ignore (valueList#add ((Obj.magic !hashtable)));
            ignore (idList#add ((!smallIntegerSingletonFactory#getAt (!id))))
        done;
        ignore ((Obj.magic !recordStore)#closeRecordStore ())
        end [@@warning "-7-20"]
    

    method save : 'any1 'any2. 'any1 * 'any2 -> unit = fun (abeClientInformation, hashtable) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        let hashtable = Obj.repr hashtable in
        begin
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (persistanceStrings#nOT_SAVING))#append (((StringUtil.getInstance ())#toString ((Obj.magic hashtable))))))), self, commonStrings#sAVE))));
        let recordStore : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "RecordStore.openRecordStore" (Obj.repr ((self#getRecordId ((Obj.magic abeClientInformation))), true)))))) in ();
        let gameActionInput : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        let input : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let inputObjectArray : Obj.t array ref = ref ((hashtableUtil#getKeysAsArray ((Obj.magic hashtable)))) in ();
        let size : int ref = ref ((Array.length !inputObjectArray)) in ();
        for index = 0 to !size - 1 do
            gameActionInput := Obj.repr ((Obj.magic !inputObjectArray.(index)));
            list := (Obj.magic ((Obj.magic hashtable)#get (!inputObjectArray.(index))));
            for index2 = 0 to (!list#size ()) - 1 do
                input := Obj.repr ((Obj.magic (!list#get (index2))))
            done
        done;
        ignore ((Obj.magic !recordStore)#closeRecordStore ())
        end [@@warning "-7-20"]

    initializer
      begin
        hashtableUtil <- ((HashtableUtil.getInstance ()) :> HashtableUtil.hashtableUtil);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "InputPersistance" (fun arguments -> Obj.repr (new inputPersistance (Obj.obj arguments)))


