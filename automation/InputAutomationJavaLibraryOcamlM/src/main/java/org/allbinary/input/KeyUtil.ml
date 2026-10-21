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
(* import java.awt.event.KeyEvent *)


let isNormallyDisplayed ((keyCode : int)) : bool =
        begin
        (match keyCode with
            | switch_value when switch_value = (KeyEvent.get_vK_SPACE ()) || switch_value = (KeyEvent.get_vK_COMMA ()) || switch_value = (KeyEvent.get_vK_MINUS ()) || switch_value = (KeyEvent.get_vK_PERIOD ()) || switch_value = (KeyEvent.get_vK_SLASH ()) || switch_value = (KeyEvent.get_vK_0 ()) || switch_value = (KeyEvent.get_vK_1 ()) || switch_value = (KeyEvent.get_vK_2 ()) || switch_value = (KeyEvent.get_vK_3 ()) || switch_value = (KeyEvent.get_vK_4 ()) || switch_value = (KeyEvent.get_vK_5 ()) || switch_value = (KeyEvent.get_vK_6 ()) || switch_value = (KeyEvent.get_vK_7 ()) || switch_value = (KeyEvent.get_vK_8 ()) || switch_value = (KeyEvent.get_vK_9 ()) || switch_value = (KeyEvent.get_vK_SEMICOLON ()) || switch_value = (KeyEvent.get_vK_EQUALS ()) || switch_value = (KeyEvent.get_vK_A ()) || switch_value = (KeyEvent.get_vK_B ()) || switch_value = (KeyEvent.get_vK_C ()) || switch_value = (KeyEvent.get_vK_D ()) || switch_value = (KeyEvent.get_vK_E ()) || switch_value = (KeyEvent.get_vK_F ()) || switch_value = (KeyEvent.get_vK_G ()) || switch_value = (KeyEvent.get_vK_H ()) || switch_value = (KeyEvent.get_vK_I ()) || switch_value = (KeyEvent.get_vK_J ()) || switch_value = (KeyEvent.get_vK_K ()) || switch_value = (KeyEvent.get_vK_L ()) || switch_value = (KeyEvent.get_vK_M ()) || switch_value = (KeyEvent.get_vK_N ()) || switch_value = (KeyEvent.get_vK_O ()) || switch_value = (KeyEvent.get_vK_P ()) || switch_value = (KeyEvent.get_vK_Q ()) || switch_value = (KeyEvent.get_vK_R ()) || switch_value = (KeyEvent.get_vK_S ()) || switch_value = (KeyEvent.get_vK_T ()) || switch_value = (KeyEvent.get_vK_U ()) || switch_value = (KeyEvent.get_vK_V ()) || switch_value = (KeyEvent.get_vK_W ()) || switch_value = (KeyEvent.get_vK_X ()) || switch_value = (KeyEvent.get_vK_Y ()) || switch_value = (KeyEvent.get_vK_Z ()) || switch_value = (KeyEvent.get_vK_OPEN_BRACKET ()) || switch_value = (KeyEvent.get_vK_BACK_SLASH ()) || switch_value = (KeyEvent.get_vK_CLOSE_BRACKET ()) || switch_value = (KeyEvent.get_vK_NUMPAD0 ()) || switch_value = (KeyEvent.get_vK_NUMPAD1 ()) || switch_value = (KeyEvent.get_vK_NUMPAD2 ()) || switch_value = (KeyEvent.get_vK_NUMPAD3 ()) || switch_value = (KeyEvent.get_vK_NUMPAD4 ()) || switch_value = (KeyEvent.get_vK_NUMPAD5 ()) || switch_value = (KeyEvent.get_vK_NUMPAD6 ()) || switch_value = (KeyEvent.get_vK_NUMPAD7 ()) || switch_value = (KeyEvent.get_vK_NUMPAD8 ()) || switch_value = (KeyEvent.get_vK_NUMPAD9 ()) || switch_value = (KeyEvent.get_vK_MULTIPLY ()) || switch_value = (KeyEvent.get_vK_ADD ()) || switch_value = (KeyEvent.get_vK_SEPARATER ()) || switch_value = (KeyEvent.get_vK_SUBTRACT ()) || switch_value = (KeyEvent.get_vK_DECIMAL ()) || switch_value = (KeyEvent.get_vK_DIVIDE ()) -> begin
                true
            end
            | _ -> begin
                false
            end)
        end

let () = java_register_static "KeyUtil.isNormallyDisplayed" (fun arguments -> Obj.repr (isNormallyDisplayed (Obj.obj arguments)))
class keyUtil () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "KeyUtil" (fun arguments -> Obj.repr (new keyUtil (Obj.obj arguments)))


