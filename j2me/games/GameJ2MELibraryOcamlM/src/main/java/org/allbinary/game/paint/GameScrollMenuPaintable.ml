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
(* package org.allbinary.game.paint *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.ColorChangeEventHandler *)
(* import org.allbinary.graphics.color.ColorChangeListener *)
(* import org.allbinary.graphics.form.FormPaintable *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)
(* import org.allbinary.graphics.form.item.ABStringComponent *)
(* import org.allbinary.graphics.form.item.ABTextItem *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class gameScrollMenuPaintable ((mainDemoStatePaintable : Paintable.paintable), (ownershipPaintable : Paintable.paintable), (helpPaintableInterface : Paintable.paintable), (basicColor : BasicColor.basicColor)) =
  object (self)
    inherit BasicGameDemoPaintable.basicGameDemoPaintable (mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)
    
    

    method setState ((_state : int)) : unit =
        begin
        ignore (self#setCurrentStatePaintable ((self#getMainDemoStatePaintable ())))
        end [@@warning "-7"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method setColor : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        let mainGameDemoStatePaintable : MainGameDemoStatePaintable.mainGameDemoStatePaintable ref = ref (((Obj.magic (self#getMainDemoStatePaintable ())) :> MainGameDemoStatePaintable.mainGameDemoStatePaintable)) in ();
        let formPaintable : FormPaintable.formPaintable ref = ref (((Obj.magic (!mainGameDemoStatePaintable#getMenuPaintableInterface ())) :> FormPaintable.formPaintable)) in ();
        let scrollSelectionForm : ScrollSelectionForm.scrollSelectionForm ref = ref (((Obj.magic (!formPaintable#getForm ())) :> ScrollSelectionForm.scrollSelectionForm)) in ();
        ignore ((!mainGameDemoStatePaintable#getOwnershipPaintableInterface ())#setBasicColorP ((Obj.magic basicColor)));
        ignore (!scrollSelectionForm#setButtonBasicColor ((Obj.magic basicColor)));
        let item : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let stringComponent : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        for index = ((!scrollSelectionForm#size ()) - 1) downto 0 do
            item := Obj.repr ((Obj.magic (!scrollSelectionForm#get (index))));
            stringComponent := Obj.repr (((Obj.magic !item)#getLabelStringComponent ()));
            if ((Obj.magic !stringComponent) != (Obj.magic 0)) then begin
                ignore ((Obj.magic !stringComponent)#setForegroundBasicColor ((Obj.magic basicColor)))
            end
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        (self#setColor (basicColor));
        ignore ((ColorChangeEventHandler.getInstance ())#addListenerInterface (self))
      end
  end
let () = java_register_constructor "GameScrollMenuPaintable" (fun arguments -> Obj.repr (new gameScrollMenuPaintable (Obj.obj arguments)))


