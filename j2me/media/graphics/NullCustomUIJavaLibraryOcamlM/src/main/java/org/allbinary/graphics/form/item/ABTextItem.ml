(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.color.BasicColor *)

class aBTextItem ((label : string), (_layout : int), (_altText : string), (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object
    inherit CustomCustomItem.customCustomItem (label, backgroundBasicColor, foregroundBasicColor) as super
    
    

    method keyPressed ((_keyCode : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method paintUnselected : 'any1. 'any1 * int * int -> unit = fun (_graphics, (_x : int), (_y : int)) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getLabelStringComponent : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "ABStringComponent.get_nULL_STRING_COMPONENT" (Obj.repr ())))))
        end [@@warning "-7"]
    

    method getMinimumWidth () : int =
        begin
        (super#getMinimumWidth ())
        end [@@warning "-7"]
    

    method getMinimumHeight () : int =
        begin
        (super#getMinimumHeight ())
        end [@@warning "-7"]
    

    method getLabel () : string =
        begin
        (super#getLabel ())
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paintXY ((Obj.magic graphics), x, y))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ABTextItem" (fun arguments -> Obj.repr (new aBTextItem (Obj.obj arguments)))


