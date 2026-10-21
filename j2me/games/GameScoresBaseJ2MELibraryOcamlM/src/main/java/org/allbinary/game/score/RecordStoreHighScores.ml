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
(* import java.io.DataInputStream *)
(* import java.io.EOFException *)
(* import java.io.IOException *)
(* import javax.microedition.rms.RecordComparator *)
(* import javax.microedition.rms.RecordEnumeration *)
(* import javax.microedition.rms.RecordStore *)
(* import javax.microedition.rms.RecordStoreException *)
(* import javax.microedition.rms.RecordStoreNotFoundException *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.game.configuration.persistance.NullRecordComparator *)
(* import org.allbinary.game.configuration.persistance.NullRecordFilter *)
(* import org.allbinary.game.configuration.persistance.NullRecordStore *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.persistance.PlatformRecordIdUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let hashTable : Obj.t = (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()))
let get_hashTable () = Obj.magic hashTable
let () = java_register_static "RecordStoreHighScores.get_hashTable" (fun _ -> Obj.repr (get_hashTable ()))
class recordStoreHighScores ((abeClientInformation_arg : AbeClientInformationInterface.abeClientInformationInterface), (gameInfo_arg : GameInfo.gameInfo), (name : string), (heading : string), (columnTwoHeading : string), recordComparatorInterface_arg) =
  object (self)
    inherit HighScores.highScores (name, heading, columnTwoHeading)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable platformRecordIdUtil : PlatformRecordIdUtil.platformRecordIdUtil = (Obj.magic 0)
    method platformRecordIdUtil = platformRecordIdUtil
    method set_platformRecordIdUtil value' = platformRecordIdUtil <- value'
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    val mutable rECORD_ID : string = ""
    method rECORD_ID = rECORD_ID
    method set_rECORD_ID value' = rECORD_ID <- value'
    val mutable mAXHIGHSCORES : int = 0
    method mAXHIGHSCORES = mAXHIGHSCORES
    method set_mAXHIGHSCORES value' = mAXHIGHSCORES <- value'
    val mutable gameInfo : GameInfo.gameInfo = (Obj.magic 0)
    method gameInfo = gameInfo
    method set_gameInfo value' = gameInfo <- value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable recordComparatorInterface : Obj.t = Obj.repr 0
    method recordComparatorInterface : 'r. 'r = Obj.magic recordComparatorInterface
    method set_recordComparatorInterface : 'v. 'v -> unit = fun value' -> recordComparatorInterface <- Obj.repr value'
    
    

    method getRecordId : 'any1. 'any1 -> string = fun (abeClientInformation_arg) ->
        let abeClientInformation_arg = Obj.repr abeClientInformation_arg in
        begin
        (platformRecordIdUtil#getRecordId ((Obj.magic abeClientInformation_arg), (java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ((CommonSeps.getInstance ())#uNDERSCORE))#append ((self#getName ())))#append (rECORD_ID))))))
        end [@@warning "-7-20"]
    

    method addHighScore : 'any1. 'any1 -> unit = fun (newHighScore) ->
        let newHighScore = Obj.repr newHighScore in
        begin
        let recordStore : Obj.t ref = ref ((Obj.repr (NullRecordStore.get_nULL_RECORD_STORE ()))) in ();
        Fun.protect ~finally:(fun () -> 
            (try
                if ((Obj.magic !recordStore) != (Obj.magic 0)) then begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("Closing RecordStore", self, commonStrings#aDD))));
                    ignore ((Obj.magic !recordStore)#closeRecordStore ())
                end
            with e -> begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#aDD, e))
            end)
        ) (fun () -> (try
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Adding HighScore: "))#appendlong ((java_to_int (Obj.repr (((Obj.magic newHighScore)#getScore ())))))))), self, commonStrings#aDD));
            if (self#isTooManyHighScores ()) then begin
                ignore ((Obj.magic logUtil)#putF ("Removing Lowest Score", self, commonStrings#aDD));
                (self#removeLowestHighScore ())
            end;
            recordStore := Obj.repr ((Obj.magic (java_call_static "RecordStore.openRecordStore" (Obj.repr ((self#getRecordId (abeClientInformation)), true)))));
            let highScoreBytes : int array ref = ref (((Obj.magic newHighScore)#getAsBytes ())) in ();
            let recordId : int ref = ref (((Obj.magic !recordStore)#addRecord (!highScoreBytes, 0, (Array.length !highScoreBytes)))) in ();
            (self#load ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#aDD, e))
        end))
        end [@@warning "-7-20"]
    

    method removeLowestHighScore () : unit =
        begin
        let recordStore : Obj.t ref = ref ((Obj.repr (NullRecordStore.get_nULL_RECORD_STORE ()))) in ();
        Fun.protect ~finally:(fun () -> 
            (try
                if ((Obj.magic !recordStore) != (Obj.magic 0)) then begin
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("Closing RecordStore", self, "removeLowestHighScore"))));
                    ignore ((Obj.magic !recordStore)#closeRecordStore ())
                end
            with e -> begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "removeLowestHighScore", e))
            end)
        ) (fun () -> (try
            recordStore := Obj.repr ((Obj.magic (java_call_static "RecordStore.openRecordStore" (Obj.repr ((self#getRecordId (abeClientInformation)), true)))));
            let recordEnum : Obj.t ref = ref ((Obj.repr ((Obj.magic !recordStore)#enumerateRecords ((NullRecordFilter.get_nULL_RECORD_FILTER ()), (NullRecordComparator.get_nULL_RECORD_COMPARATOR ()), true)))) in ();
            let scoreComparator : ScoreComparator.scoreComparator ref = ref ((((Obj.magic (Obj.magic recordComparatorInterface))) :> ScoreComparator.scoreComparator)) in ();
            let bestHighScore : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "HighScore" (Obj.repr ((-1), "none", (GameInfo.get_nONE ()), (!scoreComparator#getBestScore ()))))))) in ();
            let recordAsBytes : int array ref = ref ((Obj.magic 0)) in ();
            let byteArrayInputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            while ((Obj.magic !recordEnum)#hasNextElement ()) do
                let id : int ref = ref (((Obj.magic !recordEnum)#nextRecordId ())) in ();
                recordAsBytes := ((Obj.magic tsUtil)#getRecord ((Obj.magic !recordStore), !id));
                if (!recordAsBytes != (Obj.magic 0)) then begin
                    byteArrayInputStream := Obj.repr ((new ByteArrayInputStream.byteArrayInputStream (!recordAsBytes)));
                    inputStream := Obj.repr ((Obj.obj (java_new "DataInputStream" (Obj.repr ((Obj.magic !byteArrayInputStream))))));
                    let name : string ref = ref (((Obj.magic !inputStream)#readUTF ())) in ();
                    let nextScore : int ref = ref (((Obj.magic !inputStream)#readLong ())) in ();
                    let nextCurrentHighScore : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "HighScore" (Obj.repr (!id, !name, (GameInfo.get_nONE ()), !nextScore)))))) in ();
                    if ((Obj.repr ((Obj.magic recordComparatorInterface)#compare (((Obj.magic !nextCurrentHighScore)#getAsBytes ()), ((Obj.magic !bestHighScore)#getAsBytes ())))) == (Obj.repr (Obj.magic (java_call_static "RecordComparator.get_fOLLOWS" (Obj.repr ()))))) then begin
                        bestHighScore := Obj.repr ((Obj.magic !nextCurrentHighScore))
                    end
                end
            done;
            if (((Obj.magic !bestHighScore)#getId ()) != (-1)) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Removing Lowest HighScore: "))#appendlong ((java_to_int (Obj.repr (((Obj.magic !bestHighScore)#getScore ())))))))), self, commonStrings#lOAD));
                ignore ((Obj.magic !recordStore)#deleteRecord (((Obj.magic !bestHighScore)#getId ())))
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "removeLowestHighScore", e))
        end))
        end [@@warning "-7"]
    

    method load () : unit =
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
            recordStore := Obj.repr ((Obj.magic (java_call_static "RecordStore.openRecordStore" (Obj.repr ((self#getRecordId (abeClientInformation)), true)))));
            ignore (self#setList ((new BasicArrayListD.basicArrayListD ())));
            let recordEnum : Obj.t ref = ref ((Obj.repr ((Obj.magic !recordStore)#enumerateRecords ((NullRecordFilter.get_nULL_RECORD_FILTER ()), (NullRecordComparator.get_nULL_RECORD_COMPARATOR ()), true)))) in ();
            let recordAsBytes : int array ref = ref ((Obj.magic 0)) in ();
            let byteArrayInputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            while ((Obj.magic !recordEnum)#hasNextElement ()) do
                let id : int ref = ref (((Obj.magic !recordEnum)#nextRecordId ())) in ();
                recordAsBytes := ((Obj.magic tsUtil)#getRecord ((Obj.magic !recordStore), !id));
                if (!recordAsBytes != (Obj.magic 0)) then begin
                    byteArrayInputStream := Obj.repr ((new ByteArrayInputStream.byteArrayInputStream (!recordAsBytes)));
                    inputStream := Obj.repr ((Obj.obj (java_new "DataInputStream" (Obj.repr ((Obj.magic !byteArrayInputStream))))));
                    (try
                        let name : string ref = ref (((Obj.magic !inputStream)#readUTF ())) in ();
                        let score : int ref = ref (((Obj.magic !inputStream)#readLong ())) in ();
                        let newHighScore : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "HighScore" (Obj.repr (!id, !name, (GameInfo.get_nONE ()), !score)))))) in ();
                        let list : BasicArrayList.basicArrayList ref = ref (((self#getList ()) :> BasicArrayList.basicArrayList)) in ();
                        let size : int ref = ref ((!list#size ())) in ();
                        let lastIndex : int ref = ref (!size) in ();
                        for index = 0 to !size - 1 do
                            let highScore : Obj.t ref = ref ((Obj.repr (Obj.magic !list#objectArray.(index)))) in ();
                            if ((Obj.repr ((Obj.magic recordComparatorInterface)#compare (((Obj.magic !newHighScore)#getAsBytes ()), ((Obj.magic !highScore)#getAsBytes ())))) == (Obj.repr (Obj.magic (java_call_static "RecordComparator.get_pRECEDES" (Obj.repr ()))))) then begin
                                lastIndex := index;
                                raise Java_break
                            end
                        done;
                        ignore (!list#addAt (!lastIndex, (Obj.magic !newHighScore)))
                    with e -> begin
                        ignore ((Obj.magic logUtil)#put ("EOF", self, commonStrings#lOAD, e));
                        raise e
                    end)
                end
            done
        with e -> begin
            ignore ((Obj.magic logUtil)#put ("No High Scores", self, commonStrings#lOAD, e))
        end))
        end [@@warning "-7"]
    

    method isTooManyHighScores () : bool =
        try
        begin
        if (((self#getList ()) != (Obj.magic 0)) && (((self#getList ())#size ()) < mAXHIGHSCORES)) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("HighScores RecordStore Max Reached: "))#appendint (mAXHIGHSCORES)))), self, "isTooManyHighScores"));
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isBestScore : 'any1. 'any1 -> bool = fun (newHighScore) ->
        let newHighScore = Obj.repr newHighScore in
        try
        begin
        (try
            if (not (self#isTooManyHighScores ())) then begin
                ignore ((Obj.magic logUtil)#putF ("Slot Available for a High Score", self, "isBestScore"));
                raise (Java_return (Obj.repr (true)))
            end else begin
                let list : BasicArrayList.basicArrayList ref = ref (((self#getList ()) :> BasicArrayList.basicArrayList)) in ();
                let size : int ref = ref ((!list#size ())) in ();
                for index = 0 to !size - 1 do
                    let highScore : Obj.t ref = ref ((Obj.repr (Obj.magic !list#objectArray.(index)))) in ();
                    if ((Obj.repr ((Obj.magic recordComparatorInterface)#compare (((Obj.magic newHighScore)#getAsBytes ()), ((Obj.magic !highScore)#getAsBytes ())))) == (Obj.repr (Obj.magic (java_call_static "RecordComparator.get_fOLLOWS" (Obj.repr ()))))) then begin
                        ignore ((Obj.magic logUtil)#putF ("Obtained a High Score", self, "isBestScore"));
                        raise (Java_return (Obj.repr (true)))
                    end
                done
            end;
            ignore ((Obj.magic logUtil)#putF ("Not a High Score", self, "isBestScore"));
            false
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#aDD, e));
            raise e
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_string_of (Obj.repr super))));
        let list : BasicArrayList.basicArrayList ref = ref (((self#getList ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!list#size ())) in ();
        for index = 0 to !size - 1 do
            let highScore : Obj.t ref = ref ((Obj.repr (Obj.magic !list#objectArray.(index)))) in ();
            ignore (!stringBuffer#append (((Obj.magic !highScore)#getScoreString ())));
            ignore (!stringBuffer#append ((CommonSeps.getInstance ())#cOMMA_SEP))
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        platformRecordIdUtil <- ((PlatformRecordIdUtil.getInstance ()) :> PlatformRecordIdUtil.platformRecordIdUtil);
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        rECORD_ID <- "_HS";
        mAXHIGHSCORES <- 100;
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        abeClientInformation <- abeClientInformation_arg;
        gameInfo <- gameInfo_arg;
        recordComparatorInterface <- Obj.repr (recordComparatorInterface_arg);
        (self#load ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "RecordStoreHighScores" (fun arguments -> Obj.repr (new recordStoreHighScores (Obj.obj arguments)))

let getInstance : 'any1 'any2 'any6 'return. 'any1 * 'any2 * string * string * string * 'any6 -> 'return = fun (abeClientInformation_arg, gameInfo_arg, (highScoreName : string), (heading : string), (columnTwoHeading : string), recordComparatorInterface_arg) ->
        let abeClientInformation_arg = Obj.repr abeClientInformation_arg in
        let gameInfo_arg = Obj.repr gameInfo_arg in
        let recordComparatorInterface_arg = Obj.repr recordComparatorInterface_arg in
        try
        begin
        let highScoresCanBeNull : Obj.t ref = ref ((Obj.repr ((Obj.magic hashTable)#get ((Obj.magic highScoreName))))) in ();
        if (!highScoresCanBeNull == (Obj.magic 0)) then begin
            let highScores : Obj.t ref = ref ((Obj.repr (new recordStoreHighScores ((Obj.magic abeClientInformation_arg), (Obj.magic gameInfo_arg), highScoreName, heading, columnTwoHeading, (Obj.magic recordComparatorInterface_arg))))) in ();
            ignore ((Obj.magic hashTable)#put (((Obj.magic !highScores)#getName ()), (Obj.magic !highScores)));
            raise (Java_return (Obj.repr ((Obj.magic !highScores))))
        end;
        (Obj.magic ((Obj.magic !highScoresCanBeNull)))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
let () = java_register_static "RecordStoreHighScores.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


