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
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.animation.vector.RectangleAdjustedAnimation *)
(* import org.allbinary.animation.vector.RectangleFilledAdjustedAnimation *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.form.item.CommandTextItem *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)

class commandCurrentSelectionForm ((title : string), items, (border : int), (moveForSmallScreen : bool), (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit ScrollCurrentSelectionForm.scrollCurrentSelectionForm (title, items, (ItemPaintableFactory.getInstance ()), border, (-3), moveForSmallScreen, backgroundBasicColor, foregroundBasicColor) as super
    val mutable selectedAnimationArray : Obj.t = Obj.repr 0
    method selectedAnimationArray : 'r. 'r = Obj.magic selectedAnimationArray
    method set_selectedAnimationArray : 'v. 'v -> unit = fun value' -> selectedAnimationArray <- Obj.repr value'
    val mutable unSelectedAnimationArray : Obj.t = Obj.repr 0
    method unSelectedAnimationArray : 'r. 'r = Obj.magic unSelectedAnimationArray
    method set_unSelectedAnimationArray : 'v. 'v -> unit = fun value' -> unSelectedAnimationArray <- Obj.repr value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        (self#updateAll ((Obj.magic graphics), (self#getAllitems ())));
        ignore (super#updateMeasurement ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method initAnimations () : unit =
        begin
        let nullAnimation : Obj.t ref = ref ((Obj.repr ((NullAnimationFactory.getFactoryInstance ())#getInstance (0)))) in ();
        let index : int ref = ref ((Array.length (Obj.magic selectedAnimationArray))) in ();
        while ((index := !index - 1; !index) >= 0) do
            (Obj.magic selectedAnimationArray).(!index) <- (Obj.magic !nullAnimation)
        done;
        let index : int ref = ref ((Array.length (Obj.magic unSelectedAnimationArray))) in ();
        while ((index := !index - 1; !index) >= 0) do
            (Obj.magic unSelectedAnimationArray).(!index) <- (Obj.magic !nullAnimation)
        done
        end [@@warning "-7"]
    

    method addAll (items) : unit =
        begin
        let index : int ref = ref ((Array.length items)) in ();
        while ((index := !index - 1; !index) >= 0) do
            (self#addAt (!index, items.(!index)))
        done
        end [@@warning "-7"]
    

    method addAt : 'any2. int * 'any2 -> unit = fun ((index : int), item) ->
        let item = Obj.repr item in
        begin
        let basicColorFactory : BasicColorFactory.basicColorFactory ref = ref (((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory)) in ();
        let buttonColor : BasicColor.basicColor ref = ref ((!basicColorFactory#tRANSPARENT_GREY :> BasicColor.basicColor)) in ();
        let selectedButtonColor : BasicColor.basicColor ref = ref ((!basicColorFactory#tRANSPARENT_RED :> BasicColor.basicColor)) in ();
        let width : int ref = ref (((Obj.magic item)#getMinimumWidth ())) in ();
        let height : int ref = ref (((Obj.magic item)#getMinimumHeight ())) in ();
        let adjustedBorder : int ref = ref (3) in ();
        let offset : int ref = ref ((-((halfBorder + !adjustedBorder)))) in ();
        let rectWidth : int ref = ref (((!width + border) - !adjustedBorder)) in ();
        let rectHeight : int ref = ref (((!height + border) - !adjustedBorder)) in ();
        if ((J2MEUtil.isJ2ME ()) || (J2MEUtil.isHTML ())) then begin
            (Obj.magic selectedAnimationArray).(index) <- (new RectangleAdjustedAnimation.rectangleAdjustedAnimation (!rectWidth, !rectHeight, !offset, !offset, !selectedButtonColor))
        end else begin
            (Obj.magic selectedAnimationArray).(index) <- (new RectangleFilledAdjustedAnimation.rectangleFilledAdjustedAnimation (!rectWidth, !rectHeight, !offset, !offset, !selectedButtonColor))
        end;
        adjustedBorder := 4;
        if ((J2MEUtil.isJ2ME ()) || (J2MEUtil.isHTML ())) then begin
            (Obj.magic unSelectedAnimationArray).(index) <- (new RectangleAdjustedAnimation.rectangleAdjustedAnimation (!rectWidth, !rectHeight, !offset, !offset, !buttonColor))
        end else begin
            (Obj.magic unSelectedAnimationArray).(index) <- (new RectangleFilledAdjustedAnimation.rectangleFilledAdjustedAnimation (!rectWidth, !rectHeight, !offset, !offset, !buttonColor))
        end
        end [@@warning "-7-20"]
    

    method updateAll : 'any1. 'any1 * _ -> unit = fun (graphics, items) ->
        let graphics = Obj.repr graphics in
        begin
        let index : int ref = ref ((Array.length items)) in ();
        while ((index := !index - 1; !index) >= 0) do
            ignore (items.(!index)#preMeasurement ((Obj.magic graphics)));
            (self#updateAt (!index, items.(!index)))
        done
        end [@@warning "-7-20"]
    

    method updateAt : 'any2. int * 'any2 -> unit = fun ((index : int), item) ->
        let item = Obj.repr item in
        begin
        let basicColorFactory : BasicColorFactory.basicColorFactory ref = ref (((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory)) in ();
        let buttonColor : BasicColor.basicColor ref = ref ((!basicColorFactory#tRANSPARENT_GREY :> BasicColor.basicColor)) in ();
        let selectedButtonColor : BasicColor.basicColor ref = ref ((!basicColorFactory#tRANSPARENT_RED :> BasicColor.basicColor)) in ();
        let width : int ref = ref (((Obj.magic item)#getMinimumWidth ())) in ();
        let height : int ref = ref (((Obj.magic item)#getMinimumHeight ())) in ();
        let adjustedBorder : int ref = ref (3) in ();
        let offset : int ref = ref ((-((halfBorder + !adjustedBorder)))) in ();
        let rectWidth : int ref = ref (((!width + border) - !adjustedBorder)) in ();
        let rectHeight : int ref = ref (((!height + border) - !adjustedBorder)) in ();
        if ((J2MEUtil.isJ2ME ()) || (J2MEUtil.isHTML ())) then begin
            let rectangleAdjustedAnimation : RectangleAdjustedAnimation.rectangleAdjustedAnimation ref = ref (((Obj.magic (Obj.magic selectedAnimationArray).(index)) :> RectangleAdjustedAnimation.rectangleAdjustedAnimation)) in ();
            ignore (!rectangleAdjustedAnimation#setWidth (!rectWidth));
            ignore (!rectangleAdjustedAnimation#setHeight (!rectHeight));
            ignore (!rectangleAdjustedAnimation#setOffsetX (!offset));
            ignore (!rectangleAdjustedAnimation#setOffsetY (!offset));
            ignore (!rectangleAdjustedAnimation#setBasicColorP (!selectedButtonColor))
        end else begin
            let rectangleAdjustedAnimation : RectangleFilledAdjustedAnimation.rectangleFilledAdjustedAnimation ref = ref (((Obj.magic (Obj.magic selectedAnimationArray).(index)) :> RectangleFilledAdjustedAnimation.rectangleFilledAdjustedAnimation)) in ();
            ignore (!rectangleAdjustedAnimation#setWidth (!rectWidth));
            ignore (!rectangleAdjustedAnimation#setHeight (!rectHeight));
            ignore (!rectangleAdjustedAnimation#setOffsetX (!offset));
            ignore (!rectangleAdjustedAnimation#setOffsetY (!offset));
            ignore (!rectangleAdjustedAnimation#setBasicColorP (!selectedButtonColor))
        end;
        adjustedBorder := 4;
        if ((J2MEUtil.isJ2ME ()) || (J2MEUtil.isHTML ())) then begin
            let rectangleAdjustedAnimation : RectangleAdjustedAnimation.rectangleAdjustedAnimation ref = ref (((Obj.magic (Obj.magic unSelectedAnimationArray).(index)) :> RectangleAdjustedAnimation.rectangleAdjustedAnimation)) in ();
            ignore (!rectangleAdjustedAnimation#setWidth (!rectWidth));
            ignore (!rectangleAdjustedAnimation#setHeight (!rectHeight));
            ignore (!rectangleAdjustedAnimation#setOffsetX (!offset));
            ignore (!rectangleAdjustedAnimation#setOffsetY (!offset));
            ignore (!rectangleAdjustedAnimation#setBasicColorP (!buttonColor))
        end else begin
            let rectangleAdjustedAnimation : RectangleFilledAdjustedAnimation.rectangleFilledAdjustedAnimation ref = ref (((Obj.magic (Obj.magic unSelectedAnimationArray).(index)) :> RectangleFilledAdjustedAnimation.rectangleFilledAdjustedAnimation)) in ();
            ignore (!rectangleAdjustedAnimation#setWidth (!rectWidth));
            ignore (!rectangleAdjustedAnimation#setHeight (!rectHeight));
            ignore (!rectangleAdjustedAnimation#setOffsetX (!offset));
            ignore (!rectangleAdjustedAnimation#setOffsetY (!offset));
            ignore (!rectangleAdjustedAnimation#setBasicColorP (!buttonColor))
        end
        end [@@warning "-7-20"]
    

    method getSelectedCommand : 'return. unit -> 'return = fun () ->
        begin
        let index : int ref = ref ((super#getSelectedIndex ())) in ();
        let commandTextItem : CommandTextItem.commandTextItem ref = ref (((Obj.magic (self#get (!index))) :> CommandTextItem.commandTextItem)) in ();
        (Obj.magic ((!commandTextItem#getCommand ())))
        end [@@warning "-7"]
    

    method append : 'any1. 'any1 -> int = fun (item) ->
        let item = Obj.repr item in
        begin
        let result : int ref = ref ((super#append ((Obj.magic item)))) in ();
        (self#addAt (!result, (Obj.magic item)));
        !result
        end [@@warning "-7-20"]
    

    method delete ((itemNum : int)) : unit =
        begin
        ignore (super#delete (itemNum))
        end [@@warning "-7"]
    

    method deleteAll () : unit =
        begin
        (self#initAnimations ());
        ignore (super#deleteAll ())
        end [@@warning "-7"]
    

    method insert : 'any2. int * 'any2 -> unit = fun ((itemNum : int), item) ->
        let item = Obj.repr item in
        begin
        ignore (super#insert (itemNum, (Obj.magic item)))
        end [@@warning "-7-20"]
    

    method set : 'any2. int * 'any2 -> unit = fun ((itemNum : int), item) ->
        let item = Obj.repr item in
        begin
        ignore (super#set (itemNum, (Obj.magic item)))
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore (super#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method paintItem : 'any1 'any3. 'any1 * int * 'any3 * int * int -> int = fun (graphics, (index : int), item, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        let item = Obj.repr item in
        begin
        ignore ((Obj.magic selectedAnimationArray).(index)#paintXY ((Obj.magic graphics), x, y));
        (super#paintItem ((Obj.magic graphics), index, (Obj.magic item), x, y))
        end [@@warning "-7-20"]
    

    method paintUnselectedItem : 'any1 'any3. 'any1 * int * 'any3 * int * int -> int = fun (graphics, (index : int), item, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        let item = Obj.repr item in
        begin
        ignore ((Obj.magic unSelectedAnimationArray).(index)#paintXY ((Obj.magic graphics), x, y));
        (super#paintUnselectedItem ((Obj.magic graphics), index, (Obj.magic item), x, y))
        end [@@warning "-7-20"]

    initializer
      begin
        selectedAnimationArray <- (Obj.repr (Array.make (16) (Obj.magic 0)));
        unSelectedAnimationArray <- (Obj.repr (Array.make (16) (Obj.magic 0)));
        ();
        (* super(...) is the inherit clause *) ();
        (self#initAnimations ());
        (self#addAll (items))
      end
  end [@@warning "-20"]
let () = java_register_constructor "CommandCurrentSelectionForm" (fun arguments -> Obj.repr (new commandCurrentSelectionForm (Obj.obj arguments)))


