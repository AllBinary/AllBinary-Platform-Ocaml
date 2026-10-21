(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)

class multipleScrollSelectionHorizontalForm ((title : string), items, (formPaintableFactory : ItemPaintableFactory.itemPaintableFactory), (border : int), (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit ScrollSelectionForm.scrollSelectionForm (title, items, formPaintableFactory, border, 3, backgroundBasicColor, foregroundBasicColor) as super
    val mutable rectPaintable : Paintable.paintable = (Obj.magic 0)
    method rectPaintable = rectPaintable
    method set_rectPaintable value' = rectPaintable <- value'
    val mutable multipleScrollSelectionHorizontalFormTypeItemIndexPaintable : ItemIndexPaintable.itemIndexPaintable = (Obj.magic 0)
    method multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = multipleScrollSelectionHorizontalFormTypeItemIndexPaintable
    method set_multipleScrollSelectionHorizontalFormTypeItemIndexPaintable value' = multipleScrollSelectionHorizontalFormTypeItemIndexPaintable <- value'
    val mutable backgroundColor : int = 0
    method backgroundColor = backgroundColor
    method set_backgroundColor value' = backgroundColor <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable logged : bool = false
    method logged = logged
    method set_logged value' = logged <- value'
    val mutable fontHeight : int = 0
    method fontHeight = fontHeight
    method set_fontHeight value' = fontHeight <- value'
    
    

    method fillRect : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#setColor (backgroundColor));
        ignore ((Obj.magic graphics)#fillRect (x, y, (rectangle#getWidth ()), (rectangle#getHeight ())))
        end [@@warning "-7-20"]
    

    method init : 'any1 'any2. 'any1 * 'any2 -> unit = fun (rectangle, formType) ->
        let rectangle = Obj.repr rectangle in
        let formType = Obj.repr formType in
        begin
        ignore (super#init ((Obj.magic rectangle), (Obj.magic formType)));
        let formTypeFactory : FormTypeFactory.formTypeFactory ref = ref (((FormTypeFactory.getInstance ()) :> FormTypeFactory.formTypeFactory)) in ();
        if ((Obj.repr (Obj.magic formType)) == (Obj.repr !formTypeFactory#hORIZONTAL_FORM)) then begin
            multipleScrollSelectionHorizontalFormTypeItemIndexPaintable <- (new MultipleScrollSelectionFormHorizontalPaintable.multipleScrollSelectionFormHorizontalPaintable (self))
        end else if ((Obj.repr (Obj.magic formType)) == (Obj.repr !formTypeFactory#vERTICAL_CENTER_FORM)) then begin
            multipleScrollSelectionHorizontalFormTypeItemIndexPaintable <- (new MultipleScrollSelectionFormVerticalPaintable.multipleScrollSelectionFormVerticalPaintable (self))
        end else if ((Obj.repr (Obj.magic formType)) == (Obj.repr !formTypeFactory#nULL_FORM_TYPE)) then begin
            ()
        end else begin
            raise (Failure (!formTypeFactory#uNK))
        end
        end [@@warning "-7-20"]
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        fontHeight <- ((Obj.magic !font)#getHeight ());
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method paintHorizontal : 'any1 'any3. 'any1 * int * 'any3 * int * int -> int = fun (graphics, (index : int), item, (dx : int), (dy : int)) ->
        let graphics = Obj.repr graphics in
        let item = Obj.repr item in
        let dx = ref dx in
        begin
        let dx2 : int ref = ref (((self#paintItem ((Obj.magic graphics), index, (Obj.magic item), !dx, dy)) + border)) in ();
        ignore (paintable#paint ((Obj.magic graphics), index, !dx, dy));
        dx := !dx2;
        !dx
        end [@@warning "-7-20"]
    

    method paintVertical : 'any1 'any3. 'any1 * int * 'any3 * int * int -> int = fun (graphics, (index : int), item, (dx : int), (dy : int)) ->
        let graphics = Obj.repr graphics in
        let item = Obj.repr item in
        begin
        ignore (self#paintItem ((Obj.magic graphics), index, (Obj.magic item), dx, dy));
        ignore (paintable#paint ((Obj.magic graphics), index, dx, dy));
        dx
        end [@@warning "-7-20"]
    

    method getStartIndex () : int =
        begin
        (self#getSelectedIndex ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        (try
            ignore (myFontProcessor#process ((Obj.magic graphics)));
            let start : int ref = ref ((self#getStartIndex ())) in ();
            let size : int ref = ref ((self#size ())) in ();
            let dx : int ref = ref (x) in ();
            let dy : int ref = ref (y) in ();
            ignore (rectPaintable#paint ((Obj.magic graphics)));
            ignore ((Obj.magic graphics)#drawString ((self#getTitle ()), x, (y - fontHeight), 0));
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            for index = !start to !size - 1 do
                item := Obj.repr ((self#get (index)));
                if (!dx >= (rectangle#getMaxX ())) then begin
                    if logged then begin
                        ()
                    end else begin
                        logged <- true;
                        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("painting beyond maxx: "))#appendint ((java_to_int (Obj.repr ((rectangle#getMaxX ())))))))), self, canvasStrings#pAINT))))
                    end
                end;
                dx := (multipleScrollSelectionHorizontalFormTypeItemIndexPaintable#paint ((Obj.magic graphics), index, (Obj.magic !item), !dx, !dy))
            done
        with e -> begin
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (commonStrings#eXCEPTION, self, canvasStrings#pAINT))))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        rectPaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        multipleScrollSelectionHorizontalFormTypeItemIndexPaintable <- ((ItemIndexPaintable.getInstance ()) :> ItemIndexPaintable.itemIndexPaintable);
        backgroundColor <- ((BasicColorFactory.getInstance ())#tRANSPARENT_GREY#intValue ());
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        logged <- false;
        fontHeight <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        if ((J2MEUtil.isJ2ME ()) || (J2MEUtil.isHTML ())) then begin
            ()
        end else begin
            (* Java nested class MPaintable: move it to its own module *) ();
            rectPaintable <- (new MPaintable.mPaintable ())
        end
      end
  end
let () = java_register_constructor "MultipleScrollSelectionHorizontalForm" (fun arguments -> Obj.repr (new multipleScrollSelectionHorizontalForm (Obj.obj arguments)))

let createForm : 'any3 'any4 'any6 'any7. string * _ * 'any3 * 'any4 * int * 'any6 * 'any7 -> ScrollSelectionForm.scrollSelectionForm = fun ((title : string), items, rectangle, formType, (border : int), backgroundBasicColor, foregroundBasicColor) ->
        let rectangle = Obj.repr rectangle in
        let formType = Obj.repr formType in
        let backgroundBasicColor = Obj.repr backgroundBasicColor in
        let foregroundBasicColor = Obj.repr foregroundBasicColor in
        begin
        let scrollSelectionForm : ScrollSelectionForm.scrollSelectionForm ref = ref (((new multipleScrollSelectionHorizontalForm (title, items, (ItemPaintableFactory.getInstance ()), border, (Obj.magic backgroundBasicColor), (Obj.magic foregroundBasicColor))) :> ScrollSelectionForm.scrollSelectionForm)) in ();
        ignore (!scrollSelectionForm#init ((Obj.magic rectangle), (Obj.magic formType)));
        (!scrollSelectionForm :> ScrollSelectionForm.scrollSelectionForm)
        end [@@warning "-20"]
let () = java_register_static "MultipleScrollSelectionHorizontalForm.createForm" (fun arguments -> Obj.repr (createForm (Obj.obj arguments)))


