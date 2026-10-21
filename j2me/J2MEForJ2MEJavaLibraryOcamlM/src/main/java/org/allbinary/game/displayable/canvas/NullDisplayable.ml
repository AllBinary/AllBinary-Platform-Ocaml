(* Generated Code Do Not Modify *)
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.canvas.BaseGameStatistics *)
(* import org.allbinary.canvas.GameStatisticsFactory *)

class nullDisplayable () =
  object
    inherit Canvas.canvas ()
    val mutable baseGameStatistics : BaseGameStatistics.baseGameStatistics = (Obj.magic 0)
    method baseGameStatistics = baseGameStatistics
    method set_baseGameStatistics value' = baseGameStatistics <- value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ignore (baseGameStatistics#nextRefresh ())
        end [@@warning "-7-20"]

    initializer
      begin
        baseGameStatistics <- ((Obj.magic (java_call_static "GameStatisticsFactory.getInstance" (Obj.repr ()))) :> BaseGameStatistics.baseGameStatistics);
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


