(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form.item *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.string.StringUtil *)

class aBCustomGaugeItem ((label : string), (_maxValue : int), (_initialValue : int), (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object
    inherit ABCustomItem.aBCustomItem (label, backgroundBasicColor, foregroundBasicColor)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ABCustomGaugeItem" (fun arguments -> Obj.repr (new aBCustomGaugeItem (Obj.obj arguments)))

let nULL_GAUGE_ITEM = (new aBCustomGaugeItem ((StringUtil.getInstance ())#eMPTY_STRING, 1, 0, (BasicColorFactory.getInstance ())#bLACK, (BasicColorFactory.getInstance ())#wHITE))
let get_nULL_GAUGE_ITEM () = nULL_GAUGE_ITEM
let () = java_register_static "ABCustomGaugeItem.get_nULL_GAUGE_ITEM" (fun _ -> Obj.repr (get_nULL_GAUGE_ITEM ()))


