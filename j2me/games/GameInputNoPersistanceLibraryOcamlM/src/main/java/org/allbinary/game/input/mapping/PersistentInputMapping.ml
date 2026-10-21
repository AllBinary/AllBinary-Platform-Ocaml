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
(* package org.allbinary.game.input.mapping *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Enumeration *)
(* import org.allbinary.game.configuration.persistance.GamePersistanceStrings *)
(* import org.allbinary.game.input.Input *)
(* import org.allbinary.game.input.InputPersistance *)
(* import org.allbinary.game.input.mapping.event.InputMappingEvent *)
(* import org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface *)
(* import org.allbinary.game.input.mapping.event.NullInputMappingEventListener *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.EnumerationUtil *)
(* import org.allbinary.util.ABHashtable *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "PersistentInputMapping.get_instance" (fun _ -> Obj.repr (get_instance ()))
class persistentInputMapping ((name : string)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable enumerationUtil : EnumerationUtil.enumerationUtil = (Obj.magic 0)
    method enumerationUtil = enumerationUtil
    method set_enumerationUtil value' = enumerationUtil <- value'
    val mutable inputMapping : InputToGameKeyMapping.inputToGameKeyMapping = (Obj.magic 0)
    method inputMapping = inputMapping
    method set_inputMapping value' = inputMapping <- value'
    val mutable inputMappingEventListenerInterface : InputMappingEventListenerInterface.inputMappingEventListenerInterface = (Obj.magic 0)
    method inputMappingEventListenerInterface = inputMappingEventListenerInterface
    method set_inputMappingEventListenerInterface value' = inputMappingEventListenerInterface <- value'
    val mutable inputPersistance : Obj.t = Obj.repr 0
    method inputPersistance : 'r. 'r = Obj.magic inputPersistance
    method set_inputPersistance : 'v. 'v -> unit = fun value' -> inputPersistance <- Obj.repr value'
    val mutable inputMappingEvent : InputMappingEvent.inputMappingEvent = (Obj.magic 0)
    method inputMappingEvent = inputMappingEvent
    method set_inputMappingEvent value' = inputMappingEvent <- value'
    
    

    method getTotalMapped () : int =
        begin
        (((self#getInputMapping ())#getHashtable ())#size ())
        end
    

    method isDefaultNew () : bool =
        begin
        false
        end
    

    method getDefault () : InputToGameKeyMapping.inputToGameKeyMapping =
        begin
        ((InputToGameKeyMapping.getNullInstance ()) :> InputToGameKeyMapping.inputToGameKeyMapping)
        end
    

    method setDefault : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        ignore ((self#getInputMapping ())#removeAll ());
        ignore ((self#getInputMapping ())#addMapping ((self#getDefault ())));
        (self#save ((Obj.magic abeClientInformation)))
        end [@@warning "-20"]
    

    method update : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        ignore ((Obj.magic inputPersistance)#deleteAll ((Obj.magic abeClientInformation)));
        (self#save ((Obj.magic abeClientInformation)))
        end [@@warning "-20"]
    

    method save : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        ignore ((Obj.magic inputPersistance)#save ((Obj.magic abeClientInformation), ((self#getInputMapping ())#getHashtable ())));
        ignore (inputMappingEvent#setInputToGameKeyMapping ((self#getInputMapping ())));
        if ((self#getInputMappingEventListenerInterface ()) != (Obj.magic 0)) then begin
            ignore ((self#getInputMappingEventListenerInterface ())#onInputMappingEvent (inputMappingEvent))
        end
        end [@@warning "-20"]
    

    method init : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#iNIT));
        (try
            ignore ((Obj.magic inputPersistance)#loadAll ((Obj.magic abeClientInformation)))
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (commonStrings#eXCEPTION, self, commonStrings#iNIT, e))));
            ignore ((Obj.magic inputPersistance)#deleteRecoreStore ((Obj.magic abeClientInformation)));
            (self#setDefault ((Obj.magic abeClientInformation)));
            ignore ((Obj.magic inputPersistance)#loadAll ((Obj.magic abeClientInformation)))
        end);
        let list : BasicArrayList.basicArrayList ref = ref ((((Obj.magic inputPersistance)#getList ()) :> BasicArrayList.basicArrayList)) in ();
        let totalMappedTo : int ref = ref (0) in ();
        let size : int ref = ref ((!list#size ())) in ();
        let hashtable : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let enumeration : java_enumeration ref = ref (((Obj.magic 0) :> java_enumeration)) in ();
        let mappedToInput : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let gameActionInput : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            hashtable := Obj.repr ((Obj.magic !list#objectArray.(index)));
            enumeration := ((Obj.magic !hashtable)#keys ());
            while (enumerationUtil#hasMoreElements (!enumeration)) do
                mappedToInput := Obj.repr ((Obj.magic (enumerationUtil#nextElement (!enumeration))));
                gameActionInput := Obj.repr ((Obj.magic ((Obj.magic !hashtable)#get ((Obj.magic !mappedToInput)))));
                totalMappedTo := !totalMappedTo + 1;
                ignore ((self#getInputMapping ())#add ((Obj.magic !gameActionInput), (Obj.magic !mappedToInput)))
            done
        done;
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("End - Total Loaded Keys Mapped: "));
        ignore (!stringBuffer#appendint ((self#getTotalMapped ())));
        ignore (!stringBuffer#append (" to: "));
        ignore (!stringBuffer#appendint (!totalMappedTo));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, commonStrings#iNIT))
        end [@@warning "-20"]
    

    method setInputMappingEventListenerInterface : 'any1. 'any1 -> unit = fun (inputMappingEventListenerInterface_arg) ->
        let inputMappingEventListenerInterface_arg = Obj.repr inputMappingEventListenerInterface_arg in
        begin
        inputMappingEventListenerInterface <- (Obj.magic inputMappingEventListenerInterface_arg)
        end [@@warning "-20"]
    

    method getInputMappingEventListenerInterface () : InputMappingEventListenerInterface.inputMappingEventListenerInterface =
        begin
        (inputMappingEventListenerInterface :> InputMappingEventListenerInterface.inputMappingEventListenerInterface)
        end
    

    method getInputMapping () : InputToGameKeyMapping.inputToGameKeyMapping =
        begin
        (inputMapping :> InputToGameKeyMapping.inputToGameKeyMapping)
        end
    

    method isDelete : 'any1. 'any1 -> bool = fun (_input) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-20"]
    

    method isSystemInput : 'any1. 'any1 -> bool = fun (_input) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        enumerationUtil <- ((EnumerationUtil.getInstance ()) :> EnumerationUtil.enumerationUtil);
        inputMapping <- ((new InputToGameKeyMapping.inputToGameKeyMapping ()) :> InputToGameKeyMapping.inputToGameKeyMapping);
        inputMappingEventListenerInterface <- ((NullInputMappingEventListener.get_nULL_INPUT_MAPPING_EVENT_LISTENER ()) :> InputMappingEventListenerInterface.inputMappingEventListenerInterface);
        ();
        inputMappingEvent <- ((new InputMappingEvent.inputMappingEvent (self)) :> InputMappingEvent.inputMappingEvent);
        ();
        inputPersistance <- Obj.repr ((Obj.obj (java_new "InputPersistance" (Obj.repr (name)))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "PersistentInputMapping" (fun arguments -> Obj.repr (new persistentInputMapping (Obj.obj arguments)))

let getNullInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new persistentInputMapping ((GamePersistanceStrings.getInstance ())#sAVED_INPUT_CONFIGURATION_RECORD_ID))
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "PersistentInputMapping.getNullInstance" (fun arguments -> Obj.repr (getNullInstance (Obj.obj arguments)))


