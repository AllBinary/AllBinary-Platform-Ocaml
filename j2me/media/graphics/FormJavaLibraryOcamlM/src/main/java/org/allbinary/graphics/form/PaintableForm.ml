(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.RectangleFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringUtil *)

let nULL_PAINTABLE_FORM : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_nULL_PAINTABLE_FORM () = !nULL_PAINTABLE_FORM
let set_nULL_PAINTABLE_FORM value' = nULL_PAINTABLE_FORM := value'
let () = java_register_static "PaintableForm.get_nULL_PAINTABLE_FORM" (fun _ -> Obj.repr (get_nULL_PAINTABLE_FORM ()))
class paintableForm ((title : string), items, (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit ABCustomForm.aBCustomForm (title, items, backgroundBasicColor, foregroundBasicColor)
    val mutable canvasStrings : CanvasStrings.canvasStrings = (Obj.magic 0)
    method canvasStrings = canvasStrings
    method set_canvasStrings value' = canvasStrings <- value'
    val mutable rectangle : Obj.t = Obj.repr 0
    method rectangle : 'r. 'r = Obj.magic rectangle
    method set_rectangle : 'v. 'v -> unit = fun value' -> rectangle <- Obj.repr value'
    val mutable x : int = 0
    method x = x
    method set_x value' = x <- value'
    val mutable y : int = 0
    method y = y
    method set_y value' = y <- value'
    val mutable formType : FormType.formType = (Obj.magic 0)
    method formType = formType
    method set_formType value' = formType <- value'
    
    

    method init : 'any1 'any2. 'any1 * 'any2 -> unit = fun (rectangle_arg, formType_arg) ->
        let rectangle_arg = Obj.repr rectangle_arg in
        let formType_arg = Obj.repr formType_arg in
        begin
        rectangle <- Obj.repr ((Obj.magic rectangle_arg));
        let point : GPoint.gPoint ref = ref ((((Obj.magic rectangle)#getPoint ()) :> GPoint.gPoint)) in ();
        x <- (!point#getX ());
        y <- (!point#getY ());
        formType <- (Obj.magic formType_arg)
        end [@@warning "-7-20"]
    

    method getWidth () : int =
        begin
        ((Obj.magic rectangle)#getWidth ())
        end [@@warning "-7"]

    initializer
      begin
        canvasStrings <- ((CanvasStrings.getInstance ()) :> CanvasStrings.canvasStrings);
        rectangle <- (Obj.repr (RectangleFactory.get_sINGLETON ()));
        x <- 0;
        y <- 0;
        formType <- ((FormTypeFactory.getInstance ())#nULL_FORM_TYPE :> FormType.formType);
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setSelectedIndex (0))
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaintableForm" (fun arguments -> Obj.repr (new paintableForm (Obj.obj arguments)))

let getNullPaintableForm () =
        begin
        if ((Obj.repr !nULL_PAINTABLE_FORM) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            nULL_PAINTABLE_FORM := (new paintableForm ((StringUtil.getInstance ())#eMPTY_STRING, (Array.make (0) (Obj.magic 0)), (BasicColorFactory.getInstance ())#bLACK, (BasicColorFactory.getInstance ())#wHITE))
        end;
        (Obj.magic !nULL_PAINTABLE_FORM)
        end
let () = java_register_static "PaintableForm.getNullPaintableForm" (fun arguments -> Obj.repr (getNullPaintableForm (Obj.obj arguments)))


