(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.math.RectangleCollisionUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

let nULL_SCROLL_SELECTION_FORM : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_nULL_SCROLL_SELECTION_FORM () = !nULL_SCROLL_SELECTION_FORM
let set_nULL_SCROLL_SELECTION_FORM value' = nULL_SCROLL_SELECTION_FORM := value'
let () = java_register_static "ScrollSelectionForm.get_nULL_SCROLL_SELECTION_FORM" (fun _ -> Obj.repr (get_nULL_SCROLL_SELECTION_FORM ()))
let nULL_SCROLL_SELECTION_HORIZONTAL_FORM : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_nULL_SCROLL_SELECTION_HORIZONTAL_FORM () = !nULL_SCROLL_SELECTION_HORIZONTAL_FORM
let set_nULL_SCROLL_SELECTION_HORIZONTAL_FORM value' = nULL_SCROLL_SELECTION_HORIZONTAL_FORM := value'
let () = java_register_static "ScrollSelectionForm.get_nULL_SCROLL_SELECTION_HORIZONTAL_FORM" (fun _ -> Obj.repr (get_nULL_SCROLL_SELECTION_HORIZONTAL_FORM ()))
let iNSIDE_FORM : string = " inside form"
let get_iNSIDE_FORM () = iNSIDE_FORM
let () = java_register_static "ScrollSelectionForm.get_iNSIDE_FORM" (fun _ -> Obj.repr (get_iNSIDE_FORM ()))
let iS_IN_FORM : string = "isInForm"
let get_iS_IN_FORM () = iS_IN_FORM
let () = java_register_static "ScrollSelectionForm.get_iS_IN_FORM" (fun _ -> Obj.repr (get_iS_IN_FORM ()))
let gET_SELECTED_INDEX : string = "getSelectedIndexForPoint"
let get_gET_SELECTED_INDEX () = gET_SELECTED_INDEX
let () = java_register_static "ScrollSelectionForm.get_gET_SELECTED_INDEX" (fun _ -> Obj.repr (get_gET_SELECTED_INDEX ()))
class scrollSelectionForm ((title : string), items, (formPaintableFactory : ItemPaintableFactory.itemPaintableFactory), (border_arg : int), (adjustedExtraBorder_arg : int), (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit PaintableForm.paintableForm (title, items, backgroundBasicColor, foregroundBasicColor) as super
    val mutable rectangleCollisionUtil : Obj.t = Obj.repr 0
    method rectangleCollisionUtil : 'r. 'r = Obj.magic rectangleCollisionUtil
    method set_rectangleCollisionUtil : 'v. 'v -> unit = fun value' -> rectangleCollisionUtil <- Obj.repr value'
    val mutable border : int = 0
    method border = border
    method set_border value' = border <- value'
    val mutable halfBorder : int = 0
    method halfBorder = halfBorder
    method set_halfBorder value' = halfBorder <- value'
    val mutable buttonBasicColor : BasicColor.basicColor = (Obj.magic 0)
    method buttonBasicColor = buttonBasicColor
    method set_buttonBasicColor value' = buttonBasicColor <- value'
    val mutable scrollSelectionFormFormTypeItemIndexPaintable : ItemIndexPaintable.itemIndexPaintable = (Obj.magic 0)
    method scrollSelectionFormFormTypeItemIndexPaintable = scrollSelectionFormFormTypeItemIndexPaintable
    method set_scrollSelectionFormFormTypeItemIndexPaintable value' = scrollSelectionFormFormTypeItemIndexPaintable <- value'
    val mutable formTypeItemIndexDx : ItemIndexDx.itemIndexDx = (Obj.magic 0)
    method formTypeItemIndexDx = formTypeItemIndexDx
    method set_formTypeItemIndexDx value' = formTypeItemIndexDx <- value'
    val mutable paintable : ItemPaintable.itemPaintable = (Obj.magic 0)
    method paintable = paintable
    method set_paintable value' = paintable <- value'
    val mutable adjustedExtraBorder : int = 0
    method adjustedExtraBorder = adjustedExtraBorder
    method set_adjustedExtraBorder value' = adjustedExtraBorder <- value'
    
    

    method init : 'any1 'any2. 'any1 * 'any2 -> unit = fun (rectangle, formType) ->
        let rectangle = Obj.repr rectangle in
        let formType = Obj.repr formType in
        begin
        ignore (super#init ((Obj.magic rectangle), (Obj.magic formType)));
        let formTypeFactory : FormTypeFactory.formTypeFactory ref = ref (((FormTypeFactory.getInstance ()) :> FormTypeFactory.formTypeFactory)) in ();
        if ((Obj.repr (Obj.magic formType)) == (Obj.repr !formTypeFactory#hORIZONTAL_FORM)) then begin
            scrollSelectionFormFormTypeItemIndexPaintable <- (new ScrollSelectionFormHorizontalPaintable.scrollSelectionFormHorizontalPaintable (self));
            formTypeItemIndexDx <- (new ScrollSelectionFormHorizontalDx.scrollSelectionFormHorizontalDx (self))
        end else if ((Obj.repr (Obj.magic formType)) == (Obj.repr !formTypeFactory#vERTICAL_CENTER_FORM)) then begin
            scrollSelectionFormFormTypeItemIndexPaintable <- (new ScrollSelectionFormVerticalPaintable.scrollSelectionFormVerticalPaintable (self));
            formTypeItemIndexDx <- (new ScrollSelectionFormVericalDx.scrollSelectionFormVericalDx (self))
        end else if ((Obj.repr (Obj.magic formType)) == (Obj.repr !formTypeFactory#tEMP_HORIZONTAL_FORM)) then begin
            scrollSelectionFormFormTypeItemIndexPaintable <- (new ScrollSelectionFormTempHorizontalPaintable.scrollSelectionFormTempHorizontalPaintable (self));
            formTypeItemIndexDx <- (new ScrollSelectionFormTempHorizontalDx.scrollSelectionFormTempHorizontalDx (self))
        end else if ((Obj.repr (Obj.magic formType)) == (Obj.repr !formTypeFactory#nULL_FORM_TYPE)) then begin
            ()
        end else begin
            raise (Failure (!formTypeFactory#uNK))
        end
        end [@@warning "-7-20"]
    

    method paintItemHorizontal : 'any1 'any3. 'any1 * int * 'any3 * int * int -> int = fun (_graphics, (_index : int), item, (x : int), (_y : int)) ->
        let item = Obj.repr item in
        begin
        let width : int ref = ref (((Obj.magic item)#getMinimumWidth ())) in ();
        ((x + !width) + border)
        end [@@warning "-7-20"]
    

    method paintItemVertical : 'any1 'any3. 'any1 * int * 'any3 * int * int -> int = fun (_graphics, (_index : int), item, (_x : int), (y : int)) ->
        let item = Obj.repr item in
        begin
        let height : int ref = ref (((Obj.magic item)#getMinimumHeight ())) in ();
        ((y + !height) + border)
        end [@@warning "-7-20"]
    

    method paintItemTempHorizontal : 'any1 'any3. 'any1 * int * 'any3 * int * int -> int = fun (_graphics, (_index : int), _item, (_x : int), (_y : int)) ->
        begin
        0
        end [@@warning "-7-20"]
    

    method getSelectedIndexForPointHorizontalDx : 'any2. int * 'any2 * int * int -> int = fun ((_index : int), _item, (dx : int), (_dy : int)) ->
        begin
        (dx - halfBorder)
        end [@@warning "-7-20"]
    

    method getSelectedIndexForPointVerticalDx : 'any2. int * 'any2 * int * int -> int = fun ((_index : int), item, (dx : int), (_dy : int)) ->
        let item = Obj.repr item in
        begin
        (dx + (self#getDiffX ((Obj.magic item))))
        end [@@warning "-7-20"]
    

    method getSelectedIndexForPointTempHorizontalDx : 'any2. int * 'any2 * int * int -> int = fun ((_index : int), item, (dx : int), (_dy : int)) ->
        let item = Obj.repr item in
        begin
        (dx + (self#getDiffX ((Obj.magic item))))
        end [@@warning "-7-20"]
    

    method append : 'any1. 'any1 -> int = fun (item) ->
        let item = Obj.repr item in
        begin
        (super#append ((Obj.magic item)))
        end [@@warning "-7-20"]
    

    method getSelectedItem : 'any1 'return. 'any1 -> 'return = fun (point) ->
        let point = Obj.repr point in
        try
        begin
        let index : int ref = ref ((self#getSelectedIndexForPoint ((Obj.magic point)))) in ();
        if (!index <> (-1)) then begin
            raise (Java_return (Obj.repr ((self#get (!index)))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic (java_call_static "ABCustomItem.getNullInstance" (Obj.repr ()))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method getItemIndex : 'any1. 'any1 -> int = fun (item) ->
        let item = Obj.repr item in
        try
        begin
        let nextItem : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let size : int ref = ref ((self#size ())) in ();
        for index = 0 to !size - 1 do
            nextItem := Obj.repr ((Obj.magic (self#get (index))));
            if ((Obj.repr (Obj.magic !nextItem)) == (Obj.repr (Obj.magic item))) then begin
                raise (Java_return (Obj.repr (index)))
            end
        done;
        (-1)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method getStartIndex () : int =
        begin
        0
        end [@@warning "-7"]
    

    method getSelectedIndexForPoint : 'any1. 'any1 -> int = fun (point) ->
        let point = Obj.repr point in
        try
        begin
        let start : int ref = ref ((self#getStartIndex ())) in ();
        let size : int ref = ref ((self#size ())) in ();
        let dx : int ref = ref ((self#getDx ())) in ();
        let dy : int ref = ref ((self#getDy ())) in ();
        let formTypeFactory : FormTypeFactory.formTypeFactory ref = ref (((FormTypeFactory.getInstance ()) :> FormTypeFactory.formTypeFactory)) in ();
        let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (!commonLabels#sTART_LABEL));
        ignore (!stringBuffer#appendint (!start));
        ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
        ignore (!stringBuffer#append (!commonLabels#tOTAL_LABEL));
        ignore (!stringBuffer#appendint (!size));
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, gET_SELECTED_INDEX));
        let item : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let width : int ref = ref (0) in ();
        let height : int ref = ref (0) in ();
        let diffX : int ref = ref (0) in ();
        for index = !start to !size - 1 do
            item := Obj.repr ((self#get (index)));
            width := ((Obj.magic !item)#getMinimumWidth ());
            height := ((Obj.magic !item)#getMinimumHeight ());
            diffX := (formTypeItemIndexDx#getDx (index, (Obj.magic !item), !dx, !dy));
            if ((Obj.magic rectangleCollisionUtil)#isInside (!diffX, (!dy - halfBorder), ((!diffX + !width) + border), (((!dy + !height) + halfBorder) + 1), ((Obj.magic point)#getX ()), ((Obj.magic point)#getY ()))) then begin
                ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
                ignore (!stringBuffer#append (!commonLabels#iTEM_LABEL));
                ignore (!stringBuffer#append (((Obj.magic !item)#getLabel ())));
                ignore (!stringBuffer#append ((CommonSeps.getInstance ())#sPACE));
                ignore (!stringBuffer#append (!commonLabels#iNDEX_LABEL));
                ignore (!stringBuffer#appendint (index));
                ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, gET_SELECTED_INDEX));
                raise (Java_return (Obj.repr (index)))
            end;
            if ((Obj.repr (self#formType)) == (Obj.repr !formTypeFactory#hORIZONTAL_FORM)) then begin
                dx := ((!dx + !width) + border);
                if (!dx > ((self#rectangle)#getMaxX ())) then begin
                    raise Java_break
                end
            end else if ((Obj.repr (self#formType)) == (Obj.repr !formTypeFactory#vERTICAL_CENTER_FORM)) then begin
                dy := ((!dy + !height) + border);
                if (!dy > ((self#rectangle)#getMaxY ())) then begin
                    raise Java_break
                end
            end else if ((Obj.repr (self#formType)) == (Obj.repr !formTypeFactory#nULL_FORM_TYPE)) then begin
                ()
            end else begin
                raise (Failure (!formTypeFactory#uNK))
            end
        done;
        (-1)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method processInputKey ((gameKeyCode : int)) : int =
        try
        begin
        let formTypeFactory : FormTypeFactory.formTypeFactory ref = ref (((FormTypeFactory.getInstance ()) :> FormTypeFactory.formTypeFactory)) in ();
        if ((self#size ()) = 0) then begin
            raise (Java_return (Obj.repr ((-1))))
        end;
        let index : int ref = ref ((self#getSelectedIndex ())) in ();
        if (((Obj.repr (self#formType)) == (Obj.repr !formTypeFactory#hORIZONTAL_FORM)) || ((Obj.repr (self#formType)) == (Obj.repr !formTypeFactory#tEMP_HORIZONTAL_FORM))) then begin
            if (gameKeyCode = (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))) then begin
                index := !index + 1
            end else if (gameKeyCode = (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))) then begin
                index := !index - 1
            end
        end else if ((Obj.repr (self#formType)) == (Obj.repr !formTypeFactory#vERTICAL_CENTER_FORM)) then begin
            if (gameKeyCode = (Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ())))) then begin
                index := !index + 1
            end else if (gameKeyCode = (Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))) then begin
                index := !index - 1
            end
        end else if ((Obj.repr (self#formType)) == (Obj.repr !formTypeFactory#nULL_FORM_TYPE)) then begin
            ()
        end else begin
            raise (Failure (!formTypeFactory#uNK))
        end;
        let max : int ref = ref (((self#size ()) - 1)) in ();
        if (!index < 0) then begin
            ignore (self#setSelectedIndex (0))
        end else if (!index > !max) then begin
            ignore (self#setSelectedIndex (!max))
        end else begin
            ignore (self#setSelectedIndex (!index))
        end;
        (-1)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isInForm : 'any1. 'any1 -> bool = fun (point) ->
        let point = Obj.repr point in
        try
        begin
        if ((Obj.magic rectangleCollisionUtil)#isInside ((self#x), ((self#y) - halfBorder), (((self#rectangle)#getMaxX ()) + border), (((self#rectangle)#getMaxY ()) + border), ((Obj.magic point)#getX ()), ((Obj.magic point)#getY ()))) then begin
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((StringUtil.getInstance ())#toString ((Obj.magic point)))))#append (iNSIDE_FORM)))), self, iS_IN_FORM));
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method paintItem : 'any1 'any3. 'any1 * int * 'any3 * int * int -> int = fun (graphics, (index : int), item, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        let item = Obj.repr item in
        begin
        ignore ((Obj.magic item)#paintXY ((Obj.magic graphics), x, y));
        let width : int ref = ref (((Obj.magic item)#getMinimumWidth ())) in ();
        let height : int ref = ref (((Obj.magic item)#getMinimumHeight ())) in ();
        ignore ((Obj.magic graphics)#setColor (((self#getButtonBasicColor ())#intValue ())));
        let adjustedBorder : int ref = ref (3) in ();
        ignore ((Obj.magic graphics)#drawRect (((x - halfBorder) - !adjustedBorder), ((y - halfBorder) - !adjustedBorder), ((!width + border) + adjustedExtraBorder), ((!height + border) + adjustedExtraBorder)));
        (scrollSelectionFormFormTypeItemIndexPaintable#paint ((Obj.magic graphics), index, (Obj.magic item), x, y))
        end [@@warning "-7-20"]
    

    method paintUnselectedItem : 'any1 'any3. 'any1 * int * 'any3 * int * int -> int = fun (graphics, (index : int), item, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        let item = Obj.repr item in
        begin
        ignore ((Obj.magic graphics)#setColor (((self#getButtonBasicColor ())#intValue ())));
        ignore ((Obj.magic item)#paintUnselected ((Obj.magic graphics), x, y));
        (scrollSelectionFormFormTypeItemIndexPaintable#paint ((Obj.magic graphics), index, (Obj.magic item), x, y))
        end [@@warning "-7-20"]
    

    method getDiffX : 'any1. 'any1 -> int = fun (_item) ->
        begin
        0
        end [@@warning "-7-20"]
    

    method getDx () : int =
        begin
        (self#x)
        end [@@warning "-7"]
    

    method getDy () : int =
        begin
        (self#y)
        end [@@warning "-7"]
    

    method setButtonBasicColor : 'any1. 'any1 -> unit = fun (buttonBasicColor_arg) ->
        let buttonBasicColor_arg = Obj.repr buttonBasicColor_arg in
        begin
        buttonBasicColor <- (Obj.magic buttonBasicColor_arg)
        end [@@warning "-7-20"]
    

    method getButtonBasicColor () : BasicColor.basicColor =
        begin
        (buttonBasicColor :> BasicColor.basicColor)
        end [@@warning "-7"]

    initializer
      begin
        rectangleCollisionUtil <- (Obj.repr (Obj.magic (java_call_static "RectangleCollisionUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        scrollSelectionFormFormTypeItemIndexPaintable <- ((ItemIndexPaintable.getInstance ()) :> ItemIndexPaintable.itemIndexPaintable);
        formTypeItemIndexDx <- ((ItemIndexDx.getInstance ()) :> ItemIndexDx.itemIndexDx);
        paintable <- ((ItemPaintableFactory.getInstance ()) :> ItemPaintable.itemPaintable);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        adjustedExtraBorder <- adjustedExtraBorder_arg;
        buttonBasicColor <- foregroundBasicColor;
        border <- border_arg;
        halfBorder <- ((border_arg asr 1));
        paintable <- (formPaintableFactory#getInstanceItemPaintable (self))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ScrollSelectionForm" (fun arguments -> Obj.repr (new scrollSelectionForm (Obj.obj arguments)))

let rec createForm : 'any3 'any5 'any6. string * _ * 'any3 * int * 'any5 * 'any6 -> PaintableForm.paintableForm = fun ((title : string), items, formPaintableFactory, (border_arg : int), backgroundBasicColor, foregroundBasicColor) ->
        let formPaintableFactory = Obj.repr formPaintableFactory in
        let backgroundBasicColor = Obj.repr backgroundBasicColor in
        let foregroundBasicColor = Obj.repr foregroundBasicColor in
        try
        begin
        (try
            if ((Obj.repr (Obj.magic formPaintableFactory)) == (Obj.repr (ItemPaintableFactory.getInstance ()))) then begin
                raise (Java_return (Obj.repr ((new scrollSelectionForm (title, items, (Obj.magic formPaintableFactory), border_arg, (-3), (Obj.magic backgroundBasicColor), (Obj.magic foregroundBasicColor))))))
            end else begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
                ignore ((Obj.magic !logUtil)#putF (!commonStrings#eXCEPTION, (Obj.magic !logUtil), !commonStrings#eXCEPTION));
                raise (Java_return (Obj.repr ((PaintableForm.getNullPaintableForm ()))))
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
            ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, (Obj.magic !logUtil), !commonStrings#eXCEPTION, e));
            ((PaintableForm.getNullPaintableForm ()) :> PaintableForm.paintableForm)
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

and getNullScrollSelectionForm () =
        begin
        if ((Obj.repr !nULL_SCROLL_SELECTION_FORM) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            nULL_SCROLL_SELECTION_FORM := (createForm ((StringUtil.getInstance ())#eMPTY_STRING, (Array.make (0) (Obj.magic 0)), (ItemPaintableFactory.getInstance ()), 0, (BasicColorFactory.getInstance ())#bLACK, (BasicColorFactory.getInstance ())#wHITE))
        end;
        (Obj.magic !nULL_SCROLL_SELECTION_FORM)
        end

and getNullScrollSelectionFormHorizontal () =
        begin
        if ((Obj.repr !nULL_SCROLL_SELECTION_HORIZONTAL_FORM) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            nULL_SCROLL_SELECTION_HORIZONTAL_FORM := (createForm ((StringUtil.getInstance ())#eMPTY_STRING, (Array.make (0) (Obj.magic 0)), (ItemPaintableFactory.getInstance ()), 0, (BasicColorFactory.getInstance ())#bLACK, (BasicColorFactory.getInstance ())#wHITE))
        end;
        (Obj.magic !nULL_SCROLL_SELECTION_HORIZONTAL_FORM)
        end
let () = java_register_static "ScrollSelectionForm.createForm" (fun arguments -> Obj.repr (createForm (Obj.obj arguments)))
let () = java_register_static "ScrollSelectionForm.getNullScrollSelectionForm" (fun arguments -> Obj.repr (getNullScrollSelectionForm (Obj.obj arguments)))
let () = java_register_static "ScrollSelectionForm.getNullScrollSelectionFormHorizontal" (fun arguments -> Obj.repr (getNullScrollSelectionFormHorizontal (Obj.obj arguments)))


