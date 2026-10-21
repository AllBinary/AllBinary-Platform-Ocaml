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
(* import javax.microedition.lcdui.ItemStateListener *)
(* import org.allbinary.game.configuration.GameConfigurationGauge *)
(* import org.allbinary.game.configuration.GameConfigurationUtil *)
(* import org.allbinary.game.configuration.GameOptionsForm *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let toggleList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList))
let get_toggleList () = !toggleList
let set_toggleList value' = toggleList := value'
let () = java_register_static "GameFeatureItemStateListener.get_toggleList" (fun _ -> Obj.repr (get_toggleList ()))

let add : 'any1. 'any1 -> unit = fun (gameFeature) ->
        let gameFeature = Obj.repr gameFeature in
        begin
        if (not (!toggleList#contains ((Obj.magic gameFeature)))) then begin
            ignore (!toggleList#add ((Obj.magic gameFeature)))
        end
        end [@@warning "-20"]

let () = java_register_static "GameFeatureItemStateListener.add" (fun arguments -> Obj.repr (add (Obj.obj arguments)))
class gameFeatureItemStateListener (gameOptionsForm_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable gameOptionsForm : Obj.t = Obj.repr 0
    method gameOptionsForm : 'r. 'r = Obj.magic gameOptionsForm
    method set_gameOptionsForm : 'v. 'v -> unit = fun value' -> gameOptionsForm <- Obj.repr value'
    
    

    method itemStateChanged : 'any1. 'any1 -> unit = fun (item) ->
        let item = Obj.repr item in
        begin
        (try
            let itemLabel : string ref = ref (((Obj.magic item)#getLabel ())) in ();
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#iTEM_LABEL))#append (!itemLabel)))), self, "itemStateChanged"));
            if (java_instanceof (Obj.repr (Obj.magic item)) "GameConfigurationGauge") then begin
                ignore ((Obj.magic (java_call_static "GameConfigurationUtil.getInstance" (Obj.repr ())))#change ((Obj.magic gameOptionsForm), (Obj.magic (Obj.magic item))))
            end else if (java_instanceof (Obj.repr (Obj.magic item)) "ChoiceGroup") then begin
                let gameFeatureUtil : GameFeatureUtil.gameFeatureUtil ref = ref (((GameFeatureUtil.getInstance ()) :> GameFeatureUtil.gameFeatureUtil)) in ();
                if (!gameFeatureUtil#isExclusive (!itemLabel)) then begin
                    ignore (!gameFeatureUtil#updateExclusiveForChoiceGroup ((Obj.magic (Obj.magic item))))
                end else begin
                    ignore (!gameFeatureUtil#updateMultiple ((Obj.magic (Obj.magic item))))
                end
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "itemStateChanged", e))
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        gameOptionsForm <- Obj.repr (gameOptionsForm_arg);
        let gameFeatureFactory : GameFeatureFactory.gameFeatureFactory ref = ref (((GameFeatureFactory.getInstance ()) :> GameFeatureFactory.gameFeatureFactory)) in ();
        ignore (add (!gameFeatureFactory#aRTIFICIAL_INTELLEGENCE_PROCESSOR));
        ignore (add (!gameFeatureFactory#cOLLIDABLE_INTERFACE_LAYER_PROCESSOR));
        ignore (add (!gameFeatureFactory#dAMAGE_FLOATERS));
        ignore (add (!gameFeatureFactory#dROPPED_ITEMS));
        ignore (add (!gameFeatureFactory#gAME_INPUT_LAYER_PROCESSOR));
        ignore (add (!gameFeatureFactory#hEALTH_BARS));
        ignore (add (!gameFeatureFactory#sOUND));
        ignore (add (!gameFeatureFactory#tICKABLE_LAYER_PROCESSOR))
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameFeatureItemStateListener" (fun arguments -> Obj.repr (new gameFeatureItemStateListener (Obj.obj arguments)))


