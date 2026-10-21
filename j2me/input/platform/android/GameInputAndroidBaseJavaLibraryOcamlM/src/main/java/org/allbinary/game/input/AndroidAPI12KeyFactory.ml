(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.view.KeyEvent *)
(* import org.allbinary.logic.NullUtil *)

let instance12 : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance12 () = !instance12
let set_instance12 value' = instance12 := value'
let () = java_register_static "AndroidAPI12KeyFactory.get_instance12" (fun _ -> Obj.repr (get_instance12 ()))
class androidAPI12KeyFactory () =
  object
    inherit AndroidAPI9KeyFactory.androidAPI9KeyFactory ()
    

    initializer
      begin
        ();
        kEYCODE_BUTTON_1 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_1 ()), "BUTTON 1"));
        kEYCODE_BUTTON_10 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_10 ()), "BUTTON 10"));
        kEYCODE_BUTTON_11 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_11 ()), "BUTTON 11"));
        kEYCODE_BUTTON_12 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_12 ()), "BUTTON 12"));
        kEYCODE_BUTTON_13 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_13 ()), "BUTTON 13"));
        kEYCODE_BUTTON_14 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_14 ()), "BUTTON 14"));
        kEYCODE_BUTTON_15 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_15 ()), "BUTTON 15"));
        kEYCODE_BUTTON_16 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_16 ()), "BUTTON 16"));
        kEYCODE_BUTTON_2 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_2 ()), "BUTTON 2"));
        kEYCODE_BUTTON_3 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_3 ()), "BUTTON 3"));
        kEYCODE_BUTTON_4 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_4 ()), "BUTTON 4"));
        kEYCODE_BUTTON_5 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_5 ()), "BUTTON 5"));
        kEYCODE_BUTTON_6 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_6 ()), "BUTTON 6"));
        kEYCODE_BUTTON_7 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_7 ()), "BUTTON 7"));
        kEYCODE_BUTTON_8 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_8 ()), "BUTTON 8"));
        kEYCODE_BUTTON_9 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_9 ()), "BUTTON 9"))
      end
  end
let () = java_register_constructor "AndroidAPI12KeyFactory" (fun arguments -> Obj.repr (new androidAPI12KeyFactory (Obj.obj arguments)))

let getAPI12Instance () =
        begin
        if ((Obj.repr !instance12) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance12 := (new androidAPI12KeyFactory ())
        end;
        (Obj.magic !instance12)
        end
let () = java_register_static "AndroidAPI12KeyFactory.getAPI12Instance" (fun arguments -> Obj.repr (getAPI12Instance (Obj.obj arguments)))


