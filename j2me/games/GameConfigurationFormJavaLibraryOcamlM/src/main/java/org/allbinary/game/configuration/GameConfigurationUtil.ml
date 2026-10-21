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
(* import javax.microedition.lcdui.Item *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)

class gameConfigurationUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable gAUGE_UPDATE : string = ""
    method gAUGE_UPDATE = gAUGE_UPDATE
    method set_gAUGE_UPDATE value' = gAUGE_UPDATE <- value'
    val mutable fROM : string = ""
    method fROM = fROM
    method set_fROM value' = fROM <- value'
    val mutable tO : string = ""
    method tO = tO
    method set_tO value' = tO <- value'
    val mutable cOMPETITION_VALUE : int = 0
    method cOMPETITION_VALUE = cOMPETITION_VALUE
    method set_cOMPETITION_VALUE value' = cOMPETITION_VALUE <- value'
    

    method change : 'any1 'any2. 'any1 * 'any2 -> unit = fun (gameOptionsForm, gauge) ->
        let gameOptionsForm = Obj.repr gameOptionsForm in
        let gauge = Obj.repr gauge in
        begin
        (self#update ((Obj.magic gauge)));
        let gameConfigurationSingleton : GameConfigurationSingleton.gameConfigurationSingleton ref = ref (((GameConfigurationSingleton.getInstance ()) :> GameConfigurationSingleton.gameConfigurationSingleton)) in ();
        let gameConfiguration : GameConfiguration.gameConfiguration ref = ref (((!gameConfigurationSingleton#getInstanceByName (((Obj.magic gauge)#getLabel ()))) :> GameConfiguration.gameConfiguration)) in ();
        (self#updateChallange ((Obj.magic gameOptionsForm), !gameConfiguration))
        end [@@warning "-20"]
    

    method update : 'any1. 'any1 -> unit = fun (gauge) ->
        let gauge = Obj.repr gauge in
        begin
        let gameConfigurationSingleton : GameConfigurationSingleton.gameConfigurationSingleton ref = ref (((GameConfigurationSingleton.getInstance ()) :> GameConfigurationSingleton.gameConfigurationSingleton)) in ();
        let gameConfiguration : GameConfiguration.gameConfiguration ref = ref (((!gameConfigurationSingleton#getInstanceByName (((Obj.magic gauge)#getLabel ()))) :> GameConfiguration.gameConfiguration)) in ();
        let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
        let value : int ref = ref ((!smallIntegerSingletonFactory#getAt ((((Obj.magic gauge)#getValue ()) + ((!gameConfiguration#getMinValue ())#intValue ()))))) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (gAUGE_UPDATE));
        ignore (!stringBuffer#append ((!gameConfiguration#getName ())));
        ignore (!stringBuffer#append (fROM));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((!gameConfiguration#getValue ())#intValue ()))))));
        ignore (!stringBuffer#append (tO));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (!value)))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, commonStrings#uPDATE));
        ignore (!gameConfiguration#setValue (!value))
        end [@@warning "-20"]
    

    method setDefault : 'any1. 'any1 -> unit = fun (gauge) ->
        let gauge = Obj.repr gauge in
        begin
        let gameConfigurationSingleton : GameConfigurationSingleton.gameConfigurationSingleton ref = ref (((GameConfigurationSingleton.getInstance ()) :> GameConfigurationSingleton.gameConfigurationSingleton)) in ();
        let gameConfiguration : GameConfiguration.gameConfiguration ref = ref (((!gameConfigurationSingleton#getInstanceByName (((Obj.magic gauge)#getLabel ()))) :> GameConfiguration.gameConfiguration)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Gauge Default: "));
        ignore (!stringBuffer#append ((!gameConfiguration#getName ())));
        ignore (!stringBuffer#append (tO));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr (((!gameConfiguration#getDefaultValue ())#intValue ()))))));
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "setDefault"));
        ignore ((Obj.magic gauge)#setValue ((((!gameConfiguration#getDefaultValue ())#intValue ()) - ((!gameConfiguration#getMinValue ())#intValue ()))));
        ignore (!gameConfiguration#setValue ((!gameConfiguration#getDefaultValue ())))
        end [@@warning "-20"]
    

    method updateChallange : 'any1 'any2. 'any1 * 'any2 -> unit = fun (gameOptionsForm, gameConfiguration) ->
        let gameOptionsForm = Obj.repr gameOptionsForm in
        let gameConfiguration = Obj.repr gameConfiguration in
        begin
        let gameConfigurationSingleton : GameConfigurationSingleton.gameConfigurationSingleton ref = ref (((GameConfigurationSingleton.getInstance ()) :> GameConfigurationSingleton.gameConfigurationSingleton)) in ();
        let gameConfigurationCentral : GameConfigurationCentral.gameConfigurationCentral ref = ref (((GameConfigurationCentral.getInstance ()) :> GameConfigurationCentral.gameConfigurationCentral)) in ();
        if ((Obj.repr (Obj.magic gameConfiguration)) == (Obj.repr !gameConfigurationCentral#cHALLENGE_LEVEL)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "updateChallange"));
            ignore (!gameConfigurationCentral#cOLLIDE_DAMAGE#setValue (((Obj.magic gameConfiguration)#getValue ())));
            ignore (!gameConfigurationCentral#aTTACK_CHALLENGE_LEVEL#setValue (((Obj.magic gameConfiguration)#getValue ())));
            ignore (!gameConfigurationCentral#dURABILITY_CHALLENGE_LEVEL#setValue (((Obj.magic gameConfiguration)#getValue ())));
            ignore (!gameConfigurationCentral#sPEED_CHALLENGE_LEVEL#setValue (((Obj.magic gameConfiguration)#getValue ())));
            let size : int ref = ref (((Obj.magic gameOptionsForm)#size ())) in ();
            for index = 0 to !size - 1 do
                let item : Obj.t ref = ref ((Obj.repr ((Obj.magic gameOptionsForm)#get (index)))) in ();
                if (java_instanceof (Obj.repr (Obj.magic !item)) "GameConfigurationGauge") then begin
                    let gauge : GameConfigurationGauge.gameConfigurationGauge ref = ref (((Obj.magic (Obj.magic !item)) :> GameConfigurationGauge.gameConfigurationGauge)) in ();
                    let name : string ref = ref (((Obj.magic !item)#getLabel ())) in ();
                    let nextGameConfiguration : GameConfiguration.gameConfiguration ref = ref (((!gameConfigurationSingleton#getInstanceByName (!name)) :> GameConfiguration.gameConfiguration)) in ();
                    if ((Obj.repr !nextGameConfiguration) == (Obj.repr !gameConfigurationCentral#cOLLIDE_DAMAGE)) then begin
                        ignore (!gauge#setValue ((((!gameConfigurationCentral#cOLLIDE_DAMAGE#getValue ())#intValue ()) - (((Obj.magic gameConfiguration)#getMinValue ())#intValue ()))))
                    end else if ((Obj.repr !nextGameConfiguration) == (Obj.repr !gameConfigurationCentral#dURABILITY_CHALLENGE_LEVEL)) then begin
                        ignore (!gauge#setValue ((((!gameConfigurationCentral#dURABILITY_CHALLENGE_LEVEL#getValue ())#intValue ()) - (((Obj.magic gameConfiguration)#getMinValue ())#intValue ()))))
                    end else if ((Obj.repr !nextGameConfiguration) == (Obj.repr !gameConfigurationCentral#aTTACK_CHALLENGE_LEVEL)) then begin
                        ignore (!gauge#setValue ((((!gameConfigurationCentral#aTTACK_CHALLENGE_LEVEL#getValue ())#intValue ()) - (((Obj.magic gameConfiguration)#getMinValue ())#intValue ()))))
                    end else if ((Obj.repr !nextGameConfiguration) == (Obj.repr !gameConfigurationCentral#sPEED_CHALLENGE_LEVEL)) then begin
                        ignore (!gauge#setValue ((((!gameConfigurationCentral#sPEED_CHALLENGE_LEVEL#getValue ())#intValue ()) - (((Obj.magic gameConfiguration)#getMinValue ())#intValue ()))))
                    end
                end
            done
        end
        end [@@warning "-20"]
    

    method updateCompetitionValue () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "updateCompetitionValue"));
        let gameConfigurationCentral : GameConfigurationCentral.gameConfigurationCentral ref = ref (((GameConfigurationCentral.getInstance ()) :> GameConfigurationCentral.gameConfigurationCentral)) in ();
        cOMPETITION_VALUE <- (((((!gameConfigurationCentral#cOLLIDE_DAMAGE#getValue ())#intValue ()) + ((!gameConfigurationCentral#aTTACK_CHALLENGE_LEVEL#getValue ())#intValue ())) + ((!gameConfigurationCentral#dURABILITY_CHALLENGE_LEVEL#getValue ())#intValue ())) + ((!gameConfigurationCentral#sPEED_CHALLENGE_LEVEL#getValue ())#intValue ()));
        cOMPETITION_VALUE <- ((cOMPETITION_VALUE asr 2))
        end
    

    method getCompetitionValue () : int =
        begin
        cOMPETITION_VALUE
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        gAUGE_UPDATE <- "Gauge Update: ";
        fROM <- " from: ";
        tO <- " to: ";
        cOMPETITION_VALUE <- 1;
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameConfigurationUtil" (fun arguments -> Obj.repr (new gameConfigurationUtil (Obj.obj arguments)))

let instance = (new gameConfigurationUtil ())
let get_instance () = instance
let () = java_register_static "GameConfigurationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameConfigurationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


