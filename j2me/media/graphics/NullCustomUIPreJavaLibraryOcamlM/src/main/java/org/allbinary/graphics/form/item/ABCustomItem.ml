(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Screen *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringUtil *)

let nULL_CUSTOM_ITEM : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_nULL_CUSTOM_ITEM () = !nULL_CUSTOM_ITEM
let set_nULL_CUSTOM_ITEM value' = nULL_CUSTOM_ITEM := value'
let () = java_register_static "ABCustomItem.get_nULL_CUSTOM_ITEM" (fun _ -> Obj.repr (get_nULL_CUSTOM_ITEM ()))
class aBCustomItem ((_label : string), (_backgroundBasicColor : BasicColor.basicColor), (_foregroundBasicColor : BasicColor.basicColor)) =
  object
    
    

    method setOwner : 'any1. 'any1 -> unit = fun (_owner) ->
        begin
        ()
        end [@@warning "-20"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (_graphics, (_x : int), (_y : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method paintUnselected : 'any1. 'any1 * int * int -> unit = fun (_graphics, (_x : int), (_y : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method isFocusable () : bool =
        begin
        false
        end
    

    method getLabel () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method setLabel ((_label : string)) : unit =
        begin
        ()
        end
    

    method getHeight () : int =
        begin
        0
        end
    

    method setHeight ((_height : int)) : unit =
        begin
        ()
        end
    

    method getValue () : float =
        begin
        0.0
        end
    

    method setValue ((_value : float)) : unit =
        begin
        ()
        end
    

    method getMinimumWidth () : int =
        begin
        0
        end
    

    method getMinimumHeight () : int =
        begin
        0
        end
    

    method preMeasurement : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ABCustomItem" (fun arguments -> Obj.repr (new aBCustomItem (Obj.obj arguments)))

let getNullInstance () =
        begin
        if ((Obj.repr !nULL_CUSTOM_ITEM) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            nULL_CUSTOM_ITEM := (new aBCustomItem ((StringUtil.getInstance ())#eMPTY_STRING, (BasicColorFactory.getInstance ())#bLACK, (BasicColorFactory.getInstance ())#wHITE))
        end;
        (Obj.magic !nULL_CUSTOM_ITEM)
        end
let () = java_register_static "ABCustomItem.getNullInstance" (fun arguments -> Obj.repr (getNullInstance (Obj.obj arguments)))


