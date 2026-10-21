(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.view.KeyEvent *)
(* import org.allbinary.logic.NullUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "AndroidAPI9KeyFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class androidAPI9KeyFactory () =
  object
    inherit AndroidKeyFactory.androidKeyFactory ()
    

    initializer
      begin
        ();
        kEYCODE_BUTTON_L1 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_L1 ()), "BUTTON L1"));
        kEYCODE_BUTTON_R1 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_R1 ()), "BUTTON R1"));
        kEYCODE_BUTTON_THUMBR <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_THUMBR ()), "BUTTON THUMBR"));
        kEYCODE_BUTTON_THUMBL <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_THUMBL ()), "BUTTON THUMBL"));
        kEYCODE_BUTTON_START <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_START ()), "BUTTON START"));
        kEYCODE_BUTTON_MODE <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_MODE ()), "BUTTON MODE"));
        kEYCODE_BUTTON_B <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_B ()), "BUTTON B"));
        kEYCODE_BUTTON_A <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_A ()), "BUTTON A"));
        kEYCODE_BUTTON_X <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_X ()), "BUTTON X"));
        kEYCODE_BUTTON_Y <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_Y ()), "BUTTON Y"));
        kEYCODE_BUTTON_L2 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_L2 ()), "BUTTON L2"));
        kEYCODE_BUTTON_R2 <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_R2 ()), "BUTTON R2"));
        kEYCODE_BUTTON_SELECT <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_SELECT ()), "BUTTON SELECT"));
        kEYCODE_BUTTON_C <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_C ()), "BUTTON C"));
        kEYCODE_BUTTON_Z <- (new AndroidGameKey.androidGameKey ((KeyEvent.get_kEYCODE_BUTTON_Z ()), "BUTTON Z"))
      end
  end
let () = java_register_constructor "AndroidAPI9KeyFactory" (fun arguments -> Obj.repr (new androidAPI9KeyFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new androidAPI9KeyFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "AndroidAPI9KeyFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


