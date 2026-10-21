(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import android.view.KeyEvent *)

let androidtoJavaMicroEditionKeyMap : int array = (Array.make (17) 0)
let get_androidtoJavaMicroEditionKeyMap () = androidtoJavaMicroEditionKeyMap
let () = java_register_static "AndroidNumberKeyToJ2MECanvasNumberKey.get_androidtoJavaMicroEditionKeyMap" (fun _ -> Obj.repr (get_androidtoJavaMicroEditionKeyMap ()))

let init () : unit =
        begin
        androidtoJavaMicroEditionKeyMap.((KeyEvent.get_kEYCODE_0 ())) <- (Obj.magic (java_call_static "Canvas.get_kEY_NUM0" (Obj.repr ())));
        androidtoJavaMicroEditionKeyMap.((KeyEvent.get_kEYCODE_1 ())) <- (Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())));
        androidtoJavaMicroEditionKeyMap.((KeyEvent.get_kEYCODE_2 ())) <- (Obj.magic (java_call_static "Canvas.get_kEY_NUM2" (Obj.repr ())));
        androidtoJavaMicroEditionKeyMap.((KeyEvent.get_kEYCODE_3 ())) <- (Obj.magic (java_call_static "Canvas.get_kEY_NUM3" (Obj.repr ())));
        androidtoJavaMicroEditionKeyMap.((KeyEvent.get_kEYCODE_4 ())) <- (Obj.magic (java_call_static "Canvas.get_kEY_NUM4" (Obj.repr ())));
        androidtoJavaMicroEditionKeyMap.((KeyEvent.get_kEYCODE_5 ())) <- (Obj.magic (java_call_static "Canvas.get_kEY_NUM5" (Obj.repr ())));
        androidtoJavaMicroEditionKeyMap.((KeyEvent.get_kEYCODE_6 ())) <- (Obj.magic (java_call_static "Canvas.get_kEY_NUM6" (Obj.repr ())));
        androidtoJavaMicroEditionKeyMap.((KeyEvent.get_kEYCODE_7 ())) <- (Obj.magic (java_call_static "Canvas.get_kEY_NUM7" (Obj.repr ())));
        androidtoJavaMicroEditionKeyMap.((KeyEvent.get_kEYCODE_8 ())) <- (Obj.magic (java_call_static "Canvas.get_kEY_NUM8" (Obj.repr ())));
        androidtoJavaMicroEditionKeyMap.((KeyEvent.get_kEYCODE_9 ())) <- (Obj.magic (java_call_static "Canvas.get_kEY_NUM9" (Obj.repr ())))
        end

and getKey ((key : int)) : int =
        try
        begin
        if (key < (Array.length androidtoJavaMicroEditionKeyMap)) then begin
            let value : int ref = ref (androidtoJavaMicroEditionKeyMap.(key)) in ();
            if (!value <> 0) then begin
                raise (Java_return (Obj.repr (!value)))
            end
        end;
        key
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "AndroidNumberKeyToJ2MECanvasNumberKey.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
let () = java_register_static "AndroidNumberKeyToJ2MECanvasNumberKey.getKey" (fun arguments -> Obj.repr (getKey (Obj.obj arguments)))
class androidNumberKeyToJ2MECanvasNumberKey () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AndroidNumberKeyToJ2MECanvasNumberKey" (fun arguments -> Obj.repr (new androidNumberKeyToJ2MECanvasNumberKey (Obj.obj arguments)))


