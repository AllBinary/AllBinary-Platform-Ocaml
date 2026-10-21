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
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)

class scrollCurrentSelectionForm ((title : string), items, (formPaintableFactory : ItemPaintableFactory.itemPaintableFactory), (border : int), (adjustedExtraBorder : int), (moveForSmallScreen_arg : bool), (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit ScrollSelectionForm.scrollSelectionForm (title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor) as super
    val mutable moveForSmallScreen : bool = false
    method moveForSmallScreen = moveForSmallScreen
    method set_moveForSmallScreen value' = moveForSmallScreen <- value'
    val mutable updateMyFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method updateMyFontProcessor = updateMyFontProcessor
    method set_updateMyFontProcessor value' = updateMyFontProcessor <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable processor : Processor.processor = (Obj.magic 0)
    method processor = processor
    method set_processor value' = processor <- value'
    val mutable preItemIndexDx : ItemIndexDx.itemIndexDx = (Obj.magic 0)
    method preItemIndexDx = preItemIndexDx
    method set_preItemIndexDx value' = preItemIndexDx <- value'
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    val mutable maxWidth : int = 0
    method maxWidth = maxWidth
    method set_maxWidth value' = maxWidth <- value'
    
    

    method init : 'any1 'any2. 'any1 * 'any2 -> unit = fun (rectangle, formType) ->
        let rectangle = Obj.repr rectangle in
        let formType = Obj.repr formType in
        begin
        ignore (super#init ((Obj.magic rectangle), (Obj.magic formType)));
        let formTypeFactory : FormTypeFactory.formTypeFactory ref = ref (((FormTypeFactory.getInstance ()) :> FormTypeFactory.formTypeFactory)) in ();
        if ((Obj.repr (Obj.magic formType)) == (Obj.repr !formTypeFactory#tEMP_HORIZONTAL_FORM)) then begin
            processor <- (new TempHorizontalFormProcessor.tempHorizontalFormProcessor (self));
            preItemIndexDx <- (new TempHorizontalItemIndexDx.tempHorizontalItemIndexDx (self))
        end else if ((Obj.repr (Obj.magic formType)) == (Obj.repr !formTypeFactory#hORIZONTAL_FORM)) then begin
            processor <- (new HorizontalFormProcessor.horizontalFormProcessor (self));
            preItemIndexDx <- (new HorizontalItemIndexDx.horizontalItemIndexDx (self))
        end else if ((Obj.repr (Obj.magic formType)) == (Obj.repr !formTypeFactory#vERTICAL_CENTER_FORM)) then begin
            processor <- (new VerticalFormProcessor.verticalFormProcessor (self));
            preItemIndexDx <- (new VerticalItemIndexDx.verticalItemIndexDx (self))
        end else if ((Obj.repr (Obj.magic formType)) == (Obj.repr !formTypeFactory#nULL_FORM_TYPE)) then begin
            ()
        end else begin
            ignore (logUtil#putF (!formTypeFactory#uNK, self, commonStrings#iNIT))
        end;
        myFontProcessor <- updateMyFontProcessor
        end [@@warning "-7-20"]
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method processTempHorizontalForm () : unit =
        begin
        dx <- ((x - 30) + (((rectangle#getWidth ()) asr 1)));
        dy <- y
        end [@@warning "-7"]
    

    method processHorizontalForm () : unit =
        begin
        let size : int ref = ref ((self#size ())) in ();
        let totalWidth : int ref = ref (0) in ();
        let item : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            item := Obj.repr ((self#get (index)));
            totalWidth := (!totalWidth + (((Obj.magic !item)#getMinimumWidth ()) + border))
        done;
        dx <- ((x + (((rectangle#getWidth ()) asr 1))) - ((!totalWidth asr 1)));
        dy <- (y + (((rectangle#getHeight ()) asr 1)));
        if moveForSmallScreen then begin
            let maxTitleHeight : int ref = ref (175) in ();
            if (dy < !maxTitleHeight) then begin
                dy <- !maxTitleHeight
            end
        end
        end [@@warning "-7"]
    

    method processVerticalForm () : unit =
        begin
        let totalHeight : int ref = ref (0) in ();
        let size : int ref = ref ((self#size ())) in ();
        let item2 : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            item2 := Obj.repr ((self#get (index)));
            if (maxWidth < ((Obj.magic !item2)#getMinimumWidth ())) then begin
                maxWidth <- ((Obj.magic !item2)#getMinimumWidth ())
            end;
            totalHeight := (!totalHeight + (((Obj.magic !item2)#getMinimumHeight ()) + border))
        done;
        dx <- (((((rectangle#getWidth ()) - maxWidth)) / 2));
        if ((self#size ()) > 0) then begin
            dy <- (y + (((((rectangle#getHeight ()) - !totalHeight)) / 2)));
            if moveForSmallScreen then begin
                let maxTitleHeight : int ref = ref (175) in ();
                if (dy < !maxTitleHeight) then begin
                    dy <- !maxTitleHeight
                end
            end
        end else begin
            dy <- y
        end
        end [@@warning "-7"]
    

    method getXTempHorizontalForm : 'any2. int * 'any2 * int * int -> int = fun ((_index : int), item, (_dx_arg : int), (_dy_arg : int)) ->
        let item = Obj.repr item in
        begin
        (self#getDiffX ((Obj.magic item)))
        end [@@warning "-7-20"]
    

    method getXHorizontalForm : 'any2. int * 'any2 * int * int -> int = fun ((_index : int), _item, (_dx_arg : int), (_dy_arg : int)) ->
        begin
        0
        end [@@warning "-7-20"]
    

    method getXVerticalForm : 'any2. int * 'any2 * int * int -> int = fun ((_index : int), item, (_dx_arg : int), (_dy_arg : int)) ->
        let item = Obj.repr item in
        begin
        ((self#getDiffX ((Obj.magic item))) + halfBorder)
        end [@@warning "-7-20"]
    

    method getDiffX : 'any1. 'any1 -> int = fun (item) ->
        let item = Obj.repr item in
        begin
        ((((maxWidth - ((Obj.magic item)#getMinimumWidth ()))) asr 1))
        end [@@warning "-7-20"]
    

    method getDx () : int =
        begin
        dx
        end [@@warning "-7"]
    

    method getDy () : int =
        begin
        dy
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        (try
            ignore (processor#process ());
            let delta : int ref = ref (0) in ();
            let deltaX : int ref = ref ((self#getDx ())) in ();
            let deltaY : int ref = ref ((self#getDy ())) in ();
            let size : int ref = ref ((self#size ())) in ();
            let formTypeFactory : FormTypeFactory.formTypeFactory ref = ref (((FormTypeFactory.getInstance ()) :> FormTypeFactory.formTypeFactory)) in ();
            let item : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            for index = 0 to !size - 1 do
                item := Obj.repr ((self#get (index)));
                let diffX : int ref = ref ((preItemIndexDx#getDx (index, (Obj.magic !item), dx, dy))) in ();
                if (index = (self#getSelectedIndex ())) then begin
                    delta := (self#paintItem ((Obj.magic graphics), index, (Obj.magic !item), (!deltaX + !diffX), !deltaY));
                    ignore (paintable#paint ((Obj.magic graphics), index, (!deltaX + !diffX), !deltaY))
                end else begin
                    delta := (self#paintUnselectedItem ((Obj.magic graphics), index, (Obj.magic !item), (!deltaX + !diffX), !deltaY));
                    ignore (paintable#paint ((Obj.magic graphics), index, (!deltaX + !diffX), !deltaY))
                end;
                if ((Obj.repr formType) == (Obj.repr !formTypeFactory#tEMP_HORIZONTAL_FORM)) then begin
                    ()
                end else if ((Obj.repr formType) == (Obj.repr !formTypeFactory#hORIZONTAL_FORM)) then begin
                    deltaX := !delta
                end else if ((Obj.repr formType) == (Obj.repr !formTypeFactory#vERTICAL_CENTER_FORM)) then begin
                    deltaY := !delta
                end else begin
                    raise (Failure (!formTypeFactory#uNK))
                end
            done
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, canvasStrings#pAINT, e))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        updateMyFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        myFontProcessor <- (updateMyFontProcessor :> MyFontProcessor.myFontProcessor);
        processor <- ((Processor.getInstance ()) :> Processor.processor);
        preItemIndexDx <- ((ItemIndexDx.getInstance ()) :> ItemIndexDx.itemIndexDx);
        dx <- 0;
        dy <- 0;
        maxWidth <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        moveForSmallScreen <- moveForSmallScreen_arg
      end
  end
let () = java_register_constructor "ScrollCurrentSelectionForm" (fun arguments -> Obj.repr (new scrollCurrentSelectionForm (Obj.obj arguments)))


