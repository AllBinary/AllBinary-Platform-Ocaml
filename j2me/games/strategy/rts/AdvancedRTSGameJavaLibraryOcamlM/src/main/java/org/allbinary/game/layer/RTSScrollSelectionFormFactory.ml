(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.form.FormTypeFactory *)
(* import org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)
(* import org.allbinary.input.motion.button.CommonButtons *)
(* import org.allbinary.input.motion.button.TouchButtonLocationHelper *)

class rTSScrollSelectionFormFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "RTSScrollSelectionFormFactory" (fun arguments -> Obj.repr (new rTSScrollSelectionFormFactory (Obj.obj arguments)))

let getInstance ((formLabel : string), items) : ScrollSelectionForm.scrollSelectionForm =
        begin
        let basicColorFactory : BasicColorFactory.basicColorFactory ref = ref (((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory)) in ();
        let touchButtonLocationHelper : TouchButtonLocationHelper.touchButtonLocationHelper ref = ref (((new TouchButtonLocationHelper.touchButtonLocationHelper ()) :> TouchButtonLocationHelper.touchButtonLocationHelper)) in ();
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        let menuX : int ref = ref (((CommonButtons.getInstance ())#sTANDARD_BUTTON_SIZE + (!touchButtonLocationHelper#getColumnsRemainderHalf ()))) in ();
        let width : int ref = ref (((!displayInfo#getLastWidth ()) - ((!menuX * 2)))) in ();
        let menuRectangle : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "Rectangle" (Obj.repr (((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (!menuX, 16)), !width, (CommonButtons.getInstance ())#sTANDARD_BUTTON_SIZE)))))) in ();
        ((MultipleScrollSelectionHorizontalForm.createForm (formLabel, items, (Obj.magic !menuRectangle), (FormTypeFactory.getInstance ())#hORIZONTAL_FORM, 0, !basicColorFactory#bLACK, !basicColorFactory#wHITE)) :> ScrollSelectionForm.scrollSelectionForm)
        end
let () = java_register_static "RTSScrollSelectionFormFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


