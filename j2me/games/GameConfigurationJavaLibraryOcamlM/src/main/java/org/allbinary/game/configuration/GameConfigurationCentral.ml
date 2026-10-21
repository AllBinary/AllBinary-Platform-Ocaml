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
(* import org.allbinary.game.configuration.persistance.GameConfigurationPersistanceSingleton *)
(* import org.allbinary.game.configuration.persistance.KeyValuePersistance *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)

let sINGLETON : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "GameConfigurationCentral.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))
class gameConfigurationCentral () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable sCALE : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method sCALE = sCALE
    method set_sCALE value' = sCALE <- value'
    val mutable oRIENTATION : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method oRIENTATION = oRIENTATION
    method set_oRIENTATION value' = oRIENTATION <- value'
    val mutable sENSOR_UPDATE_RATE : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method sENSOR_UPDATE_RATE = sENSOR_UPDATE_RATE
    method set_sENSOR_UPDATE_RATE value' = sENSOR_UPDATE_RATE <- value'
    val mutable vIBRATION : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method vIBRATION = vIBRATION
    method set_vIBRATION value' = vIBRATION <- value'
    val mutable cHALLENGE_LEVEL : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method cHALLENGE_LEVEL = cHALLENGE_LEVEL
    method set_cHALLENGE_LEVEL value' = cHALLENGE_LEVEL <- value'
    val mutable cOLLIDE_DAMAGE : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method cOLLIDE_DAMAGE = cOLLIDE_DAMAGE
    method set_cOLLIDE_DAMAGE value' = cOLLIDE_DAMAGE <- value'
    val mutable dURABILITY_CHALLENGE_LEVEL : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method dURABILITY_CHALLENGE_LEVEL = dURABILITY_CHALLENGE_LEVEL
    method set_dURABILITY_CHALLENGE_LEVEL value' = dURABILITY_CHALLENGE_LEVEL <- value'
    val mutable sPEED_CHALLENGE_LEVEL : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method sPEED_CHALLENGE_LEVEL = sPEED_CHALLENGE_LEVEL
    method set_sPEED_CHALLENGE_LEVEL value' = sPEED_CHALLENGE_LEVEL <- value'
    val mutable aTTACK_CHALLENGE_LEVEL : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method aTTACK_CHALLENGE_LEVEL = aTTACK_CHALLENGE_LEVEL
    method set_aTTACK_CHALLENGE_LEVEL value' = aTTACK_CHALLENGE_LEVEL <- value'
    val mutable cONTROL_LEVEL : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method cONTROL_LEVEL = cONTROL_LEVEL
    method set_cONTROL_LEVEL value' = cONTROL_LEVEL <- value'
    val mutable pLAYER_INPUT_WAIT : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method pLAYER_INPUT_WAIT = pLAYER_INPUT_WAIT
    method set_pLAYER_INPUT_WAIT value' = pLAYER_INPUT_WAIT <- value'
    val mutable sPEED : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method sPEED = sPEED
    method set_sPEED value' = sPEED <- value'
    val mutable sOUND_VOLUME : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method sOUND_VOLUME = sOUND_VOLUME
    method set_sOUND_VOLUME value' = sOUND_VOLUME <- value'
    val mutable mAX_GAME_OBJECTS : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method mAX_GAME_OBJECTS = mAX_GAME_OBJECTS
    method set_mAX_GAME_OBJECTS value' = mAX_GAME_OBJECTS <- value'
    val mutable mAX_LAYERS : GameConfiguration.gameConfiguration = (Obj.magic 0)
    method mAX_LAYERS = mAX_LAYERS
    method set_mAX_LAYERS value' = mAX_LAYERS <- value'
    val mutable gameControlFidelity : int = 0
    method gameControlFidelity = gameControlFidelity
    method set_gameControlFidelity value' = gameControlFidelity <- value'
    
    

    method load : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        (try
            let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
            let keyValuePersistance : Obj.t ref = ref ((Obj.repr (GameConfigurationPersistanceSingleton.getInstance ()))) in ();
            ignore ((Obj.magic !keyValuePersistance)#clear ());
            ignore ((Obj.magic !keyValuePersistance)#loadAll ((Obj.magic abeClientInformation)));
            let list : BasicArrayList.basicArrayList ref = ref ((((Obj.magic !keyValuePersistance)#getIds ()) :> BasicArrayList.basicArrayList)) in ();
            if ((!list#size ()) > 0) then begin
                let hashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic !keyValuePersistance)#get (0)))) in ();
                let anyType : Obj.t ref = ref ((Obj.repr (Obj.magic (sCALE#getName ())))) in ();
                let value : string ref = ref ((Obj.magic ((Obj.magic !hashtable)#get (!anyType)))) in ();
                ignore (sCALE#setValue ((!smallIntegerSingletonFactory#getAt (((string_of_int (!value))#intValue ())))))
            end else begin
                ignore ((Obj.magic logUtil)#putF ("No Game Configuration To Load", self, !commonStrings#lOAD))
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#lOAD, e))
        end)
        end [@@warning "-20"]
    

    method setGameControlFidelity ((gameControlFidelity_arg : int)) : unit =
        begin
        gameControlFidelity <- gameControlFidelity_arg
        end
    

    method getGameControlFidelity () : int =
        begin
        gameControlFidelity
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let commonStrings : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        ignore (!stringBuffer#append (!commonStrings#cOMMA_SEP));
        ignore (!stringBuffer#append ((sCALE#getName ())));
        ignore (!stringBuffer#append (!commonStrings#eQUALS));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((sCALE#getValue ())#intValue ()))))));
        ignore (!stringBuffer#append (!commonStrings#cOMMA_SEP));
        ignore (!stringBuffer#append ((oRIENTATION#getName ())));
        ignore (!stringBuffer#append (!commonStrings#eQUALS));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((oRIENTATION#getValue ())#intValue ()))))));
        ignore (!stringBuffer#append (!commonStrings#cOMMA_SEP));
        ignore (!stringBuffer#append ((sENSOR_UPDATE_RATE#getName ())));
        ignore (!stringBuffer#append (!commonStrings#eQUALS));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((sENSOR_UPDATE_RATE#getValue ())#intValue ()))))));
        ignore (!stringBuffer#append (!commonStrings#cOMMA_SEP));
        ignore (!stringBuffer#append ((vIBRATION#getName ())));
        ignore (!stringBuffer#append (!commonStrings#eQUALS));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((vIBRATION#getValue ())#intValue ()))))));
        ignore (!stringBuffer#append (!commonStrings#cOMMA_SEP));
        ignore (!stringBuffer#append ((cHALLENGE_LEVEL#getName ())));
        ignore (!stringBuffer#append (!commonStrings#eQUALS));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((cHALLENGE_LEVEL#getValue ())#intValue ()))))));
        ignore (!stringBuffer#append (!commonStrings#cOMMA_SEP));
        ignore (!stringBuffer#append ((cOLLIDE_DAMAGE#getName ())));
        ignore (!stringBuffer#append (!commonStrings#eQUALS));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((cOLLIDE_DAMAGE#getValue ())#intValue ()))))));
        ignore (!stringBuffer#append (!commonStrings#cOMMA_SEP));
        ignore (!stringBuffer#append ((dURABILITY_CHALLENGE_LEVEL#getName ())));
        ignore (!stringBuffer#append (!commonStrings#eQUALS));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((dURABILITY_CHALLENGE_LEVEL#getValue ())#intValue ()))))));
        ignore (!stringBuffer#append (!commonStrings#cOMMA_SEP));
        ignore (!stringBuffer#append ((sPEED_CHALLENGE_LEVEL#getName ())));
        ignore (!stringBuffer#append (!commonStrings#eQUALS));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((sPEED_CHALLENGE_LEVEL#getValue ())#intValue ()))))));
        ignore (!stringBuffer#append (!commonStrings#cOMMA_SEP));
        ignore (!stringBuffer#append ((aTTACK_CHALLENGE_LEVEL#getName ())));
        ignore (!stringBuffer#append (!commonStrings#eQUALS));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((aTTACK_CHALLENGE_LEVEL#getValue ())#intValue ()))))));
        ignore (!stringBuffer#append (!commonStrings#cOMMA_SEP));
        ignore (!stringBuffer#append ((cONTROL_LEVEL#getName ())));
        ignore (!stringBuffer#append (!commonStrings#eQUALS));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((cONTROL_LEVEL#getValue ())#intValue ()))))));
        ignore (!stringBuffer#append (!commonStrings#cOMMA_SEP));
        ignore (!stringBuffer#append ((sPEED#getName ())));
        ignore (!stringBuffer#append (!commonStrings#eQUALS));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((sPEED#getValue ())#intValue ()))))));
        ignore (!stringBuffer#append (!commonStrings#cOMMA_SEP));
        ignore (!stringBuffer#append ((mAX_GAME_OBJECTS#getName ())));
        ignore (!stringBuffer#append (!commonStrings#eQUALS));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((mAX_GAME_OBJECTS#getValue ())#intValue ()))))));
        ignore (!stringBuffer#append (!commonStrings#cOMMA_SEP));
        ignore (!stringBuffer#append ((mAX_LAYERS#getName ())));
        ignore (!stringBuffer#append (!commonStrings#eQUALS));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((mAX_LAYERS#getValue ())#intValue ()))))));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        gameControlFidelity <- 36;
        ();
        let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
        sCALE <- (new GameConfiguration.gameConfiguration ("Scale", (!smallIntegerSingletonFactory#getAt (2)), (!smallIntegerSingletonFactory#getAt (2)), (!smallIntegerSingletonFactory#getAt (3))));
        oRIENTATION <- (new GameConfiguration.gameConfiguration ("Orientation", (!smallIntegerSingletonFactory#getAt (0)), (!smallIntegerSingletonFactory#getAt (0)), (!smallIntegerSingletonFactory#getAt (8))));
        sENSOR_UPDATE_RATE <- (new GameConfiguration.gameConfiguration ("Sensor Update Rate", (!smallIntegerSingletonFactory#getAt (0)), (!smallIntegerSingletonFactory#getAt (0)), (!smallIntegerSingletonFactory#getAt (3))));
        vIBRATION <- (new GameConfiguration.gameConfiguration ("Vibration", (!smallIntegerSingletonFactory#getAt (0)), (!smallIntegerSingletonFactory#getAt (0)), (!smallIntegerSingletonFactory#getAt (3))));
        cHALLENGE_LEVEL <- (new GameConfiguration.gameConfiguration ("Global Challenge Level", (!smallIntegerSingletonFactory#getAt (3)), (!smallIntegerSingletonFactory#getAt (1)), (!smallIntegerSingletonFactory#getAt (10))));
        cOLLIDE_DAMAGE <- (new GameConfiguration.gameConfiguration ("Collide Damage Challenge Level", (!smallIntegerSingletonFactory#getAt (3)), (!smallIntegerSingletonFactory#getAt (1)), (!smallIntegerSingletonFactory#getAt (10))));
        dURABILITY_CHALLENGE_LEVEL <- (new GameConfiguration.gameConfiguration ("Enemy Durability Challenge Level", (!smallIntegerSingletonFactory#getAt (3)), (!smallIntegerSingletonFactory#getAt (1)), (!smallIntegerSingletonFactory#getAt (10))));
        sPEED_CHALLENGE_LEVEL <- (new GameConfiguration.gameConfiguration ("Enemy Speed Challenge Level", (!smallIntegerSingletonFactory#getAt (3)), (!smallIntegerSingletonFactory#getAt (1)), (!smallIntegerSingletonFactory#getAt (10))));
        aTTACK_CHALLENGE_LEVEL <- (new GameConfiguration.gameConfiguration ("Enemy Attack Challenge Level", (!smallIntegerSingletonFactory#getAt (3)), (!smallIntegerSingletonFactory#getAt (1)), (!smallIntegerSingletonFactory#getAt (10))));
        cONTROL_LEVEL <- (new GameConfiguration.gameConfiguration ("Control Fidelity", (!smallIntegerSingletonFactory#getAt (5)), (!smallIntegerSingletonFactory#getAt (1)), (!smallIntegerSingletonFactory#getAt (10))));
        pLAYER_INPUT_WAIT <- (new GameConfiguration.gameConfiguration ("Input Wait", (!smallIntegerSingletonFactory#getAt (5)), (!smallIntegerSingletonFactory#getAt (1)), (!smallIntegerSingletonFactory#getAt (10))));
        sPEED <- (new GameConfiguration.gameConfiguration ("Game Speed (Device Specific)", (!smallIntegerSingletonFactory#getAt (5)), (!smallIntegerSingletonFactory#getAt (1)), (!smallIntegerSingletonFactory#getAt (10))));
        sOUND_VOLUME <- (new GameConfiguration.gameConfiguration ("Sound Volume", (!smallIntegerSingletonFactory#getAt (6)), (!smallIntegerSingletonFactory#getAt (0)), (!smallIntegerSingletonFactory#getAt (10))));
        mAX_GAME_OBJECTS <- (new GameConfiguration.gameConfiguration ("Max Game Objects", (!smallIntegerSingletonFactory#getAt (20)), (!smallIntegerSingletonFactory#getAt (1)), (!smallIntegerSingletonFactory#getAt (50))));
        mAX_LAYERS <- (new GameConfiguration.gameConfiguration ("Max Layers", (!smallIntegerSingletonFactory#getAt (20)), (!smallIntegerSingletonFactory#getAt (1)), (!smallIntegerSingletonFactory#getAt (50))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameConfigurationCentral" (fun arguments -> Obj.repr (new gameConfigurationCentral (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !sINGLETON) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            sINGLETON := (new gameConfigurationCentral ())
        end;
        (Obj.magic !sINGLETON)
        end
let () = java_register_static "GameConfigurationCentral.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


