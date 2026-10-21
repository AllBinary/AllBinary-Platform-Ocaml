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
(* import javax.microedition.lcdui.ChoiceGroup *)
(* import javax.microedition.lcdui.Item *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.game.configuration.GameConfigurationGauge *)
(* import org.allbinary.game.configuration.GameConfigurationUtil *)
(* import org.allbinary.graphics.displayable.screen.CommandForm *)
(* import org.allbinary.logic.MEUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.HashtableUtil *)

class gameFeatureFormUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable meUtil : Obj.t = Obj.repr 0
    method meUtil : 'r. 'r = Obj.magic meUtil
    method set_meUtil : 'v. 'v -> unit = fun value' -> meUtil <- Obj.repr value'
    

    method getChoiceGroup : 'any1 'return. 'any1 * string * int -> 'return = fun (hashtable, (name : string), (option : int)) ->
        let hashtable = Obj.repr hashtable in
        begin
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let choiceGroup : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "ChoiceGroup" (Obj.repr (name, option, ((StringUtil.getInstance ())#getArrayInstance ()), (NullImage.get_nULL_IMAGE_ARRAY ()))))))) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((Obj.magic ((Obj.magic hashtable)#get ((Obj.magic name)))) :> BasicArrayList.basicArrayList)) in ();
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let aDD_CHOICE : string ref = ref (": Adding Choice: ") in ();
        let gET_CHOICE_GROUP : string ref = ref ("getChoiceGroup") in ();
        let size : int ref = ref ((!list#size ())) in ();
        for index = 0 to !size - 1 do
            let gameFeature : Feature.feature ref = ref (((Obj.magic !list#objectArray.(index)) :> Feature.feature)) in ();
            ignore (!stringMaker#delete (0, (!stringMaker#length ())));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((!stringMaker#append (name))#append (!aDD_CHOICE))#append ((java_string_of (Obj.repr !gameFeature)))))), self, !gET_CHOICE_GROUP));
            ignore ((Obj.magic !choiceGroup)#append ((java_string_of (Obj.repr !gameFeature)), (NullImage.get_nULL_IMAGE ())));
            if (!features#isFeature (!gameFeature)) then begin
                ignore ((Obj.magic !choiceGroup)#setSelectedIndex (index, true))
            end
        done;
        (Obj.magic ((Obj.magic !choiceGroup)))
        end [@@warning "-20"]
    

    method addChoiceGroup : 'any1 'any2. 'any1 * 'any2 * int -> unit = fun (form, hashtable, (option : int)) ->
        let form = Obj.repr form in
        let hashtable = Obj.repr hashtable in
        begin
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let aDDING_CHOICE_GROUP : string ref = ref ("Adding Choice Group: ") in ();
        let aDD_CHOICE_GROUP : string ref = ref ("addChoiceGroup") in ();
        let size : int ref = ref (((Obj.magic hashtable)#size ())) in ();
        let objectArray : Obj.t array ref = ref (((HashtableUtil.getInstance ())#getKeysAsArray ((Obj.magic hashtable)))) in ();
        let name : string ref = ref ("") in ();
        for index = 0 to !size - 1 do
            name := (Obj.magic !objectArray.(index));
            ignore (!stringMaker#delete (0, (!stringMaker#length ())));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((!stringMaker#append (!aDDING_CHOICE_GROUP))#append (!name)))), self, !aDD_CHOICE_GROUP));
            ignore ((Obj.magic meUtil)#appendItem ((Obj.magic form), (self#getChoiceGroup ((Obj.magic hashtable), !name, option))))
        done
        end [@@warning "-20"]
    

    method setDefault : 'any1. 'any1 -> unit = fun (form) ->
        let form = Obj.repr form in
        begin
        let size : int ref = ref (((Obj.magic form)#size ())) in ();
        for index = 0 to !size - 1 do
            let item : Obj.t ref = ref ((Obj.repr ((Obj.magic form)#get (index)))) in ();
            if (java_instanceof (Obj.repr (Obj.magic !item)) "GameConfigurationGauge") then begin
                ignore ((Obj.magic (java_call_static "GameConfigurationUtil.getInstance" (Obj.repr ())))#setDefault ((Obj.magic (Obj.magic !item))))
            end else if (java_instanceof (Obj.repr (Obj.magic !item)) "ChoiceGroup") then begin
                ignore ((GameFeatureUtil.getInstance ())#setDefault ((Obj.magic (Obj.magic !item))))
            end
        done
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        meUtil <- (Obj.repr (Obj.magic (java_call_static "MEUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameFeatureFormUtil" (fun arguments -> Obj.repr (new gameFeatureFormUtil (Obj.obj arguments)))

let instance = (new gameFeatureFormUtil ())
let get_instance () = instance
let () = java_register_static "GameFeatureFormUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameFeatureFormUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


