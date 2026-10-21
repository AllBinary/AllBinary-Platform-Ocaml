(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form.item *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)

class aBStringComponent ((_backgroundBasicColor : BasicColor.basicColor), (_foregroundBasicColor : BasicColor.basicColor)) =
  object
    

    method getBackgroundBasicColor () : BasicColor.basicColor =
        begin
        ((BasicColorFactory.getInstance ())#wHITE :> BasicColor.basicColor)
        end
    
    

    method getForegroundBasicColor () : BasicColor.basicColor =
        begin
        ((BasicColorFactory.getInstance ())#wHITE :> BasicColor.basicColor)
        end
    

    method setForegroundBasicColor : 'any1. 'any1 -> unit = fun (_foregroundBasicColor) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ABStringComponent" (fun arguments -> Obj.repr (new aBStringComponent (Obj.obj arguments)))

let nULL_STRING_COMPONENT = (new aBStringComponent ((BasicColorFactory.getInstance ())#bLACK, (BasicColorFactory.getInstance ())#wHITE))
let get_nULL_STRING_COMPONENT () = nULL_STRING_COMPONENT
let () = java_register_static "ABStringComponent.get_nULL_STRING_COMPONENT" (fun _ -> Obj.repr (get_nULL_STRING_COMPONENT ()))


