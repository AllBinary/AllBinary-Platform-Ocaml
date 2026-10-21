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

class motionLaptopDefaultGameInputMapping () =
  object (self)
    inherit PersistentInputMapping.persistentInputMapping ((GamePersistanceStrings.getInstance ())#dEFAULT_INPUT_MAPPING_RECORD_ID)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        let pcKeyFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PCKeyFactory.getInstance" (Obj.repr ()))))) in ();
        let inputToGameKeyMapping : InputToGameKeyMapping.inputToGameKeyMapping ref = ref (((self#getInputMapping ()) :> InputToGameKeyMapping.inputToGameKeyMapping)) in ();
        let gameKeyFactory : GameKeyFactory.gameKeyFactory ref = ref (((GameKeyFactory.getInstance ()) :> GameKeyFactory.gameKeyFactory)) in ();
        let touchMotionGestureFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ()))))) in ();
        let basicTouchInputFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "BasicTouchInputFactory.getInstance" (Obj.repr ()))))) in ();
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#fIRE, (Obj.magic !pcKeyFactory)#eNTER));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM1, (Obj.magic !pcKeyFactory)#fOUR));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM1, (Obj.magic !pcKeyFactory)#_P));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM1, (Obj.magic !pcKeyFactory)#p));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#uP, (Obj.magic !pcKeyFactory)#dPAD_UP));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#dOWN, (Obj.magic !pcKeyFactory)#dPAD_DOWN));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEFT, (Obj.magic !pcKeyFactory)#dPAD_LEFT));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#rIGHT, (Obj.magic !pcKeyFactory)#dPAD_RIGHT));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM7, (Obj.magic !pcKeyFactory)#_Y));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM9, (Obj.magic !pcKeyFactory)#_I));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#uP, (Obj.magic !pcKeyFactory)#_U));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEFT, (Obj.magic !pcKeyFactory)#_H));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#rIGHT, (Obj.magic !pcKeyFactory)#_J));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#dOWN, (Obj.magic !pcKeyFactory)#_N));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM5, (Obj.magic !pcKeyFactory)#_M));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM7, (Obj.magic !pcKeyFactory)#y));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM9, (Obj.magic !pcKeyFactory)#i));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#uP, (Obj.magic !pcKeyFactory)#u));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEFT, (Obj.magic !pcKeyFactory)#h));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#rIGHT, (Obj.magic !pcKeyFactory)#j));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#dOWN, (Obj.magic !pcKeyFactory)#n));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM5, (Obj.magic !pcKeyFactory)#m));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM7, (Obj.magic !pcKeyFactory)#_Q));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM9, (Obj.magic !pcKeyFactory)#_E));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#uP, (Obj.magic !pcKeyFactory)#_W));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEFT, (Obj.magic !pcKeyFactory)#_A));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#rIGHT, (Obj.magic !pcKeyFactory)#_D));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#dOWN, (Obj.magic !pcKeyFactory)#_S));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM5, (Obj.magic !pcKeyFactory)#_X));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM7, (Obj.magic !pcKeyFactory)#q));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM9, (Obj.magic !pcKeyFactory)#e));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#uP, (Obj.magic !pcKeyFactory)#w));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEFT, (Obj.magic !pcKeyFactory)#a));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#rIGHT, (Obj.magic !pcKeyFactory)#d));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#dOWN, (Obj.magic !pcKeyFactory)#s));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM5, (Obj.magic !pcKeyFactory)#x));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#uP, (Obj.magic !touchMotionGestureFactory)#uP));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#dOWN, (Obj.magic !touchMotionGestureFactory)#dOWN));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEFT, (Obj.magic !touchMotionGestureFactory)#lEFT));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#rIGHT, (Obj.magic !touchMotionGestureFactory)#rIGHT));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#uP, (Obj.magic !basicTouchInputFactory)#uP));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEFT, (Obj.magic !basicTouchInputFactory)#lEFT));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#rIGHT, (Obj.magic !basicTouchInputFactory)#rIGHT));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#dOWN, (Obj.magic !basicTouchInputFactory)#dOWN));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM0, (Obj.magic !basicTouchInputFactory)#sPECIAL_BUTTON_FIVE));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM7, (Obj.magic !basicTouchInputFactory)#sPECIAL_BUTTON_FOUR));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM9, (Obj.magic !basicTouchInputFactory)#sPECIAL_BUTTON_THREE));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM1, (Obj.magic !basicTouchInputFactory)#sPECIAL_BUTTON_TWO));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM3, (Obj.magic !basicTouchInputFactory)#sPECIAL_BUTTON_ONE));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM2, (Obj.magic !basicTouchInputFactory)#sPECIAL_BUTTON_SIX));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM3, (Obj.magic !pcKeyFactory)#tHREE));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM0, (Obj.magic !pcKeyFactory)#zERO));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM0, (Obj.magic !pcKeyFactory)#oNE));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_NUM0, (Obj.magic !pcKeyFactory)#sPACE));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_POUND, (Obj.magic !pcKeyFactory)#dEL));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_POUND, (Obj.magic !pcKeyFactory)#tWO));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_STAR, (Obj.magic !pcKeyFactory)#eSCAPE));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#kEY_STAR, (Obj.magic !pcKeyFactory)#sTAR));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEVEL_DOWN, (Obj.magic !pcKeyFactory)#cOMMA));
        ignore (!inputToGameKeyMapping#add (!gameKeyFactory#lEVEL_UP, (Obj.magic !pcKeyFactory)#pERIOD))
      end
  end
let () = java_register_constructor "MotionLaptopDefaultGameInputMapping" (fun arguments -> Obj.repr (new motionLaptopDefaultGameInputMapping (Obj.obj arguments)))


