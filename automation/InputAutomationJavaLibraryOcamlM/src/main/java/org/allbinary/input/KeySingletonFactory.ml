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
(* package org.allbinary.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.event.KeyEvent *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)

let keyStringHashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ())))
let get_keyStringHashtable () = Obj.magic !keyStringHashtable
let set_keyStringHashtable value' = keyStringHashtable := Obj.repr value'
let () = java_register_static "KeySingletonFactory.get_keyStringHashtable" (fun _ -> Obj.repr (get_keyStringHashtable ()))
let keyArray : int array ref = ref ([| (KeyEvent.get_vK_0 ()); (KeyEvent.get_vK_1 ()); (KeyEvent.get_vK_2 ()); (KeyEvent.get_vK_3 ()); (KeyEvent.get_vK_4 ()); (KeyEvent.get_vK_5 ()); (KeyEvent.get_vK_6 ()); (KeyEvent.get_vK_7 ()); (KeyEvent.get_vK_8 ()); (KeyEvent.get_vK_9 ()); (KeyEvent.get_vK_A ()); (KeyEvent.get_vK_B ()); (KeyEvent.get_vK_C ()); (KeyEvent.get_vK_D ()); (KeyEvent.get_vK_E ()); (KeyEvent.get_vK_F ()); (KeyEvent.get_vK_G ()); (KeyEvent.get_vK_H ()); (KeyEvent.get_vK_I ()); (KeyEvent.get_vK_J ()); (KeyEvent.get_vK_K ()); (KeyEvent.get_vK_L ()); (KeyEvent.get_vK_M ()); (KeyEvent.get_vK_N ()); (KeyEvent.get_vK_O ()); (KeyEvent.get_vK_Q ()); (KeyEvent.get_vK_R ()); (KeyEvent.get_vK_S ()); (KeyEvent.get_vK_T ()); (KeyEvent.get_vK_U ()); (KeyEvent.get_vK_V ()); (KeyEvent.get_vK_W ()); (KeyEvent.get_vK_X ()); (KeyEvent.get_vK_Y ()); (KeyEvent.get_vK_Z ()); (KeyEvent.get_vK_NUMPAD0 ()); (KeyEvent.get_vK_NUMPAD1 ()); (KeyEvent.get_vK_NUMPAD2 ()); (KeyEvent.get_vK_NUMPAD3 ()); (KeyEvent.get_vK_NUMPAD4 ()); (KeyEvent.get_vK_NUMPAD5 ()); (KeyEvent.get_vK_NUMPAD6 ()); (KeyEvent.get_vK_NUMPAD7 ()); (KeyEvent.get_vK_NUMPAD8 ()); (KeyEvent.get_vK_NUMPAD9 ()); (KeyEvent.get_vK_NUM_LOCK ()); (KeyEvent.get_vK_F1 ()); (KeyEvent.get_vK_F2 ()); (KeyEvent.get_vK_F3 ()); (KeyEvent.get_vK_F4 ()); (KeyEvent.get_vK_F5 ()); (KeyEvent.get_vK_F6 ()); (KeyEvent.get_vK_F7 ()); (KeyEvent.get_vK_F8 ()); (KeyEvent.get_vK_F9 ()); (KeyEvent.get_vK_F10 ()); (KeyEvent.get_vK_F11 ()); (KeyEvent.get_vK_F12 ()); (KeyEvent.get_vK_F13 ()); (KeyEvent.get_vK_F14 ()); (KeyEvent.get_vK_F15 ()); (KeyEvent.get_vK_F16 ()); (KeyEvent.get_vK_F17 ()); (KeyEvent.get_vK_F18 ()); (KeyEvent.get_vK_F19 ()); (KeyEvent.get_vK_F20 ()); (KeyEvent.get_vK_F21 ()); (KeyEvent.get_vK_F22 ()); (KeyEvent.get_vK_F23 ()); (KeyEvent.get_vK_F24 ()); (KeyEvent.get_vK_ACCEPT ()); (KeyEvent.get_vK_ADD ()); (KeyEvent.get_vK_AGAIN ()); (KeyEvent.get_vK_ALL_CANDIDATES ()); (KeyEvent.get_vK_ALPHANUMERIC ()); (KeyEvent.get_vK_ALT ()); (KeyEvent.get_vK_ALT_GRAPH ()); (KeyEvent.get_vK_AMPERSAND ()); (KeyEvent.get_vK_ASTERISK ()); (KeyEvent.get_vK_AT ()); (KeyEvent.get_vK_BACK_QUOTE ()); (KeyEvent.get_vK_BACK_SLASH ()); (KeyEvent.get_vK_BACK_SPACE ()); (KeyEvent.get_vK_BEGIN ()); (KeyEvent.get_vK_BRACELEFT ()); (KeyEvent.get_vK_BRACERIGHT ()); (KeyEvent.get_vK_CANCEL ()); (KeyEvent.get_vK_CAPS_LOCK ()); (KeyEvent.get_vK_CIRCUMFLEX ()); (KeyEvent.get_vK_CLEAR ()); (KeyEvent.get_vK_CLOSE_BRACKET ()); (KeyEvent.get_vK_CODE_INPUT ()); (KeyEvent.get_vK_COLON ()); (KeyEvent.get_vK_COMMA ()); (KeyEvent.get_vK_COMPOSE ()); (KeyEvent.get_vK_CONTEXT_MENU ()); (KeyEvent.get_vK_CONTROL ()); (KeyEvent.get_vK_CONVERT ()); (KeyEvent.get_vK_COPY ()); (KeyEvent.get_vK_CUT ()); (KeyEvent.get_vK_DEAD_ABOVEDOT ()); (KeyEvent.get_vK_DEAD_ABOVERING ()); (KeyEvent.get_vK_DEAD_ACUTE ()); (KeyEvent.get_vK_DEAD_BREVE ()); (KeyEvent.get_vK_DEAD_CARON ()); (KeyEvent.get_vK_DEAD_CEDILLA ()); (KeyEvent.get_vK_DEAD_CIRCUMFLEX ()); (KeyEvent.get_vK_DEAD_DIAERESIS ()); (KeyEvent.get_vK_DEAD_DOUBLEACUTE ()); (KeyEvent.get_vK_DEAD_GRAVE ()); (KeyEvent.get_vK_DEAD_IOTA ()); (KeyEvent.get_vK_DEAD_MACRON ()); (KeyEvent.get_vK_DEAD_OGONEK ()); (KeyEvent.get_vK_DEAD_SEMIVOICED_SOUND ()); (KeyEvent.get_vK_DEAD_TILDE ()); (KeyEvent.get_vK_DEAD_VOICED_SOUND ()); (KeyEvent.get_vK_DECIMAL ()); (KeyEvent.get_vK_DELETE ()); (KeyEvent.get_vK_DIVIDE ()); (KeyEvent.get_vK_DOLLAR ()); (KeyEvent.get_vK_DOWN ()); (KeyEvent.get_vK_END ()); (KeyEvent.get_vK_ENTER ()); (KeyEvent.get_vK_EQUALS ()); (KeyEvent.get_vK_ESCAPE ()); (KeyEvent.get_vK_EURO_SIGN ()); (KeyEvent.get_vK_EXCLAMATION_MARK ()); (KeyEvent.get_vK_FINAL ()); (KeyEvent.get_vK_FIND ()); (KeyEvent.get_vK_FULL_WIDTH ()); (KeyEvent.get_vK_GREATER ()); (KeyEvent.get_vK_HALF_WIDTH ()); (KeyEvent.get_vK_HELP ()); (KeyEvent.get_vK_HIRAGANA ()); (KeyEvent.get_vK_HOME ()); (KeyEvent.get_vK_INPUT_METHOD_ON_OFF ()); (KeyEvent.get_vK_INSERT ()); (KeyEvent.get_vK_INVERTED_EXCLAMATION_MARK ()); (KeyEvent.get_vK_JAPANESE_HIRAGANA ()); (KeyEvent.get_vK_JAPANESE_KATAKANA ()); (KeyEvent.get_vK_JAPANESE_ROMAN ()); (KeyEvent.get_vK_KANA ()); (KeyEvent.get_vK_KANA_LOCK ()); (KeyEvent.get_vK_KANJI ()); (KeyEvent.get_vK_KATAKANA ()); (KeyEvent.get_vK_KP_DOWN ()); (KeyEvent.get_vK_KP_LEFT ()); (KeyEvent.get_vK_KP_RIGHT ()); (KeyEvent.get_vK_KP_UP ()); (KeyEvent.get_vK_LEFT ()); (KeyEvent.get_vK_LEFT_PARENTHESIS ()); (KeyEvent.get_vK_LESS ()); (KeyEvent.get_vK_META ()); (KeyEvent.get_vK_MINUS ()); (KeyEvent.get_vK_MODECHANGE ()); (KeyEvent.get_vK_MULTIPLY ()); (KeyEvent.get_vK_NONCONVERT ()); (KeyEvent.get_vK_NUMBER_SIGN ()); (KeyEvent.get_vK_OPEN_BRACKET ()); (KeyEvent.get_vK_PAGE_DOWN ()); (KeyEvent.get_vK_PAGE_UP ()); (KeyEvent.get_vK_PASTE ()); (KeyEvent.get_vK_PAUSE ()); (KeyEvent.get_vK_PERIOD ()); (KeyEvent.get_vK_PLUS ()); (KeyEvent.get_vK_PREVIOUS_CANDIDATE ()); (KeyEvent.get_vK_PRINTSCREEN ()); (KeyEvent.get_vK_PROPS ()); (KeyEvent.get_vK_QUOTE ()); (KeyEvent.get_vK_QUOTEDBL ()); (KeyEvent.get_vK_RIGHT ()); (KeyEvent.get_vK_RIGHT_PARENTHESIS ()); (KeyEvent.get_vK_SCROLL_LOCK ()); (KeyEvent.get_vK_SEMICOLON ()); (KeyEvent.get_vK_SEPARATER ()); (KeyEvent.get_vK_SEPARATOR ()); (KeyEvent.get_vK_SHIFT ()); (KeyEvent.get_vK_SLASH ()); (KeyEvent.get_vK_SPACE ()); (KeyEvent.get_vK_STOP ()); (KeyEvent.get_vK_SUBTRACT ()); (KeyEvent.get_vK_TAB ()); (KeyEvent.get_vK_UNDEFINED ()); (KeyEvent.get_vK_UNDERSCORE ()); (KeyEvent.get_vK_UNDO ()); (KeyEvent.get_vK_UP ()); (KeyEvent.get_vK_WINDOWS ()) |])
let get_keyArray () = !keyArray
let set_keyArray value' = keyArray := value'
let () = java_register_static "KeySingletonFactory.get_keyArray" (fun _ -> Obj.repr (get_keyArray ()))

let getHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic !keyStringHashtable)))
        end

and getInstance ((index : int)) : int =
        begin
        (string_of_int (index))
        end

and getArray () : int array =
        begin
        !keyArray
        end

let () = java_register_static "KeySingletonFactory.getHashtable" (fun arguments -> Obj.repr (getHashtable (Obj.obj arguments)))
let () = java_register_static "KeySingletonFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "KeySingletonFactory.getArray" (fun arguments -> Obj.repr (getArray (Obj.obj arguments)))
class keySingletonFactory () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "KeySingletonFactory" (fun arguments -> Obj.repr (new keySingletonFactory (Obj.obj arguments)))

let () =
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let sTATIC_BLOCK : string ref = ref ("Static Block") in ();
        (try
            for index = 0 to (Array.length !keyArray) - 1 do
                let keyAsString : string ref = ref ((KeyEvent.getKeyText (!keyArray.(index)))) in ();
                ignore ((Obj.magic !keyStringHashtable)#put (!keyAsString, !keyArray.(index)))
            done
        with e -> begin
            ignore ((Obj.magic !logUtil_arg)#put (!commonStrings#eXCEPTION, "KeySingleFactory", !sTATIC_BLOCK, e))
        end)
        end


