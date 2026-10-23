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
(* package org.allbinary.game.configuration *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Choice *)
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Item *)
(* import javax.microedition.lcdui.TextField *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.game.configuration.feature.GameFeatureChoiceGroups *)
(* import org.allbinary.game.configuration.feature.GameFeatureFormUtil *)
(* import org.allbinary.game.configuration.feature.GameFeatureItemCommandListener *)
(* import org.allbinary.game.configuration.feature.GameFeatureItemStateListener *)
(* import org.allbinary.game.configuration.feature.SensorFeatureFactory *)
(* import org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton *)
(* import org.allbinary.game.configuration.persistance.KeyValuePersistance *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.displayable.command.MyCommandsFactory *)
(* import org.allbinary.graphics.displayable.screen.CommandForm *)
(* import org.allbinary.input.gyro.OrientationData *)
(* import org.allbinary.logic.MEUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.HashtableUtil *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)

class gameOptionsForm (commandListener, (title : string), (backgrounBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit CommandForm.commandForm (commandListener, title, backgrounBasicColor, foregroundBasicColor) as super
    val mutable meUtil : Obj.t = Obj.repr 0
    method meUtil : 'r. 'r = Obj.magic meUtil
    method set_meUtil : 'v. 'v -> unit = fun value' -> meUtil <- Obj.repr value'
    
    

    method closeClientInformation : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        ignore (super#close ());
        (self#save ((Obj.magic abeClientInformation)))
        end [@@warning "-7-20"]
    

    method addTextFieldsIfSimulated () : unit =
        begin
        let key : string ref = ref ((OrientationData.getInstance ())#oRIENTATION_SENSOR_INPUT) in ();
        let hashtable : Obj.t ref = ref ((Obj.repr ((GameFeatureChoiceGroups.getExclusiveInstance ())#get ()))) in ();
        if ((Obj.magic !hashtable) != (Obj.magic 0)) then begin
            let listCanBeNull : Obj.t ref = ref ((Obj.repr ((Obj.magic !hashtable)#get (!key)))) in ();
            if (!listCanBeNull != (Obj.magic 0)) then begin
                let list : BasicArrayList.basicArrayList ref = ref (((Obj.magic !listCanBeNull) :> BasicArrayList.basicArrayList)) in ();
                if (!list#contains ((SensorFeatureFactory.getInstance ())#sIMULATED_ORIENTATION_SENSORS)) then begin
                    (self#addTextFields ())
                end
            end
        end
        end [@@warning "-7"]
    

    method addTextFields () : unit =
        begin
        let hashtable : Obj.t ref = ref ((Obj.repr (GameConfigurationTextInput.getHashtable ()))) in ();
        let size : int ref = ref (((Obj.magic !hashtable)#size ())) in ();
        let objectArray : Obj.t array ref = ref (((HashtableUtil.getInstance ())#getKeysAsArray ((Obj.magic !hashtable)))) in ();
        let gameConfigurationTextInput : GameConfigurationTextInput.gameConfigurationTextInput ref = ref (((Obj.magic 0) :> GameConfigurationTextInput.gameConfigurationTextInput)) in ();
        let textField : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            gameConfigurationTextInput := (Obj.magic ((Obj.magic !hashtable)#get ((Obj.magic !objectArray.(index)))));
            textField := Obj.repr ((Obj.obj (java_new "TextField" (Obj.repr ((!gameConfigurationTextInput#getLabel ()), (!gameConfigurationTextInput#getText ()), 30, (Obj.magic (java_call_static "TextField.get_aNY" (Obj.repr ()))))))));
            ignore ((Obj.magic meUtil)#appendItem (self, (Obj.magic !textField)))
        done
        end [@@warning "-7"]
    

    method addConfiguration () : unit =
        begin
        let mETHOD_NAME : string ref = ref ("addConfiguration") in ();
        let nAME : string ref = ref ("Name: ") in ();
        let list : BasicArrayList.basicArrayList ref = ref ((((GameConfigurationSingleton.getInstance ())#getOptionsBasicArrayList ()) :> BasicArrayList.basicArrayList)) in ();
        let gAUGE_CHANGE : Obj.t ref = ref ((Obj.repr (MyCommandsFactory.getInstance ())#gAUGE_CHANGE)) in ();
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let size : int ref = ref ((!list#size ())) in ();
        let gameConfiguration : GameConfiguration.gameConfiguration ref = ref (((Obj.magic 0) :> GameConfiguration.gameConfiguration)) in ();
        let gauge : GameConfigurationGauge.gameConfigurationGauge ref = ref (((Obj.magic 0) :> GameConfigurationGauge.gameConfigurationGauge)) in ();
        for index = 0 to !size - 1 do
            gameConfiguration := (Obj.magic !list#objectArray.(index));
            ignore (!stringMaker#delete (0, (!stringMaker#length ())));
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr ((!stringMaker#append (!nAME))#append ((java_string_of (Obj.repr !gameConfiguration)))))), self, !mETHOD_NAME));
            gauge := (new GameConfigurationGauge.gameConfigurationGauge (!gameConfiguration));
            ignore (!gauge#setDefaultCommand ((Obj.magic !gAUGE_CHANGE)));
            ignore (!gauge#setItemCommandListener ((Obj.obj (java_new "GameFeatureItemCommandListener" (Obj.repr (self))))));
            ignore ((Obj.magic meUtil)#appendItem (self, !gauge))
        done
        end [@@warning "-7"]
    

    method initCommands : 'any1. 'any1 -> unit = fun (cmdListener) ->
        let cmdListener = Obj.repr cmdListener in
        begin
        let gameCommandsFactory : GameCommandsFactory.gameCommandsFactory ref = ref (((GameCommandsFactory.getInstance ()) :> GameCommandsFactory.gameCommandsFactory)) in ();
        ignore (self#removeAllCommands ());
        ignore (self#addCommand (!gameCommandsFactory#cLOSE_OPTIONS));
        ignore (self#addCommand (!gameCommandsFactory#dEFAULT_OPTIONS));
        ignore (self#setCommandListener ((Obj.magic cmdListener)))
        end [@@warning "-7-20"]
    

    method save : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        let size : int ref = ref ((self#size ())) in ();
        let item : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            item := Obj.repr ((self#get (index)));
            if (java_instanceof (Obj.repr (Obj.magic !item)) "GameConfigurationGauge") then begin
                ignore ((Obj.magic (java_call_static "GameConfigurationUtil.getInstance" (Obj.repr ())))#update ((Obj.magic (Obj.magic !item))))
            end else if (java_instanceof (Obj.repr (Obj.magic !item)) "TextField") then begin
                ignore (GameConfigurationTextInput.update ((Obj.magic (Obj.magic !item))))
            end
        done;
        ignore ((Obj.magic (java_call_static "GameConfigurationUtil.getInstance" (Obj.repr ())))#updateCompetitionValue ());
        let hashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()))) in ();
        let sCALE : GameConfiguration.gameConfiguration ref = ref (((GameConfigurationCentral.getInstance ())#sCALE :> GameConfiguration.gameConfiguration)) in ();
        ignore ((Obj.magic !hashtable)#put ((!sCALE#getName ()), (java_string_of (Obj.repr (!sCALE#getValue ())))));
        let keyValuePersistance : Obj.t ref = ref ((Obj.repr (GameConfigurationPersistanceSingleton.getInstance ()))) in ();
        ignore ((Obj.magic !keyValuePersistance)#clear ());
        ignore ((Obj.magic !keyValuePersistance)#loadAll ((Obj.magic abeClientInformation)));
        let list : BasicArrayList.basicArrayList ref = ref ((((Obj.magic !keyValuePersistance)#getIds ()) :> BasicArrayList.basicArrayList)) in ();
        ignore ((Obj.magic !keyValuePersistance)#save ((Obj.magic abeClientInformation), (Obj.magic !hashtable)));
        let size2 : int ref = ref ((!list#size ())) in ();
        let integer : int ref = ref ((Obj.magic 0)) in ();
        for index = 0 to !size2 - 1 do
            integer := (Obj.magic !list#objectArray.(index));
            ignore ((Obj.magic !keyValuePersistance)#delete ((Obj.magic abeClientInformation), !integer))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        meUtil <- (Obj.repr (Obj.magic (java_call_static "MEUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#cONSTRUCTOR));
        (self#addConfiguration ());
        let gameFeatureFormUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "GameFeatureFormUtil.getInstance" (Obj.repr ()))))) in ();
        ignore ((Obj.magic !gameFeatureFormUtil)#addChoiceGroup (self, ((GameFeatureChoiceGroups.getExclusiveInstance ())#get ()), (Obj.magic (java_call_static "Choice.get_eXCLUSIVE" (Obj.repr ())))));
        ignore ((Obj.magic !gameFeatureFormUtil)#addChoiceGroup (self, ((GameFeatureChoiceGroups.getMultipleInstance ())#get ()), (Obj.magic (java_call_static "Choice.get_mULTIPLE" (Obj.repr ())))));
        (self#initCommands (commandListener));
        ignore (self#setItemStateListener ((new GameFeatureItemStateListener.gameFeatureItemStateListener (self))));
        (self#addTextFieldsIfSimulated ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameOptionsForm" (fun arguments -> Obj.repr (new gameOptionsForm (Obj.obj arguments)))


