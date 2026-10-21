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
(* package org.allbinary.game.configuration.feature *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Enumeration *)
(* import javax.microedition.lcdui.ChoiceGroup *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.EnumerationUtil *)
(* import org.allbinary.util.HashtableUtil *)

class gameFeatureUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    val mutable enumerationUtil : EnumerationUtil.enumerationUtil = (Obj.magic 0)
    method enumerationUtil = enumerationUtil
    method set_enumerationUtil value' = enumerationUtil <- value'
    val mutable oN_GAME_FEATURE_CHANGE : string = ""
    method oN_GAME_FEATURE_CHANGE = oN_GAME_FEATURE_CHANGE
    method set_oN_GAME_FEATURE_CHANGE value' = oN_GAME_FEATURE_CHANGE <- value'
    val mutable gAME_FEATURE_CHANGED : string = ""
    method gAME_FEATURE_CHANGED = gAME_FEATURE_CHANGED
    method set_gAME_FEATURE_CHANGED value' = gAME_FEATURE_CHANGED <- value'
    

    method setDefault : 'any1. 'any1 -> unit = fun (choiceGroup) ->
        let choiceGroup = Obj.repr choiceGroup in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let mETHOD_NAME : string ref = ref ("setDefault") in ();
        let sELECTED_ARRAY_RETURN : string ref = ref ("selectedArray_return[") in ();
        let sELECTED_SEP : string ref = ref ("] = ") in ();
        let selectedArray_return : bool array ref = ref ((Array.make (((Obj.magic choiceGroup)#size ())) false)) in ();
        let total : int ref = ref (((Obj.magic choiceGroup)#getSelectedFlags (!selectedArray_return))) in ();
        ignore (!stringBuffer#append ("Multiple Total Choices: "));
        ignore (!stringBuffer#appendint (!total));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !mETHOD_NAME));
        let features : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Features.getInstance" (Obj.repr ()))))) in ();
        for index = 0 to (Array.length !selectedArray_return) - 1 do
            let isSelected : bool ref = ref (!selectedArray_return.(index)) in ();
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append (!sELECTED_ARRAY_RETURN));
            ignore (!stringBuffer#appendint (index));
            ignore (!stringBuffer#append (!sELECTED_SEP));
            ignore (!stringBuffer#appendboolean (!isSelected));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !mETHOD_NAME));
            let selectedChoiceLabel : string ref = ref (((Obj.magic choiceGroup)#getString (index))) in ();
            let gameFeature : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Feature.getInstance" (Obj.repr (!selectedChoiceLabel)))))) in ();
            if ((Obj.magic !features)#isDefault ((Obj.magic !gameFeature))) then begin
                ignore ((Obj.magic !features)#add ((Obj.magic !gameFeature)));
                ignore ((Obj.magic choiceGroup)#setSelectedIndex (index, true))
            end else begin
                ignore ((Obj.magic !features)#remove ((Obj.magic !gameFeature)));
                ignore ((Obj.magic choiceGroup)#setSelectedIndex (index, false))
            end
        done
        end [@@warning "-20"]
    

    method updateMultiple : 'any1. 'any1 -> unit = fun (choiceGroup) ->
        let choiceGroup = Obj.repr choiceGroup in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let mETHOD_NAME : string ref = ref ("updateMultiple") in ();
        let sELECTED_ARRAY_RETURN : string ref = ref ("selectedArray_return[") in ();
        let sELECTED_SEP : string ref = ref ("] = ") in ();
        let selectedArray_return : bool array ref = ref ((Array.make (((Obj.magic choiceGroup)#size ())) false)) in ();
        let total : int ref = ref (((Obj.magic choiceGroup)#getSelectedFlags (!selectedArray_return))) in ();
        ignore (!stringBuffer#append ("Multiple Total Choices: "));
        ignore (!stringBuffer#appendint (!total));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !mETHOD_NAME));
        let features : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Features.getInstance" (Obj.repr ()))))) in ();
        for index = 0 to (Array.length !selectedArray_return) - 1 do
            let isSelected : bool ref = ref (!selectedArray_return.(index)) in ();
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append (!sELECTED_ARRAY_RETURN));
            ignore (!stringBuffer#appendint (index));
            ignore (!stringBuffer#append (!sELECTED_SEP));
            ignore (!stringBuffer#appendboolean (!isSelected));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !mETHOD_NAME));
            let selectedChoiceLabel : string ref = ref (((Obj.magic choiceGroup)#getString (index))) in ();
            let gameFeature : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Feature.getInstance" (Obj.repr (!selectedChoiceLabel)))))) in ();
            if ((not !isSelected) && ((Obj.magic !features)#isFeature ((Obj.magic !gameFeature)))) then begin
                ignore ((Obj.magic !features)#remove ((Obj.magic !gameFeature)))
            end else if (!isSelected && (not ((Obj.magic !features)#isFeature ((Obj.magic !gameFeature))))) then begin
                ignore ((Obj.magic !features)#add ((Obj.magic !gameFeature)))
            end
        done
        end [@@warning "-20"]
    

    method updateExclusiveForChoiceGroup : 'any1. 'any1 -> unit = fun (choiceGroup) ->
        let choiceGroup = Obj.repr choiceGroup in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let mETHOD_NAME : string ref = ref ("updateExclusive") in ();
        let sELECTED_ARRAY_RETURN : string ref = ref ("selectedArray_return[") in ();
        let sELECTED_SEP : string ref = ref ("] = ") in ();
        let selectedArray_return : bool array ref = ref ((Array.make (((Obj.magic choiceGroup)#size ())) false)) in ();
        let total : int ref = ref (((Obj.magic choiceGroup)#getSelectedFlags (!selectedArray_return))) in ();
        ignore (!stringBuffer#append ("Exclusive Total Choices: 1=="));
        ignore (!stringBuffer#appendint (!total));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !mETHOD_NAME));
        for index = 0 to (Array.length !selectedArray_return) - 1 do
            let isSelected : bool ref = ref (!selectedArray_return.(index)) in ();
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            ignore (!stringBuffer#append (!sELECTED_ARRAY_RETURN));
            ignore (!stringBuffer#appendint (index));
            ignore (!stringBuffer#append (!sELECTED_SEP));
            ignore (!stringBuffer#appendboolean (!isSelected));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !mETHOD_NAME));
            if !isSelected then begin
                let selectedChoiceLabel : string ref = ref (((Obj.magic choiceGroup)#getString (index))) in ();
                (self#updateExclusive (!selectedChoiceLabel))
            end
        done
        end [@@warning "-20"]
    

    method isExclusive ((itemLabel : string)) : bool =
        try
        begin
        let enumeration : java_enumeration ref = ref (((((GameFeatureChoiceGroups.getExclusiveInstance ())#get ())#keys ()) :> java_enumeration)) in ();
        let name : string ref = ref ("") in ();
        while (enumerationUtil#hasMoreElements (!enumeration)) do
            name := (Obj.magic (enumerationUtil#nextElement (!enumeration)));
            if (((Obj.magic tsUtil)#compareTo (itemLabel, !name)) == 0) then begin
                raise (Java_return (Obj.repr (true)))
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value
    

    method updateExclusive ((selectedChoiceLabel : string)) : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#iTEM_LABEL))#append (selectedChoiceLabel)))), self, "updateExclusive"));
        let gameFeature : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Feature.getInstance" (Obj.repr (selectedChoiceLabel)))))) in ();
        let hashtable : Obj.t ref = ref ((Obj.repr ((GameFeatureChoiceGroups.getExclusiveInstance ())#get ()))) in ();
        let objectArray : Obj.t array ref = ref (((HashtableUtil.getInstance ())#getKeysAsArray ((Obj.magic !hashtable)))) in ();
        let basicArrayList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        let anyType : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let size : int ref = ref ((Array.length !objectArray)) in ();
        for index = 0 to !size - 1 do
            anyType := (Obj.magic !objectArray.(index));
            basicArrayList := (Obj.magic ((Obj.magic !hashtable)#get (!anyType)));
            (self#updateExclusiveList ((Obj.magic !gameFeature), !basicArrayList))
        done
        end
    

    method updateExclusiveList : 'any1 'any2. 'any1 * 'any2 -> unit = fun (gameFeature, list) ->
        let gameFeature = Obj.repr gameFeature in
        let list = Obj.repr list in
        begin
        if ((Obj.magic list)#contains ((Obj.magic gameFeature))) then begin
            let features : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Features.getInstance" (Obj.repr ()))))) in ();
            let addIndex : int ref = ref (((Obj.magic list)#indexOf ((Obj.magic gameFeature)))) in ();
            let size : int ref = ref (((Obj.magic list)#size ())) in ();
            for index = 0 to !size - 1 do
                if (!addIndex <> index) then begin
                    ignore ((Obj.magic !features)#remove ((Obj.magic (Obj.magic list)#objectArray.(index))))
                end else begin
                    ignore ((Obj.magic !features)#add ((Obj.magic (Obj.magic list)#objectArray.(index))))
                end
            done
        end
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        enumerationUtil <- ((EnumerationUtil.getInstance ()) :> EnumerationUtil.enumerationUtil);
        oN_GAME_FEATURE_CHANGE <- "onGameFeatureChange";
        gAME_FEATURE_CHANGED <- "Game Feature Changed: ";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameFeatureUtil" (fun arguments -> Obj.repr (new gameFeatureUtil (Obj.obj arguments)))

let instance = (new gameFeatureUtil ())
let get_instance () = instance
let () = java_register_static "GameFeatureUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameFeatureUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


