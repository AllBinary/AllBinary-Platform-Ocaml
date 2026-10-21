(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

class aBCustomForm ((_title : string), _items, (_backgroundBasicColor : BasicColor.basicColor), (_foregroundBasicColor : BasicColor.basicColor)) =
  object
    inherit CustomScreen.customScreen ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method getAllitems : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Array.make (0) (Obj.magic 0))))
        end [@@warning "-7"]
    

    method size () : int =
        begin
        0
        end [@@warning "-7"]
    

    method setSelectedIndex ((_index : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getSelectedIndex () : int =
        begin
        0
        end [@@warning "-7"]
    

    method deleteAll () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method delete ((_itemNum : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method append : 'any1. 'any1 -> int = fun (_item) ->
        begin
        (-1)
        end [@@warning "-7-20"]
    

    method insert : 'any2. int * 'any2 -> unit = fun ((_itemNum : int), _item) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method set : 'any2. int * 'any2 -> unit = fun ((_itemNum : int), _item) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method get : 'return. int -> 'return = fun ((_itemNum : int)) ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "ABCustomItem.getNullInstance" (Obj.repr ())))))
        end [@@warning "-7"]
    

    method getWidth () : int =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getTitle () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ABCustomForm" (fun arguments -> Obj.repr (new aBCustomForm (Obj.obj arguments)))


