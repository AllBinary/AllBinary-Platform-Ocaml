(* Generated Code Do Not Modify *)
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.Graphics *)

class nullDisplayable () =
  object
    inherit Canvas.canvas ()
    
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NullDisplayable" (fun arguments -> Obj.repr (new nullDisplayable (Obj.obj arguments)))

let sINGLETON = (new nullDisplayable ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "NullDisplayable.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "NullDisplayable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


