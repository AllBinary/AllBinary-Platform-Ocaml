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
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.string.CommonPhoneStrings *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "GameKeyFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class gameKeyFactory () =
  object
    val mutable nONE : GameKey.gameKey = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable uP : GameKey.gameKey = (Obj.magic 0)
    method uP = uP
    method set_uP value' = uP <- value'
    val mutable dOWN : GameKey.gameKey = (Obj.magic 0)
    method dOWN = dOWN
    method set_dOWN value' = dOWN <- value'
    val mutable lEFT : GameKey.gameKey = (Obj.magic 0)
    method lEFT = lEFT
    method set_lEFT value' = lEFT <- value'
    val mutable rIGHT : GameKey.gameKey = (Obj.magic 0)
    method rIGHT = rIGHT
    method set_rIGHT value' = rIGHT <- value'
    val mutable kEY_POUND : GameKey.gameKey = (Obj.magic 0)
    method kEY_POUND = kEY_POUND
    method set_kEY_POUND value' = kEY_POUND <- value'
    val mutable kEY_STAR : GameKey.gameKey = (Obj.magic 0)
    method kEY_STAR = kEY_STAR
    method set_kEY_STAR value' = kEY_STAR <- value'
    val mutable kEY_NUM0 : GameKey.gameKey = (Obj.magic 0)
    method kEY_NUM0 = kEY_NUM0
    method set_kEY_NUM0 value' = kEY_NUM0 <- value'
    val mutable kEY_NUM1 : GameKey.gameKey = (Obj.magic 0)
    method kEY_NUM1 = kEY_NUM1
    method set_kEY_NUM1 value' = kEY_NUM1 <- value'
    val mutable kEY_NUM2 : GameKey.gameKey = (Obj.magic 0)
    method kEY_NUM2 = kEY_NUM2
    method set_kEY_NUM2 value' = kEY_NUM2 <- value'
    val mutable kEY_NUM3 : GameKey.gameKey = (Obj.magic 0)
    method kEY_NUM3 = kEY_NUM3
    method set_kEY_NUM3 value' = kEY_NUM3 <- value'
    val mutable kEY_NUM4 : GameKey.gameKey = (Obj.magic 0)
    method kEY_NUM4 = kEY_NUM4
    method set_kEY_NUM4 value' = kEY_NUM4 <- value'
    val mutable kEY_NUM5 : GameKey.gameKey = (Obj.magic 0)
    method kEY_NUM5 = kEY_NUM5
    method set_kEY_NUM5 value' = kEY_NUM5 <- value'
    val mutable kEY_NUM6 : GameKey.gameKey = (Obj.magic 0)
    method kEY_NUM6 = kEY_NUM6
    method set_kEY_NUM6 value' = kEY_NUM6 <- value'
    val mutable kEY_NUM7 : GameKey.gameKey = (Obj.magic 0)
    method kEY_NUM7 = kEY_NUM7
    method set_kEY_NUM7 value' = kEY_NUM7 <- value'
    val mutable kEY_NUM8 : GameKey.gameKey = (Obj.magic 0)
    method kEY_NUM8 = kEY_NUM8
    method set_kEY_NUM8 value' = kEY_NUM8 <- value'
    val mutable kEY_NUM9 : GameKey.gameKey = (Obj.magic 0)
    method kEY_NUM9 = kEY_NUM9
    method set_kEY_NUM9 value' = kEY_NUM9 <- value'
    val mutable gAME_A : GameKey.gameKey = (Obj.magic 0)
    method gAME_A = gAME_A
    method set_gAME_A value' = gAME_A <- value'
    val mutable gAME_B : GameKey.gameKey = (Obj.magic 0)
    method gAME_B = gAME_B
    method set_gAME_B value' = gAME_B <- value'
    val mutable gAME_C : GameKey.gameKey = (Obj.magic 0)
    method gAME_C = gAME_C
    method set_gAME_C value' = gAME_C <- value'
    val mutable gAME_D : GameKey.gameKey = (Obj.magic 0)
    method gAME_D = gAME_D
    method set_gAME_D value' = gAME_D <- value'
    val mutable fIRE : GameKey.gameKey = (Obj.magic 0)
    method fIRE = fIRE
    method set_fIRE value' = fIRE <- value'
    val mutable lEVEL_DOWN : GameKey.gameKey = (Obj.magic 0)
    method lEVEL_DOWN = lEVEL_DOWN
    method set_lEVEL_DOWN value' = lEVEL_DOWN <- value'
    val mutable lEVEL_UP : GameKey.gameKey = (Obj.magic 0)
    method lEVEL_UP = lEVEL_UP
    method set_lEVEL_UP value' = lEVEL_UP <- value'

    initializer
      begin
        nONE <- ((new GameKey.gameKey (((InputFactory.getInstance ())#mAX - 1), "None")) :> GameKey.gameKey);
        uP <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#uP)) :> GameKey.gameKey);
        dOWN <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#dOWN)) :> GameKey.gameKey);
        lEFT <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#lEFT)) :> GameKey.gameKey);
        rIGHT <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#rIGHT)) :> GameKey.gameKey);
        kEY_POUND <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_kEY_POUND" (Obj.repr ()))), "POUND")) :> GameKey.gameKey);
        kEY_STAR <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_kEY_STAR" (Obj.repr ()))), "STAR")) :> GameKey.gameKey);
        kEY_NUM0 <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_kEY_NUM0" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#zERO)) :> GameKey.gameKey);
        kEY_NUM1 <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#oNE)) :> GameKey.gameKey);
        kEY_NUM2 <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_kEY_NUM2" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#tWO)) :> GameKey.gameKey);
        kEY_NUM3 <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_kEY_NUM3" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#tHREE)) :> GameKey.gameKey);
        kEY_NUM4 <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_kEY_NUM4" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#fOUR)) :> GameKey.gameKey);
        kEY_NUM5 <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_kEY_NUM5" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#fIVE)) :> GameKey.gameKey);
        kEY_NUM6 <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_kEY_NUM6" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#sIX)) :> GameKey.gameKey);
        kEY_NUM7 <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_kEY_NUM7" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#sEVEN)) :> GameKey.gameKey);
        kEY_NUM8 <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_kEY_NUM8" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#eIGHT)) :> GameKey.gameKey);
        kEY_NUM9 <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_kEY_NUM9" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#nINE)) :> GameKey.gameKey);
        gAME_A <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_gAME_A" (Obj.repr ()))), "Game A")) :> GameKey.gameKey);
        gAME_B <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_gAME_B" (Obj.repr ()))), "Game B")) :> GameKey.gameKey);
        gAME_C <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_gAME_C" (Obj.repr ()))), "Game C")) :> GameKey.gameKey);
        gAME_D <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_gAME_D" (Obj.repr ()))), "Game D")) :> GameKey.gameKey);
        fIRE <- ((new GameKey.gameKey ((Obj.magic (java_call_static "Canvas.get_fIRE" (Obj.repr ()))), (CommonPhoneStrings.getInstance ())#fIRE)) :> GameKey.gameKey);
        lEVEL_DOWN <- ((new GameKey.gameKey (((Obj.magic (java_call_static "Canvas.get_kEY_NUM9" (Obj.repr ()))) + 1), "Cheat Level Up")) :> GameKey.gameKey);
        lEVEL_UP <- ((new GameKey.gameKey (((Obj.magic (java_call_static "Canvas.get_kEY_NUM9" (Obj.repr ()))) + 2), "Cheat Level Down")) :> GameKey.gameKey);
        ()
      end
  end
let () = java_register_constructor "GameKeyFactory" (fun arguments -> Obj.repr (new gameKeyFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new gameKeyFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "GameKeyFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


