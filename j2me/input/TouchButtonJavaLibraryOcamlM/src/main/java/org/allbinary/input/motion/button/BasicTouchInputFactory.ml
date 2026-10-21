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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.InputFactory *)
(* import org.allbinary.game.input.mapping.InputToGameKeyMapping *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "BasicTouchInputFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class basicTouchInputFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable sPECIAL_BUTTON_SEVEN_TESTING_ONLY : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method sPECIAL_BUTTON_SEVEN_TESTING_ONLY = sPECIAL_BUTTON_SEVEN_TESTING_ONLY
    method set_sPECIAL_BUTTON_SEVEN_TESTING_ONLY value' = sPECIAL_BUTTON_SEVEN_TESTING_ONLY <- value'
    val mutable sPECIAL_BUTTON_EIGHT_TESTING_ONLY : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method sPECIAL_BUTTON_EIGHT_TESTING_ONLY = sPECIAL_BUTTON_EIGHT_TESTING_ONLY
    method set_sPECIAL_BUTTON_EIGHT_TESTING_ONLY value' = sPECIAL_BUTTON_EIGHT_TESTING_ONLY <- value'
    val mutable sPECIAL_BUTTON_SIX : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method sPECIAL_BUTTON_SIX = sPECIAL_BUTTON_SIX
    method set_sPECIAL_BUTTON_SIX value' = sPECIAL_BUTTON_SIX <- value'
    val mutable sPECIAL_BUTTON_FIVE : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method sPECIAL_BUTTON_FIVE = sPECIAL_BUTTON_FIVE
    method set_sPECIAL_BUTTON_FIVE value' = sPECIAL_BUTTON_FIVE <- value'
    val mutable sPECIAL_BUTTON_FOUR : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method sPECIAL_BUTTON_FOUR = sPECIAL_BUTTON_FOUR
    method set_sPECIAL_BUTTON_FOUR value' = sPECIAL_BUTTON_FOUR <- value'
    val mutable sPECIAL_BUTTON_THREE : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method sPECIAL_BUTTON_THREE = sPECIAL_BUTTON_THREE
    method set_sPECIAL_BUTTON_THREE value' = sPECIAL_BUTTON_THREE <- value'
    val mutable sPECIAL_BUTTON_TWO : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method sPECIAL_BUTTON_TWO = sPECIAL_BUTTON_TWO
    method set_sPECIAL_BUTTON_TWO value' = sPECIAL_BUTTON_TWO <- value'
    val mutable sPECIAL_BUTTON_ONE : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method sPECIAL_BUTTON_ONE = sPECIAL_BUTTON_ONE
    method set_sPECIAL_BUTTON_ONE value' = sPECIAL_BUTTON_ONE <- value'
    val mutable uP : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method uP = uP
    method set_uP value' = uP <- value'
    val mutable lEFT : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method lEFT = lEFT
    method set_lEFT value' = lEFT <- value'
    val mutable rIGHT : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method rIGHT = rIGHT
    method set_rIGHT value' = rIGHT <- value'
    val mutable dOWN : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method dOWN = dOWN
    method set_dOWN value' = dOWN <- value'
    val mutable nONE : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable initialized : bool = false
    method initialized = initialized
    method set_initialized value' = initialized <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method init : 'any1. 'any1 -> unit = fun (inputToGameKeyMapping) ->
        let inputToGameKeyMapping = Obj.repr inputToGameKeyMapping in
        begin
        if (not initialized) then begin
            initialized <- true;
            ignore (list#add (uP));
            ignore (list#add (lEFT));
            ignore (list#add (rIGHT));
            ignore (list#add (dOWN));
            ignore (list#add (sPECIAL_BUTTON_TWO));
            ignore (list#add (sPECIAL_BUTTON_FOUR));
            ignore (list#add (sPECIAL_BUTTON_THREE));
            ignore (list#add (sPECIAL_BUTTON_ONE));
            ignore (list#add (sPECIAL_BUTTON_FIVE));
            ignore (list#add (sPECIAL_BUTTON_SIX));
            ignore (list#add (sPECIAL_BUTTON_SIX));
            ignore (list#add (sPECIAL_BUTTON_SEVEN_TESTING_ONLY));
            ignore (list#add (sPECIAL_BUTTON_EIGHT_TESTING_ONLY));
            (self#updateAllFromList (list, (Obj.magic inputToGameKeyMapping)))
        end
        end [@@warning "-20"]
    

    method updateAll : 'any1. 'any1 -> unit = fun (inputToGameKeyMapping) ->
        let inputToGameKeyMapping = Obj.repr inputToGameKeyMapping in
        begin
        (self#updateAllFromList (list, (Obj.magic inputToGameKeyMapping)))
        end [@@warning "-20"]
    

    method updateAllFromList : 'any1 'any2. 'any1 * 'any2 -> unit = fun (list_arg, inputToGameKeyMapping) ->
        let list_arg = Obj.repr list_arg in
        let inputToGameKeyMapping = Obj.repr inputToGameKeyMapping in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#sTART_LABEL))#appendint (((Obj.magic list_arg)#size ()))))), self, "updateAll"));
        let touchButtonInput : TouchButtonInput.touchButtonInput ref = ref (((Obj.magic 0) :> TouchButtonInput.touchButtonInput)) in ();
        for index = (((Obj.magic list_arg)#size ()) - 1) downto 0 do
            touchButtonInput := (Obj.magic (Obj.magic list_arg)#objectArray.(index));
            ignore (!touchButtonInput#update ((Obj.magic inputToGameKeyMapping)))
        done
        end [@@warning "-20"]
    

    method getList () : BasicArrayList.basicArrayList =
        begin
        (list :> BasicArrayList.basicArrayList)
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
        initialized <- false;
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        let mAX : int ref = ref ((InputFactory.getInstance ())#mAX) in ();
        sPECIAL_BUTTON_SEVEN_TESTING_ONLY <- (new TouchButtonInput.touchButtonInput ((!mAX - 41), "Button 7 - Testing Only May Cross Over Key Values"));
        sPECIAL_BUTTON_EIGHT_TESTING_ONLY <- (new TouchButtonInput.touchButtonInput ((!mAX - 42), "Button 8 - Testing Only May Cross Over Key Values"));
        sPECIAL_BUTTON_SIX <- (new TouchButtonInput.touchButtonInput ((!mAX - 30), "Button 6"));
        sPECIAL_BUTTON_FIVE <- (new TouchButtonInput.touchButtonInput ((!mAX - 31), "Button 5"));
        sPECIAL_BUTTON_FOUR <- (new TouchButtonInput.touchButtonInput ((!mAX - 32), "Button 4"));
        sPECIAL_BUTTON_THREE <- (new TouchButtonInput.touchButtonInput ((!mAX - 33), "Button 3"));
        sPECIAL_BUTTON_TWO <- (new TouchButtonInput.touchButtonInput ((!mAX - 34), "Button 2"));
        sPECIAL_BUTTON_ONE <- (new TouchButtonInput.touchButtonInput ((!mAX - 35), "Button 1"));
        uP <- (new TouchButtonInput.touchButtonInput ((!mAX - 36), "Up Button"));
        lEFT <- (new TouchButtonInput.touchButtonInput ((!mAX - 37), "Left Button"));
        rIGHT <- (new TouchButtonInput.touchButtonInput ((!mAX - 38), "Right Button"));
        dOWN <- (new TouchButtonInput.touchButtonInput ((!mAX - 39), "Down Button"));
        nONE <- (new TouchButtonInput.touchButtonInput ((!mAX - 40), "No Button"))
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicTouchInputFactory" (fun arguments -> Obj.repr (new basicTouchInputFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new basicTouchInputFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "BasicTouchInputFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


