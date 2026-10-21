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
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.Item *)
(* import javax.microedition.lcdui.ItemCommandListener *)
(* import org.allbinary.game.configuration.GameConfigurationGauge *)
(* import org.allbinary.game.configuration.GameConfigurationUtil *)
(* import org.allbinary.game.configuration.GameOptionsForm *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.midlet.MidletStrings *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)

class gameFeatureItemCommandListener (gameOptionsForm_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable gameOptionsForm : Obj.t = Obj.repr 0
    method gameOptionsForm : 'r. 'r = Obj.magic gameOptionsForm
    method set_gameOptionsForm : 'v. 'v -> unit = fun value' -> gameOptionsForm <- Obj.repr value'
    
    

    method commandAction : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_command, item) ->
        let item = Obj.repr item in
        begin
        (try
            let itemLabel : string ref = ref (((Obj.magic item)#getLabel ())) in ();
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#iTEM_LABEL))#append (!itemLabel)))), self, (MidletStrings.getInstance ())#cOMMAND_ACTION));
            if (java_instanceof (Obj.repr (Obj.magic item)) "GameConfigurationGauge") then begin
                ignore ((Obj.magic (java_call_static "GameConfigurationUtil.getInstance" (Obj.repr ())))#change ((Obj.magic gameOptionsForm), (Obj.magic (Obj.magic item))))
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, (MidletStrings.getInstance ())#cOMMAND_ACTION, e))
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        gameOptionsForm <- Obj.repr (gameOptionsForm_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameFeatureItemCommandListener" (fun arguments -> Obj.repr (new gameFeatureItemCommandListener (Obj.obj arguments)))


