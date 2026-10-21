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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.persistance.GamePersistanceStrings *)
(* import org.allbinary.game.input.mapping.InputToGameKeyMapping *)
(* import org.allbinary.game.input.mapping.PersistentInputMapping *)
(* import org.allbinary.input.motion.button.BasicTouchInputFactory *)
(* import org.allbinary.input.motion.gesture.TouchMotionGestureFactory *)

class motionJ2MEDefaultGameInputMapping () =
  object (self)
    inherit PersistentInputMapping.persistentInputMapping ((GamePersistanceStrings.getInstance ())#dEFAULT_INPUT_MAPPING_RECORD_ID)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        let inputToGameKeyMapping : InputToGameKeyMapping.inputToGameKeyMapping ref = ref (((self#getInputMapping ()) :> InputToGameKeyMapping.inputToGameKeyMapping)) in ();
        let gameKeyFactory : GameKeyFactory.gameKeyFactory ref = ref (((GameKeyFactory.getInstance ()) :> GameKeyFactory.gameKeyFactory)) in ();
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#uP, !gameKeyFactory#kEY_NUM2));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEFT, !gameKeyFactory#kEY_NUM4));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#rIGHT, !gameKeyFactory#kEY_NUM6));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#dOWN, !gameKeyFactory#kEY_NUM8));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM1, !gameKeyFactory#gAME_A));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM3, !gameKeyFactory#gAME_B));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM7, !gameKeyFactory#gAME_C));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM9, !gameKeyFactory#gAME_D));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEVEL_DOWN, !gameKeyFactory#lEVEL_DOWN));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEVEL_UP, !gameKeyFactory#lEVEL_UP));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#uP, !gameKeyFactory#uP));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#dOWN, !gameKeyFactory#dOWN));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEFT, !gameKeyFactory#lEFT));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#rIGHT, !gameKeyFactory#rIGHT));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_POUND, !gameKeyFactory#kEY_POUND));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_STAR, !gameKeyFactory#kEY_STAR));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM1, !gameKeyFactory#kEY_NUM1));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM3, !gameKeyFactory#kEY_NUM3));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM5, !gameKeyFactory#kEY_NUM5));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM7, !gameKeyFactory#kEY_NUM7));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM9, !gameKeyFactory#kEY_NUM9));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM0, !gameKeyFactory#kEY_NUM0));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM1, !gameKeyFactory#fIRE));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#uP, (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#uP));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#dOWN, (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#dOWN));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEFT, (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#lEFT));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#rIGHT, (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#rIGHT));
        let basicTouchInputFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "BasicTouchInputFactory.getInstance" (Obj.repr ()))))) in ();
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#uP, (Obj.magic !basicTouchInputFactory)#uP));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEFT, (Obj.magic !basicTouchInputFactory)#lEFT));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#rIGHT, (Obj.magic !basicTouchInputFactory)#rIGHT));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#dOWN, (Obj.magic !basicTouchInputFactory)#dOWN));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM0, (Obj.magic !basicTouchInputFactory)#sPECIAL_BUTTON_FIVE));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM7, (Obj.magic !basicTouchInputFactory)#sPECIAL_BUTTON_FOUR));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM9, (Obj.magic !basicTouchInputFactory)#sPECIAL_BUTTON_THREE));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM1, (Obj.magic !basicTouchInputFactory)#sPECIAL_BUTTON_TWO));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM3, (Obj.magic !basicTouchInputFactory)#sPECIAL_BUTTON_ONE));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM2, (Obj.magic !basicTouchInputFactory)#sPECIAL_BUTTON_SIX))
      end
  end
let () = java_register_constructor "MotionJ2MEDefaultGameInputMapping" (fun arguments -> Obj.repr (new motionJ2MEDefaultGameInputMapping (Obj.obj arguments)))


