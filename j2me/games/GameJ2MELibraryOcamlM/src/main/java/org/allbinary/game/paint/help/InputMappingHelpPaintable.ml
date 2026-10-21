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
(* package org.allbinary.game.paint.help *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.input.GameKey *)
(* import org.allbinary.game.input.GameKeyFactory *)
(* import org.allbinary.game.input.Input *)
(* import org.allbinary.game.input.PlatformInputMappingFactory *)
(* import org.allbinary.game.input.mapping.GameInputMapping *)
(* import org.allbinary.game.input.mapping.PersistentInputMapping *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.color.BasicColorUtil *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)

let aND : string = " and "
let get_aND () = aND
let () = java_register_static "InputMappingHelpPaintable.get_aND" (fun _ -> Obj.repr (get_aND ()))
let sEP : string = ", "
let get_sEP () = sEP
let () = java_register_static "InputMappingHelpPaintable.get_sEP" (fun _ -> Obj.repr (get_sEP ()))
let mORE_THAN_TWO_IN_LIST_AND : string = ", and "
let get_mORE_THAN_TWO_IN_LIST_AND () = mORE_THAN_TWO_IN_LIST_AND
let () = java_register_static "InputMappingHelpPaintable.get_mORE_THAN_TWO_IN_LIST_AND" (fun _ -> Obj.repr (get_mORE_THAN_TWO_IN_LIST_AND ()))
class inputMappingHelpPaintable ((gameInputMappingArray_arg : GameInputMapping.gameInputMapping array), (backgroundBasicColor : BasicColor.basicColor), (basicColor : BasicColor.basicColor)) =
  object (self)
    inherit HelpPaintable.helpPaintable ("Input Mapping", backgroundBasicColor, basicColor) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable basicColorFactory : BasicColorFactory.basicColorFactory = (Obj.magic 0)
    method basicColorFactory = basicColorFactory
    method set_basicColorFactory value' = basicColorFactory <- value'
    val mutable nONE : GameKey.gameKey = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable eMPTY_STRING : string = ""
    method eMPTY_STRING = eMPTY_STRING
    method set_eMPTY_STRING value' = eMPTY_STRING <- value'
    val mutable gameInputMappingArray : GameInputMapping.gameInputMapping array = (Obj.magic 0)
    method gameInputMappingArray = gameInputMappingArray
    method set_gameInputMappingArray value' = gameInputMappingArray <- value'
    val mutable keyMappingArray : BasicArrayList.basicArrayList array = (Obj.magic 0)
    method keyMappingArray = keyMappingArray
    method set_keyMappingArray value' = keyMappingArray <- value'
    val mutable actionBasicColor : BasicColor.basicColor array = (Obj.magic 0)
    method actionBasicColor = actionBasicColor
    method set_actionBasicColor value' = actionBasicColor <- value'
    val mutable inputBasicColorArray : BasicColor.basicColor array array = (Obj.magic 0)
    method inputBasicColorArray = inputBasicColorArray
    method set_inputBasicColorArray value' = inputBasicColorArray <- value'
    val mutable selectedBasicColor : BasicColor.basicColor = (Obj.magic 0)
    method selectedBasicColor = selectedBasicColor
    method set_selectedBasicColor value' = selectedBasicColor <- value'
    val mutable updateMyFontProperties : UpdateMyFontProperties.updateMyFontProperties = (Obj.magic 0)
    method updateMyFontProperties = updateMyFontProperties
    method set_updateMyFontProperties value' = updateMyFontProperties <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        let updateMyFontProperties_arg : UpdateMyFontProperties.updateMyFontProperties ref = ref (((new UpdateMyFontProperties.updateMyFontProperties ()) :> UpdateMyFontProperties.updateMyFontProperties)) in ();
        !updateMyFontProperties_arg#set_charHeight (((Obj.magic !font)#getHeight ()));
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let inputInfo : string array ref = ref (inputInfo) in ();
        let size : int ref = ref ((Array.length !inputInfo)) in ();
        !updateMyFontProperties_arg#set_actionStringArray ((Array.make (!size) (Obj.magic 0)));
        !updateMyFontProperties_arg#set_keymappingBeginWidthArray ((Array.make (!size) 0));
        !updateMyFontProperties_arg#set_actionStringDeltaXArray ((Array.make (!size) 0));
        !updateMyFontProperties_arg#set_inputDeltaXArray ((Array.make_matrix (!size) (0) 0));
        !updateMyFontProperties_arg#set_sepArray ((Array.make_matrix (!size) (0) (Obj.magic 0)));
        !updateMyFontProperties_arg#set_sepWidthArray ((Array.make_matrix (!size) (0) 0));
        let list : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        let keyMappings : string ref = ref ("") in ();
        let actionString : string ref = ref ("") in ();
        let input : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let size2 : int ref = ref (0) in ();
        for index = 0 to !size - 1 do
            list := keyMappingArray.(index);
            keyMappings := (self#get (!list));
            ignore (!stringMaker#delete (0, (!stringMaker#length ())));
            actionString := (java_string_of (Obj.repr ((((!stringMaker#append (!inputInfo.(index)))#append (commonSeps#cOLON))#append (commonSeps#sPACE))#append (commonSeps#sPACE))));
            !updateMyFontProperties_arg#set_actionStringArray.(index) (!actionString);
            ignore (!stringMaker#delete (0, (!stringMaker#length ())));
            !updateMyFontProperties_arg#set_keymappingBeginWidthArray.(index) (((((Obj.magic !font)#stringWidth ((java_string_of (Obj.repr ((!stringMaker#append (!updateMyFontProperties_arg#actionStringArray.(index)))#append (!keyMappings)))))) asr 1)));
            !updateMyFontProperties_arg#set_actionStringDeltaXArray.(index) (((Obj.magic !font)#stringWidth (!actionString)));
            size2 := (!list#size ());
            !updateMyFontProperties_arg#set_inputDeltaXArray.(index) ((Array.make (!size2) 0));
            !updateMyFontProperties_arg#set_sepArray.(index) ((Array.make (!size2) (Obj.magic 0)));
            !updateMyFontProperties_arg#set_sepWidthArray.(index) ((Array.make (!size2) 0));
            for index2 = 0 to !size2 - 1 do
                input := Obj.repr ((Obj.magic !list#objectArray.(index2)));
                !updateMyFontProperties_arg#set_inputDeltaXArray.(index).(index2) (((Obj.magic !font)#stringWidth (((Obj.magic !input)#getName ()))));
                !updateMyFontProperties_arg#set_sepArray.(index).(index2) (eMPTY_STRING);
                if ((index2 + 1) < (!list#size ())) then begin
                    if ((!list#size ()) = 2) then begin
                        !updateMyFontProperties_arg#set_sepArray.(index).(index2) (aND)
                    end else begin
                        if ((index2 + 2) = (!list#size ())) then begin
                            !updateMyFontProperties_arg#set_sepArray.(index).(index2) (mORE_THAN_TWO_IN_LIST_AND)
                        end else begin
                            !updateMyFontProperties_arg#set_sepArray.(index).(index2) (sEP)
                        end
                    end
                end;
                if (!updateMyFontProperties_arg#sepArray.(index).(index2) != eMPTY_STRING) then begin
                    !updateMyFontProperties_arg#set_sepWidthArray.(index).(index2) (((Obj.magic !font)#stringWidth (!updateMyFontProperties_arg#sepArray.(index).(index2))))
                end
            done
        done;
        updateMyFontProperties <- !updateMyFontProperties_arg;
        ignore (super#updateMeasurement ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method update : 'any1 'any2. 'any1 * 'any2 -> unit = fun (selectedGameKey, selectedInput) ->
        let selectedGameKey = Obj.repr selectedGameKey in
        let selectedInput = Obj.repr selectedInput in
        begin
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((!stringMaker#append ((CommonLabels.getInstance ())#sTART_LABEL))#append ("selected GameKey: "))#append ((stringUtil#toString ((Obj.magic selectedGameKey)))))#append (" Input: "))#append ((stringUtil#toString ((Obj.magic selectedInput))))))), self, commonStrings#uPDATE));
        let gameKeyMapping : PersistentInputMapping.persistentInputMapping ref = ref ((((Obj.magic (java_call_static "PlatformInputMappingFactory.getInstance" (Obj.repr ())))#getPersistentInputMappingInstance ()) :> PersistentInputMapping.persistentInputMapping)) in ();
        let size : int ref = ref ((Array.length gameInputMappingArray)) in ();
        let keyInfo : string array ref = ref ((Array.make (!size) (Obj.magic 0))) in ();
        let keyMappingArray_arg : BasicArrayList.basicArrayList array ref = ref ((Array.make (!size) (Obj.magic 0))) in ();
        let actionBasicColor_arg : BasicColor.basicColor array ref = ref ((Array.make (!size) (Obj.magic 0))) in ();
        let inputBasicColorArray_arg : BasicColor.basicColor array array ref = ref ((Array.make (!size) [||])) in ();
        let gameInputMapping : GameInputMapping.gameInputMapping ref = ref (((Obj.magic 0) :> GameInputMapping.gameInputMapping)) in ();
        let gameKey : GameKey.gameKey ref = ref (((Obj.magic 0) :> GameKey.gameKey)) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        for index = 0 to !size - 1 do
            gameInputMapping := gameInputMappingArray.(index);
            gameKey := (!gameInputMapping#getGameKey ());
            list := ((!gameKeyMapping#getInputMapping ())#getMappedInput (!gameKey));
            let size2 : int ref = ref ((!list#size ())) in ();
            !inputBasicColorArray_arg.(index) <- (Array.make (!size2) (Obj.magic 0));
            for index2 = 0 to !size2 - 1 do
                !inputBasicColorArray_arg.(index).(index2) <- basicColor
            done;
            if ((Obj.repr !gameKey) == (Obj.repr (Obj.magic selectedGameKey))) then begin
                ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((!stringMaker#append ("Found: selected GameKey: "))#append ((stringUtil#toString ((Obj.magic selectedGameKey))))))), self, commonStrings#uPDATE));
                !actionBasicColor_arg.(index) <- (selectedBasicColor :> BasicColor.basicColor);
                let indexOfSelectedInput : int ref = ref ((!list#indexOf ((Obj.magic selectedInput)))) in ();
                if (!indexOfSelectedInput >= 0) then begin
                    ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((!stringMaker#append ("Found: selected Input: "))#append ((stringUtil#toString ((Obj.magic selectedInput))))))), self, commonStrings#uPDATE));
                    !inputBasicColorArray_arg.(index).(!indexOfSelectedInput) <- selectedBasicColor
                end
            end else begin
                !actionBasicColor_arg.(index) <- (basicColor :> BasicColor.basicColor)
            end;
            !keyInfo.(index) <- (!gameInputMapping#getName ());
            !keyMappingArray_arg.(index) <- (!list :> BasicArrayList.basicArrayList)
        done;
        keyMappingArray <- !keyMappingArray_arg;
        actionBasicColor <- !actionBasicColor_arg;
        inputBasicColorArray <- !inputBasicColorArray_arg;
        ignore (super#setInputInfoP (!keyInfo));
        myFontProcessor <- updateMyFontProcessor
        end [@@warning "-7-20"]
    

    method get : 'any1. 'any1 -> string = fun (keyList) ->
        let keyList = Obj.repr keyList in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let key : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let size : int ref = ref (((Obj.magic keyList)#size ())) in ();
        for index = 0 to !size - 1 do
            key := Obj.repr ((Obj.magic (Obj.magic keyList)#objectArray.(index)));
            ignore (!stringBuffer#append (((Obj.magic !key)#getName ())));
            if ((index + 1) < ((Obj.magic keyList)#size ())) then begin
                if (((Obj.magic keyList)#size ()) = 2) then begin
                    ignore (!stringBuffer#append (aND))
                end else begin
                    if ((index + 2) = ((Obj.magic keyList)#size ())) then begin
                        ignore (!stringBuffer#append (mORE_THAN_TWO_IN_LIST_AND))
                    end else begin
                        ignore (!stringBuffer#append (sEP))
                    end
                end
            end
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        let halfWidth : int ref = ref ((displayInfo#getLastHalfWidth ())) in ();
        ignore ((Obj.magic graphics)#setColor ((basicColor#intValue ())));
        ignore ((Obj.magic graphics)#drawString (title, (!halfWidth - titleBeginWidth), updateMyFontProperties#charHeight, anchor));
        let inputInfo : string array ref = ref (inputInfo) in ();
        let size : int ref = ref ((Array.length !inputInfo)) in ();
        let y : int ref = ref (0) in ();
        let deltaX : int ref = ref (0) in ();
        let size2 : int ref = ref (0) in ();
        let actionString : string ref = ref ("") in ();
        let input : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        let sep : string ref = ref ("") in ();
        let beginWidth : int ref = ref (0) in ();
        for index = 0 to !size - 1 do
            y := (((index + 3)) * updateMyFontProperties#charHeight);
            deltaX := 0;
            list := keyMappingArray.(index);
            size2 := (!list#size ());
            beginWidth := updateMyFontProperties#keymappingBeginWidthArray.(index);
            ignore ((Obj.magic graphics)#setColor ((actionBasicColor.(index)#intValue ())));
            actionString := updateMyFontProperties#actionStringArray.(index);
            ignore ((Obj.magic graphics)#drawString (!actionString, ((!halfWidth - !beginWidth) + !deltaX), !y, anchor));
            deltaX := (!deltaX + updateMyFontProperties#actionStringDeltaXArray.(index));
            for index2 = 0 to !size2 - 1 do
                input := Obj.repr ((Obj.magic !list#objectArray.(index2)));
                ignore ((Obj.magic graphics)#setColor ((inputBasicColorArray.(index).(index2)#intValue ())));
                ignore ((Obj.magic graphics)#drawString (((Obj.magic !input)#getName ()), ((!halfWidth - !beginWidth) + !deltaX), !y, anchor));
                deltaX := (!deltaX + updateMyFontProperties#inputDeltaXArray.(index).(index2));
                sep := updateMyFontProperties#sepArray.(index).(index2);
                ignore ((Obj.magic graphics)#setColor ((basicColor#intValue ())));
                ignore ((Obj.magic graphics)#drawString (!sep, ((!halfWidth - !beginWidth) + !deltaX), !y, anchor));
                deltaX := (!deltaX + updateMyFontProperties#sepWidthArray.(index).(index2))
            done
        done
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        basicColorFactory <- ((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory);
        nONE <- ((GameKeyFactory.getInstance ())#nONE :> GameKey.gameKey);
        eMPTY_STRING <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        keyMappingArray <- (Array.make (0) (Obj.magic 0));
        actionBasicColor <- (BasicColorUtil.getInstance ())#zERO_ARRAY;
        inputBasicColorArray <- (Array.make_matrix (0) (0) (Obj.magic 0));
        selectedBasicColor <- ((Obj.magic 0) :> BasicColor.basicColor);
        updateMyFontProperties <- ((new UpdateMyFontProperties.updateMyFontProperties ()) :> UpdateMyFontProperties.updateMyFontProperties);
        ();
        (* super(...) is the inherit clause *) ();
        gameInputMappingArray <- gameInputMappingArray_arg;
        (self#update (nONE, nONE));
        if (((Obj.repr backgroundBasicColor) == (Obj.repr basicColorFactory#wHITE)) || ((Obj.repr basicColor) == (Obj.repr basicColorFactory#wHITE))) then begin
            selectedBasicColor <- basicColorFactory#rED
        end else begin
            selectedBasicColor <- basicColorFactory#wHITE
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "InputMappingHelpPaintable" (fun arguments -> Obj.repr (new inputMappingHelpPaintable (Obj.obj arguments)))


